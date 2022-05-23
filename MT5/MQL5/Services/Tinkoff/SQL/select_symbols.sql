SELECT i.id,i.ticker,i.name,i.class_code,0,0
  FROM m_instrument_config_tf ic,
       m_instrument i ON ic.id = i.id
 WHERE tf_id = 1;