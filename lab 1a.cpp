#include<stdio.h>
#define max 100
int main() {
    char str[max],f='a';
    int i;
    printf("Enter the string to be checked: ");
    scanf("%s",str);
    for(i=0;str[i]!='\0';i++) {
        switch(f) {
            case 'a': if(str[i]=='0') {
                f='b';
            } else {
                f='d';
            }
            break;
            case 'b': if(str[i]=='0') {
                f='a';
            } else {
                f='c';
            }
            break;
            case 'c': if(str[i]=='0') {
                f='d';
            } else {
                f='b';
            }
            break;
            case 'd': if(str[i]=='0') {
                f='c';
            } else {
                f='a';
            }
            break;
        }
    }
    if(f=='a') {
        printf("\nString is accepted");
    } else {
        printf("\nString is not accepted");
    }
}
