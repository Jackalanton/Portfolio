#!/bin/bash 
      
echo "User Accounts:" 

awk 'BEGIN {    
    FS=":"; 
      
    for (i = 1; i <= 100; i++) printf("_"); printf("\n");
      
    printf("| \033[34m%-19s\033[0m| \033[34m%-9s\033[0m| \033[34m%-9s\033[0m| \033[34m%-33s\033[0m| \033[34m%-19s\033[0m|\n", "Username", "UserID", "GroupID", "Home", "Shell");
    
    print "|--------------------|----------|----------|----------------------------------|--------------------|"
} 

{
    if ($7 == "/bin/bash")
    
        printf("| \033[33m%-18s\033[0m | \033[35m%-8s\033[0m | \033[35m%-8s\033[0m | \033[35m%-32s\033[0m | \033[35m%-18s\033[0m |\n", $1, $3, $4, $6, $7);  
} 
      
END { 
    print "|____________________|__________|__________|__________________________________|____________________|"
}' /etc/passwd