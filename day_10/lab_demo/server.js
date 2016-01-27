var net = require("net");

var capitalize = function(word) {
  return word.charAt(0).toUpperCase() + word.slice(1);
}

var server = net.createServer(function(socket){
  socket.on("data", function(name){
    console.log("Data received: " + name);
    console.log(name);
    socket.write("Hello " + capitalize(name.toString()));
  });
});

server.listen(5000, "127.0.0.1");
