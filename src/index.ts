import { serve } from '@hono/node-server'
import { Hono } from 'hono'

const app = new Hono()

app.get('/', (c) => {
  return c.text('Hello Hono!')
})

const { PORT } = process.env
const port = PORT ? parseInt(PORT, 10) : 3000

serve({
  fetch: app.fetch,
  port: port || 3000
}, (info) => {
  console.log(`Server is running on http://localhost:${info.port}`)
})
