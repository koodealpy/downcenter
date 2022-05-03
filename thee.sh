zenity --question --title="Uninstalling Firefox" --text="Your old firefox data(including settings,bookmarks,saved logins,passwords and cache) will be permanently deleted.
Do you want to continue....?" --height=100 --width=500 --ok-label="Yes" --cancel-label="No" 2>/dev/null

if [ $? = 0 ] ; then
sudo rm -rf $HOME/Desktop/firefox-esr.desktop
sudo rm -rf $HOME/Desktop/firefoxlatest.desktop
sudo rm -rf $HOME/Desktop/firefox.desktop
sudo rm -rf $HOME/Desktop/firefox53.desktop
sudo rm -rf /usr/bin/firefox

sudo apt-get purge firefox -y
sudo apt-get purge firefox-esr-mozilla-build -y
sudo apt-get purge firefox-locale-fr -y
sudo apt-get purge firefox-mozilla-build -y
sudo apt-get purge firefox-locale-en -y
sudo apt-get purge firefox-locale-es -y
sudo rm -rf /usr/lib/firefox
sudo rm -rf /opt/firefox
sudo rm -rf /usr/lib/firefox-esr
sudo rm -rf /usr/local/firefox

sudo rm -rf /usr/share/applications/firefox.desktop
sudo rm -rf /usr/share/applications/firefox-esr.desktop
sudo rm -rf /usr/share/applications/firefoxlatest.desktop
sudo rm -rf /usr/share/applications/firefox53.desktop


sudo rm -rf /usr/share/applications/firefox-mozilla-build.desktop
sudo rm -rf /usr/share/applications/firefox-esr-mozilla-build.desktop
sudo rm -rf /usr/share/applications/firefox-latest.desktop
sudo rm -rf $HOME/.mozilla
sudo rm -rf $HOME/.cache/mozilla
sudo mkdir -p $HOME/.mozilla
sudo chmod -R 777 $HOME/.mozilla
sudo mkdir -p $HOME/.cache/mozilla
sudo chmod -R 777 $HOME/.cache/mozilla

sudo rm -rf $HOME/.mozilla
sudo rm -rf $HOME/.cache/mozilla

sudo rm -rf /usr/share/applications/firefox53.desktop
sudo rm -rf /usr/share/applications/firefoxlatest.desktop
sudo rm -rf /usr/share/edlt.png
sudo rm -rf /usr/share/default48.png

/bin/echo -e "\e[32mFirefox Web Browser Uninstalled Successfully \e[0m"

sleep 2
sleep 3

else
exit
fi

