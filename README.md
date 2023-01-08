READ ME FILE part 1

This is one of the homework exercises from the Bootcamp and I am describing in detail what I did.

This homework is named:
# VBA Homework: The VBA of Wall Street.
This was the first read me file.

First, I created a brand-new repository on github named ‘VBA-Challenge’ as requested.

I have elected to initialise a Repository from my Local MackBook.

The steps that I did are reported below:
1.	Created a project folder inside my ut(University of Toronto).
(base) Macintosh:ut anabelscaranelo$ mkdir VBA-Challenge

2.	Initialised the local git repository on my Mac
(base) Macintosh:ut anabelscaranelo$ mkdir VBA-Challenge

	(base) Macintosh:VBA-challenge anabelscaranelo$ git init 
Initialized empty Git repository in /Users/anabelscaranelo/ut/VBA-Challenge/.git/

3.	Then I went to my github.com account and created a repository there to obtain the url and place it on my computer. I have created the repository for the challenges using the git clone on terminal.
(base) Macintosh:VBA-challenge anabelscaranelo$ git clone https://github.com/ascaranelo/VBA-Challenge

4.	 The challenge has a spreadsheet for test that is huge (over 22k lines), so I excluded several lines and make it a test of 100 cases. This was the first commit. I created this file on my computer and push it to git hub repository.
(base) Macintosh:VBA-Challenge anabelscaranelo$ mkdir VBA-Challenge
(base) Macintosh:VBA-Challenge anabelscaranelo$ ls
README.md			alphabetical_testing_short.xlsx

(base) Macintosh:VBA-Challenge anabelscaranelo$ git add alphabetical_testing_short.xlsx
(base) Macintosh:VBA-Challenge anabelscaranelo$ git commit -a
[main cc4e315] first commit EXIT  Please enter the commit message for your changes. Lines starting
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 alphabetical_testing_short.xlsx
(base) Macintosh:VBA-Challenge anabelscaranelo$ git push
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 16 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 5.57 MiB | 2.01 MiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:ascaranelo/VBA-Challenge.git
   ded5cdb..cc4e315  main -> main

5.	After this initial test file was committed using the command on terminal, I started working on the VBA script. This will be part of the new READ ME file.
