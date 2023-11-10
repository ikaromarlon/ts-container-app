import express, { Express, Request, Response } from 'express'

const app: Express = express();
const port = 3000

app.get('/', (req: Request, res: Response) => {
  res.json({ message: 'hello world' });
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});