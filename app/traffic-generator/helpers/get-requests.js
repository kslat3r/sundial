const request = require('request-promise')

module.exports = (url, numRequests) => {
  const requests = []

  for (let i = 0; i < numRequests; i++) {
    requests.push(() => request({
      uri: url,
      timeout: 30000
    }).catch((err) => {
      console.log(uri)
      console.log(err.message)
    }))
  }

  return requests
}
