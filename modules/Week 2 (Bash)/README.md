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

Likely chance is, if it's a repitate task, then you can probably automate it.

Things such as making backups, user management, system monitoring, no longer have to be a tideous task for you.

<br>

**Thats interesting, but What basics do I need to know?**

BASH, althouth has it's unique way of scripting structure, it encompasses the same fundamentals as with other languages such as Python and PowerShell.


<u>Here are some commands that are fundamental to BASH:<u>

The 'if' statement - This allows the running of a piece of code so long as the set conditions are met.

e.g 

if [ 1<2 ]
then
    echo "1 is less than 2"
fi


In this example, since 1 is less than 2, it will trigger the block code to run, displaying on the terminal "1 is less than 2".



The 'else' and 'elif' statement - Following on from the 'if' command, 
'elif' - if the set condition was not to true, the 'elif' command allows you to set another condition and run a block of code if that condition has been met
'else' - if the set condition was not to true, then it will run the code after the 'else' statement within the code block. 

e.g.

if [ 1 gt 2 ]
then
    echo "1 greater  than 2"
elif [ 3 gt 4]
    echo "3 greater  than 4"
else
    echo "1 is not greater than 2. 3 is not greater than 4"
fi


In this example, neither the initial 'if' statement no the 'elift' statement is ture. This will lead to the 'else' statement code block running and displaying the text "1 is not greater than 2. 3 is not greater than 4".