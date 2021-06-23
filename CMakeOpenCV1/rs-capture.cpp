// License: Apache 2.0. See LICENSE file in root directory.
#include <iostream>
#include <librealsense2/rs.hpp> 
#include "../cv-helpers.hpp"

int main(int argc, char * argv[])
{
    rs2::log_to_console(RS2_LOG_SEVERITY_ERROR);
    rs2::colorizer color_map;
    rs2::pipeline pipe;
    pipe.start();
    int iLastY = -1;
    int iLastX = -1;
    cv::Mat imgTmp;
    //cv::cap.read(imgTmp); 

    //Create a black image with the size as the camera output
    cv::Mat imgLines = cv::Mat::zeros( imgTmp.size(), CV_8UC3 );;
 
    while (1) 
    {
        rs2::frameset data = pipe.wait_for_frames();

	//Depth
	rs2::frame depth = data.get_depth_frame().apply_filter(color_map);
        const int w = depth.as<rs2::video_frame>().get_width();
        const int h = depth.as<rs2::video_frame>().get_height();
        cv::Mat image(cv::Size(w, h), CV_8UC3, (void*)depth.get_data(), cv::Mat::AUTO_STEP);
	cv::imshow("Depth", image);

	//Original Img and Mask
        cv::Mat img = frame_to_mat(data[1]);
	cv::Mat imgHSV, img_threshold;
	cv::cvtColor(img, imgHSV, cv::COLOR_BGR2HSV);
	cv::inRange(imgHSV, cv::Scalar(114,191,0), cv::Scalar(180,255,255), img_threshold);


	cv::erode(img_threshold, img_threshold, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(5, 5)) );
  	cv::dilate(img_threshold, img_threshold, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(5, 5)) ); 

	//morphological closing (removes small holes from the foreground)
	cv::dilate(img_threshold, img_threshold, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(5, 5)) ); 
	cv::erode(img_threshold, img_threshold, cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(5, 5)) );

	//Calculate the moments of the thresholded image
	cv::Moments oMoments = moments(img_threshold);

  	double dM01 = oMoments.m01;
 	double dM10 = oMoments.m10;
  	double dArea = oMoments.m00;
 	int posX = dM10 / dArea;
	int posY = dM01 / dArea;
	std::cout << "PosX: " << posX << std::endl;
	std::cout << "PosY: " << posY << std::endl;
	
  	// if the area <= 10000, I consider that the there are no object in the image and it's because of the noise, the area is not zero 
  	/*if (dArea > 5000)
	  {
	   //calculate the position of the ball
	   int posX = dM10 / dArea;
	   int posY = dM01 / dArea;        
		
	   if (iLastX >= 0 && iLastY >= 0 && posX >= 0 && posY >= 0)
	   {
	    //Draw a red line from the previous point to the current point
	    cv::line(imgLines, cv::Point(posX, posY), cv::Point(iLastX, iLastY), cv::Scalar(0,0,255), 2);
	   }

	   iLastX = posX;
	   iLastY = posY;
	  }*/
        
        cv::imshow("Mask", img_threshold);

	//img = img +imgLines;
	//cv::imshow("Img", img);

        cv::waitKey(1);
    }
    return EXIT_SUCCESS;
}



