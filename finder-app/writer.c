#include <stdio.h> 
#include <syslog.h>

int main(int argc, char *argv[] )  {
    openlog("writer", LOG_PID, LOG_USER);
    if(argc<2){
        syslog(LOG_ERR,"Numeber of arguments is less than 2");
        return 1;
    
    }

    FILE * f = fopen(argv[1],"w");
    if(f != NULL){
        fprintf(f,"%s",argv[2]);
        char *msgOut;
        asprintf(&msgOut, "Writing %s to %s",argv[2],argv[1]);
        syslog(LOG_INFO,msgOut);
        fclose(f);
        return 0;
    }else{
        syslog(LOG_ERR,"Error in writing the file");
        return 1;
    }

}  