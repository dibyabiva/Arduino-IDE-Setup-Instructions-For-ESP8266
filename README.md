# Arduino IDE Setup Instructions For Ubuntu

## Arduino IDE Installation
- Enable dialout permissions for your user
  ```
  sudo usermod -a -G dialout $USER
  ```
- Install libfuse2 dependency
  ```
  sudo apt install libfuse2
  ```
  Or
  ```
  sudo apt install libfuse2t64
  ```
- Download Linux AppImage from https://www.arduino.cc/en/software
- Install Arduino IDE for easy access
  ```
  ./install.sh <path/to/downloaded/AppImage>
  ```

You should now be able to search for Arduino IDE in your applications menu.

You can delete the downloaded files. It has been set up inside ~/arduino-ide

## ESP8266 support for Arduino IDE
- Launch Arduino IDE
- Go to File > Preferences
- Add the following to Additional boards manager URLs
  ```
  http://arduino.esp8266.com/stable/package_esp8266com_index.json
  ```
- Try blink example from File > Examples > ESP8266 > Blink
