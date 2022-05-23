SELECT (
           SELECT ticker
             FROM m_instrument
            WHERE id = instrument_id
       )
       symbol,
       time_msec,
       price bid,
       price ask,
       1 volume_bid,
       1 volume_ask,
       length(substr(price, instr(price, '.') + 1) ) digits
  FROM m_tick
 WHERE time_msec>@time_last
 ORDER BY time_msec