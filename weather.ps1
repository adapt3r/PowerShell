$weather = Invoke-WebRequest -Uri "https://w1.weather.gov/xml/current_obs/KPWT.xml" -UseBasicParsing
$weather 