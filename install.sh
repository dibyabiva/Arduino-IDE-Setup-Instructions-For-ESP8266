cd "$(dirname "$0")"
OLD_FILE=$1

INSTALL_DIR=$HOME/arduino-ide
mkdir -p $INSTALL_DIR

NEW_FILE=$INSTALL_DIR/arduino-ide.AppImage

cp $OLD_FILE $NEW_FILE
chmod +x $NEW_FILE

cp assets/logo.png $INSTALL_DIR/
cp assets/run.sh $INSTALL_DIR/
chmod +x $INSTALL_DIR/run.sh

cp assets/arduino-ide.desktop temp.desktop
sed -i "s|~|$HOME|g" temp.desktop
sudo mv temp.desktop /usr/share/applications/arduino-ide.desktop
