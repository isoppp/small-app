'use strict'

module.exports = async function (fastify, opts) {
  fastify.get('/', async function (request, reply) {
    return { root: true, BUILD_TIME: process.env.BUILD_TIME, responseTimeMs: reply.getResponseTime() }
  })
}
