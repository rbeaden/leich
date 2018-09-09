from sense_hat import SenseHat
sense = SenseHat()

# Define the colours red and green
red = (255, 0, 0)
green = (0, 255, 0)

# Define the functions
def red():
  sense.clear(255, 0, 0)

def blue():
  sense.clear(0, 0, 255)

def green():
  sense.clear(0, 255, 0)
  
def yellow():
  sense.clear(255, 255, 0)

# Tell the program which function to associate with which direction
sense.stick.direction_up = red
sense.stick.direction_down = blue
sense.stick.direction_left = green
sense.stick.direction_right = yellow
sense.stick.direction_middle = sense.clear    # Press the enter key

while True:

  # Take readings from all three sensors
  t = sense.get_temperature()
  p = sense.get_pressure()
  h = sense.get_humidity()
  tt = sense.get_temperature_from_pressure()

  # Round the values to one decimal place
  t = round(t, 1)
  p = round(p, 1)
  h = round(h, 1)
  tt = round(tt, 1)
  # Create the message
  # str() converts the value to a string so it can be concatenated
  message = "Temperature: " + str(t) + " Temperature2: " + str(tt) + " Pressure: " + str(p) + " Humidity: " + str(h)
  
  if t > 18.3 and t < 26.7:
    bg = green
  else:
    bg = red
  
  # Display the scrolling message
#  sense.show_message(message, scroll_speed=0.05, back_colour=bg)
#  print(message)

  acceleration = sense.get_accelerometer_raw()
  x = acceleration['x']
  y = acceleration['y']
  z = acceleration['z']

#  x = abs(x)
#  y = abs(y)
#  z = abs(z)

  message = message + " x: " + str(x) + " y: " + str(y) + " z: " + str(z)
  print(message)
  if x > 1 or y > 1 or z > 1:
#    sense.show_letter("!", red)
    print("!")
#  else:
#    sense.clear()

  # Tell the program which function to associate with which direction
 # sense.stick.direction_up = red
 # sense.stick.direction_down = blue
 # sense.stick.direction_left = green
 # sense.stick.direction_right = yellow
 # sense.stick.direction_middle = sense.clear    # Press the enter key

