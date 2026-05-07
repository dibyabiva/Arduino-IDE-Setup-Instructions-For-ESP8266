# Arduino IDE Setup Instructions For ESP8266

## Ubuntu 22.04+
- Enable dialout permissions for your user
  ```
  sudo usermod -a -G dialout $USER
  ```
- Download Linux AppImage from https://www.arduino.cc/en/software
- Assume that the downloaded file is called `arduino-ide.AppImage`
- Make AppImage executable
  ```
  sudo chmod +x arduino-ide.AppImage
  ```
- Install libfuse2 dependency
  ```
  sudo apt install libfuse2
  ```
- Run AppImage file
  ```
  ./arduino-ide.AppImage --no-sandbox
  ```
- Add ESP8266 support to Arduino IDE
  - Go to File > Preferences
  - Add `http://arduino.esp8266.com/stable/package_esp8266com_index.json`  to Additional boards manager URLs
- Try blink example from File > Examples > ESP8266 > Blink
