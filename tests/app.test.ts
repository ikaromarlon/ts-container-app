import request from 'supertest'
import app from '../src/app'

describe('Test app', () => {

  test('Should say hello world', async () => {
    const res = await request(app).get('/')
    expect(res.body).toEqual({ message: 'hello world' })
  })

  test('Should return a list of fruits', async () => {
    const res = await request(app).get('/fruits')
    expect(res.body).toEqual([
      'tomato',
      'banana',
      'avocado',
      'grape'
    ])
  })

})