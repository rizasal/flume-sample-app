import Config

config :flume,
  name: Flume,
  # Redis host
  host: "127.0.0.1",
  # Redis port
  port: "6379",
  # Redis keys namespace
  namespace: "metex",
  # Redis database
  database: 0,
  # Redis pool size
  redis_pool_size: 10,
  # Redis connection timeout in ms (Default 5000 ms)
  redis_timeout: 10_000,
  # Retry backoff intial in ms (Default 500 ms)
  backoff_initial: 30_000,
  # Retry backoff maximum in ms (Default 10_000 ms)
  backoff_max: 36_00_000,
  # Maximum number of retries (Default 5)
  max_retries: 15,
  # Scheduled jobs poll interval in ms (Default 10_000 ms)
  scheduler_poll_interval: 10_000,
  # Time to move jobs from processing queue to retry queue in seconds (Default 600 sec)
  visibility_timeout: 600,
  # ttl of the acquired lock to fetch jobs for bulk pipelines in ms (Default 30_000 ms)
  dequeue_lock_ttl: 30_000,
  # process timeout to fetch jobs for bulk pipelines in ms (Default 10_000 ms)
  dequeue_process_timeout: 10_000,
  # time to poll the queue again if it was locked by another process in ms (Default 500 ms)
  dequeue_lock_poll_interval: 500,
  pipelines: [
    %{name: "default_pipeline", queue: "default", max_demand: 1}
  ]
