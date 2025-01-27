 <h1>OverTheWire Bandit Guide:</h1>

---
**Level 0**\
<br>
Use the ls command to find the readme text file.
Then use the cat command to see file content.\
<br>
Password: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
<br>

---
**Level 1**\
<br>
Due to the file name to be used as the argument here being unusual, we cannot do the simple cat\
<br>
We have to find another way of using the cat command in order to read this file.\
<br>
Print the current directory by using pwd.\
<br>
Then use this as the argument for the cat command.\
<br>
The command will be: cat /home/bandit1/-\
<br>
Password: 263JGJPfgU6LtdEvgfWU1XP5yac29mFx

---
**Level 2**\
<br>
Due to there being spaces in this command, it would not be suitable  to do cat spaces in this directory\
<br>
This is because the command does not understand that there are spaces in directory name\
<br>
We need to be help and guide the cat command. How we do it is by using the apostrophe symbol (‘) at the beginning and end of the directory name\
<br>
The command will be: cat ‘spaces in this filename’\
<br>
Password: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx

---
**Level 3**\
<br>
Once you enter the Inhere folder, and you use the ls command to find the file, nothing would appear.\
<br>
Why does this mean? Did they not provide the file?\
<br>
They did provide the file, but it is hidden.\
<br>
This is where we need to find the name of the file with the ls command.\
<br>
ls by default does not show hidden files/directories. We need to attach a flag to it so ls can work with our situation.\
<br>
The flag that we will use in this case would be ‘a’.\
<br>
The command will be ls -a\
<br>
Now that we can see there is a hidden file called …Hiding-From-You , we can cat to read the file.\
<br>
The command will be: cat Hiding-From-You\
<br>
Password: 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

---
**Level 4**\
<br>
Similar to level 1 where you have to type out the entire directory path for the cat command to work, you perform the same layout for this level for each file until you find the file with the password.\
<br>
The correct file is with -file07\
<br>
The command will be: cat /home/bandit4/inhere/-file07\
<br>
Password: 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

---
**Level 5**\
<br>
There are many ways of completing this level, but I will go over the tedious way:
With the ls command, you can use options l(lists permissions for each file), a (lists hidden files), and R (recursive which allows the command to apply to every file within the directory).\
<br>
Now you will be able to view all files and their details within the directory, and you can manually go through the files to locate the one that meets the requirements as mentioned within the level challenge details.\
<br>
You will then use the cat command on that file path to read the contents, giving you the password.\
<br>
For me, since I could not scroll down, I had piped this command into the ‘less command so that I could scroll down. I then found the file that fits the description, it was within the maybehere07 directory and was called ‘.file2’\
<br>
Password: HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

---
**Level 6**\
<br>
As it had said that the file was located somewhere within the server, you will need to traverse to the root directory and then use the find command, giving it the parameters of -group and -user.\
<br>
The command will be: find -group bandit6 -user bandit7\
<br>
The file will be located within the .var/lib/dpkg/info directory. You will then use the cat command to obtain the password from that file.\
<br>
Password: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj

---
**Level 7**\
<br>
To solve this level, you will use the grep command to search for the word “millionth” in the data.txt file.\
<br>
The command will be: grep millionth data.txt\
<br>
Password: dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc

---
**Level 8**\
<br>
You need to find the line of text in data.txt that appears only once;\
<br> Sort the file, then use the cat command to view the sorted output.\
<br>
Manually search for the line that appears only once.\
<br>
The command will be: sort data.txt | cat\
<br>
Password: 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM

---
**Level 9**\
<br>
There are two ways that you can solved this.

The first way is, since the Linux system is treating it as a binary file and not a text file, using the command strings data.txt | cat . What this does is that the strings command only retains the readable characters of the file, then the cat command displays them.\
<br>
Another way is using grep -a “=” data.txt . The -a option makes grep treat the file as a text file rather than a binary file.\
<br>
Password: FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey

---
**Level 10**\
<br>
The file is encoded in Base64 format. Encoding is essentially changing readable text to a new format that is unreadable. Here we will have to decode (i.e. reverse the process so that we can read the text again). You would use the base64 command with the -d argument to decode the file. Then, pipe it into cat to display the result.\
<br>
The command will be: base64 -d data.txt | cat\
<br>
Password: dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

---
**Level 11**\
<br>
The file is encoded using ROT13 (a Caesar cipher that shifts letters 13 places). You will need to use the tr command to shift the letters 13 places back.\
<br>
The command will be: cat data.txt | tr ‘A-Za-z’ ‘N-ZA-Mn-za-m’\
<br>
Password: 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4

---
**Level 12**\
<br>
You essentially need to unzip the file again and again depending on what compression method was used on the file.\
<br>
Password: FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

---
**Level 13**\
<br>
Similar to how you have been ssh’ing into the bandit level, you will perform the same action, but this time using the option -i with the name of the private key file. \
<br>
The command will be: ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220\
<br>
Password: The SSH Key. There is no password for this level

---
**Level 14**\
<br>
To solve this level, you will need to connect to the service running on port 30000 using netcat (i.e. nc localhost 30000). This will allow you to communicate with that service. Once connected, enter the password obtained from Level 13. The service will then output the password.\
<br>
Password: 8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo

---
**Level 15**\
<br>
The netcat command would not work here since SSL/TLS  is not supported with that. However, the openssl command will work here as it can create that secure connection with the service that is running on port 30001. You will use this alongside the option of s_client with and the -connect option to create a SSL/TLS connection.\
<br>
The command will be:  openssl s_client -connect localhost:30001\
<br>
You will then submit the password from level 14 and it will respond with a password.\
<br>
Password: kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

---
**Level 16**\
<br>
You will need to scan for open ports using nmap i.e. nmap -p 31000-32000\
<br>
Once you have this, you will need to use the comment from the previous level and test to see which open port allows the SSL/TLS connection. i.e. openssl s_client -connect localhost:[IP GOES HERE]\
<br>
You will then submit the password from level 15 and it will respond with a private key needed for the next level.\
<br>
RSA Private Key:\
MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
DSt2mcNn4rhAL+JFr56o4T6z8WWAW18BR6yGrMq7Q/kALHYW3OekePQAzL0VUYbW
JGTi65CxbCnzc/w4+mqQyvmzpWtMAzJTzAzQxNbkR2MBGySxDLrjg0LWN6sK7wNX
x0YVztz/zbIkPjfkU1jHS+9EbVNj+D1XFOJuaQIDAQABAoIBABagpxpM1aoLWfvD
KHcj10nqcoBc4oE11aFYQwik7xfW+24pRNuDE6SFthOar69jp5RlLwD1NhPx3iBl
J9nOM8OJ0VToum43UOS8YxF8WwhXriYGnc1sskbwpXOUDc9uX4+UESzH22P29ovd
d8WErY0gPxun8pbJLmxkAtWNhpMvfe0050vk9TL5wqbu9AlbssgTcCXkMQnPw9nC
YNN6DDP2lbcBrvgT9YCNL6C+ZKufD52yOQ9qOkwFTEQpjtF4uNtJom+asvlpmS8A
vLY9r60wYSvmZhNqBUrj7lyCtXMIu1kkd4w7F77k+DjHoAXyxcUp1DGL51sOmama
+TOWWgECgYEA8JtPxP0GRJ+IQkX262jM3dEIkza8ky5moIwUqYdsx0NxHgRRhORT
8c8hAuRBb2G82so8vUHk/fur85OEfc9TncnCY2crpoqsghifKLxrLgtT+qDpfZnx
SatLdt8GfQ85yA7hnWWJ2MxF3NaeSDm75Lsm+tBbAiyc9P2jGRNtMSkCgYEAypHd
HCctNi/FwjulhttFx/rHYKhLidZDFYeiE/v45bN4yFm8x7R/b0iE7KaszX+Exdvt
SghaTdcG0Knyw1bpJVyusavPzpaJMjdJ6tcFhVAbAjm7enCIvGCSx+X3l5SiWg0A
R57hJglezIiVjv3aGwHwvlZvtszK6zV6oXFAu0ECgYAbjo46T4hyP5tJi93V5HDi
Ttiek7xRVxUl+iU7rWkGAXFpMLFteQEsRr7PJ/lemmEY5eTDAFMLy9FL2m9oQWCg
R8VdwSk8r9FGLS+9aKcV5PI/WEKlwgXinB3OhYimtiG2Cg5JCqIZFHxD6MjEGOiu
L8ktHMPvodBwNsSBULpG0QKBgBAplTfC1HOnWiMGOU3KPwYWt0O6CdTkmJOmL8Ni
blh9elyZ9FsGxsgtRBXRsqXuz7wtsQAgLHxbdLq/ZJQ7YfzOKU4ZxEnabvXnvWkU
YOdjHdSOoKvDQNWu6ucyLRAWFuISeXw9a/9p7ftpxm0TSgyvmfLF2MIAEwyzRqaM
77pBAoGAMmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=

---
**Level 17**\
<br>
To solve this level, you will have to compare the files passwords.new and passwords.old using the diff command. The diff command will show the differences between the two files, revealing the password.\
<br>
The command will be:  diff passwords.new passwords.old\
<br>
Password: x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO

---
**Level 18**\
<br>
For this level, the .bashrc file runs a script that disconnects you immediately after logging in. To bypass this, include a command in the SSH login itself to directly read the readme file.\
<br>
The command will be:  ssh bandit18@bandit.labs.overthewire.org -p 2220 vim readme\
<br>
Password: cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8

---
**Level 19**\
<br>
The setuid essentially gives you access of whoever the owner is of the setuid program file. In this case the owner of the file is bandit20, and you need to use the program file in order to access the password file as only bandit20 can access the password file.\
<br>
The command will be:  /home/bandit19/bandit20-do cat bandit20\
<br>
Password: 0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO

---
**Level 20**\
<br>
This level requires setting up a listening port on your system and using the bandit20-do program to send the password to your listening port.\
<br>
The command will be: nc -lvp 12345\
<br>
You will then use the setuid program to connect to 12345 port.\
<br>
The command will be: nc localhost 12345\
<br>
Then you will be able to send the password from level 19 within the netcat connection, which will then output the password for the next level.\
<br>
Password: EeoULMCra2q0dSkYj561DX7s1CpBuOBt
