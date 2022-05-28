SELECT time,
       open,
       high,
       low,
       close,
       volume tick_volume,
       0 spread,
       volume real_volume
  FROM m_candle_temp
 WHERE instrument_id = @symbol_id AND 
       tf_id = 1
 ORDER BY time DESC
LIMIT 15000
