(function (){
  window.onload = function(){
    var user = document.getElementById("user");
    var msgbox = document.getElementById("msgs");
    var form = document.getElementById("form");
    var send_msg = document.getElementById("send_msg");
    var ws = new WebSocket('wss://' + window.location.host + "/websocket");

    ws.onopen = function() { 
      console.log("connection opened");
    }
    ws.onclose = function() { 
      console.log("connection closed");
    }
    ws.onmessage = function(m) {
      var li = document.createElement("li");
      var replay = JSON.parse(m.data);
      console.log(replay);
      console.log(document.location.pathname.split('/')[2]);
      li.textContent = replay.user + ' : ' + replay.message;
      msgbox.insertBefore(li, msgbox.firstChild);
    }

    send_msg.onclick = function(){
      send_msg.value = ""; 
    }

    form.onsubmit = function(){
      var item = {
        message: send_msg.value,
        user: user.value
      }
      ws.send(JSON.stringify(item));
      send_msg.value = "";
      return false;
    }
    
   
  }
})();