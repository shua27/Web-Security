Phishing

This package has been designed to use a combination of email and a website to scrape a user's computer for exploitable information. To best test for security vulnerabilities, the most valuable thing we can have is information. This exploit will work on any environment, as there is no real malicious code being gathered. 

Our goal will be to obtain operating system and default browser information from a user at a specified email address.

How to use:
	- Setup a webserver to host the index.php and post.php file along with the js.
	- See the file usage for email.html and remove localhost references. 
	- Go to a linux installation that has the program mutt (html email sender) installed. 
	- Edit the emails.txt file and add all the targets 
	- >>> phishing.sh
	- Wait for information to be posted to user-data.txt


Important files: 

Scripts: 	
	scripts/email.html --> This file is the file that we will actually be sending to users. The current file has a fake password change email from facebook.com, but any phishing email can be used. If this package is every used in the future, this file should be edited to replace "localhost:80" with the actual IP of a web server. 

	scripts/emails.txt --> A list of emails that the phishing attempt will be sent to. 

	scripts/phishing.sh --> A bash script that will iterate through the emails.txt file, replacing templated info in the email.htlm file with information for each of the email recipients.

	replace.sh --> [replace.sh [someEmail]] This script will take in one argument, and create a temp file that is a edited version of email.html that is no longer generic, but tailored to a specific email address.

	scripts/temp --> File will be created every time we send an email, it will be recreated for each iteration on the emails.txt file 

Web Side:

	js: 
		js/exploit.js: Does most of the work for the back-end side. This file will gather the user information from a variable called "navigator" that is always accessable to javascript. This file also runs an ajax call to post.php to save the information.

		js/jquery-2.1.4.min.js: Classic js library, gotta have it. 

	php: 
		index.php: The file that any web server will see as the main file to direct to. Important that any webserver has php installed for this to work. 

		post.php: Takes post information and records it in the file user-data.txt

	Database: 
		For smaller attackes, we can just use user-data.txt to save all of our information. The info saved here will tell us the email address, operating system and the versions of browser. Larger attacks may want a real DB.

Dogs: 
	Abandoned project. Could be picked up and used for some sort of phishing. Decent styles. 
	 