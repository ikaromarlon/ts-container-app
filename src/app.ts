import express, { Express, Request, Response } from 'express'

const app: Express = express();

app.get('/', (req: Request, res: Response) => {
  res.json({ message: 'hello world' });
});

app.get('/fruits', (req: Request, res: Response) => {
  res.json([
    'tomato',
    'banana',
    'avocado',
    'grape'
  ]);
});

export default app