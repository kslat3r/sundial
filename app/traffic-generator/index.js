require('dotenv').config()

const {
  INTERVAL: interval,
  STEPS: steps,
  BREAKFAST_URL: breakfastUrl,
  LUNCH_URL: lunchUrl,
  DINNER_URL: dinnerUrl
} = process.env

const getNumSecondsSinceMidnight = require('./helpers/get-num-seconds-since-midnight')
const getNumRequests = require('./helpers/get-num-requests')
const getRequests = require('./helpers/get-requests')
const getChunks = require('./helpers/get-chunks')
const loopChunks = require('./helpers/loop-chunks')

const go = async () => {
  setInterval(() => {
    const time = getNumSecondsSinceMidnight()

    const breakfastCount = getNumRequests(time, 25, 7, 7200) + getNumRequests(time, 25, 31, 7200)
    const lunchCount = getNumRequests(time, 50, 12, 7200)
    const dinnerCount = getNumRequests(time, 100, 19, 7200) + getNumRequests(time, 100, -5, 7200)

    // console.log(new Date().toISOString())
    // console.log(`Breakfast count ${breakfastCount}`)
    // console.log(`Lunch count ${lunchCount}`)
    // console.log(`Dinner count ${dinnerCount}`)
    // console.log('--')

    const breakfastRequests = getRequests(breakfastUrl, breakfastCount)
    const lunchRequests = getRequests(lunchUrl, lunchCount)
    const dinnerRequests = getRequests(dinnerUrl, dinnerCount)

    const breakfastChunks = getChunks(breakfastRequests, steps)
    const lunchChunks = getChunks(lunchRequests, steps)
    const dinnerChunks = getChunks(dinnerRequests, steps)

    loopChunks(interval, steps, breakfastChunks, lunchChunks, dinnerChunks)
  }, interval)
}

go()
