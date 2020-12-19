const range = require('./range');

module.exports = (interval, start, ns) => range(`avg(rate(container_memory_usage_bytes{namespace="${ns}", container_name=~".*-service"}[${interval}])) by (container_name)`, start);
