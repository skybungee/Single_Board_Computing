sudo i2cdetect -y 1
sudo python3 -m pip install --upgrade pip setuptools wheel
git clone https://github.com/adafruit/Adafruit_Python_SSD1306.git
cd Adafruit_Python_SSD1306/
sudo python3 setup.py install
python3 ~/Single_Board_Computing/raspberry_pi/Adafruit_Python_SSD1306/examples/stats.py