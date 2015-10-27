/*
*
*/
#include<iostream>
#include<cstring>
#include<cstdio>
#include<fstream>
#include<cmath>
#include<string>
#define CLR(ARR,NUM) memset(ARR,NUM,sizeof(ARR))
#define GETNUM(NUM) scanf("%d",&NUM)
#define faster_io() ios_base::sync_with_stdio(false)
using namespace std;

int main(int argc, char *argv[])
{
	ifstream fin;
	fin.open(argv[1]);
	ofstream f1;
	f1.open("_frame_header.html");
	ofstream f2;
	f2.open("_frame_nav.html");
	ofstream f3;
	f3.open("_frame_bottom.html");
	string s;
	string s1= "<!DOCTYPE html>\n\
\<html lang=\"en\">\n\
  <head>\n\
    <meta charset=\"utf-8\" />\n\
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n\
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n\
    <!-- meta -->\n\
    <title>LAB FIND</title>\n\
    <!-- DO NOT EDIT THIS LINE AND ANY LINES BETWEEN THEM -->\n";
    ofstream fout("_frame.html");
    fout << s1 << endl;
	while(getline(fin, s)) {
		if(s.find("BOOTSTRAP#01") != string::npos) {
			while(s.find("END OF BOOTSTRAP#01") == string::npos) {
				f1 << s << endl;
				fout << s << endl;
				getline(fin, s);
			}
			f1 << s << endl; 
			fout << "		<!-- END OF BOOTSTRAP#01 -->\n\
    </head>\n\
    <body>\n\
	\n\
	<!-- DO NOT EDIT THIS LINE AND ANY LINES BETWEEN THEM -->\n" << endl;
		} else if(s.find("NAVAIGATION#02") != string::npos) {
			while(s.find("END OF NAVAIGATION#02") == string::npos) {
				f2 << s << endl;
				fout << s << endl;
				getline(fin, s);
			}
			f2 << s << endl;
			fout << "    <!-- END OF NAVAIGATION#02 -->\n\
\n\
	<div id=\"content\">\n\
		<!-- INSERT YOUR CODE HERE#00-->\n\
		\n\
		<!-- END OF YOUR CODE#00 -->\n\
    </div>\n\
	\n\n\
	<!-- DO NOT EDIT THIS LINE AND ANY LINES BETWEEN THEM -->\n" << endl;
		} else if(s.find("BOTTOM#03") != string::npos) {
			while(s.find("END OF BOTTOM#03") == string::npos) {
				f3 << s << endl;
				fout << s << endl;
				getline(fin, s);
			}
			f3 << s << endl;
			fout << "    <!-- END OF BOTTOM#03 -->\n\
  </body>\n\
</html>" << endl;
		}
	}

	fout.close();
	f1.close();
	f2.close();
	f3.close();
	return 0;
}

