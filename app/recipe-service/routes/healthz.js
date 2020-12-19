const express = require('express')
const router = express.Router()

router.get(`/healthz`, async (req, res) => {
  res.send({ ok: true })
})

module.exports = router
