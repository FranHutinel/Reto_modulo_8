import pkg from 'pg';
const {Pool} = pkg;

const pool = new Pool({
    host: 'mahmud.db.elephantsql.com',
    database: 'ohvhjqfc',
    port: 5432,
    user: 'ohvhjqfc',
    password: 'fxXGREzKybjqMA_S9sPdHezIZHyv4Nr9',
    max: 5,
    idleTimeoutMillis: 10000,
    connectionTimeoutMillis: 2000,
  })
export default pool;