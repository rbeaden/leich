import bs4 as bs
import urllib.request
#import re
#from bs4 import BeautifulSoup
#import urllib2

source = urllib.request.urlopen('https://www.reddit.com/').read()

soup = bs.BeautifulSoup(source,'lxml')

print('***************************************************')
# title of the paurge
print(soup.title)

print('***************************************************')

urls = []

for url in soup.find_all('a'):
    #print(url.get('href'))
    urls.append(url.get('href'))
    #print('***************************************************')

otherurl = [idx for idx in urls if idx.startswith('/')]
#print(otherurl)
#print(len(otherurl))

cleanurl = [idx for idx in urls if idx.startswith('http')]
#print(cleanurl)
#print(len(cleanurl))

for item in otherurl:
    cleanurl.append('https://www.reddit.com' + item)
#for addy in cleanurl:
#    print(addy)
print(cleanurl)
print(len(cleanurl))

cleanurl = list(dict.fromkeys(cleanurl))
print(cleanurl)
print(len(cleanurl))

#for x in urls:
#  if x = re.search("^http*", x):
#    print(x)
#    break
#  print('@' + x)

#p = re.compile( ... )
#m = p.match( 'string goes here' )
#if m:
#    print('Match found: ', m.group())
#else:
#    print('No match')

#print(urls)
#print(len(urls))

#i = 0
#for i in urls:
#    print(urls[i])
#    print('@')

#a = [x for x in urls if x != '#']
#print(a)
#print(len(a))
#a = [x for x in a if x != 'javascript:void(0)']
#print(a)
#print(len(a))
#print(urls)
#print(len(urls))
