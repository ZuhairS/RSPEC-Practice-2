def measure(times_to_run = 1)
  perf_arr = []
  times_to_run.times do
    start_time = Time.now
    yield
    end_time = Time.now
    perf_arr << end_time - start_time
  end
  perf_arr.reduce(:+) / perf_arr.length
end
