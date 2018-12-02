function get-weather {
    param ( 
        # This will pick between Farenheit or Celcius 
        [Parameter(Mandatory = $True )]
        [ValidateSet("C","F")]
        [string]
        $TempScale )
    $weather = Invoke-WebRequest -Uri "https://w1.weather.gov/xml/current_obs/KPWT.xml" -UseBasicParsing
    $temp = [xml] $weather.Content
    if ($TempScale -eq "F") {$temp.current_observation.temp_f}
    else {$temp.current_observation.temp_c}
}
