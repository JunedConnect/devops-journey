**What is Bash?**\
<br>

Bash is a scripting language that is used, not only with Linux, but with a wide range of systems, allowing you to create scripts. These scripts interact within the system.

Interacting with the Operating System doesn't sound that useful...

Well, that would be an oversimplification.

<br>

**So how is it useful?**

Simply put, it allows you to automate.
<br>
And Automation is amazing.

<br>

Have you ever sat there doing a task that you wish you could you could not do anymore.. but you still have to.

Likely chance is, if it's a repetitive task, then you can probably automate it.

Things such as making backups, user management, system monitoring, no longer have to be a tedious task for you.

<br>

**Thats interesting, but What basics do I need to know?**

BASH, although has it's unique way of scripting structure, it encompasses the same fundamentals as with other languages such as Python and PowerShell.

<br>

Here are some of the basics:

<b>Variables</b> - These are words that store data within them. They allow for code to written and read more easily. For example, if you have some data that is quite lengthy, and is used repetitively throughout the script, you can store it within a variables, and call that variable when that piece of data is needed.

<b>Parameter</b> - This is essentially any data that is passed when you are about to execute a script. It allows the script executer to provide data that can then be used to run the script. For example, the script may want to display your name with a warm welcome, but requires to know your name in the first place. So, when you are executing the script, you can provide a parameter with your name, allowing the script to utilise it and give you a warm welcome.

<b>Comments</b> - When you are writing complex pieces of code, it would be handy to put in some comments for future reference. This will help you (or anyone else) understand the code. You can set comments by using the # followed by the comment on the same line.

<br>

<u>Here are some commands that are fundamental to BASH:</u>

<b>The 'if' statement</b> - This allows the running of a piece of code so long as the set conditions are met.

e.g

```bash
if [ 1<2 ]
then
    echo "1 is less than 2"
fi
```

In this example, since 1 is less than 2, it will trigger the block code to run, displaying on the terminal "1 is less than 2".

<br>

<b>The 'else' and 'elif' statement</b> - Following on from the 'if' command, 
'elif' - if the set condition was not to true, the 'elif' command allows you to set another condition and run a block of code if that condition has been met
'else' - if the set condition was not to true, then it will run the code after the 'else' statement within the code block. 

e.g.
```bash
if [ 1 > 2 ]
then
    echo "1 greater  than 2"
elif [ 3 > 4]
    echo "3 greater  than 4"
else
    echo "1 is not greater than 2. 3 is not greater than 4"
fi
```

In this example, neither the initial 'if' statement no the 'elif' statement is true. This will lead to the 'else' statement code block running and displaying the text "1 is not greater than 2. 3 is not greater than 4".

<br>

<b>The 'for' statement</b> - This allows you to execute a block of code iteratively for a set number of times that you define.

e.g
```bash
touch test.txt

for (( i=1; i<=10; i++ ))
do
    echo "$i" >> test.txt
done
```

In this example, I have created a test file for any data to be outputted into. Next, the 'if' statement has a letter with a defined value i.e i=1. Every time the block of code runs, it will increase the value of the letter by 1. The block of code will keep on executing until the value of i no longer meets the requirements for the for' command i.e. i has to be less than (or equal to) 10.

<br>

<b>The 'while' statement</b> - This allows you to continuously execute a piece of code, so long as the set condition is met.

e.g
```bash
while [ 1=1 ]
do
    echo "1=1"
done
```

In this example, the while loop will continue to echo "1=1" so long as the condition (1=1) is true. In this particular example, since 1=1 is always true, the block of code will continue to run indefinitely (unless you stop the command yourself).