-- This SQL Script indexes table names with first letter

CREATE INDEX idx_name_first ON names (name(1));
