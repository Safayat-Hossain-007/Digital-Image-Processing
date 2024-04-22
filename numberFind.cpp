#include<bits/stdc++.h>
using namespace std;
int main(){
    int sami[10];
    for(int i =0;i<10;i++){
        scanf("%d",&sami[i]);
    }

    // for(int i=0;i<10;i++){
    //     cout<<sami[i]<<" ";
    // }
    int max =sami[0];
    for(int i=0;i<10;i++){
        if(max<sami[i]){
            max = sami[i];
        }
    }
    printf("%d",max);
}