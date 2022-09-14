


def test():
  with open("Ochai.txt", "w") as f:
    for i in range(60,61 + 1):
      f.write("io.swagger.parser.util.DeserializationUtils@" + str(i) + "\n")

test()