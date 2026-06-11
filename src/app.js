import express from 'express';
import cors from 'cors';
import fileRouteConfig from './config/fileRoutes.cjs';
import './database/index.js';
import routes from './routes.js';
import 'dotenv/config';

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors({ 
    origin: process.env.CORS_ORIGIN,
}));


app.use('/product-file', fileRouteConfig);
app.use('/category-file', fileRouteConfig);

app.use(routes);

export default app;
