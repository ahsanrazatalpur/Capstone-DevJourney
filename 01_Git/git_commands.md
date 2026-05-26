here are all basic cmd for opration on git


1. First check if git installed or check git version

   cmd : git --version
   output : git version 2.54.0.windows.1

2. use cmd ctrl + shift + p on Vs code editor and search publish to github it land top browser vs coe login now login your github accound 

3. before do or add anything in git for the very first time tell git who you are ? by adding username and email , the email and username must be same as your github account
use these cmd :
                git config --global user.name "your-github-username"  it tell git your github username
                git config --global user.email "your-github-email"    it tell git your github email


4. Now make or use repo eg : im making new repo with git + cmd
    There are two type of repos 
       1. local repo (on pc)
       2. Github onlin repo (github)

     First we make local repo on our pc 
         1. mkdir projectname 
         2. cd projectname
         3. git init

         in git local repo 
           - we create new folder there 
           - we shift terminal to that folder
           - use git init where we initialize git there to track all changes or change normal folder into local git repo by adding hiiden .git folder  but it doesn't any changes it just able to track changes
           - then do coding whatever you want in the last of coding use cmd "git add ." to say manually to git to move all changes to staging area
           - to see these all changes use cmd "git status" to chck all changes of code 
  
Why we make local git repo ?
     - By making local git repo we give superpower to our folder as compare to normal folder 

      normal folder /
         index.html
         style.css
         script.js

    - This is only normal folder it doesnt know
        - To restore old code back in case code break
        - save all changes and snapshot commits 
        - to see what i do yesterday
        - save all history of code 
       

    - but if make it local git repo then
       - it save all history 
       - It track all changes
       - it rollback to older version in case of break code 
       - it is fast and use for testing
       - safe for testing and development

       To see all changes 
           - use cmd  : 
             git init          - initilize git repo 
             git add .         - upload file / changes
             git commit - m    - to commit or messsage with any change 
             git log --online  - to see all code version (every commit = new version where we can rollback our code)
             git checkout commitid - safest or temporary way to shift to older version
             git checkout main  - to comback real or existing version of code
             git reset --soft commitid -safest way to shift to that version of code
             git reset --hard commitid - to goto that version and delete all changes
             git remote add origin repo-link - connect git repo 
             git push -u origin main  - upload code
             git reset - undo changes


        

2. Github Online Repo : 
 
 A platform or project space where we upload our git local repo on internet 
 
 Git local repo
   - store code on pc
   - can tace all version 
   - restore old code


 Git online repo
    - Working with team 
    - backup code online
    - can be acces anywhere
    - Portfolio / showcase project show 


Github online repo cmd (It use same git cmd) :

     - git remote add origin repo-link    // Link repo 
     - git push -u origin main            // upload code on internet (github)
     - git pull or just git pull origin main  // doewnlaod latest version of your project
     - git clone repolink  to copy or download that repo in your pc
     - git push // for the next time your working on same repo



             
Git = version control tool (local system)
GitHub = online platform for Git projects