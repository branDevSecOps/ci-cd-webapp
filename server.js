const http = require('http');
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello, DevOps World!\n');
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
