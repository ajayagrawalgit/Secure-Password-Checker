

<a href="https://www.buymeacoffee.com/ajayagrawal"> <img width="1145" alt="image" src="https://user-images.githubusercontent.com/94609372/232249353-0ecba570-fd71-4041-a575-8fc6ef8deab5.png"> </a>



<h1 align="center">🛡️ Secure-Password-Checker 🛡️</h1> <p align="center"><b>👑 An Open Source Project 👑 Built with Python 🐍</b></p> <br><br>
<p align="center"><repo-desc></p>

<p align="center">
<a href="https://github.com/ajayagrawalgit/Secure-Password-Checker/blob/master/LICENSE" title="License">
<img src="https://img.shields.io/github/license/ajayagrawalgit/Secure-Password-Checker?label=License&logo=Github&style=flat-square" alt="Secure-Password-Checker License"/>
</a>
<a href="https://github.com/ajayagrawalgit/Secure-Password-Checker/fork" title="Forks">
<img src="https://img.shields.io/github/forks/ajayagrawalgit/Secure-Password-Checker?label=Forks&logo=Github&style=flat-square" alt="Secure-Password-Checker Forks"/>
</a>
<a href="https://github.com/ajayagrawalgit/Secure-Password-Checker/stargazers" title="Stars">
<img src="https://img.shields.io/github/stars/ajayagrawalgit/Secure-Password-Checker?label=Stars&logo=Github&style=flat-square" alt="Secure-Password-Checker Stars"/>
</a>
<a href="https://github.com/ajayagrawalgit/Secure-Password-Checker/issues" title="Issues">
<img src="https://img.shields.io/github/issues/ajayagrawalgit/Secure-Password-Checker?label=Issues&logo=Github&style=flat-square" alt="Secure-Password-Checker Issues"/>
</a>
<a href="https://github.com/ajayagrawalgit/Secure-Password-Checker/pulls" title="Pull Requests">
<img src="https://img.shields.io/github/issues-pr/ajayagrawalgit/Secure-Password-Checker?label=Pull%20Requests&logo=Github&style=flat-square" alt="Secure-Password-Checker Pull Requests"/>
</a>
<a href="https://github.com/ajayagrawalgit/Secure-Password-Checker" title="Repo Size">
<img src="https://img.shields.io/github/repo-size/ajayagrawalgit/Secure-Password-Checker?label=Repo%20Size&logo=Github&style=flat-square" alt="Secure-Password-Checker Repo Size"/>
</a>


<h3 align="center">💻 Compatible with all the Linux Distros, Windows and MacOS 💻<h3>
<p align="center"><b>Specifically Tested on MacOS, RHEL, Windows 10, and Ubuntu</b></p>


<br><br>


## 🛰️ Description / How the tool works ?
Language: `Python` <br>
Libraries Used: `requests`, `hashlib`, `sys`<br>
API Endpoint: `haveibeenpwned`<br>

<br>

**FAQs:**
1. Why this is the **most** secure Password checker Tool  ?
_Because, It does not store your password anywhere even for checking the vulnerabilities. This tool does not send the plain text to the API Endpoint, but, sends SHA-1 Hash._

2. But the Hash can also be decrypted back to Plain Text. What about that ?
_Absolutely ! That is why, this tool sends only the first 5 characters of that hash to the API Endpoint and hence not disclosing even the full hash of your password to the Internet._

**For Better Understanding, Please check the Flow Chart of how this tool works:**
![image](https://user-images.githubusercontent.com/94609372/232309885-f8072b03-012b-4ac7-94ca-fdef2c68f430.png)

All the functionalities shown in the Flow Chart above is divided into small python functions stored in `src/checker-functions.py` and being called in `main.py`. 
It is definitely small, yet an extremely powerful and essential tool to check if the password you're planning to use for any of your account has been a part of any Data Breaches. And if it is, the tool will clearly show you how many times the password you're checking has been a part of Data Breaches.

I hope you find the Description and the Flow-Chart useful. If you have any further questions, Please feel free to reach out and details for that are in _Know Me More_ section below.

Have a great day ahead 🥂 


<br><br>

## 🛠️ Installation Steps (Linux Distros and MacOS)

#### 1. Clone the Repository

```Bash
git clone https://github.com/ajayagrawalgit/Secure-Password-Checker.git
```

<br>

#### 2. Go Inside the Cloned Repository and Change some Permissions (Changing permissions are required for some OS Types)

```Bash
cd Secure-Password-Checker
chmod 755 *
```

<br>


#### 3. Just run the Install Script

```Bash
./install.sh
```

<br><br>

###

<br><br>



## 🛠️ Installation Steps (Windows)
> Note: Make sure that GIT Works and you have Python 3 installed on your machine. If not, please download and install git from <a href="https://git-scm.com/download/win">here</a> and Python from <a href="https://www.python.org/downloads/windows/">here</a>. Once downloaded and Installed, Please follow the steps below:

#### 1. Clone the Repository

```Bash
git clone https://github.com/ajayagrawalgit/Secure-Password-Checker.git
```

<br>

#### 2. Go Inside the Cloned Repository and Run the Python File directly using the command below:

```Bash
cd /d Secure-Password-Checker/src
python3 main.py -h
```
> Above Command will display the help message for the tool.

<br>

As we're running the Python file directly here. We don't need to actually Install the tool on our machine. If you need step by step instructions how to set up python on your windows machine. I found this website quite good. You can definitely refer to <a href="https://www.tutorialspoint.com/how-to-install-python-in-windows">this link</a>.

Also, if you don't want to install Git as well on your Machine, you can also consider downloading the package as a zip file directly from the GitHub itself. Refer the instructions for the same from <a href="https://sites.northwestern.edu/researchcomputing/resources/downloading-from-github/#:~:text=Without%20Git&text=To%20do%20this%2C%20go%20to,likely%20in%20your%20Downloads%20folder.">here</a>.




<br><br>

## ❗ How to Use ? 🦾
 
> Using the tool is pretty easy to be honest ❤ Please read the instructions below according to your OS:️

### For all Linux Distros and MacOS:
**For help:**
```Bash
securepasswordchecker -h
OR 
securepasswordchecker --help
```
<br>

**Tool Syntax:**
```Bash
securepasswordchecker <passwd1> <passwd2> <passwd3> <passwd4> and so on....
```
<br>

**Examples:**
```Bash
$> securepasswordchecker this_is_my_password@123
$> securepasswordchecker iamthequeen@123 kings_password_here1 my_Secure_password@lol
```
<br><br>

### For Windows:
**Move to the `src` folder and execute `main.py` like stated below:**
**For help:**
```cmd
cd /d Secure-Password-Checker/src
```
```Bash
python3 main.py -h
OR
python3 main.py --help
```
<br>

**Tool Syntax (Remains the same):**
```Bash
python3 main.py <passwd1> <passwd2> <passwd3> <passwd4> and so on....
```
<br>

**Examples:**
```cmd
\Secure-Password-Checker\src>   python3 main.py this_is_my_password@123
\Secure-Password-Checker\src>   python3 main.py iamthequeen@123 kings_password_here1 my_Secure_password@lol
```

<br><br>


## 🎊 Future Updates

- [ ] Make the command-line tool accessible across terminal in Windows as well like Linux.
- [ ] May be `Beautify` the text displayed on the terminal.
 
 <br>
 <br>
 
 
 ## 🧑🏻 Know Me More
Developer - <b> Ajay Agrawal </b>
<br>
- 🌌 [Profile](https://github.com/ajayagrawalgit "Ajay Agrawal")
- 🏮 [Email](mailto:ajayagrawalhere@gmail.com?subject=Hi%20from%20<repo-email> "Hi!")
- 🐦 [Twitter Bot (@mickbotsays)](https://twitter.com/mickbotsays)

<br>
<br>
<h2 align="center"> 🤝 Support Me 🤝 <h2>
<p align="center">
<a href="https://www.buymeacoffee.com/ajayagrawal" title="Buy me a Coffee"><img src="https://user-images.githubusercontent.com/94609372/232127833-d03502af-baf2-46e3-a045-0f7c84531a61.png" alt="Buy me a Coffee"/></a>
</p>
<br><br>
<h4>
<br>
<p align="center"> Made with ♥️ in India </p>
<br>
<h4>
