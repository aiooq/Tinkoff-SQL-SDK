SELECT side_id,
       time_open+@TimeGMTOffset,
       IFNULL(time_close+@TimeGMTOffset,0) time_close,
       price_open,
       IFNULL(price_close,0) price_close,
       IFNULL(ROUND(IIF(side_id = 0, 1, -1) * (price_close - price_open) / (price_open * 0.01),2),0) growth
  FROM m_deals
 WHERE expert_id = (
                       SELECT id
                         FROM m_expert
                        WHERE name = '@expert_name'
                   )
AND 
       instrument_id = (
                           SELECT id
                             FROM m_instrument_download
                            WHERE ticker = '@symbol'
                       );