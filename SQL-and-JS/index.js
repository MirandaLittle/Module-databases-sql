import sqlite3 from 'sqlite3';
import { open } from 'sqlite';
import { v4 as uuidv4 } from 'uuid';

async function getDbConnection() {
  return open({
    filename: 'database.db',
    driver: sqlite3.Database,
  });
}

async function createTable() {
  const db = await getDbConnection();

  await db.exec('CREATE TABLE IF NOT EXISTS products (id TEXT PRIMARY KEY, name TEXT, price REAL)');

  const productId = uuidv4();
  await db.run('INSERT INTO products (id, name, price) VALUES (?, ?, ?)', [productId, 'Sample Product', 19.99]);

  console.log(`Inserted product with ID: ${productId}`);

  await getProductById(productId);
}

async function getProductById(id) {
  const db = await getDbConnection();

  try {
    const product = await db.get('SELECT * FROM products WHERE id = ?', [id]);
    if (product) {
      console.log('Product found:', product);
    } else {
      console.log('Product not found');
    }
  } catch (error) {
    console.error('Error fetching product:', error);
  } finally {
    await db.close();
  }
}

createTable();