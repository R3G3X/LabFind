/*
*
*/
#include<iostream>
#include<cstring>
#include<cstdio>
#include<cmath>
#include<string>
#include<fstream>
#define CLR(ARR,NUM) memset(ARR,NUM,sizeof(ARR))
#define GETNUM(NUM) scanf("%d",&NUM)
#define faster_io() ios_base::sync_with_stdio(false)
using namespace std;

int main(int argc, char *argv[])
{
	string newfile=argv[1]; 
	newfile = newfile.substr(0,newfile.rfind('.'))+"_merge.html";
	ofstream fout(newfile);
	ifstream fin(argv[1]);
	string s;
	while(getline(fin,s)){
		if(s.find("BOOTSTRAP#01")!=string::npos){
			ifstream f("_frame_header.html");
			string str;
			while(getline(f,str)){
				fout << str << endl;
			}
			while(s.find("END OF BOOTSTRAP#01")==string::npos){
				getline(fin,s);
			}
		}else if(s.find("NAVAIGATION#02")!=string::npos){
			ifstream f("_frame_nav.html");
			string str;
			while(getline(f,str)){
				fout << str << endl;
			}
			while(s.find("END OF NAVAIGATION#02")==string::npos){
				getline(fin,s);
			}
		}else if(s.find("BOTTOM#03")!=string::npos){
			ifstream f("_frame_bottom.html");
			string str;
			while(getline(f,str)){
				fout << str << endl;
			}
			while(s.find("END OF BOTTOM#03")==string::npos){
				getline(fin,s);
			}
		}else{
			fout << s << endl;
		} 
	}
	fout.close();
	return 0;
}

