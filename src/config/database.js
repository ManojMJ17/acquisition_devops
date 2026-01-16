// import 'dotenv/config';

// let db;
// let sql;

// if (process.env.NODE_ENV === 'development') {
//   // ===== DEV: Neon Local (Postgres) =====
//   const { Pool } = await import('pg');
//   const { drizzle } = await import('drizzle-orm/node-postgres');

//   const pool = new Pool({
//     connectionString: process.env.DATABASE_URL,
//   });

//   db = drizzle(pool);
//   sql = pool;
// } else {
//   // ===== PROD: Neon Cloud =====
//   const { neon } = await import('@neondatabase/serverless');
//   const { drizzle } = await import('drizzle-orm/neon-http');

//   const neonSql = neon(process.env.DATABASE_URL);

//   db = drizzle(neonSql);
//   sql = neonSql;
// }

// export { db, sql };

import 'dotenv/config';

import { neon, neonConfig } from '@neondatabase/serverless';
import { drizzle } from 'drizzle-orm/neon-http';

if (process.env.NODE_ENV === 'development') {
  neonConfig.fetchEndpoint = 'http://neon-local:5432/sql';
  neonConfig.useSecureWebSocket = false;
  neonConfig.poolQueryViaFetch = true;
}

const sql = neon(process.env.DATABASE_URL);
const db = drizzle(sql);

export { db, sql };
