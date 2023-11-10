import dotenv from 'dotenv';
import app from './app';

dotenv.config();

const port: Number = Number(process.env.APP_PORT) || 3000

app.listen(port, (): void => {
  console.log(`Server is running at http://localhost:${port}`);
})