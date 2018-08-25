import socket as sk


for port in range(1,20):
 try:
  s=sk.socket(sk.AF_INET,sk.SOCK_STREAM)
  s.settimeout(1000)
  s.connect(('192.168.0.1',port))
  print ('%d:OPEN' % (port))
# (port)
  s.close
  scanned = scanned + 1
 except: continue
