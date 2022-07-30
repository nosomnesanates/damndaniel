#!/bin/sh

echo "

---- SOME OPERATING SYSTEM AND SYSTEM SOFTWARE ----

1. Paging
2. Indexed File Allocation
3. Contiguous File Allocation
4. Linked File Allocation
5. Assembler pass one
6. Assembler pass two

---- MASM ----

7. Add numbers
8. Add numbers with user input
9. Add 16 digit numbers with user input
10. Palindrome
11. Palindrome with user input
19. String Reversal with user input
20. Count Odd or Even
21. Count Vowels
22. Upper Lower Case count
23. Prime or Not Prime
24. Square Cube
25. Largest_smallest
26. Factorial
27. Substring

---- REMAINING OPERATING SYSTEM ----
12. FCFS CPU scheduling
13. SJF CPU scheduling
14. Priority CPU scheduling
15. Round Robin CPU scheduling
16. Absolute loader
17. Relocating loader
18. Single pass Macroprocessor

"

read -p "pick your poison: " choice </dev/tty

echo -e "\n\n"

if [[ choice -eq 1 ]]
then 
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-SS_Lab/master/paging.c
elif [[ choice -eq 2 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-SS_Lab/master/file_indexed.c
elif [[ choice -eq 3 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-SS_Lab/master/file_contiguous.c
elif [[ choice -eq 4 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-SS_Lab/master/file_linked.c
elif [[ choice -eq 5 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-SS_Lab/master/Assembler/assembler_pass1.c
elif [[ choice -eq 6 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-SS_Lab/master/Assembler/assembler_pass2.c
elif [[ choice -eq 7 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-MM-Lab/master/Add.asm
elif [[ choice -eq 8 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-MM-Lab/master/Add_User.asm
elif [[ choice -eq 9 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-MM-Lab/master/Add_User_16.asm
elif [[ choice -eq 10 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-MM-Lab/master/Palindrome.asm
elif [[ choice -eq 11 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/S5-MM-Lab/master/Palindrome_User.asm
elif [[ choice -eq 12 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/OS-Lab-S4/master/fcfs.c
elif [[ choice -eq 13 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/OS-Lab-S4/master/sjf.c
elif [[ choice -eq 14 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/OS-Lab-S4/master/priority.c
elif [[ choice -eq 15 ]]
then
  wget -q -O- https://raw.githubusercontent.com/gokz1119/OS-Lab-S4/master/Roundrobin.c
elif [[ choice -eq 16 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/Absolute_Loader.c
  echo -e "\nINPUT:\n\nH COPY 001000 00107A\nT 000000 1E 140033 481039 100036 280030 300015 481061 3C0003 20002A 1C0039 30002D\nT 002500 15 1D0036 481061 180033 4C1000 801000 601003\nE 000000"
elif [[ choice -eq 17 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/Relocating_Loader.c
  echo -e "\nINPUT:\n\nH 1000 200\nT 1000 11001 141033 481039 901776 921765 571765\nT 2011 11110 231838 431979 891060 661849 991477\nE 1000"
elif [[ choice -eq 18 ]]
then

echo -e "#include<stdio.h>\n#include<conio.h>\n#include<string.h>\n#include<stdlib.h>\nvoid main()\n{\nFILE *f1,*f2,*f3,*f4,*f5;\nint len,i,pos=1;\nchar arg[20],mne[20],opnd[20],la[20],name[20],mne1[20],opnd1[20],pos1[10],pos2[10];\nclrscr();\nf1=fopen(\"input.txt\",\"r\");\nf2=fopen(\"namtab.txt\",\"w+\");\nf3=fopen(\"deftab.txt\",\"w+\");\nf4=fopen(\"argtab.txt\",\"w+\");\nf5=fopen(\"op.txt\",\"w+\");\nfscanf(f1,\"%s%s%s\",la,mne,opnd);\nwhile(strcmp(mne,\"END\")!=0)\n{\nif(strcmp(mne,\"MACRO\")==0)\n{\nfprintf(f2,\"%s\\n\",la);\nfseek(f2,SEEK_SET,0);\nfprintf(f3,\"%s\\t%s\\n\",la,opnd);\nfscanf(f1,\"%s%s%s\",la,mne,opnd);\nwhile(strcmp(mne,\"MEND\")!=0)\n{\nif(opnd[0]=='&')\n{\nitoa(pos,pos1,5);\nstrcpy(pos2,\"?\");\nstrcpy(opnd,strcat(pos2,pos1));\npos=pos+1;\n}\nfprintf(f3,\"%s\\t%s\\n\",mne,opnd);\nfscanf(f1,\"%s%s%s\",la,mne,opnd);\n}\nfprintf(f3,\"%s\",mne);\n}\nelse\n{\nfscanf(f2,\"%s\",name);\nif(strcmp(mne,name)==0)\n{\nlen=strlen(opnd);\nfor(i=0;i<len;i++)\n{\nif(opnd[i]!=',')\nfprintf(f4,\"%c\",opnd[i]);\nelse\nfprintf(f4,\"\\n\");\n}\nfseek(f3,SEEK_SET,0);\nfseek(f4,SEEK_SET,0);\nfscanf(f3,\"%s%s\",mne1,opnd1);\nfprintf(f5,\".\\t%s\\t%s\\n\",mne1,opnd);\nfscanf(f3,\"%s%s\",mne1,opnd1);\nwhile(strcmp(mne1,\"MEND\")!=0)\n{\nif((opnd[0]=='?'))\n{\nfscanf(f4,\"%s\",arg);\nfprintf(f5,\"-\\t%s\\t%s\\n\",mne1,arg);\n}\nelse\nfprintf(f5,\"-\\t%s\\t%s\\n\",mne1,opnd1);\nfscanf(f3,\"%s%s\",mne1,opnd1);\n}\n}\nelse\nfprintf(f5,\"%s\\t%s\\t%s\\n\",la,mne,opnd);\n}\nfscanf(f1,\"%s%s%s\",la,mne,opnd);\n}\nfprintf(f5,\"%s\\t%s\\t%s\",la,mne,opnd);\nfclose(f1);\nfclose(f2);\nfclose(f3);\nfclose(f4);\nfclose(f5);\nprintf(\"files to be viewed \\n\");\nprintf(\"1. argtab.txt\\n\");\nprintf(\"2. namtab.txt\\n\");\nprintf(\"3. deftab.txt\\n\");\nprintf(\"4. op.txt\\n\");\ngetch();"
elif [[ choice -eq 19 ]]
then
  wget -q -O- https://raw.githubusercontent.com/adithyaanilkumar/ss-lab/master/MASM/masm-extra-possible-qstns/string_reversal.asm
elif [[ choice -eq 20 ]]
then
  wget -q -O- https://raw.githubusercontent.com/adithyaanilkumar/ss-lab/master/MASM/count_odd_even.asm
elif [[ choice -eq 21 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/vowels.asm
elif [[ choice -eq 22 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/upper_lower_count.asm
elif [[ choice -eq 23 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/prime_or_not.asm
elif [[ choice -eq 24 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/square_cube.asm
elif [[ choice -eq 25 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/largest_smallest.asm
elif [[ choice -eq 26 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/factorial.asm
elif [[ choice -eq 27 ]]
then
  wget -q -O- https://raw.githubusercontent.com/devan-MEC/ssmm/main/substring2.asm
else 
  echo "Invalid: $choice"
fi
#clear
