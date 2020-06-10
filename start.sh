#!/bin/bash

 dir=$(pwd)

 
 chrome="chromedriver"
 geckodriver="geckodriver"

 npmLog=$dir/"npmlog.txt"
  
 chromeDriver=$dir/$chrome
 geckodriver=$dir/$geckodriver

dpkg -s "unzip" &> /dev/null

if [ $? -eq 0 ]; then
    echo "unzip  is installed!"
else
    echo "unzip  is NOT installed!"
	sudo apt-get install unzip
fi

dpkg -s "tar" &> /dev/null

if [ $? -eq 0 ]; then
    echo "tar  is installed!"
else
    echo "tar  is NOT installed!"
	sudo apt-get install tar
fi

dpkg -s "npm" &> /dev/null

if [ $? -eq 0 ]; then
    echo "npm installed & expected version v6.14.4"
	version=$(npm -v)
	echo "current npm version" $version
else
    echo "npm  is NOT installed!"
fi

if which node > 0 
then
	echo "node installed & expected version v8.10.0"
	version=$(node -v)
	echo "current node version" $version
else
	echo "Node is Not installed"
fi
	
cd $dir

if [ -f $chromeDriver ] ; then
	 echo "chromedriver exist"
else
	wget  https://chromedriver.storage.googleapis.com/80.0.3987.106/chromedriver_linux64.zip
	
	unzip $dir/chromedriver_linux64.zip -d $dir/
	rm -rf $dir/chromedriver_linux64.zip
fi


if [ -f $geckodriver ] ; then
	echo "geckodriver exist."
else
	
	wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
	tar -xvf $dir/geckodriver-v0.26.0-linux64.tar.gz
	rm -rf $dir/geckodriver-v0.26.0-linux64.tar.gz
fi

export chromedriver=$chromeDriver
export geckodriver=$geckodriver

if [ -f $npmLog ] ; then
	echo "npm already installed packages"
else
	sudo npm i
	echo "init npm installed" >> $npmLog
fi

sudo npm start