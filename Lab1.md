# **Lab Report 1 - A Guide to Installation/Setup**

Welcome to CSE 15L! The following Markdown Page will help assist you in your guide to setting up `ieng6` as well as being able to try out some commands in a remote server!

But first let's set up a valid code editor.

## **Part 1**: Setting up VSCode

VSCode is short for *Visual Studio Code* : a free code editor that is available on all platforms. As I had initially done this installation on Mac OS prior to the lab, I'll be commenting on the steps necessary for Mac, as well as the lack thereof of setting up Git and Bash on Windows. 

First, head to this link: [Download VSCode](https://code.visualstudio.com/) to start off the installation process. 

You should come to a screen that looks like this!

<img width="1425" alt="Screenshot 2023-01-12 at 1 06 08 PM" src="https://user-images.githubusercontent.com/114899512/212182141-550ac500-631c-4365-9b59-ee77d217d474.png">

Follow the onscreen directions to install VSCode. Ensure that you download the **Stable Version** of VSCode, relative to your OS. Note: I was using an Intel Mac and there was no difference between ARM/AMD Chip Macs and Intel Macs. However, Windows had different installation processes. 

Once the .dmg file is downloaded, open it up and drag the VSCode icon to your Applications folder.


Now feel free to open up VSCode and see whether you reach this screen.

<img width="1440" alt="Screenshot 2023-01-12 at 1 15 34 PM" src="https://user-images.githubusercontent.com/114899512/212182689-4ced8267-3237-4467-8c6e-92b68281309a.png">

Congratulations! VSCode is installed and you will be able to use the integrated terminal to run commands in the future!

## **Part 2**: Remotely Connecting

### *Part 2.1* Setting up your CSE 15L Account

Now that you have a valid code editor, we should learn how to connect to `ieng6` remotely. UCSD has already allocated space for you to work on a remote server, but we need to reset your account password first. 

Head to this [link](https://sdacs.ucsd.edu/~icc/index.php) and type in your UCSD username and Student ID. Your student ID should be in the format of `A********` and your username should be the same as the part before your email. 

<img width="1425" alt="Screenshot 2023-01-12 at 1 21 38 PM" src="https://user-images.githubusercontent.com/114899512/212183979-ffeae9f7-7dfa-47da-b92b-680266fecdf3.png">

Click submit and you should be redirected to a page that looks like this: 
<img width="1439" alt="Screenshot 2023-01-12 at 1 23 39 PM" src="https://user-images.githubusercontent.com/114899512/212185324-63442884-8f4e-4ca0-976e-12d5c32d7bef.png">
Click on the button with underneath *Additional Accounts*, and from there reset your password while ensuring that you don't reset your MyTritonLink Account. 
You should come to a screen that looks like: 
<img width="1552" alt="Screenshot 2023-01-14 at 5 52 00 PM" src="https://user-images.githubusercontent.com/114899512/212511215-ee934b86-c83b-42fa-bd3d-7ae1f25d0542.png">
Enter your credentials and click submit. This is where it gets a bit more confusing. 
<img width="1439" alt="Screenshot 2023-01-14 at 5 53 56 PM" src="https://user-images.githubusercontent.com/114899512/212511725-79096baa-f64b-4439-8bc1-e5bc4aaf1f03.png">
Here you should do the following actions:
1. Enter your current password, this could be your MyTritonLink password.
2. Type in the new password you want to set. This will be the password that you use to access the remote server(*A.K.A `ieng6`*). 
3. Use your mouse and select the field that says **Change My TritonLink Password** and set that to **No**.
4. Now click on the **Confirm Password** Field and click Enter. If you have done everthing correctly, you should directed to a page that says *Password Changed Successfully*. However, this will take 10-15 minutes to take effect.
**Do Not Click on Check Password** as it will fail to change your CSE 15L Password. 

    - If you are unable to progress when clicking enter, try using a Windows Machine or Desktop to reset your password. 

### *Part 2.2* Connecting to `ieng6`
Using either terminal or VSCode's integrated terminal(which can be accessed by using Ctrl + \`), type in the following command:

`ssh cs15lwi23zzz@ieng6.ucsd.edu`

where `zzz` is your username. Your username may only have two characters and that is okay as well! 

On terminal, you'll be prompted to accept an *RSA Fingerprint* on your machine. Type in `yes` and continue. What this will do is upload a file onto your machine that has your credentials to access the remote server. Type in your newly reset password and your device is now authenticated. You should have  a similar terminal output to this: 
<img width="1545" alt="Screenshot 2023-01-12 at 1 32 20 PM" src="https://user-images.githubusercontent.com/114899512/212186354-d431797f-80be-4b3a-856d-7bd19d9cf524.png">
 What should be there is a prompt for logging in, a section for Problems, Suggestions, or Feedback, as well as a welcome prompt with how much CPU you are using  as well as a list of HostNames in your Cluster. 


## **Part 3**: Trying out some commands
 Once you are here, feel free to explore different commands like `cd, cat, cp, ls, ls -a, mkdir, rm` and exploring the file path structure, which follows the path `/home/linux/ieng6/cse15lwi23/cse15lwi23zzz`. You can create new files, explore the structure as well as use `cat /home/linux/ieng6/cs15lwi23/public/hello.txt` to get a nice welcome message. 

 Starting off with the basics, typing `ls` should give you this output: 
 
 <img width="365" alt="Screenshot 2023-01-14 at 6 12 58 PM" src="https://user-images.githubusercontent.com/114899512/212519179-11714417-f60f-458e-b941-371eae8bd1e3.png">

 Where there is a file called `hello.txt` and a folder called `perl5`.

 Feel free to `cd` into the `perl5` folder and type `ls` again. You should see no files present because the folder is empty. 
 Now use `cd ..` to go back to the parent directory. 

 Some other interesting commands you could try are `ls-a` which shows every file in the directory, including hidden files. 
 You should get an output similar to this:
<img width="895" alt="Screenshot 2023-01-14 at 6 17 31 PM" src="https://user-images.githubusercontent.com/114899512/212519616-f3aad708-64a9-438b-ad67-c716c29de092.png">

 Or you could try `cd ~` to take you back to your home directory.
 You can confirm this by running `ls` to see the list of items are exactly the same as the first time you ran `ls`.
 
<img width="294" alt="Screenshot 2023-01-14 at 6 19 43 PM" src="https://user-images.githubusercontent.com/114899512/212519618-6f38e660-5862-405d-9ae6-2a7397e3e975.png">

 Once you are done running commands, feel free to press **Ctrl + D** to exit or simply type the word `exit` in the command line to exit the server. 

 Congrats! You're set up for 15L!

