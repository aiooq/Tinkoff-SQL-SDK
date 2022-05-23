SELECT (
           SELECT ticker
             FROM m_instrument
            WHERE id = instrument_id
       )
       symbol,
       MAX(time) * 1000 time_msc,
       close bid,
       close ask,
       1 volume_bid,
       1 volume_ask,
       length(substr(close, instr(close, '.') + 1) ) digits
  FROM m_candle
 WHERE instrument_id IN (
           SELECT id
             FROM m_instrument_config_tf
            WHERE tf_id = 1
       )
AND 
       tf_id = 1
 GROUP BY instrument_id;
