import request from 'supertest'
import app from '../src/app'

describe('Test app', () => {

  test('Should say hello world', async () => {
    const res = await request(app).get('/')
    expect(res.body).toEqual({ message: 'hello world' })
  })

})