function pcsv
  psql $argv[1] -c "\COPY ($argv[2]) TO $argv[3] DELIMITER ',' CSV HEADER"
end
