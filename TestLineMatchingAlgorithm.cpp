/*IMPORTANT: READ BEFORE DOWNLOADING, COPYING, INSTALLING OR USING.

 By downloading, copying, installing or using the software you agree to this license.
 If you do not agree to this license, do not download, install,
 copy or use the software.


                          License Agreement
               For Open Source Computer Vision Library

Copyright (C) 2011-2012, Lilian Zhang, all rights reserved.
Copyright (C) 2013, Manuele Tamburrano, Stefano Fabri, all rights reserved.
Third party copyrights are property of their respective owners.

To extract edge and lines, this library implements the EDLines Algorithm and the Edge Drawing detector:
http://www.sciencedirect.com/science/article/pii/S0167865511001772
http://www.sciencedirect.com/science/article/pii/S1047320312000831

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.

  * Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

  * The name of the copyright holders may not be used to endorse or promote products
    derived from this software without specific prior written permission.

This software is provided by the copyright holders and contributors "as is" and
any express or implied warranties, including, but not limited to, the implied
warranties of merchantability and fitness for a particular purpose are disclaimed.
In no event shall the Intel Corporation or contributors be liable for any direct,
indirect, incidental, special, exemplary, or consequential damages
(including, but not limited to, procurement of substitute goods or services;
loss of use, data, or profits; or business interruption) however caused
and on any theory of liability, whether in contract, strict liability,
or tort (including negligence or otherwise) arising in any way out of
the use of this software, even if advised of the possibility of such damage.
*/


#include <math.h>
#include <time.h>
#include <fstream>


#include "LineDescriptor.hh"


using namespace std;


void usage(int argc, char** argv){
	cout<<"Usage: "<<argv[0]<<"  image1.png"<<"  image2.png"<<endl;
}


int main(int argc, char** argv)
{
	int ret = -1;
	if(argc<3){
		usage(argc,argv);
		return ret;
	}
  //load first image from file
	std::string imageName1(argv[1]);
	cv::Mat leftImage;
    leftImage = imread(imageName1, cv::IMREAD_GRAYSCALE);   // Read the file
    if(! leftImage.data )                              // Check for invalid input
    {
        cout <<  "Could not open or find the image" << std::endl ;
        return -1;
    }

  //load second image from file
	std::string imageName2(argv[2]);
	
    cv::Mat rightImage;
    rightImage = imread(imageName2, cv::IMREAD_GRAYSCALE);   // Read the file
    if(! rightImage.data )                              // Check for invalid input
    {
        cout <<  "Could not open or find the image" << std::endl ;
        return -1;
    }

	unsigned int imageWidth  = leftImage.cols;
	unsigned int imageHeight = leftImage.rows;

	srand((unsigned)time(0));
	int lowest=100, highest=255;
	int range=(highest-lowest)+1;
	unsigned int r, g, b; //the color of lines

	//initial variables
	cv::Mat leftColorImage(leftImage.size(), CV_8UC3);
	cv::Mat rightColorImage(rightImage.size(), CV_8UC3);
	
	cvtColor( leftImage, leftColorImage,  cv::COLOR_GRAY2RGB );
	cvtColor( rightImage, rightColorImage, cv::COLOR_GRAY2RGB );


  ///////////####################################################################
  ///////////####################################################################
	//extract lines, compute their descriptors and match lines
	LineDescriptor lineDesc;
//	PairwiseLineMatching lineMatch;

	ScaleLines   linesInLeft;
	ScaleLines   linesInRight;
	std::vector<unsigned int> matchResult;


	lineDesc.GetLineDescriptor(leftImage,linesInLeft);
	lineDesc.GetLineDescriptor(rightImage,linesInRight);
	
	//TODO remove BIAS dependecies in PairwiseMatching
//	lineMatch.LineMatching(linesInLeft,linesInRight,matchResult);

  ///////////####################################################################
  ///////////####################################################################
	//draw  extracted lines into images
	cv::Point startPoint;
	cv::Point endPoint;
	cv::Point point;

	for(unsigned int i=0; i<linesInLeft.size(); i++){
		r = lowest+int(rand()%range);
		g = lowest+int(rand()%range);
		b = lowest+int(rand()%range);
		startPoint = cv::Point(int(linesInLeft[i][0].startPointX),int(linesInLeft[i][0].startPointY));
		endPoint   = cv::Point(int(linesInLeft[i][0].endPointX),  int(linesInLeft[i][0].endPointY));
		cv::line( leftColorImage,startPoint,endPoint, (0,0,255), 3);
//		char buf[10];
//		sprintf( buf,   "%d ",  i);
//		if(i%2){
//			point = cvPoint(round(0.75*startPoint.x+0.25*endPoint.x),round(0.75*startPoint.y+0.25*endPoint.y));
//			cvPutText(cvLeftColorImage,buf,point,&font,CV_RGB(r,g,b));
//		}else{
//			point = cvPoint(round(0.25*startPoint.x+0.75*endPoint.x),round(0.25*startPoint.y+0.75*endPoint.y));
//			cvPutText(cvLeftColorImage,buf,point,&font,CV_RGB(r,g,b));
//		}
	}
	for(unsigned int i=0; i<linesInRight.size(); i++){
		r = lowest+int(rand()%range);
		g = lowest+int(rand()%range);
		b = lowest+int(rand()%range);
		startPoint = cv::Point(int(linesInRight[i][0].startPointX),int(linesInRight[i][0].startPointY));
		endPoint   = cv::Point(int(linesInRight[i][0].endPointX),  int(linesInRight[i][0].endPointY));
		cv::line( rightColorImage,startPoint,endPoint,(0,0,255),3);
//		char buf[10];
//		sprintf( buf,   "%d ",  i);
//		if(i%2){
//			point = cvPoint(round(0.75*startPoint.x+0.25*endPoint.x),round(0.75*startPoint.y+0.25*endPoint.y));
//			cvPutText(cvRightColorImage,buf,point,&font,CV_RGB(r,g,b));
//		}else{
//			point = cvPoint(round(0.25*startPoint.x+0.75*endPoint.x),round(0.25*startPoint.y+0.75*endPoint.y));
//			cvPutText(cvRightColorImage,buf,point,&font,CV_RGB(r,g,b));
//		}
	}
	imwrite("LinesInImage1.png",leftColorImage);
	imwrite("LinesInImage2.png",rightColorImage);
}
