const range = require('./range');

module.exports = (interval, start, ns) => range(`avg(rate(container_cpu_user_seconds_total{namespace="${ns}", container_name=~".*-service"}[${interval}])) by (container_name)`, start);
