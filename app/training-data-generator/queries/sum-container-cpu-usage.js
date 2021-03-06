const range = require('./range');

module.exports = (interval, start, ns) => range(`sum(rate(container_cpu_user_seconds_total{namespace="${ns}", container=~".*-service"}[${interval}])) by (container)`, start);
