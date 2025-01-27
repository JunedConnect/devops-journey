**What is Git:**\
<br>
It is a version control tool that allows you create snapshots of your code i.e. versions, allowing you to be able to switch between these versions/snapshots.

---
<br>

**Why do I need Git:**


It allows better management of your code. And where’s there is better management, there is more productivity, more efficiency, and less headache.

Here are some examples of where GIT can help you:
- Accountability – It has features of being able to see who was responsible for versions of the code, which keeps everyone accountable of their work.
- Compliance – Due to the formalisation process for code development and deployment, it means that your company stands a better chance at with those bothersome audits (and that’s coming from an IT auditor).
- Bug Fixing – To due to ability to roll-back versions of code, you can better manage incidents that affect business operations, while debugging the code in the background.


---
<br>

**How does it work:**\
<br>
<u>Before we cover this, lets quickly go over what branches are;</u>\
Branches are variations of the original code i.e. the main branch. It allows developers to edit the original code without affecting it. It also allows multiple developers to work on the original without there being any conflict. Once developers have updated the code, and it has gone through appropriate testing and approvals, the variation of the code can be used to update the original code.


To oversimplify things, you will have two branches, main branch and sub branch:
Main Branch – The ‘live’ area
Sub Branch – The ‘development and testing’ area

<br>
<br>
You will perform development and testing of a new feature, or even a bug fix) in the sub-branches. Once the code change has been authorised to be pushed to the main branch (i.e. where the live code sits), you will raise a pull request. This will be approved by senior management, thus allowing the code to go live.

<br>

The workflow will look something like this:


1) Add – This will add the change onto your Local Repository (i.e. the project on your computer), NOT your Remote Repository (i.e. the project on the GitHub website)
2) Commit – Submitting a change to the repository with a description
3) Push – Pushes the change from LOCAL Repo to Remote Repo
4) Pull – Syncs the Local Repo and Remote Repo so that they are both are up to date
<br>
<br>
<br>

<u>Quick note</u>: There are two things to keep in mind If you push changes from Local to Remote Repository:
-	On the SAME branch (i.e. main branch), it won’t require the request to be accepted on GitHub website.
-	From a sub branch to the main branch, it will come in the form of a pull request and will need to be approved (on the GitHub website) before being merged into the main branch.

<br>
This is of course a barebones explanation, but that is the gist of how you can use GIT.
<br>
<br>

---
**Commit best practices:**
-	Commit often so it is easier to rollback code versions to more specific points when needed
-	Commit descriptions should be clear and concise, mentioning WHAT change was made and WHY
-	Have one commit for each new/modified feature/function. Do not have multiple commits for each new/modified feature/function
-	Test your changes before making a Commit
-	Have tickets (i.e. on a ticketing system) raised for each commit so it is simple to refer to the ticket on details on commit if the need arises

---
<br>
Some extra things to keep a note of
<br>
<br>

**Squashing Commits:**\
Combining commits together to form one commit. This is useful when you have made multiple commits for one feature and now you want to combine all these commits into one single commit (you can see this being one of the points in ‘commit best practices’).

**Merge Conflicts:**\
Conflicting pieces of code between the Local Repository and Remote Repository. They appear when the sub-branch is based off an old version of the main branch (which can happen if you updated the main branch after creating the sub branch), resulting in a conflict when you attempt to merge the sub branch back into the main branch


**What is a README.MD file:**\
This is a file that gives an introduction and explanation of the repository directory and its content. It is useful for anyone viewing the repo in order for them to understand what it is about. If you need an example, well you’re ready a README.md file right now 😀






