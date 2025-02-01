**Linux - what is it:**

It is a operating system that is quite popular, particularly with those that work within technology. It is highly customisable and flexible to suit many needs, whether you want to use it to host a server, or do automations, etc.

  
---
<br>

**What language does Linux use:**

Linux uses something called shells, which is essentially binaries that allow you to interact with the Linux system through a terminal. The default shell is called BASH (i.e. Borne Again Shell), but there are other different shells such as ZSH which are essentially different ‘flavours’ of BASH, in terms of their layout. The choice of shell depends on your preference, but BASH will typically be the most used shell with those that work within Tech.


---
<br>

**What are some typical commands that you may use within BASH:**

  
| **Command** | **Description**                                                                                   |
|-------------|---------------------------------------------------------------------------------------------------|
| `ls`        | Allows you to view the current directory contents. A directory is essentially a folder.           |
| `cd`        | Allows you to change between directories.                                                        |
| `cp`        | Allows you to copy files across directories.                                                     |
| `mv`        | Allows you to move and rename files.                                                             |
| `mkdir`     | Allows you to create directories (i.e. folders).                                                 |
| `rm`        | Allows you to delete files.                                                                      |
| `rmdir`     | Allows you to delete EMPTY directories.                                                          |
| `grep`      | Allows you to search files for strings (i.e. words).                                             |
| `cat`       | Allows you to read the contents of the file.                                                     |
| `echo`      | Displays the contents of the file.                                                               |
| `touch`     | Allows you to create an EMPTY file.                                                              |
| `chmod`     | Allows you to amend the permissions of the file for the user (owner), group, and non-owners.     |
| `head`      | Displays the first lines of the file (by default, the first 10 lines).                           |
| `less`      | Displays the last lines of the file (by default, the last 10 lines).                             |
| `sudo`      | Allows you to perform privileged actions, e.g., modifying system files that are otherwise locked. |
| `man`       | Allows you to view the manual for commands. Helpful for finding the correct options/flags to use. |

There are much more commands, but these ones should help you get started and will typically be used in many tech roles on a day-to-day basis.

  
---
<br>

Here are some extra bits of information

<br>  

**File/Folder Permissions:**

To expand upon the chmod command. You are able to use this command to edit file permissions. There are three levels of access for a file/directory:

\-          Read (r)\
\-          Write (w)\
\-          Execute (x)

You can use these letter notations when changing file/folder permissions.
<br>

<br />

Or you can use number notations:
<br>

\-          4 means read\
\-          2 means write\
\-          1 means execute

For example, if I want to give myself read and write permissions on a particular file, it will be the number 6 (4 for read + 2 for execute). If I wanted to give myself read, write, and execute, it will be 7 (4 for read + 2 for write + 1 for execute)

<br>
<br>
You are also able to change the owner of the file/directory by using the following:
<br>
<br />

\-          chown – changes the user owner\
\-          chgrp – changes the group owner