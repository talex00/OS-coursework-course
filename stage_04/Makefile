
all: clean
	gcc sound_detect.c  -o sound_detect_turkin
	g++ light_detect.c Adafruit_ADS1X15_RPi/Adafruit_ADS1015.cpp -o light_detect_turkin -lwiringPi
clean:
	rm -f *.o
