let express = require('express');

let app = express();
app.set('view engine', 'vash');

let tpl = require('my-awesome-template.vash');

let html = tpl();
console.log(html);

app.get(
    '/', 
    (req, res) => {
        let html = ""
        html += "<h1>Aplicacao Node js Aqui oh!!!</h1>"
        html += "<img src='https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/1200px-Node.js_logo.svg.png' />"
        
        res.send(html);
    }
);

app.listen(
    3000, 
    () => {
        console.log('Example app listening on port 3000!');
    }
);

