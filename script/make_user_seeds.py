import random

names = input()
print "User.create(["
for i in names:
  join = random.randint(0,150)
  point = random.randint(join,join*4)
  print "{",
  print "name: \"{0}\", join: {1}, point: {2}".format(i,join,point),
  print "},"
print "])"