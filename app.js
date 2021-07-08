const express = require('express');
const app = express()
const port = 3000;

app.get('/', (req, res)=> {
	res.send('I am  express app!')
});

app.get('/products', (req, res)=>{
	res.send([{
		'productId':'HUY'
	}])
});

app.listen(port, ()=>{
	console.log(`Express app is up : ${port}`)
})
