SELECT time+@TimeGMTOffset time,
       open,
       high,
       low,
       close,
       volume tick_volume,
       0 spread,
       volume real_volume
  FROM m_candle
 WHERE instrument_id = @symbol_id AND 
       tf_id = 1 AND (@time_start=0 OR time < @time_start OR @time_end=0 OR time > @time_end)
 ORDER BY time DESC
LIMIT 15000
