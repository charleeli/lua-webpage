local webpage = require "webpage"

webpage.load("./index.html");
webpage.set("prompt","Welcome to index page!");
webpage.set_bloc("INDEX");
print(webpage.render());