Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-aprs?download=true
inline.NumInlined: 43
inline.NumDeleted: 13
begin_hunk_0
@hf_aprs_msg_nrq = internal global i32 0, align 4
@.str.92 = private unnamed_addr constant [21 x i8] c"Number/Range/Quality\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"aprs.msg.nrq\00", align 1
@hf_aprs_msg_phg_p = internal global i32 0, align 4
@.str.94 = private unnamed_addr constant [6 x i8] c"Power\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"aprs.msg.phg.p\00", align 1
@hf_aprs_msg_phg_h = internal global i32 0, align 4
@.str.96 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"aprs.msg.phg.h\00", align 1
@hf_aprs_msg_phg_g = internal global i32 0, align 4
@.str.98 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"aprs.msg.phg.g\00", align 1
@hf_aprs_msg_phg_d = internal global i32 0, align 4
@.str.100 = private unnamed_addr constant [12 x i8] c"Directivity\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"aprs.msg.phg.d\00", align 1
@hf_aprs_msg_dfs_s = internal global i32 0, align 4
@.str.102 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"aprs.msg.dfs.s\00", align 1
@hf_aprs_msg_dfs_h = internal global i32 0, align 4
@.str.104 = private unnamed_addr constant [15 x i8] c"aprs.msg.dfs.h\00", align 1
@hf_aprs_msg_dfs_g = internal global i32 0, align 4
@.str.105 = private unnamed_addr constant [15 x i8] c"aprs.msg.dfs.g\00", align 1
@hf_aprs_msg_dfs_d = internal global i32 0, align 4
@.str.106 = private unnamed_addr constant [15 x i8] c"aprs.msg.dfs.d\00", align 1
@hf_aprs_msg_aod_t = internal global i32 0, align 4
@.str.107 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"aprs.msg.aod.t\00", align 1
@hf_aprs_msg_aod_c = internal global i32 0, align 4
@.str.109 = private unnamed_addr constant [7 x i8] c"Colour\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"aprs.msg.aod.c\00", align 1
@hf_aprs_weather = internal global i32 0, align 4
@.str.111 = private unnamed_addr constant [15 x i8] c"Weather report\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"aprs.weather\00", align 1
@hf_aprs_weather_dir = internal global i32 0, align 4
@.str.113 = private unnamed_addr constant [17 x i8] c"aprs.weather.dir\00", align 1
@hf_aprs_weather_spd = internal global i32 0, align 4
@.str.114 = private unnamed_addr constant [11 x i8] c"Wind speed\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"aprs.weather.speed\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"Wind speed (1 minute)\00", align 1
@hf_aprs_weather_peak = internal global i32 0, align 4
@.str.117 = private unnamed_addr constant [16 x i8] c"Peak wind speed\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"aprs.weather.peak\00", align 1
@hf_aprs_weather_temp = internal global i32 0, align 4
@.str.119 = private unnamed_addr constant [16 x i8] c"Temperature (F)\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"aprs.weather.temp\00", align 1
@hf_aprs_weather_rain_1 = internal global i32 0, align 4
@.str.121 = private unnamed_addr constant [19 x i8] c"Rain (last 1 hour)\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"aprs.weather.1_hour\00", align 1
@hf_aprs_weather_rain_24 = internal global i32 0, align 4
@.str.123 = private unnamed_addr constant [21 x i8] c"Rain (last 24 hours)\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"aprs.weather.24_hour\00", align 1
@hf_aprs_weather_rain = internal global i32 0, align 4
@.str.125 = private unnamed_addr constant [5 x i8] c"Rain\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"aprs.weather.rain\00", align 1
@hf_aprs_weather_humidty = internal global i32 0, align 4
@.str.127 = private unnamed_addr constant [9 x i8] c"Humidity\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"aprs.weather.humidity\00", align 1
@hf_aprs_weather_press = internal global i32 0, align 4
@.str.129 = private unnamed_addr constant [9 x i8] c"Pressure\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"aprs.weather.pressure\00", align 1
@hf_aprs_weather_luminosity = internal global i32 0, align 4
@.str.131 = private unnamed_addr constant [11 x i8] c"Luminosity\00", align 1
@.str.132 = private unnamed_addr constant [24 x i8] c"aprs.weather.luminosity\00", align 1
@hf_aprs_weather_snow = internal global i32 0, align 4
@.str.133 = private unnamed_addr constant [5 x i8] c"Snow\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"aprs.weather.snow\00", align 1
@hf_aprs_weather_raw_rain = internal global i32 0, align 4
@.str.135 = private unnamed_addr constant [9 x i8] c"Raw rain\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"aprs.weather.raw_rain\00", align 1
@hf_aprs_weather_software = internal global i32 0, align 4
@.str.137 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"aprs.weather.software\00", align 1
@hf_aprs_weather_unit = internal global i32 0, align 4
@.str.139 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@.str.140 = private unnamed_addr constant [18 x i8] c"aprs.weather.unit\00", align 1
@hf_aprs_mic_e_0_current = internal global i32 0, align 4
@.str.141 = private unnamed_addr constant [22 x i8] c"Current Mic-E (Rev 0)\00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"aprs.mic_e_0_current\00", align 1
@hf_aprs_mic_e_0_old = internal global i32 0, align 4
@.str.143 = private unnamed_addr constant [18 x i8] c"Old Mic-E (Rev 0)\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"aprs.mic_e_0_old\00", align 1
@hf_aprs_mic_e_old = internal global i32 0, align 4
@.str.145 = private unnamed_addr constant [10 x i8] c"Old Mic-E\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"aprs.mic_e_old\00", align 1
@.str.147 = private unnamed_addr constant [46 x i8] c"Old Mic-E Data (but Current data for TM-D700)\00", align 1
@hf_aprs_mic_e_current = internal global i32 0, align 4
@.str.148 = private unnamed_addr constant [14 x i8] c"Current Mic-E\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"aprs.mic_e_current\00", align 1
@.str.150 = private unnamed_addr constant [41 x i8] c"Current Mic-E Data (not used in TM-D700)\00", align 1
@hf_aprs_mic_e_dst = internal global i32 0, align 4
@.str.151 = private unnamed_addr constant [20 x i8] c"Destination Address\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"aprs.mic_e.dst\00", align 1
@hf_aprs_mic_e_long_d = internal global i32 0, align 4
@.str.153 = private unnamed_addr constant [18 x i8] c"Longitude degrees\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"aprs.mic_e.long_d\00", align 1
@hf_aprs_mic_e_long_m = internal global i32 0, align 4
@.str.155 = private unnamed_addr constant [18 x i8] c"Longitude minutes\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"aprs.mic_e.long_m\00", align 1
@hf_aprs_mic_e_long_h = internal global i32 0, align 4
@.str.157 = private unnamed_addr constant [32 x i8] c"Longitude hundredths of minutes\00", align 1
@.str.158 = private unnamed_addr constant [18 x i8] c"aprs.mic_e.long_h\00", align 1
@hf_aprs_mic_e_spd_sp = internal global i32 0, align 4
@.str.159 = private unnamed_addr constant [24 x i8] c"Speed (hundreds & tens)\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"aprs.mic_e.speed_sp\00", align 1
@hf_aprs_mic_e_spd_dc = internal global i32 0, align 4
@.str.161 = private unnamed_addr constant [32 x i8] c"Speed (tens), Course (hundreds)\00", align 1
@.str.162 = private unnamed_addr constant [20 x i8] c"aprs.mic_e.speed_dc\00", align 1
@hf_aprs_mic_e_spd_se = internal global i32 0, align 4
@.str.163 = private unnamed_addr constant [22 x i8] c"Course (tens & units)\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"aprs.mic_e.speed_se\00", align 1
@hf_aprs_mic_e_telemetry = internal global i32 0, align 4
@.str.165 = private unnamed_addr constant [21 x i8] c"aprs.mic_e.telemetry\00", align 1
@hf_aprs_mic_e_status = internal global i32 0, align 4
@.str.166 = private unnamed_addr constant [18 x i8] c"aprs.mic_e.status\00", align 1
@hf_aprs_storm_dir = internal global i32 0, align 4
@.str.167 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.168 = private unnamed_addr constant [21 x i8] c"aprs.storm.direction\00", align 1
@hf_aprs_storm_spd = internal global i32 0, align 4
@.str.169 = private unnamed_addr constant [14 x i8] c"Speed (knots)\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"aprs.storm.speed\00", align 1
@hf_aprs_storm_type = internal global i32 0, align 4
@.str.171 = private unnamed_addr constant [16 x i8] c"aprs.storm.type\00", align 1
@hf_aprs_storm_sws = internal global i32 0, align 4
@.str.172 = private unnamed_addr constant [29 x i8] c"Sustained wind speed (knots)\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"aprs.storm.sws\00", align 1
@hf_aprs_storm_pwg = internal global i32 0, align 4
@.str.174 = private unnamed_addr constant [24 x i8] c"Peak wind gusts (knots)\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"aprs.storm.pwg\00", align 1
@hf_aprs_storm_cp = internal global i32 0, align 4
@.str.176 = private unnamed_addr constant [37 x i8] c"Central pressure (millibars/hPascal)\00", align 1
@.str.177 = private unnamed_addr constant [28 x i8] c"aprs.storm.central_pressure\00", align 1
@hf_aprs_storm_rhw = internal global i32 0, align 4
@.str.178 = private unnamed_addr constant [40 x i8] c"Radius Hurricane Winds (nautical miles)\00", align 1
@.str.179 = private unnamed_addr constant [34 x i8] c"aprs.storm.radius_hurricane_winds\00", align 1
@hf_aprs_storm_rtsw = internal global i32 0, align 4
@.str.180 = private unnamed_addr constant [45 x i8] c"Radius Tropical Storm Winds (nautical miles)\00", align 1
@.str.181 = private unnamed_addr constant [40 x i8] c"aprs.storm.radius_tropical_storms_winds\00", align 1
@hf_aprs_storm_rwg = internal global i32 0, align 4
@.str.182 = private unnamed_addr constant [35 x i8] c"Radius Whole Gale (nautical miles)\00", align 1
@.str.183 = private unnamed_addr constant [29 x i8] c"aprs.storm.radius_whole_gale\00", align 1
@proto_register_aprs.ett = internal global [6 x ptr] [ptr @ett_aprs, ptr @ett_aprs_msg, ptr @ett_aprs_ct, ptr @ett_aprs_weather, ptr @ett_aprs_storm, ptr @ett_aprs_mic_e], align 16
@ett_aprs = internal global i32 0, align 4
@ett_aprs_msg = internal global i32 0, align 4
@ett_aprs_ct = internal global i32 0, align 4
@ett_aprs_weather = internal global i32 0, align 4
@ett_aprs_storm = internal global i32 0, align 4
@ett_aprs_mic_e = internal global i32 0, align 4
@.str.184 = private unnamed_addr constant [36 x i8] c"Automatic Position Reporting System\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"APRS\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"aprs\00", align 1
@proto_aprs = internal unnamed_addr global i32 0, align 4
@.str.187 = private unnamed_addr constant [12 x i8] c"showaprslax\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"Allow APRS violations.\00", align 1
@.str.189 = private unnamed_addr constant [61 x i8] c"Attempt to display common APRS protocol violations correctly\00", align 1
@gPREF_APRS_LAX = internal global i8 0, align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"old (last)\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@gps_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.190 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.191 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.193 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"GLL\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"GGA\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"RMC\00", align 1
@nmea_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.193 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.194 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.195 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.196 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.198 = private unnamed_addr constant [11 x i8] c"Compressed\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"TNC BText\00", align 1
@.str.200 = private unnamed_addr constant [27 x i8] c"Software (DOS/Mac/Win/+SA)\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"[tbd]\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"KPC3\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"Pico\00", align 1
@.str.204 = private unnamed_addr constant [20 x i8] c"Other tracker [tbd]\00", align 1
@.str.205 = private unnamed_addr constant [22 x i8] c"Digipeater conversion\00", align 1
@ctype_vals = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.198 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.199 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.200 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.201 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.202 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.203 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.204 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.205 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.207 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@aprs_description_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 26, ptr @aprs_description, ptr @.str.213, ptr null }, align 8
@.str.208 = private unnamed_addr constant [26 x i8] c"Ultimeter 2000 WX Station\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"Position (\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.211 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"aprs_description\00", align 1
@.str.214 = private unnamed_addr constant [32 x i8] c"Current Mic-E Data (Rev 0 beta)\00", align 1
@.str.215 = private unnamed_addr constant [28 x i8] c"Old Mic-E Data (Rev 0 beta)\00", align 1
@.str.216 = private unnamed_addr constant [31 x i8] c"Raw GPS data or Ultimeter 2000\00", align 1
@.str.217 = private unnamed_addr constant [25 x i8] c"[Reserved - Map Feature]\00", align 1
@.str.218 = private unnamed_addr constant [42 x i8] c"Old Mic-E Data (current data for TM-D700)\00", align 1
@.str.219 = private unnamed_addr constant [21 x i8] c"Position + timestamp\00", align 1
@.str.220 = private unnamed_addr constant [21 x i8] c"Station Capabilities\00", align 1
@.str.221 = private unnamed_addr constant [31 x i8] c"Position + APRS data extension\00", align 1
@.str.222 = private unnamed_addr constant [43 x i8] c"Position + timestamp + APRS data extension\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"Telemetry data\00", align 1
@.str.224 = private unnamed_addr constant [34 x i8] c"Weather Report (without position)\00", align 1
@aprs_description = internal constant [27 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.214 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.49 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.34 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.49 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.57 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.40 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.60 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.30 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.16 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.14 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 84, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 91, [4 x i8] zeroinitializer, ptr @.str.37 }, { i32, [4 x i8], ptr } { i32 95, [4 x i8] zeroinitializer, ptr @.str.224 }, { i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.150 }, { i32, [4 x i8], ptr } { i32 123, [4 x i8] zeroinitializer, ptr @.str.43 }, { i32, [4 x i8], ptr } { i32 125, [4 x i8] zeroinitializer, ptr @.str.46 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.226 = private unnamed_addr constant [5 x i8] c"zulu\00", align 1
@g_ascii_table = external local_unnamed_addr constant ptr, align 8
@.str.227 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.229 = private unnamed_addr constant [71 x i8] c"Lat: %7.7s%c Long: %03d%02d.%02d%c, Cse: %d, Spd: %d, SSID: %d, Msg %s\00", align 1
@mic_e_msg_table = internal unnamed_addr constant [8 x %struct.mic_e_msg_table_s] [%struct.mic_e_msg_table_s { ptr @.str.233, ptr @.str.233 }, %struct.mic_e_msg_table_s { ptr @.str.234, ptr @.str.235 }, %struct.mic_e_msg_table_s { ptr @.str.236, ptr @.str.237 }, %struct.mic_e_msg_table_s { ptr @.str.238, ptr @.str.239 }, %struct.mic_e_msg_table_s { ptr @.str.240, ptr @.str.241 }, %struct.mic_e_msg_table_s { ptr @.str.242, ptr @.str.243 }, %struct.mic_e_msg_table_s { ptr @.str.244, ptr @.str.245 }, %struct.mic_e_msg_table_s { ptr @.str.246, ptr @.str.247 }], align 16
@.str.230 = private unnamed_addr constant [7 x i8] c"MIC-E \00", align 1
@.str.231 = private unnamed_addr constant [79 x i8] c"Lat %7.7s, Msg A %d, Msg B %d, Msg C %d, N/S %c, Long off %3d, W/E %c, SSID %d\00", align 1
@dst_code = internal unnamed_addr constant [34 x { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] }] [{ i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 96, i8 48, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 98, i8 49, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 100, i8 50, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 102, i8 51, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 104, i8 52, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 106, i8 53, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 108, i8 54, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 110, i8 55, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 112, i8 56, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 114, i8 57, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -126, i8 48, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -124, i8 49, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -122, i8 50, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -120, i8 51, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -118, i8 52, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -116, i8 53, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -114, i8 54, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -112, i8 55, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -110, i8 56, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -108, i8 57, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -106, i8 32, [2 x i8] zeroinitializer, i32 1, i8 63, [3 x i8] zeroinitializer, i32 0, i8 63, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -104, i8 32, [2 x i8] zeroinitializer, i32 0, i8 83, [3 x i8] zeroinitializer, i32 0, i8 69, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -96, i8 48, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -94, i8 49, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -92, i8 50, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -90, i8 51, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -88, i8 52, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -86, i8 53, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -84, i8 54, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -82, i8 55, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -80, i8 56, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -78, i8 57, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 -76, i8 32, [2 x i8] zeroinitializer, i32 1, i8 78, [3 x i8] zeroinitializer, i32 100, i8 87, [3 x i8] zeroinitializer }, { i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, [3 x i8] } { i8 0, i8 95, [2 x i8] zeroinitializer, i32 3, i8 63, [3 x i8] zeroinitializer, i32 3, i8 63, [3 x i8] zeroinitializer }], align 16
@.str.233 = private unnamed_addr constant [10 x i8] c"Emergency\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"Custom 6\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"Special\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"Custom 5\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"Committed\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"Custom 4\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c"Returning\00", align 1
@.str.241 = private unnamed_addr constant [9 x i8] c"Custom 3\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"In Service\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"Custom 2\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"En Route\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"Custom 1\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"Off Duty\00", align 1
@.str.247 = private unnamed_addr constant [9 x i8] c"Custom 0\00", align 1
@.str.248 = private unnamed_addr constant [6 x i8] c"%6.2f\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"%7.2f\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_aprs() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.184, ptr noundef @.str.185, ptr noundef @.str.186) ; 2 uses
  store i32 %i.a, ptr @proto_aprs, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef @.str.186, ptr noundef @dissect_aprs, i32 noundef %i.a) ; 0 uses
  %i.c = load i32, ptr @proto_aprs, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef @proto_register_aprs.hf, i32 noundef 88)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_aprs.ett, i32 noundef 6)
  %i.d = load i32, ptr @proto_aprs, align 4
  %i.e = tail call ptr @prefs_register_protocol(i32 noundef %i.d, ptr noundef null)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef @.str.187, ptr noundef @.str.188, ptr noundef @.str.189, ptr noundef @gPREF_APRS_LAX)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_aprs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.185)
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @col_clear(ptr noundef %i.c, i32 noundef 25)
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 416        ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @wmem_strbuf_new(ptr noundef %i.f, ptr noundef @.str.207) ; 12 uses
  %cond = icmp eq i8 %i.d, 33
  br i1 %cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i8 %i.d to i32
  %i.i = tail call ptr @val_to_str_ext_const(i32 noundef %i.h, ptr noundef @aprs_description_ext, ptr noundef @.str.207)
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef %i.i)
  switch i8 %i.d, label %bb.d [
    i8 64, label %.sink.split.sink.split.sink.split
    i8 61, label %.sink.split.sink.split
    i8 47, label %.sink.split.sink.split.sink.split
  ]

bb.c:                                             ; preds = %bb.a
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.k = icmp eq i8 %i.j, 33
  br i1 %i.k, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split.sink.split:                ; preds = %bb.b, %bb.b
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef @.str.211)
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = tail call ptr @tvb_format_text(ptr noundef %i.l, ptr noundef %0, i32 noundef 1, i32 noundef 7)
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef %i.m)
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %bb.b, %bb.c
  %.str.211.sink = phi ptr [ @.str.209, %bb.c ], [ @.str.211, %bb.b ], [ @.str.210, %.sink.split.sink.split.sink.split ]
  %.sink268 = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 9, %.sink.split.sink.split.sink.split ]
  %.sink266 = phi i32 [ 10, %bb.c ], [ 10, %bb.b ], [ 17, %.sink.split.sink.split.sink.split ]
  %.sink264 = phi i32 [ 9, %bb.c ], [ 9, %bb.b ], [ 8, %.sink.split.sink.split.sink.split ]
  %.sink262 = phi i32 [ 19, %bb.c ], [ 19, %bb.b ], [ 18, %.sink.split.sink.split.sink.split ]
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef %.str.211.sink)
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = tail call ptr @tvb_format_text(ptr noundef %i.n, ptr noundef %0, i32 noundef %.sink268, i32 noundef 8)
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef %i.o)
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef @.str.210)
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = tail call ptr @tvb_format_text(ptr noundef %i.p, ptr noundef %0, i32 noundef %.sink266, i32 noundef 9)
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef %i.q)
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef @.str.210)
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = tail call ptr @tvb_format_text(ptr noundef %i.r, ptr noundef %0, i32 noundef %.sink264, i32 noundef 1)
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef %i.s)
  %i.t = load ptr, ptr %i.e, align 8
  %i.u = tail call ptr @tvb_format_text(ptr noundef %i.t, ptr noundef %0, i32 noundef %.sink262, i32 noundef 1)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.c
  %.str.208.sink = phi ptr [ @.str.208, %bb.c ], [ %i.u, %.sink.split.sink.split ]
  tail call void @wmem_strbuf_append(ptr noundef %i.g, ptr noundef %.str.208.sink)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.g)
  tail call void @col_add_str(ptr noundef %i.v, i32 noundef 25, ptr noundef %i.w)
  %i.x = load i32, ptr @proto_aprs, align 4
  %i.y = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.g)
  %i.z = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef @.str.212, ptr noundef %i.y)
  %i.aa = load i32, ptr @ett_aprs, align 4
  %i.ab = tail call ptr @proto_item_add_subtree(ptr noundef %i.z, i32 noundef %i.aa) ; 44 uses
  %i.ac = load i32, ptr @hf_aprs_dti, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.ac, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.d, label %bb.am [
    i8 60, label %bb.e
    i8 62, label %bb.f
    i8 63, label %bb.i
    i8 36, label %bb.j
    i8 37, label %bb.m
    i8 84, label %bb.n
    i8 91, label %bb.o
    i8 95, label %bb.p
    i8 44, label %bb.q
    i8 123, label %bb.r
    i8 125, label %bb.s
    i8 58, label %bb.t
    i8 28, label %bb.u
    i8 29, label %bb.v
    i8 39, label %bb.w
    i8 96, label %bb.x
    i8 35, label %bb.y
    i8 42, label %bb.z
    i8 38, label %bb.aa
    i8 43, label %bb.ab
    i8 46, label %bb.ac
    i8 41, label %bb.ad
    i8 59, label %bb.af
    i8 33, label %bb.ag
    i8 61, label %bb.aj
    i8 47, label %bb.ak
    i8 64, label %bb.al
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr @hf_aprs_station, align 4
  %i.af = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.ae, ptr noundef %0, i32 noundef 1, i32 noundef %i.af, i32 noundef 0) ; 0 uses
  %i.ah = add i32 %i.af, 1
  br label %bb.am

bb.f:                                             ; preds = %bb.d
  %i.ai = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 7
  br i1 %i.aj, label %bb.g, label %aprs_status.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 7)
  %i.al = icmp eq i8 %i.ak, 122
  br i1 %i.al, label %bb.h, label %aprs_status.exit

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr @hf_aprs_dhm, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.am, ptr noundef %0, i32 noundef 1, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.ao = load i32, ptr @hf_aprs_tz, align 4
  %i.ap = tail call ptr @proto_tree_add_string(ptr noundef %i.ab, i32 noundef %i.ao, ptr noundef %0, i32 noundef 7, i32 noundef 1, ptr noundef @.str.226) ; 0 uses
  %i.aq = add nsw i32 %i.ai, -7
  br label %aprs_status.exit

aprs_status.exit:                                 ; preds = %bb.f, %bb.g, %bb.h
  %.020.i = phi i32 [ 8, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %.0.i = phi i32 [ %i.aq, %bb.h ], [ %i.ai, %bb.g ], [ %i.ai, %bb.f ] ; 2 uses
  %i.ar = load i32, ptr @hf_aprs_status, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.ar, ptr noundef %0, i32 noundef %.020.i, i32 noundef %.0.i, i32 noundef 0) ; 0 uses
  %i.at = add i32 %.0.i, %.020.i
  br label %bb.am

bb.i:                                             ; preds = %bb.d
  %i.au = load i32, ptr @hf_aprs_query, align 4
  %i.av = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.au, ptr noundef %0, i32 noundef 1, i32 noundef %i.av, i32 noundef 0) ; 0 uses
  %i.ax = add i32 %i.av, 1
  br label %bb.am

bb.j:                                             ; preds = %bb.d
  %i.ay = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.az = icmp eq i8 %i.ay, 85
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr @hf_ultimeter_2000, align 4
  %i.bb = tail call fastcc i32 @aprs_default_string(ptr noundef %i.ab, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef %i.ba)
  br label %bb.am

bb.l:                                             ; preds = %bb.j
  %i.bc = load i32, ptr @hf_aprs_raw, align 4
  %i.bd = tail call fastcc i32 @aprs_default_string(ptr noundef %i.ab, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef %i.bc)
  br label %bb.am

bb.m:                                             ; preds = %bb.d
  %i.be = load i32, ptr @hf_aprs_agrelo, align 4
  %i.bf = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.be, ptr noundef %0, i32 noundef 1, i32 noundef %i.bf, i32 noundef 0) ; 0 uses
  %i.bh = add i32 %i.bf, 1
  br label %bb.am

bb.n:                                             ; preds = %bb.d
  %i.bi = load i32, ptr @hf_aprs_telemetry, align 4
  %i.bj = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.bi, ptr noundef %0, i32 noundef 1, i32 noundef %i.bj, i32 noundef 0) ; 0 uses
  %i.bl = add i32 %i.bj, 1
  br label %bb.am

bb.o:                                             ; preds = %bb.d
  %i.bm = load i32, ptr @hf_aprs_maidenhead, align 4
  %i.bn = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.bm, ptr noundef %0, i32 noundef 1, i32 noundef %i.bn, i32 noundef 0) ; 0 uses
  %i.bp = add i32 %i.bn, 1
  br label %bb.am

bb.p:                                             ; preds = %bb.d
  %i.bq = tail call fastcc i32 @aprs_timestamp(ptr noundef %i.ab, ptr noundef %0, i32 noundef 1)
  %i.br = tail call fastcc i32 @dissect_aprs_weather(ptr noundef %0, i32 noundef %i.bq, ptr noundef %i.ab)
  br label %bb.am

bb.q:                                             ; preds = %bb.d
  %i.bs = load i32, ptr @hf_aprs_invalid_test, align 4
  %i.bt = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.bu = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.bs, ptr noundef %0, i32 noundef 1, i32 noundef %i.bt, i32 noundef 0) ; 0 uses
  %i.bv = add i32 %i.bt, 1
  br label %bb.am

bb.r:                                             ; preds = %bb.d
  %i.bw = load i32, ptr @hf_aprs_user_defined, align 4
  %i.bx = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.bw, ptr noundef %0, i32 noundef 1, i32 noundef %i.bx, i32 noundef 0) ; 0 uses
  %i.bz = add i32 %i.bx, 1
  br label %bb.am

bb.s:                                             ; preds = %bb.d
  %i.ca = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.cb = load i32, ptr @hf_aprs_third_party, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.cb, ptr noundef %0, i32 noundef 1, i32 noundef %i.ca, i32 noundef 0) ; 0 uses
  %i.cd = add i32 %i.ca, 1
  br label %bb.am

bb.t:                                             ; preds = %bb.d
  %i.ce = load i32, ptr @hf_aprs_message, align 4
  %i.cf = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.ce, ptr noundef %0, i32 noundef 1, i32 noundef %i.cf, i32 noundef 0) ; 0 uses
  %i.ch = add i32 %i.cf, 1
  br label %bb.am

bb.u:                                             ; preds = %bb.d
  %i.ci = load i32, ptr @hf_aprs_mic_e_0_current, align 4
  %i.cj = tail call fastcc i32 @dissect_mic_e(ptr noundef %0, ptr noundef %1, ptr noundef %i.ab, i32 noundef %i.ci)
  br label %bb.am

bb.v:                                             ; preds = %bb.d
  %i.ck = load i32, ptr @hf_aprs_mic_e_0_old, align 4
  %i.cl = tail call fastcc i32 @dissect_mic_e(ptr noundef %0, ptr noundef %1, ptr noundef %i.ab, i32 noundef %i.ck)
  br label %bb.am

bb.w:                                             ; preds = %bb.d
  %i.cm = load i32, ptr @hf_aprs_mic_e_old, align 4
  %i.cn = tail call fastcc i32 @dissect_mic_e(ptr noundef %0, ptr noundef %1, ptr noundef %i.ab, i32 noundef %i.cm)
  br label %bb.am

bb.x:                                             ; preds = %bb.d
  %i.co = load i32, ptr @hf_aprs_mic_e_current, align 4
  %i.cp = tail call fastcc i32 @dissect_mic_e(ptr noundef %0, ptr noundef %1, ptr noundef %i.ab, i32 noundef %i.co)
  br label %bb.am

bb.y:                                             ; preds = %bb.d
  %i.cq = load i32, ptr @hf_aprs_peet_1, align 4
  %i.cr = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.cs = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.cq, ptr noundef %0, i32 noundef 1, i32 noundef %i.cr, i32 noundef 0) ; 0 uses
  %i.ct = add i32 %i.cr, 1
  br label %bb.am

bb.z:                                             ; preds = %bb.d
  %i.cu = load i32, ptr @hf_aprs_peet_2, align 4
  %i.cv = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.cw = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.cu, ptr noundef %0, i32 noundef 1, i32 noundef %i.cv, i32 noundef 0) ; 0 uses
  %i.cx = add i32 %i.cv, 1
  br label %bb.am

bb.aa:                                            ; preds = %bb.d
  %i.cy = load i32, ptr @hf_aprs_map_feature, align 4
  %i.cz = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.da = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.cy, ptr noundef %0, i32 noundef 1, i32 noundef %i.cz, i32 noundef 0) ; 0 uses
  %i.db = add i32 %i.cz, 1
  br label %bb.am

bb.ab:                                            ; preds = %bb.d
  %i.dc = load i32, ptr @hf_aprs_shelter_data, align 4
  %i.dd = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.de = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.dc, ptr noundef %0, i32 noundef 1, i32 noundef %i.dd, i32 noundef 0) ; 0 uses
  %i.df = add i32 %i.dd, 1
  br label %bb.am

bb.ac:                                            ; preds = %bb.d
  %i.dg = load i32, ptr @hf_aprs_space_weather, align 4
  %i.dh = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.di = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.dg, ptr noundef %0, i32 noundef 1, i32 noundef %i.dh, i32 noundef 0) ; 0 uses
  %i.dj = add i32 %i.dh, 1
  br label %bb.am

bb.ad:                                            ; preds = %bb.d
  %i.dk = load ptr, ptr %i.e, align 8
  %i.dl = tail call ptr @tvb_get_string_enc(ptr noundef %i.dk, ptr noundef %0, i32 noundef 1, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.dm = tail call ptr @strchr(ptr noundef %i.dl, i32 noundef 33) #7 ; 3 uses
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %aprs_item.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = add i32 %i.dq, 1
  store i8 0, ptr %i.dm, align 1
  br label %aprs_item.exit

aprs_item.exit:                                   ; preds = %bb.ad, %bb.ae
  %.0.i252 = phi i32 [ %i.dr, %bb.ae ], [ 10, %bb.ad ] ; 2 uses
  %i.ds = load i32, ptr @hf_aprs_item, align 4
  %i.dt = tail call ptr @proto_tree_add_string(ptr noundef %i.ab, i32 noundef %i.ds, ptr noundef %0, i32 noundef 1, i32 noundef %.0.i252, ptr noundef %i.dl) ; 0 uses
  %i.du = add i32 %.0.i252, 1
  %i.dv = tail call fastcc i32 @aprs_position(ptr noundef %1, ptr noundef %i.ab, ptr noundef %0, i32 noundef %i.du, i1 noundef zeroext true) ; 3 uses
  %i.dw = load i32, ptr @hf_aprs_comment, align 4
  %i.dx = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.dv) ; 2 uses
  %i.dy = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.dw, ptr noundef %0, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef 0) ; 0 uses
  %i.dz = add i32 %i.dx, %i.dv
  br label %bb.am

bb.af:                                            ; preds = %bb.d
  %i.ea = load i32, ptr @hf_aprs_object, align 4
  %i.eb = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.ea, ptr noundef %0, i32 noundef 1, i32 noundef 10, i32 noundef 0) ; 0 uses
  %i.ec = tail call fastcc i32 @aprs_timestamp(ptr noundef %i.ab, ptr noundef %0, i32 noundef 11)
  %i.ed = tail call fastcc i32 @aprs_position(ptr noundef %1, ptr noundef %i.ab, ptr noundef %0, i32 noundef %i.ec, i1 noundef zeroext true) ; 3 uses
  %i.ee = load i32, ptr @hf_aprs_comment, align 4
  %i.ef = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ed) ; 2 uses
  %i.eg = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.ee, ptr noundef %0, i32 noundef %i.ed, i32 noundef %i.ef, i32 noundef 0) ; 0 uses
  %i.eh = add i32 %i.ef, %i.ed
  br label %bb.am

bb.ag:                                            ; preds = %bb.d
  %i.ei = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.ej = icmp eq i8 %i.ei, 33
  br i1 %i.ej, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ek = load i32, ptr @hf_ultimeter_2000, align 4
  %i.el = tail call fastcc i32 @aprs_default_string(ptr noundef %i.ab, ptr noundef %0, i32 noundef 1, i32 noundef -1, i32 noundef %i.ek)
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.em = tail call fastcc i32 @aprs_position(ptr noundef %1, ptr noundef %i.ab, ptr noundef %0, i32 noundef 1, i1 noundef zeroext false)
  %i.en = load i32, ptr @hf_aprs_comment, align 4
  %i.eo = tail call fastcc i32 @aprs_default_string(ptr noundef %i.ab, ptr noundef %0, i32 noundef %i.em, i32 noundef -1, i32 noundef %i.en)
  br label %bb.am

bb.aj:                                            ; preds = %bb.d
  %i.ep = tail call fastcc i32 @aprs_position(ptr noundef %1, ptr noundef %i.ab, ptr noundef %0, i32 noundef 1, i1 noundef zeroext true) ; 3 uses
  %i.eq = load i32, ptr @hf_aprs_comment, align 4
  %i.er = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ep) ; 2 uses
  %i.es = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.eq, ptr noundef %0, i32 noundef %i.ep, i32 noundef %i.er, i32 noundef 0) ; 0 uses
  %i.et = add i32 %i.er, %i.ep
  br label %bb.am

bb.ak:                                            ; preds = %bb.d
  %i.eu = tail call fastcc i32 @aprs_timestamp(ptr noundef %i.ab, ptr noundef %0, i32 noundef 1)
  %i.ev = tail call fastcc i32 @aprs_position(ptr noundef %1, ptr noundef %i.ab, ptr noundef %0, i32 noundef %i.eu, i1 noundef zeroext false) ; 3 uses
  %i.ew = load i32, ptr @hf_aprs_comment, align 4
  %i.ex = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ev) ; 2 uses
  %i.ey = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.ew, ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.ex, i32 noundef 0) ; 0 uses
  %i.ez = add i32 %i.ex, %i.ev
  br label %bb.am

bb.al:                                            ; preds = %bb.d
  %i.fa = tail call fastcc i32 @aprs_timestamp(ptr noundef %i.ab, ptr noundef %0, i32 noundef 1)
  %i.fb = tail call fastcc i32 @aprs_position(ptr noundef %1, ptr noundef %i.ab, ptr noundef %0, i32 noundef %i.fa, i1 noundef zeroext true) ; 3 uses
  %i.fc = load i32, ptr @hf_aprs_comment, align 4
  %i.fd = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.fb) ; 2 uses
  %i.fe = tail call ptr @proto_tree_add_item(ptr noundef %i.ab, i32 noundef %i.fc, ptr noundef %0, i32 noundef %i.fb, i32 noundef %i.fd, i32 noundef 0) ; 0 uses
  %i.ff = add i32 %i.fd, %i.fb
  br label %bb.am

bb.am:                                            ; preds = %bb.d, %bb.ah, %bb.ai, %bb.k, %bb.l, %bb.al, %bb.ak, %bb.aj, %bb.af, %aprs_item.exit, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.i, %aprs_status.exit, %bb.e
  %.0 = phi i32 [ 1, %bb.d ], [ %i.ah, %bb.e ], [ %i.at, %aprs_status.exit ], [ %i.ax, %bb.i ], [ %i.bb, %bb.k ], [ %i.bd, %bb.l ], [ %i.bh, %bb.m ], [ %i.bl, %bb.n ], [ %i.bp, %bb.o ], [ %i.br, %bb.p ], [ %i.bv, %bb.q ], [ %i.bz, %bb.r ], [ %i.cd, %bb.s ], [ %i.ch, %bb.t ], [ %i.cj, %bb.u ], [ %i.cl, %bb.v ], [ %i.cn, %bb.w ], [ %i.cp, %bb.x ], [ %i.ct, %bb.y ], [ %i.cx, %bb.z ], [ %i.db, %bb.aa ], [ %i.df, %bb.ab ], [ %i.dj, %bb.ac ], [ %i.dz, %aprs_item.exit ], [ %i.eh, %bb.af ], [ %i.el, %bb.ah ], [ %i.eo, %bb.ai ], [ %i.et, %bb.aj ], [ %i.ez, %bb.ak ], [ %i.ff, %bb.al ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_get_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_protocol_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @aprs_default_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 -1, 11) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.b ], [ %3, %bb.a ]    ; 2 uses
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %.0, i32 noundef 0) ; 0 uses
  %i.d = add i32 %.0, %2
  ret i32 %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @aprs_timestamp(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %2, 6                            ; 2 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.a) ; 2 uses
  %i.c = load ptr, ptr @g_ascii_table, align 8
  %i.d = zext i8 %i.b to i64
  %i.e = getelementptr [2 x i8], ptr %i.c, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, 8
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @hf_aprs_mdhm, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.j = load i32, ptr @hf_aprs_tz, align 4
  %i.k = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.j, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef @.str.226) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.f [
    i8 104, label %bb.d
    i8 122, label %bb.g
    i8 47, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr @hf_aprs_hms, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.l, ptr noundef %1, i32 noundef %2, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.n = load i32, ptr @hf_aprs_tz, align 4
  %i.o = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.n, ptr noundef %1, i32 noundef %2, i32 noundef 7, ptr noundef @.str.226) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.0 = phi ptr [ @.str.228, %bb.f ], [ @.str.227, %bb.e ], [ @.str.226, %bb.c ]
  %i.p = load i32, ptr @hf_aprs_dhm, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %i.p, ptr noundef %1, i32 noundef %2, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.r = load i32, ptr @hf_aprs_tz, align 4
  %i.s = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.r, ptr noundef %1, i32 noundef %i.a, i32 noundef 1, ptr noundef nonnull %.0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.b
  %.033 = phi i32 [ 8, %bb.b ], [ 7, %bb.d ], [ 7, %bb.g ]
  %i.t = add i32 %.033, %2
  ret i32 %i.t
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_aprs_weather(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.b = add i32 %i.a, %1                         ; 4 uses
  %i.c = load i32, ptr @hf_aprs_weather, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %1, i32 noundef %i.a, i32 noundef 0)
  %i.e = load i32, ptr @ett_aprs_weather, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 5 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %1)
  %i.h = load ptr, ptr @g_ascii_table, align 8
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.k, 8
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @hf_aprs_weather_dir, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef %1, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.o = add i32 %1, 4
  %i.p = load i32, ptr @hf_aprs_weather_spd, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.r = add i32 %1, 7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.r, %bb.b ], [ %1, %bb.a ]    ; 2 uses
  %.not87 = icmp ne ptr %2, null
  %i.s = icmp slt i32 %.0, %i.b
  %or.cond = and i1 %.not87, %i.s
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %bb.o
  %.11 = phi i32 [ %i.ad, %bb.o ], [ %.0, %bb.c ] ; 6 uses
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.11)
  switch i8 %i.t, label %.thread [
    i8 99, label %bb.o
    i8 115, label %bb.d
    i8 103, label %bb.e
    i8 116, label %bb.f
    i8 114, label %bb.g
    i8 80, label %bb.h
    i8 112, label %bb.i
    i8 104, label %bb.j
    i8 98, label %bb.k
    i8 108, label %bb.l
    i8 76, label %bb.l
    i8 83, label %bb.m
    i8 35, label %bb.n
  ]

bb.d:                                             ; preds = %.lr.ph
  br label %bb.o

bb.e:                                             ; preds = %.lr.ph
  br label %bb.o

bb.f:                                             ; preds = %.lr.ph
  br label %bb.o

bb.g:                                             ; preds = %.lr.ph
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph
  br label %bb.o

bb.i:                                             ; preds = %.lr.ph
  br label %bb.o

bb.j:                                             ; preds = %.lr.ph
  br label %bb.o

bb.k:                                             ; preds = %.lr.ph
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph, %.lr.ph
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  br label %bb.o

.thread:                                          ; preds = %.lr.ph
  %i.u = load i32, ptr @hf_aprs_weather_software, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef %0, i32 noundef %.11, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.w = add nsw i32 %.11, 1
  %i.x = load i32, ptr @hf_aprs_weather_unit, align 4
  %i.y = xor i32 %.11, -1
  %i.z = add i32 %i.b, %i.y
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef %i.z, i32 noundef 0) ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %.lr.ph, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %hf_aprs_weather_raw_rain.sink = phi ptr [ @hf_aprs_weather_raw_rain, %bb.n ], [ @hf_aprs_weather_snow, %bb.m ], [ @hf_aprs_weather_luminosity, %bb.l ], [ @hf_aprs_weather_press, %bb.k ], [ @hf_aprs_weather_humidty, %bb.j ], [ @hf_aprs_weather_rain, %bb.i ], [ @hf_aprs_weather_rain_24, %bb.h ], [ @hf_aprs_weather_rain_1, %bb.g ], [ @hf_aprs_weather_temp, %bb.f ], [ @hf_aprs_weather_peak, %bb.e ], [ @hf_aprs_weather_spd, %bb.d ], [ @hf_aprs_weather_dir, %.lr.ph ]
  %.sink6 = phi i32 [ 4, %bb.n ], [ 4, %bb.m ], [ 4, %bb.l ], [ 6, %bb.k ], [ 3, %bb.j ], [ 4, %bb.i ], [ 4, %bb.h ], [ 4, %bb.g ], [ 4, %bb.f ], [ 4, %bb.e ], [ 4, %bb.d ], [ 4, %.lr.ph ] ; 2 uses
  %i.ab = load i32, ptr %hf_aprs_weather_raw_rain.sink, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ab, ptr noundef %0, i32 noundef %.11, i32 noundef %.sink6, i32 noundef 0) ; 0 uses
  %i.ad = add i32 %.11, %.sink6                   ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %i.b
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %bb.o, %.thread, %bb.c
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_mic_e(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 17802391394926399, ptr %i.a, align 8
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noalias dereferenceable_or_null(100) ptr @wmem_alloc(ptr noundef %i.e, i64 noundef 100) #9 ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 10
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 236
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 7
  br i1 %i.l, label %4, label %bb.c

4:                                                ; preds = %bb.b
  %5 = getelementptr i8, ptr %1, i64 240
  %6 = load ptr, ptr %5, align 8                  ; 7 uses
  %7 = load i8, ptr %6, align 1
  br label %8

8:                                                ; preds = %8, %4
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %8 ], [ 0, %4 ] ; 3 uses
  %9 = getelementptr [20 x i8], ptr @dst_code, i64 %indvars.iv.i ; 3 uses
  %10 = load i8, ptr %9, align 4
  %.not.i = icmp eq i8 %10, %7
  %.not8.i = icmp eq i64 %indvars.iv.i, 33
  %or.cond.i = or i1 %.not8.i, %.not.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %dst_code_lookup.exit, label %8, !llvm.loop !8

dst_code_lookup.exit:                             ; preds = %8
  %11 = getelementptr i8, ptr %9, i64 1
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr %i.a, align 8
  %13 = getelementptr i8, ptr %9, i64 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %6, i64 1
  %16 = load i8, ptr %15, align 1
  br label %17

17:                                               ; preds = %17, %dst_code_lookup.exit
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i142, %17 ], [ 0, %dst_code_lookup.exit ] ; 3 uses
  %18 = getelementptr [20 x i8], ptr @dst_code, i64 %indvars.iv.i138 ; 3 uses
  %19 = load i8, ptr %18, align 4
  %.not.i139 = icmp eq i8 %19, %16
  %.not8.i140 = icmp eq i64 %indvars.iv.i138, 33
  %or.cond.i141 = or i1 %.not8.i140, %.not.i139
  %indvars.iv.next.i142 = add nuw nsw i64 %indvars.iv.i138, 1
  br i1 %or.cond.i141, label %dst_code_lookup.exit143, label %17, !llvm.loop !8

dst_code_lookup.exit143:                          ; preds = %17
  %20 = getelementptr i8, ptr %18, i64 1
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %21, ptr %22, align 1
  %23 = getelementptr i8, ptr %18, i64 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %6, i64 2
  %26 = load i8, ptr %25, align 1
  br label %27

27:                                               ; preds = %27, %dst_code_lookup.exit143
  %indvars.iv.i144 = phi i64 [ %indvars.iv.next.i148, %27 ], [ 0, %dst_code_lookup.exit143 ] ; 3 uses
  %28 = getelementptr [20 x i8], ptr @dst_code, i64 %indvars.iv.i144 ; 3 uses
  %29 = load i8, ptr %28, align 4
  %.not.i145 = icmp eq i8 %29, %26
  %.not8.i146 = icmp eq i64 %indvars.iv.i144, 33
  %or.cond.i147 = or i1 %.not8.i146, %.not.i145
  %indvars.iv.next.i148 = add nuw nsw i64 %indvars.iv.i144, 1
  br i1 %or.cond.i147, label %dst_code_lookup.exit149, label %27, !llvm.loop !8

dst_code_lookup.exit149:                          ; preds = %27
  %30 = getelementptr i8, ptr %28, i64 1
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %31, ptr %32, align 2
  %33 = getelementptr i8, ptr %28, i64 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %6, i64 3
  %36 = load i8, ptr %35, align 1
  br label %37

37:                                               ; preds = %37, %dst_code_lookup.exit149
  %indvars.iv.i150 = phi i64 [ %indvars.iv.next.i154, %37 ], [ 0, %dst_code_lookup.exit149 ] ; 3 uses
  %38 = getelementptr [20 x i8], ptr @dst_code, i64 %indvars.iv.i150 ; 3 uses
  %39 = load i8, ptr %38, align 4
  %.not.i151 = icmp eq i8 %39, %36
  %.not8.i152 = icmp eq i64 %indvars.iv.i150, 33
  %or.cond.i153 = or i1 %.not8.i152, %.not.i151
  %indvars.iv.next.i154 = add nuw nsw i64 %indvars.iv.i150, 1
  br i1 %or.cond.i153, label %dst_code_lookup.exit155, label %37, !llvm.loop !8

dst_code_lookup.exit155:                          ; preds = %37
  %40 = getelementptr i8, ptr %38, i64 1
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %41, ptr %42, align 1
  %43 = getelementptr i8, ptr %38, i64 8
  %44 = load i8, ptr %43, align 4
  %45 = getelementptr i8, ptr %6, i64 4
  %46 = load i8, ptr %45, align 1
  br label %47

47:                                               ; preds = %47, %dst_code_lookup.exit155
  %indvars.iv.i156 = phi i64 [ %indvars.iv.next.i160, %47 ], [ 0, %dst_code_lookup.exit155 ] ; 3 uses
  %48 = getelementptr [20 x i8], ptr @dst_code, i64 %indvars.iv.i156 ; 3 uses
  %49 = load i8, ptr %48, align 4
  %.not.i157 = icmp eq i8 %49, %46
  %.not8.i158 = icmp eq i64 %indvars.iv.i156, 33
  %or.cond.i159 = or i1 %.not8.i158, %.not.i157
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i156, 1
  br i1 %or.cond.i159, label %dst_code_lookup.exit161, label %47, !llvm.loop !8

dst_code_lookup.exit161:                          ; preds = %47
  %50 = getelementptr i8, ptr %48, i64 1
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %51, ptr %52, align 1
  %53 = getelementptr i8, ptr %48, i64 12
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %6, i64 5
  %56 = load i8, ptr %55, align 1
  br label %57

57:                                               ; preds = %57, %dst_code_lookup.exit161
  %indvars.iv.i162 = phi i64 [ %indvars.iv.next.i166, %57 ], [ 0, %dst_code_lookup.exit161 ] ; 3 uses
  %58 = getelementptr [20 x i8], ptr @dst_code, i64 %indvars.iv.i162 ; 3 uses
  %59 = load i8, ptr %58, align 4
  %.not.i163 = icmp eq i8 %59, %56
  %.not8.i164 = icmp eq i64 %indvars.iv.i162, 33
  %or.cond.i165 = or i1 %.not8.i164, %.not.i163
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i162, 1
  br i1 %or.cond.i165, label %dst_code_lookup.exit167, label %57, !llvm.loop !8

dst_code_lookup.exit167:                          ; preds = %57
  %i.m = and i32 %14, 1
  %i.n = and i32 %24, 1
  %i.o = and i32 %34, 1
  %i.p = getelementptr i8, ptr %58, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.q, ptr %i.r, align 2
  %i.s = getelementptr i8, ptr %58, i64 16
  %i.t = load i8, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %6, i64 6
  %i.v = load i8, ptr %i.u, align 1
  %i.w = lshr i8 %i.v, 1
  %i.x = and i8 %i.w, 15
  %i.y = sext i8 %44 to i32
  %i.z = sext i8 %i.t to i32
  %i.aa = zext nneg i8 %i.x to i32
  br label %bb.c

bb.c:                                             ; preds = %dst_code_lookup.exit167, %bb.b, %bb.a
  %.0132 = phi i32 [ %i.m, %dst_code_lookup.exit167 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0131 = phi i32 [ %i.n, %dst_code_lookup.exit167 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0130 = phi i32 [ %i.o, %dst_code_lookup.exit167 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0129 = phi i32 [ %i.y, %dst_code_lookup.exit167 ], [ 63, %bb.b ], [ 63, %bb.a ] ; 2 uses
  %.0128 = phi i32 [ %54, %dst_code_lookup.exit167 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0127 = phi i32 [ %i.z, %dst_code_lookup.exit167 ], [ 63, %bb.b ], [ 63, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.aa, %dst_code_lookup.exit167 ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.ab = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4)
  %i.ac = zext i8 %i.ab to i32
  %i.ad = mul nuw nsw i32 %i.ac, 10
  %i.ae = add nsw i32 %i.ad, -280
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.ag = zext i8 %i.af to i16
  %.lhs.trunc = add nsw i16 %i.ag, -28
  %i.ah = sdiv i16 %.lhs.trunc, 10
  %.sext = sext i16 %i.ah to i32
  %i.ai = add nsw i32 %i.ae, %.sext               ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 799
  %i.ak = add nsw i32 %i.ai, -800
  %spec.select = select i1 %i.aj, i32 %i.ak, i32 %i.ai
  %i.al = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.am = zext i8 %i.al to i16
  %.lhs.trunc170 = add nsw i16 %i.am, -28
  %i.an = srem i16 %.lhs.trunc170, 10
  %narrow = mul nsw i16 %i.an, 100
  %i.ao = sext i16 %narrow to i32
  %i.ap = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6)
  %i.aq = zext i8 %i.ap to i32
  %i.ar = mul nuw nsw i32 %i.aq, 10
  %i.as = add nsw i32 %i.ar, -280
  %i.at = add nsw i32 %i.as, %i.ao                ; 3 uses
  %i.au = icmp sgt i32 %i.at, 399
  %i.av = add nsw i32 %i.at, -400
  %.0126 = select i1 %i.au, i32 %i.av, i32 %i.at
  %i.aw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i32 %.0128, -28
  %i.az = add i32 %i.ay, %i.ax                    ; 4 uses
  %i.ba = add i32 %i.az, -180
  %or.cond.i168 = icmp ult i32 %i.ba, 10
  %i.bb = add nsw i32 %i.az, -80
  %i.bc = add i32 %i.az, -190                     ; 2 uses
  %or.cond3.i = icmp ult i32 %i.bc, 10
  %spec.select.i = select i1 %or.cond3.i, i32 %i.bc, i32 %i.az
  %.0.i = select i1 %or.cond.i168, i32 %i.bb, i32 %spec.select.i
  %i.bd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = icmp ugt i8 %i.bd, 87
  %spec.select.v.i = select i1 %i.bf, i32 -88, i32 -28
  %spec.select.i169 = add nsw i32 %spec.select.v.i, %i.be
  %i.bg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -28
  %i.bj = shl nuw nsw i32 %.0132, 2
  %i.bk = shl nuw nsw i32 %.0131, 1
  %i.bl = or disjoint i32 %i.bk, %i.bj
  %i.bm = or disjoint i32 %i.bl, %.0130
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr [16 x i8], ptr @mic_e_msg_table, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 16
  %i.bq = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.f, i64 noundef 100, i32 noundef 2, i64 noundef 100, ptr noundef @.str.229, ptr noundef nonnull %i.a, i32 noundef %.0129, i32 noundef %.0.i, i32 noundef %spec.select.i169, i32 noundef %i.bi, i32 noundef %.0127, i32 noundef %.0126, i32 noundef %spec.select, i32 noundef %.0, ptr noundef %i.bp) ; 0 uses
  %i.br = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  call void @col_set_str(ptr noundef %i.bs, i32 noundef 25, ptr noundef @.str.230)
  %i.bt = load ptr, ptr %i.br, align 8
  call void @col_append_str(ptr noundef %i.bt, i32 noundef 25, ptr noundef %i.f)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bu = call ptr @proto_tree_add_string(ptr noundef nonnull %2, i32 noundef %3, ptr noundef %0, i32 noundef 1, i32 noundef %i.b, ptr noundef %i.f)
  %i.bv = load i32, ptr @ett_aprs_mic_e, align 4
  %i.bw = call ptr @proto_item_add_subtree(ptr noundef %i.bu, i32 noundef %i.bv) ; 10 uses
  %i.bx = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.f, i64 noundef 100, i32 noundef 2, i64 noundef 100, ptr noundef @.str.231, ptr noundef nonnull %i.a, i32 noundef %.0132, i32 noundef %.0131, i32 noundef %.0130, i32 noundef %.0129, i32 noundef %.0128, i32 noundef %.0127, i32 noundef %.0) ; 0 uses
  %i.by = load i32, ptr @hf_aprs_mic_e_dst, align 4
  %i.bz = call ptr @proto_tree_add_string(ptr noundef %i.bw, i32 noundef %i.by, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.f) ; 0 uses
  %i.ca = load i32, ptr @hf_aprs_mic_e_long_d, align 4
  %i.cb = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.ca, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cc = load i32, ptr @hf_aprs_mic_e_long_m, align 4
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.cc, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ce = load i32, ptr @hf_aprs_mic_e_long_h, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.ce, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cg = load i32, ptr @hf_aprs_mic_e_spd_sp, align 4
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.cg, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ci = load i32, ptr @hf_aprs_mic_e_spd_dc, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.ci, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ck = load i32, ptr @hf_aprs_mic_e_spd_se, align 4
  %i.cl = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.ck, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cm = load i32, ptr @hf_aprs_sym_code, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.cm, ptr noundef %0, i32 noundef 7, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.co = load i32, ptr @hf_aprs_sym_id, align 4
  %i.cp = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.co, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cq = icmp sgt i32 %i.c, 9
  br i1 %i.cq, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d
  %i.cr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 9) ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.cr, 44
  %switch.selectcmp.case2 = icmp eq i8 %i.cr, 29
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %hf_aprs_mic_e_telemetry.val = load i32, ptr @hf_aprs_mic_e_telemetry, align 4
  %hf_aprs_mic_e_status.val = load i32, ptr @hf_aprs_mic_e_status, align 4
  %i.cs = select i1 %switch.selectcmp, i32 %hf_aprs_mic_e_telemetry.val, i32 %hf_aprs_mic_e_status.val
  %i.ct = call ptr @proto_tree_add_item(ptr noundef %i.bw, i32 noundef %i.cs, ptr noundef %0, i32 noundef 9, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @aprs_position(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @g_ascii_table, align 8    ; 2 uses
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %3)
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr [2 x i8], ptr %i.a, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, 8
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @hf_aprs_lat, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %2, i32 noundef %3, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.i = add i32 %3, 8                            ; 2 uses
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.i) ; 3 uses
  %i.k = load i32, ptr @hf_aprs_sym_id, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.k, ptr noundef %2, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = add i32 %3, 9
  %i.n = load i32, ptr @hf_aprs_long, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.n, ptr noundef %2, i32 noundef %i.m, i32 noundef 9, i32 noundef 0) ; 0 uses
  %i.p = add i32 %3, 18                           ; 2 uses
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.p) ; 4 uses
  %i.r = load i32, ptr @hf_aprs_sym_code, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.r, ptr noundef %2, i32 noundef %i.p, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.t = add i32 %3, 19                           ; 8 uses
  %i.u = load i8, ptr @gPREF_APRS_LAX, align 1, !range !9, !noundef !10
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.w = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.t)
  switch i8 %i.w, label %bb.d [
    i8 68, label %.critedge
    i8 80, label %.critedge
    i8 82, label %.critedge
    i8 84, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %4, label %.critedge, label %dissect_aprs_msg.exit

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.c, %bb.c, %bb.c, %bb.d
  %.not99 = icmp eq i8 %i.q, 95
  %i.x = icmp ne i8 %i.j, 47
  %i.y = icmp ne i8 %i.q, 92
  %.not102 = select i1 %i.x, i1 true, i1 %i.y
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.z = load i32, ptr @hf_aprs_msg, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.z, ptr noundef %2, i32 noundef %i.t, i32 noundef 7, i32 noundef 0)
  %i.ab = load i32, ptr @ett_aprs_msg, align 4
  %i.ac = tail call ptr @proto_item_add_subtree(ptr noundef %i.aa, i32 noundef %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.076.i = phi ptr [ %i.ac, %bb.e ], [ null, %.critedge ] ; 15 uses
  %i.ad = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.t) ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr [2 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 8
  %.not78.i = icmp eq i16 %i.ah, 0
  br i1 %.not78.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %hf_aprs_msg_cse.val.i = load i32, ptr @hf_aprs_msg_cse, align 4
  %hf_aprs_msg_dir.val.i = load i32, ptr @hf_aprs_msg_dir, align 4
  %i.ai = select i1 %.not99, i32 %hf_aprs_msg_dir.val.i, i32 %hf_aprs_msg_cse.val.i
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.ai, ptr noundef %2, i32 noundef %i.t, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ak = add i32 %3, 23
  %i.al = load i32, ptr @hf_aprs_msg_spd, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.al, ptr noundef %2, i32 noundef %i.ak, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.an = add i32 %3, 26
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  switch i8 %i.ad, label %bb.m [
    i8 68, label %bb.i
    i8 80, label %bb.j
    i8 82, label %bb.k
    i8 84, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = add i32 %3, 22
  %i.ap = load i32, ptr @hf_aprs_msg_dfs_s, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.ap, ptr noundef %2, i32 noundef %i.ao, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ar = add i32 %3, 23
  %i.as = load i32, ptr @hf_aprs_msg_dfs_h, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.as, ptr noundef %2, i32 noundef %i.ar, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = add i32 %3, 24
  %i.av = load i32, ptr @hf_aprs_msg_dfs_g, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.av, ptr noundef %2, i32 noundef %i.au, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ax = add i32 %3, 25                          ; 2 uses
  %i.ay = load i32, ptr @hf_aprs_msg_dfs_d, align 4
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.ay, ptr noundef %2, i32 noundef %i.ax, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ba = add i32 %3, 22
  %i.bb = load i32, ptr @hf_aprs_msg_phg_p, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.bb, ptr noundef %2, i32 noundef %i.ba, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bd = add i32 %3, 23
  %i.be = load i32, ptr @hf_aprs_msg_phg_h, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.be, ptr noundef %2, i32 noundef %i.bd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bg = add i32 %3, 24
  %i.bh = load i32, ptr @hf_aprs_msg_phg_g, align 4
  %i.bi = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.bh, ptr noundef %2, i32 noundef %i.bg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bj = add i32 %3, 25                          ; 2 uses
  %i.bk = load i32, ptr @hf_aprs_msg_phg_d, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.bk, ptr noundef %2, i32 noundef %i.bj, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.bm = load i32, ptr @hf_aprs_msg_rng, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.bm, ptr noundef %2, i32 noundef %i.t, i32 noundef 7, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.bo = add i32 %3, 20
  %i.bp = load i32, ptr @hf_aprs_msg_aod_t, align 4
  %i.bq = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.bp, ptr noundef %2, i32 noundef %i.bo, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.br = add i32 %3, 24                          ; 2 uses
  %i.bs = load i32, ptr @hf_aprs_msg_aod_c, align 4
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.bs, ptr noundef %2, i32 noundef %i.br, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i = phi i32 [ %i.an, %bb.g ], [ %i.t, %bb.h ], [ %i.ax, %bb.i ], [ %i.bj, %bb.j ], [ %i.t, %bb.k ], [ %i.br, %bb.l ] ; 4 uses
  br i1 %.not102, label %dissect_aprs_msg.exit, label %dissect_aprs_msg.exit.thread106

dissect_aprs_msg.exit.thread106:                  ; preds = %bb.m
  %i.bu = load i32, ptr @hf_aprs_msg_brg, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.bu, ptr noundef %2, i32 noundef %.0.i, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bw = add i32 %.0.i, 4
  %i.bx = load i32, ptr @hf_aprs_msg_nrq, align 4
  %i.by = tail call ptr @proto_tree_add_item(ptr noundef %.076.i, i32 noundef %i.bx, ptr noundef %2, i32 noundef %i.bw, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bz = add i32 %.0.i, 7
  br label %.thread

bb.n:                                             ; preds = %bb.a
  %i.ca = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.cb = load i32, ptr @hf_aprs_sym_id, align 4
  %i.cc = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cb, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cd = getelementptr i8, ptr %0, i64 416       ; 3 uses
  %.not.i88 = icmp eq ptr %1, null                ; 2 uses
  br i1 %.not.i88, label %aprs_latitude_compressed.exit.thread, label %bb.o

aprs_latitude_compressed.exit.thread:             ; preds = %bb.n
  %i.ce = add i32 %3, 5
  br label %aprs_longitude_compressed.exit

bb.o:                                             ; preds = %bb.n
  %i.cf = add i32 %3, 1                           ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8
  %i.ch = tail call noalias dereferenceable_or_null(100) ptr @wmem_alloc(ptr noundef %i.cg, i64 noundef 100) #9 ; 2 uses
  %i.ci = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.cf)
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add i32 %3, 2
  %i.cl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.ck)
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.cj, 91
  %i.co = add nuw nsw i32 %i.cn, %i.cm
  %i.cp = add i32 %3, 3
  %i.cq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.cp)
  %i.cr = zext i8 %i.cq to i32
  %i.cs = mul nuw nsw i32 %i.co, 91
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = add i32 %3, 4
  %i.cv = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.cu)
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nuw nsw i32 %i.ct, 91
  %i.cy = add nuw nsw i32 %i.cw, -25144152
  %i.cz = add nsw i32 %i.cy, %i.cx
  %i.da = sitofp i32 %i.cz to double
  %i.db = fdiv double %i.da, 3.809260e+05
  %i.dc = fsub double 9.000000e+01, %i.db
  %i.dd = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.ch, i64 noundef 100, i32 noundef 2, i64 noundef 100, ptr noundef @.str.248, double noundef %i.dc) ; 0 uses
  %i.de = load i32, ptr @hf_aprs_lat, align 4
  %i.df = tail call ptr @proto_tree_add_string(ptr noundef nonnull %1, i32 noundef %i.de, ptr noundef %2, i32 noundef %i.cf, i32 noundef 4, ptr noundef %i.ch) ; 0 uses
  %i.dg = add i32 %3, 5                           ; 3 uses
  %i.dh = load ptr, ptr %i.cd, align 8
  %i.di = tail call noalias dereferenceable_or_null(100) ptr @wmem_alloc(ptr noundef %i.dh, i64 noundef 100) #9 ; 2 uses
  %i.dj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.dg)
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add i32 %3, 6
  %i.dm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.dl)
  %i.dn = zext i8 %i.dm to i32
  %i.do = mul nuw nsw i32 %i.dk, 91
  %i.dp = add nuw nsw i32 %i.do, %i.dn
  %i.dq = add i32 %3, 7
  %i.dr = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.dq)
  %i.ds = zext i8 %i.dr to i32
  %i.dt = mul nuw nsw i32 %i.dp, 91
  %i.du = add nuw nsw i32 %i.dt, %i.ds
  %i.dv = add i32 %3, 8
  %i.dw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.dv)
  %i.dx = zext i8 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.du, 91
  %i.dz = add nuw nsw i32 %i.dx, -25144152
  %i.ea = add nsw i32 %i.dz, %i.dy
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fdiv double %i.eb, 1.904630e+05
  %i.ed = fadd double %i.ec, -1.800000e+02
  %i.ee = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.di, i64 noundef 100, i32 noundef 2, i64 noundef 100, ptr noundef @.str.249, double noundef %i.ed) ; 0 uses
  %i.ef = load i32, ptr @hf_aprs_long, align 4
  %i.eg = tail call ptr @proto_tree_add_string(ptr noundef nonnull %1, i32 noundef %i.ef, ptr noundef %2, i32 noundef %i.dg, i32 noundef 4, ptr noundef %i.di) ; 0 uses
  br label %aprs_longitude_compressed.exit

aprs_longitude_compressed.exit:                   ; preds = %aprs_latitude_compressed.exit.thread, %bb.o
  %i.eh = phi i32 [ %i.ce, %aprs_latitude_compressed.exit.thread ], [ %i.dg, %bb.o ] ; 5 uses
  %i.ei = add i32 %i.eh, 4                        ; 2 uses
  %i.ej = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.ei) ; 2 uses
  %i.ek = load i32, ptr @hf_aprs_sym_code, align 4
  %i.el = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ek, ptr noundef %2, i32 noundef %i.ei, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.em = add i32 %i.eh, 5                        ; 3 uses
  %i.en = load ptr, ptr %i.cd, align 8            ; 2 uses
  br i1 %.not.i88, label %dissect_aprs_compressed_msg.exit, label %bb.p

bb.p:                                             ; preds = %aprs_longitude_compressed.exit
  %i.eo = load i32, ptr @hf_aprs_msg, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.eo, ptr noundef %2, i32 noundef %i.em, i32 noundef 2, i32 noundef 0)
  %i.eq = load i32, ptr @ett_aprs_msg, align 4
  %i.er = tail call ptr @proto_item_add_subtree(ptr noundef %i.ep, i32 noundef %i.eq) ; 2 uses
  %i.es = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.em) ; 3 uses
  switch i8 %i.es, label %bb.q [
    i8 32, label %bb.s
    i8 123, label %.sink.split.i
  ]

bb.q:                                             ; preds = %bb.p
  %i.et = add i8 %i.es, -33
  %or.cond.i = icmp ult i8 %i.et, 90
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eu = shl i8 %i.es, 2
  %i.ev = add i8 %i.eu, 124
  %i.ew = zext i8 %i.ev to i32
  %i.ex = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.en, ptr noundef @.str.250, i32 noundef %i.ew)
  %i.ey = load i32, ptr @hf_aprs_msg_cse, align 4
  %i.ez = tail call ptr @proto_tree_add_string(ptr noundef %i.er, i32 noundef %i.ey, ptr noundef %2, i32 noundef %i.em, i32 noundef 1, ptr noundef %i.ex) ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.p
  %hf_aprs_msg_spd.sink.i = phi ptr [ @hf_aprs_msg_spd, %bb.r ], [ @hf_aprs_msg_rng, %bb.p ]
  %i.fa = add i32 %i.eh, 6                        ; 2 uses
  %i.fb = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.fa)
  %i.fc = zext i8 %i.fb to i32
  %i.fd = add nsw i32 %i.fc, -33
  %i.fe = sitofp i32 %i.fd to double
  %i.ff = fmul nnan double %i.fe, f0x3FB3B3B802BEEB94
  %i.fg = tail call double @exp(double noundef %i.ff) #8
  %i.fh = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.en, ptr noundef @.str.249, double noundef %i.fg)
  %i.fi = load i32, ptr %hf_aprs_msg_spd.sink.i, align 4
  %i.fj = tail call ptr @proto_tree_add_string(ptr noundef %i.er, i32 noundef %i.fi, ptr noundef %2, i32 noundef %i.fa, i32 noundef 1, ptr noundef %i.fh) ; 0 uses
  br label %bb.s

dissect_aprs_compressed_msg.exit:                 ; preds = %aprs_longitude_compressed.exit
  %i.fk = add i32 %i.eh, 7
  br label %dissect_aprs_compression_type.exit

bb.s:                                             ; preds = %bb.p, %bb.q, %.sink.split.i
  %i.fl = add i32 %i.eh, 7                        ; 6 uses
  %i.fm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.fl)
  %i.fn = add i8 %i.fm, -33
  %i.fo = load i32, ptr @hf_aprs_compression_type, align 4
  %i.fp = zext i8 %i.fn to i32
  %i.fq = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %1, i32 noundef %i.fo, ptr noundef %2, i32 noundef %i.fl, i32 noundef 1, i32 noundef %i.fp)
  %i.fr = load i32, ptr @ett_aprs_ct, align 4
  %i.fs = tail call ptr @proto_item_add_subtree(ptr noundef %i.fq, i32 noundef %i.fr) ; 3 uses
  %i.ft = load i32, ptr @hf_aprs_ct_gps_fix, align 4
  %i.fu = tail call ptr @proto_tree_add_item(ptr noundef %i.fs, i32 noundef %i.ft, ptr noundef %2, i32 noundef %i.fl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fv = load i32, ptr @hf_aprs_ct_nmea_src, align 4
  %i.fw = tail call ptr @proto_tree_add_item(ptr noundef %i.fs, i32 noundef %i.fv, ptr noundef %2, i32 noundef %i.fl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fx = load i32, ptr @hf_aprs_ct_origin, align 4
  %i.fy = tail call ptr @proto_tree_add_item(ptr noundef %i.fs, i32 noundef %i.fx, ptr noundef %2, i32 noundef %i.fl, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_aprs_compression_type.exit

dissect_aprs_compression_type.exit:               ; preds = %dissect_aprs_compressed_msg.exit, %bb.s
  %i.fz = phi i32 [ %i.fk, %dissect_aprs_compressed_msg.exit ], [ %i.fl, %bb.s ] ; 2 uses
  %i.ga = add i32 %i.fz, 1                        ; 2 uses
  %i.gb = icmp eq i8 %i.ca, 47
  %i.gc = icmp eq i8 %i.ej, 92
  %or.cond6 = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond6, label %dissect_aprs_msg.exit.thread, label %dissect_aprs_msg.exit

dissect_aprs_msg.exit.thread:                     ; preds = %dissect_aprs_compression_type.exit
  %i.gd = load i32, ptr @hf_aprs_msg_brg, align 4
  %i.ge = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gd, ptr noundef %2, i32 noundef %i.ga, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.gf = add i32 %i.fz, 9
  br label %.thread

dissect_aprs_msg.exit:                            ; preds = %bb.m, %dissect_aprs_compression_type.exit, %bb.d
  %.086 = phi i32 [ %i.t, %bb.d ], [ %i.ga, %dissect_aprs_compression_type.exit ], [ %.0.i, %bb.m ] ; 13 uses
  %.085 = phi i8 [ %i.j, %bb.d ], [ %i.ca, %dissect_aprs_compression_type.exit ], [ %i.j, %bb.m ] ; 2 uses
  %.084 = phi i8 [ %i.q, %bb.d ], [ %i.ej, %dissect_aprs_compression_type.exit ], [ %i.q, %bb.m ] ; 2 uses
  %i.gg = icmp eq i8 %.084, 95
  br i1 %i.gg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %dissect_aprs_msg.exit
  %i.gh = tail call fastcc i32 @dissect_aprs_weather(ptr noundef %2, i32 noundef %.086, ptr noundef %1)
  br label %.thread

bb.u:                                             ; preds = %dissect_aprs_msg.exit
  %i.gi = icmp eq i8 %.085, 47
  %i.gj = icmp eq i8 %.084, 64
  %i.gk = icmp eq i8 %.085, 92
  %or.cond9103 = or i1 %i.gi, %i.gk
  %or.cond = and i1 %i.gj, %or.cond9103
  br i1 %or.cond, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.gl = load i32, ptr @hf_aprs_storm, align 4
  %i.gm = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.gl, ptr noundef %2, i32 noundef %.086, i32 noundef -1, i32 noundef 0)
  %i.gn = load i32, ptr @ett_aprs_storm, align 4
  %i.go = tail call ptr @proto_item_add_subtree(ptr noundef %i.gm, i32 noundef %i.gn) ; 9 uses
  %i.gp = load i32, ptr @hf_aprs_storm_dir, align 4
  %i.gq = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.gp, ptr noundef %2, i32 noundef %.086, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.gr = add i32 %.086, 4
  %i.gs = load i32, ptr @hf_aprs_storm_spd, align 4
  %i.gt = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.gs, ptr noundef %2, i32 noundef %i.gr, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.gu = add i32 %.086, 7
  %i.gv = load i32, ptr @hf_aprs_storm_type, align 4
  %i.gw = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.gv, ptr noundef %2, i32 noundef %i.gu, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.gx = add i32 %.086, 10
  %i.gy = load i32, ptr @hf_aprs_storm_sws, align 4
  %i.gz = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.gy, ptr noundef %2, i32 noundef %i.gx, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ha = add i32 %.086, 14
  %i.hb = load i32, ptr @hf_aprs_storm_pwg, align 4
  %i.hc = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.hb, ptr noundef %2, i32 noundef %i.ha, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hd = add i32 %.086, 18
  %i.he = load i32, ptr @hf_aprs_storm_cp, align 4
  %i.hf = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.he, ptr noundef %2, i32 noundef %i.hd, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.hg = add i32 %.086, 23
  %i.hh = load i32, ptr @hf_aprs_storm_rhw, align 4
  %i.hi = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.hh, ptr noundef %2, i32 noundef %i.hg, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hj = add i32 %.086, 27
  %i.hk = load i32, ptr @hf_aprs_storm_rtsw, align 4
  %i.hl = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.hk, ptr noundef %2, i32 noundef %i.hj, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hm = add i32 %.086, 31
  %i.hn = load i32, ptr @hf_aprs_storm_rwg, align 4
  %i.ho = tail call ptr @proto_tree_add_item(ptr noundef %i.go, i32 noundef %i.hn, ptr noundef %2, i32 noundef %i.hm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.hp = add i32 %.086, 35
  br label %.thread

.thread:                                          ; preds = %dissect_aprs_msg.exit.thread106, %dissect_aprs_msg.exit.thread, %bb.t, %bb.u, %bb.v
  %.2 = phi i32 [ %i.hp, %bb.v ], [ %.086, %bb.u ], [ %i.bz, %dissect_aprs_msg.exit.thread106 ], [ %i.gf, %dissect_aprs_msg.exit.thread ], [ %i.gh, %bb.t ]
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = !{i8 0, i8 2}
!10 = !{}
end_hunk_0
