#include<iostream>
#include<string.h>
#include <fstream>
#include <sstream>

using namespace std;

struct ders {
    string derskodu;
    string dersadi;
    ders *sonraki;
    //ENG101 ENGLISH1
    //MAT101 MATHEMATICS1
    //FIZ101 PHYSICS1
};

struct ogrenci {
    int ogrno;
    string ad;
    string soyad;
    ders *dersdugumu;
    ogrenci *sonraki;
};

ogrenci *ogroot = new ogrenci();
ogrenci *bas = ogroot;
ogrenci *son;


void ogrAl() {

    ogrenci *iterator = new ogrenci();
    ifstream okumat("mat101.txt");
    ifstream okufiz("fiz101.txt");
    ifstream okueng("eng101.txt");
    string token;
    string verial;

    if (okumat.is_open()) {
        while (!(okumat.eof())) {
            getline(okumat, verial);
            istringstream iss(verial);
            int i = 0;
            while (getline(iss, token, ' ')) {

                if (i == 0) {
                    ogroot->ogrno = stoi(token);
                }
                if (i == 1) {
                    ogroot->ad = token;
                }
                if (i == 2) {
                    ogroot->soyad = token;
                }
                if (i == 3) {
                    ogroot->ad = ogroot->ad + " " + ogroot->soyad;
                    ogroot->soyad = token;
                }
                i++;
            }
            ogroot->sonraki= new ogrenci();
            ogroot=ogroot->sonraki;
            ogroot->sonraki=NULL;
        }
    }

    if (okufiz.is_open()) {
        while (!(okufiz.eof())) {
            getline(okufiz, verial);
            istringstream iss(verial);
            int i = 0;
            while (getline(iss, token, ' ')) {

                if (i == 0) {
                    iterator->ogrno = stoi(token);
                }
                if (i == 1) {
                    iterator->ad = token;
                }
                if (i == 2) {
                    iterator->soyad = token;
                }
                if (i == 3) {
                    iterator->ad = iterator->ad + " " + iterator->soyad;
                    iterator->soyad = token;
                }
                i++;
            }

            ogroot = bas;
            while (ogroot->sonraki != NULL) {

                if (ogroot->ogrno == iterator->ogrno) { break; }
                if (iterator->ogrno < bas->ogrno) {
                    iterator->sonraki = bas;
                    bas = iterator;
                    iterator=new ogrenci();
                    break;
                }
                if (ogroot->ogrno < iterator->ogrno && iterator->ogrno < ogroot->sonraki->ogrno) {
                    iterator->sonraki = ogroot->sonraki;
                    ogroot->sonraki = iterator;
                    iterator=new ogrenci();
                    break;
                }
                if (ogroot->ogrno < iterator->ogrno && ogroot->sonraki == NULL) {
                    iterator->sonraki = ogroot->sonraki;
                    ogroot->sonraki = iterator;
                    iterator= new ogrenci();
                    break;
                }
                ogroot = ogroot->sonraki;
            }
        }
    }
    if (okueng.is_open()) {
        while (!(okueng.eof())) {
            getline(okueng, verial);
            istringstream iss(verial);
            int i = 0;
            while (getline(iss, token, ' ')) {

                if (i == 0) {
                    iterator->ogrno = stoi(token);
                }
                if (i == 1) {
                    iterator->ad = token;
                }
                if (i == 2) {
                    iterator->soyad = token;
                }
                if (i == 3) {
                    iterator->ad = iterator->ad + " " + iterator->soyad;
                    iterator->soyad = token;
                }
                i++;
            }

            ogroot = bas;
            while (ogroot->sonraki != NULL) {

                if (ogroot->ogrno == iterator->ogrno) { break; }
                if (iterator->ogrno < bas->ogrno) {
                    iterator->sonraki = bas;
                    bas = iterator;
                    iterator=new ogrenci();
                    break;
                }
                if (ogroot->ogrno < iterator->ogrno && iterator->ogrno < ogroot->sonraki->ogrno) {
                    iterator->sonraki = ogroot->sonraki;
                    ogroot->sonraki = iterator;
                    iterator=new ogrenci();
                    break;
                }
                if (ogroot->ogrno < iterator->ogrno && ogroot->sonraki == NULL) {
                    iterator->sonraki = ogroot->sonraki;
                    ogroot->sonraki = iterator;
                    iterator= new ogrenci();
                    break;
                }
                ogroot = ogroot->sonraki;
            }
        }
    }


    okumat.close();
    okufiz.close();
    int i = 0;

    while (bas->sonraki != NULL) {
        cout << i << " - " << bas->ogrno << endl;
        i++;
        bas = bas->sonraki;
    }
}

int main(int argc, char const *argv[]) {

    ogrAl();

    delete bas;
    delete ogroot;
    delete son;
    return 0;
}
