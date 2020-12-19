const range = require('./range');

module.exports = (interval, start, ns) => range(`sum(rate(container_memory_usage_bytes{namespace="${ns}", container=~".*-service"}[${interval}])) by (container)`, start);
