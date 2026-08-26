Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-silabs-dch?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0
@.str.139 = private unnamed_addr constant [32 x i8] c"silabs-dch.unsupported_protocol\00", align 1
@.str.140 = private unnamed_addr constant [27 x i8] c"Unsupported EFR32 Protocol\00", align 1
@ei_silabs_dch_invalid_appendedinfolen = internal global %struct.expert_field zeroinitializer, align 4
@.str.141 = private unnamed_addr constant [35 x i8] c"silabs-dch.invalid_appendedinfolen\00", align 1
@.str.142 = private unnamed_addr constant [29 x i8] c"Invalid Appended Info Length\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"Silabs Debug Channel\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"Silabs DCH\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"silabs-dch\00", align 1
@proto_silabs_dch = internal unnamed_addr global i32 0, align 4
@ett = internal global [7 x ptr] [ptr @ett_silabs_dch, ptr @ett_silabs_efr32, ptr @ett_silabs_efr32_radiocfg, ptr @ett_silabs_efr32_radioinfo, ptr @ett_silabs_efr32_status, ptr @ett_silabs_efr32_appendedinfo, ptr @ett_silabs_efr32_phr], align 16
@.str.146 = private unnamed_addr constant [11 x i8] c"silabs_dch\00", align 1
@silabs_dch_handle = internal unnamed_addr global ptr null, align 8
@silabs_ble_connections = internal unnamed_addr global ptr null, align 8
@.str.147 = private unnamed_addr constant [17 x i8] c"ble_sniffer_mode\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"BLE Sniffer Mode\00", align 1
@.str.149 = private unnamed_addr constant [133 x i8] c"Enable when the capture source is a BLE sniffer. This disables BLE connection role tracking which doesn't work in a sniffer context.\00", align 1
@pref_ble_sniffer_mode = internal global i8 0, align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"wpan\00", align 1
@ieee802154_handle = internal unnamed_addr global ptr null, align 8
@.str.151 = private unnamed_addr constant [11 x i8] c"wpan_nofcs\00", align 1
@ieee802154nofcs_handle = internal unnamed_addr global ptr null, align 8
@.str.152 = private unnamed_addr constant [5 x i8] c"btle\00", align 1
@btle_handle = internal unnamed_addr global ptr null, align 8
@.str.153 = private unnamed_addr constant [11 x i8] c"wtap_encap\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"Time synchronization notice\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"Reset notice\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"Application printf\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"API trace\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"Assertion notice\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"Core dump\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"Phy Rx\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"API Rx\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"Phy Tx\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"API Tx\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"Sniffer packet\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"Adapter error\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"Time sync test\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"Radio reboot count\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"Virtual UART Tx\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"Virtual UART Rx\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"2420 Tx packet\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"2420 Rx packet\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"250 Tx packet\00", align 1
@.str.174 = private unnamed_addr constant [14 x i8] c"250 Rx packet\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"350 Tx packet\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"350 Rx packet\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"Pro2+ Tx packet\00", align 1
@.str.178 = private unnamed_addr constant [16 x i8] c"Pro2+ Rx packet\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"Pro2+ debug packet\00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"EFR Tx packet\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"EFR Rx packet\00", align 1
@.str.182 = private unnamed_addr constant [24 x i8] c"EFR additional PTI data\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"Flash read request\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"Flash read response\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"EEPROM read request\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"EEPROM read response\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"EEPROM write request\00", align 1
@.str.188 = private unnamed_addr constant [22 x i8] c"EEPROM write response\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"RAM read request\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"RAM read response\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"RAM write request\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"RAM write response\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"Info request\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"Node information\00", align 1
@.str.195 = private unnamed_addr constant [26 x i8] c"EmberZNet serial protocol\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"ASH protocol\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"DAG trace\00", align 1
@.str.198 = private unnamed_addr constant [29 x i8] c"Simulated NCP callback ready\00", align 1
@.str.199 = private unnamed_addr constant [31 x i8] c"Simulated wakeup signal to NCP\00", align 1
@.str.200 = private unnamed_addr constant [43 x i8] c"Simulated signal to host that NCP is awake\00", align 1
@.str.201 = private unnamed_addr constant [25 x i8] c"Ember ZNet stack version\00", align 1
@.str.202 = private unnamed_addr constant [23 x i8] c"Ember IP stack version\00", align 1
@.str.203 = private unnamed_addr constant [25 x i8] c"Current time information\00", align 1
@.str.204 = private unnamed_addr constant [23 x i8] c"Memory use information\00", align 1
@.str.205 = private unnamed_addr constant [20 x i8] c"Mustang API message\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"Latency\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"TMSP\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"AEM sample\00", align 1
@.str.209 = private unnamed_addr constant [22 x i8] c"AEM counters snapshot\00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"AEM request\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"AEM response\00", align 1
@.str.212 = private unnamed_addr constant [19 x i8] c"AEM current packet\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"AEM current packet v2\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"PC sample packet\00", align 1
@.str.215 = private unnamed_addr constant [17 x i8] c"Exception packet\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"Logic analyzer data\00", align 1
@.str.217 = private unnamed_addr constant [10 x i8] c"CPU usage\00", align 1
@.str.218 = private unnamed_addr constant [23 x i8] c"Configuration over SWO\00", align 1
@.str.219 = private unnamed_addr constant [13 x i8] c"User command\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"User response\00", align 1
@silabs_dch_message_types = internal constant [68 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.154 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.155 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.156 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.159 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.160 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.161 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.162 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.164 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.166 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.167 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.168 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.169 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.170 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.171 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.172 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.174 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.175 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.176 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.177 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.178 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.179 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.180 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.181 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.182 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.183 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.185 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.186 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.187 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.188 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.189 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.190 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.191 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.192 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.193 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.194 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.195 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.196 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.197 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.198 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.199 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.200 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.201 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.202 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.203 }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @.str.204 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.205 }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @.str.206 }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @.str.207 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.208 }, { i32, [4 x i8], ptr } { i32 81, [4 x i8] zeroinitializer, ptr @.str.209 }, { i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.210 }, { i32, [4 x i8], ptr } { i32 97, [4 x i8] zeroinitializer, ptr @.str.211 }, { i32, [4 x i8], ptr } { i32 98, [4 x i8] zeroinitializer, ptr @.str.212 }, { i32, [4 x i8], ptr } { i32 99, [4 x i8] zeroinitializer, ptr @.str.213 }, { i32, [4 x i8], ptr } { i32 100, [4 x i8] zeroinitializer, ptr @.str.214 }, { i32, [4 x i8], ptr } { i32 101, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 102, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 112, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 65534, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 65535, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.222 = private unnamed_addr constant [9 x i8] c"Rx Start\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"Tx Start\00", align 1
@.str.224 = private unnamed_addr constant [20 x i8] c"DMP Protocol Switch\00", align 1
@silabs_efr32_hwstart_values = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 248, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 252, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 240, [4 x i8] zeroinitializer, ptr @.str.224 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.226 = private unnamed_addr constant [11 x i8] c"Rx Success\00", align 1
@.str.227 = private unnamed_addr constant [9 x i8] c"Rx Abort\00", align 1
@.str.228 = private unnamed_addr constant [11 x i8] c"Tx Success\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"Tx Abort\00", align 1
@silabs_efr32_hwend_values = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 249, [4 x i8] zeroinitializer, ptr @.str.226 }, { i32, [4 x i8], ptr } { i32 250, [4 x i8] zeroinitializer, ptr @.str.227 }, { i32, [4 x i8], ptr } { i32 253, [4 x i8] zeroinitializer, ptr @.str.228 }, { i32, [4 x i8], ptr } { i32 254, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.231 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.232 = private unnamed_addr constant [25 x i8] c"EmberPHY (Zigbee/Thread)\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"Thread on RAIL\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"BLE\00", align 1
@.str.235 = private unnamed_addr constant [16 x i8] c"Connect on RAIL\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"Zigbee on RAIL\00", align 1
@.str.237 = private unnamed_addr constant [15 x i8] c"Z-Wave on RAIL\00", align 1
@.str.238 = private unnamed_addr constant [15 x i8] c"Wi-SUN on RAIL\00", align 1
@.str.239 = private unnamed_addr constant [32 x i8] c"Custom on 802.15.4 built-in PHY\00", align 1
@.str.240 = private unnamed_addr constant [16 x i8] c"Amazon SideWalk\00", align 1
@.str.241 = private unnamed_addr constant [18 x i8] c"Bluetooth Classic\00", align 1
@silabs_efr32_status_protcolid_values = internal constant [12 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.231 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.232 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.233 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.234 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.235 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.236 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.237 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.239 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.240 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.241 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.243 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.244 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@silabs_efr32_appendedinfocfg_txrx_values = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.243 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.244 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.246 = private unnamed_addr constant [31 x i8] c"FSK #1a 50ksym/s mod-index 0.5\00", align 1
@.str.247 = private unnamed_addr constant [31 x i8] c"FSK #1b 50ksym/s mod-index 1.0\00", align 1
@.str.248 = private unnamed_addr constant [32 x i8] c"FSK #2a 100ksym/s mod-index 0.5\00", align 1
@.str.249 = private unnamed_addr constant [32 x i8] c"FSK #2b 100ksym/s mod-index 1.0\00", align 1
@.str.250 = private unnamed_addr constant [31 x i8] c"FSK #3 150ksym/s mod-index 0.5\00", align 1
@.str.251 = private unnamed_addr constant [32 x i8] c"FSK #4a 200ksym/s mod-index 0.5\00", align 1
@.str.252 = private unnamed_addr constant [32 x i8] c"FSK #4b 200ksym/s mod-index 1.0\00", align 1
@.str.253 = private unnamed_addr constant [31 x i8] c"FSK #5 300ksym/s mod-index 0.5\00", align 1
@.str.254 = private unnamed_addr constant [40 x i8] c"FSK with FEC #1a 50ksym/s mod-index 0.5\00", align 1
@.str.255 = private unnamed_addr constant [40 x i8] c"FSK with FEC #1b 50ksym/s mod-index 1.0\00", align 1
@.str.256 = private unnamed_addr constant [41 x i8] c"FSK with FEC #2a 100ksym/s mod-index 0.5\00", align 1
@.str.257 = private unnamed_addr constant [41 x i8] c"FSK with FEC #2b 100ksym/s mod-index 1.0\00", align 1
@.str.258 = private unnamed_addr constant [40 x i8] c"FSK with FEC #3 150ksym/s mod-index 0.5\00", align 1
@.str.259 = private unnamed_addr constant [41 x i8] c"FSK with FEC #4a 200ksym/s mod-index 0.5\00", align 1
@.str.260 = private unnamed_addr constant [41 x i8] c"FSK with FEC #4b 200ksym/s mod-index 1.0\00", align 1
@.str.261 = private unnamed_addr constant [40 x i8] c"FSK with FEC #5 300ksym/s mod-index 0.5\00", align 1
@.str.262 = private unnamed_addr constant [28 x i8] c"OFDM Option 1 MCS 2 400kbps\00", align 1
@.str.263 = private unnamed_addr constant [28 x i8] c"OFDM Option 1 MCS 3 800kbps\00", align 1
@.str.264 = private unnamed_addr constant [29 x i8] c"OFDM Option 1 MCS 4 1200kbps\00", align 1
@.str.265 = private unnamed_addr constant [29 x i8] c"OFDM Option 1 MCS 5 1600kbps\00", align 1
@.str.266 = private unnamed_addr constant [29 x i8] c"OFDM Option 1 MCS 6 2400kbps\00", align 1
@.str.267 = private unnamed_addr constant [28 x i8] c"OFDM Option 2 MCS 3 400kbps\00", align 1
@.str.268 = private unnamed_addr constant [28 x i8] c"OFDM Option 2 MCS 4 600kbps\00", align 1
@.str.269 = private unnamed_addr constant [28 x i8] c"OFDM Option 2 MCS 5 800kbps\00", align 1
@.str.270 = private unnamed_addr constant [29 x i8] c"OFDM Option 2 MCS 6 1200kbps\00", align 1
@.str.271 = private unnamed_addr constant [28 x i8] c"OFDM Option 3 MCS 4 300kbps\00", align 1
@.str.272 = private unnamed_addr constant [28 x i8] c"OFDM Option 3 MCS 5 400kbps\00", align 1
@.str.273 = private unnamed_addr constant [28 x i8] c"OFDM Option 3 MCS 6 600kbps\00", align 1
@.str.274 = private unnamed_addr constant [28 x i8] c"OFDM Option 4 MCS 4 150kbps\00", align 1
@.str.275 = private unnamed_addr constant [28 x i8] c"OFDM Option 4 MCS 5 200kbps\00", align 1
@.str.276 = private unnamed_addr constant [28 x i8] c"OFDM Option 4 MCS 6 300kbps\00", align 1
@phr_wisun_phymodeid_values = internal constant [32 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.246 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.247 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.248 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.249 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.250 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.251 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.252 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.253 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.254 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.255 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.256 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.257 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.258 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.259 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.260 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.261 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.262 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.263 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.264 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.265 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.266 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.267 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.268 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.269 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.270 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.271 }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @.str.272 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.273 }, { i32, [4 x i8], ptr } { i32 84, [4 x i8] zeroinitializer, ptr @.str.274 }, { i32, [4 x i8], ptr } { i32 85, [4 x i8] zeroinitializer, ptr @.str.275 }, { i32, [4 x i8], ptr } { i32 86, [4 x i8] zeroinitializer, ptr @.str.276 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.278 = private unnamed_addr constant [5 x i8] c"MCS0\00", align 1
@.str.279 = private unnamed_addr constant [5 x i8] c"MCS1\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"MCS2\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"MCS3\00", align 1
@.str.282 = private unnamed_addr constant [5 x i8] c"MCS4\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"MCS5\00", align 1
@.str.284 = private unnamed_addr constant [5 x i8] c"MCS6\00", align 1
@.str.285 = private unnamed_addr constant [5 x i8] c"MCS7\00", align 1
@phr_ofdm_rate_values = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.278 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.279 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.280 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.281 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.282 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.283 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.284 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.285 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.287 = private unnamed_addr constant [10 x i8] c"000010111\00", align 1
@.str.288 = private unnamed_addr constant [10 x i8] c"000011100\00", align 1
@.str.289 = private unnamed_addr constant [10 x i8] c"101110111\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"101111100\00", align 1
@phr_ofdm_scrambler_values = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.287 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.288 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.289 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.290 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@ett_silabs_dch = internal global i32 0, align 4
@ett_silabs_efr32 = internal global i32 0, align 4
@ett_silabs_efr32_radiocfg = internal global i32 0, align 4
@ett_silabs_efr32_radioinfo = internal global i32 0, align 4
@ett_silabs_efr32_status = internal global i32 0, align 4
@ett_silabs_efr32_appendedinfo = internal global i32 0, align 4
@ett_silabs_efr32_phr = internal global i32 0, align 4
@.str.292 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.293 = private unnamed_addr constant [23 x i8] c"Debug Message Type: %s\00", align 1
@.str.294 = private unnamed_addr constant [42 x i8] c"Debug message type - %s not supported yet\00", align 1
@dissect_silabs_efr32.efr32_phr_fields = internal constant [2 x ptr] [ptr @hf_efr32_phr_packetlen, ptr null], align 16
@.str.295 = private unnamed_addr constant [32 x i8] c"Protocol - %s not supported yet\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"%d dBm\00", align 1
@dissect_silabs_efr32.efr32_radiocfg_ble_fields = internal constant [3 x ptr] [ptr @hf_efr32_radiocfg_addedbytes, ptr @hf_efr32_radiocfg_blephyid, ptr null], align 16
@dissect_silabs_efr32.efr32_radiocfg_zwave_fields = internal constant [2 x ptr] [ptr @hf_efr32_radiocfg_regionid, ptr null], align 16
@dissect_silabs_efr32.efr32_radiocfg_154_fields = internal constant [5 x ptr] [ptr @hf_efr32_radiocfg_2bytephr, ptr @hf_efr32_radiocfg_softmodem, ptr @hf_efr32_radiocfg_external, ptr @hf_efr32_radiocfg_id, ptr null], align 16
@dissect_silabs_efr32.efr32_radioinfo_fields = internal constant [4 x ptr] [ptr @hf_efr32_radioinfo_antenna, ptr @hf_efr32_radioinfo_syncword, ptr @hf_efr32_radioinfo_channel, ptr null], align 16
@dissect_silabs_efr32.efr32_status_fields = internal constant [3 x ptr] [ptr @hf_efr32_status_errorcode, ptr @hf_efr32_status_protocolid, ptr null], align 16
@dissect_silabs_efr32.efr32_appendedinfocfg_fields = internal constant [4 x ptr] [ptr @hf_efr32_appendedinfocfg_txrx, ptr @hf_efr32_appendedinfocfg_length, ptr @hf_efr32_appendedinfocfg_version, ptr null], align 16
@.str.297 = private unnamed_addr constant [15 x i8] c"EFR32 EmberPHY\00", align 1
@.str.298 = private unnamed_addr constant [15 x i8] c"ZigBee on RAIL\00", align 1
@.str.299 = private unnamed_addr constant [7 x i8] c"Wi-SUN\00", align 1
@.str.300 = private unnamed_addr constant [12 x i8] c"decoded_phr\00", align 1
@dissect_silabs_wisun_phr.phr_wisun_fsk_ms_fields = internal constant [6 x ptr] [ptr @hf_phr_fsk_ms, ptr @hf_phr_wisun_fsk_ms_reserved, ptr @hf_phr_wisun_fsk_ms_phymodeid, ptr @hf_phr_fsk_ms_checksum, ptr @hf_phr_fsk_ms_parity, ptr null], align 16
@.str.301 = private unnamed_addr constant [27 x i8] c"Wi-SUN FSK Mode Switch PHR\00", align 1
@dissect_silabs_wisun_phr.phr_fsk_fields = internal constant [5 x ptr] [ptr @hf_phr_fsk_ms, ptr @hf_phr_fsk_fcs, ptr @hf_phr_fsk_dw, ptr @hf_phr_fsk_length, ptr null], align 16
@dissect_silabs_wisun_phr.phr_ofdm_fields = internal constant [4 x ptr] [ptr @hf_phr_ofdm_rate, ptr @hf_phr_ofdm_length, ptr @hf_phr_ofdm_scrambler, ptr null], align 16
@dissect_silabs_ieee802154_pdu.catch_spec = internal constant [1 x %struct.except_id_t] [%struct.except_id_t { i64 1, i64 0 }], align 16
@.str.302 = private unnamed_addr constant [11 x i8] c"BLE Packet\00", align 1
@dissect_silabs_ble_pdu.catch_spec = internal constant [1 x %struct.except_id_t] [%struct.except_id_t { i64 1, i64 0 }], align 16
@.str.303 = private unnamed_addr constant [25 x i8] c" (RF channel %d, %d MHz)\00", align 1
@.str.304 = private unnamed_addr constant [35 x i8] c" (15.4 Cp0 channel %d, 2.%03d GHz)\00", align 1
@.str.305 = private unnamed_addr constant [34 x i8] c" (15.4 Cp0 channel %d, 868.3 MHz)\00", align 1
@.str.306 = private unnamed_addr constant [31 x i8] c" (15.4 Cp0 channel %d, %d MHz)\00", align 1
@.str.307 = private unnamed_addr constant [37 x i8] c" (15.4 Cp28 channel %d, %d.%03d MHz)\00", align 1
@.str.308 = private unnamed_addr constant [37 x i8] c" (15.4 Cp29 channel %d, %d.%03d MHz)\00", align 1
@.str.309 = private unnamed_addr constant [37 x i8] c" (15.4 Cp30 channel %d, %d.%03d MHz)\00", align 1
@.str.310 = private unnamed_addr constant [37 x i8] c" (15.4 Cp31 channel %d, %d.%03d MHz)\00", align 1
@switch.table.dissect_silabs_dch = private unnamed_addr constant [8 x ptr] [ptr @.str.231, ptr @.str.297, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.298, ptr @.str.237, ptr @.str.299], align 8
@switch.table.dissect_silabs_dch.3 = private unnamed_addr constant [8 x i8] c"\02\02\02\03\02\02\02\04", align 4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_silabs_dch() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145) ; 2 uses
  store i32 %i.a, ptr @proto_silabs_dch, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_silabs_dch.hf, i32 noundef 49)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @ett, i32 noundef 7)
  %i.b = load i32, ptr @proto_silabs_dch, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_silabs_dch.ei, i32 noundef 3)
  %i.d = load i32, ptr @proto_silabs_dch, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.146, ptr noundef nonnull @dissect_silabs_dch, i32 noundef %i.d)
  store ptr %i.e, ptr @silabs_dch_handle, align 8
  %i.f = tail call ptr @wmem_epan_scope()
  %i.g = tail call ptr @wmem_file_scope()
  %i.h = tail call ptr @wmem_tree_new_autoreset(ptr noundef %i.f, ptr noundef %i.g)
  store ptr %i.h, ptr @silabs_ble_connections, align 8
  %i.i = load i32, ptr @proto_silabs_dch, align 4
  %i.j = tail call ptr @prefs_register_protocol(i32 noundef %i.i, ptr noundef null)
  tail call void @prefs_register_bool_preference(ptr noundef %i.j, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149, ptr noundef nonnull @pref_ble_sniffer_mode)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 1, -2147483126) i32 @dissect_silabs_dch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = load i32, ptr @proto_silabs_dch, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.e = load i32, ptr @ett_silabs_dch, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 8 uses
  %i.g = load i32, ptr @hf_dch_version, align 4
  %i.h = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.i = load i32, ptr %i.a, align 4
  %i.j = icmp ugt i32 %i.i, 2
  %i.k = load i32, ptr @hf_dch_timestamp, align 4 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 8, i32 noundef -2147483608) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 6, i32 noundef -2147483600) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.b ], [ 8, %bb.c ]       ; 4 uses
  %i.n = load i32, ptr @hf_dch_type, align 4
  %i.o = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.f, i32 noundef %i.n, ptr noundef %0, i32 noundef %.0, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.p = load i32, ptr %i.b, align 4
  %i.q = call ptr @val_to_str_const(i32 noundef %i.p, ptr noundef nonnull @silabs_dch_message_types, ptr noundef nonnull @.str.292) ; 2 uses
  %i.r = add nuw nsw i32 %.0, 2                   ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.t, i32 noundef 25, ptr noundef nonnull @.str.293, ptr noundef %i.q)
  %i.u = load i32, ptr %i.a, align 4
  %i.v = icmp ugt i32 %i.u, 2
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr @hf_dch_flags, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.y = add nuw nsw i32 %.0, 6
  %i.z = load i32, ptr @hf_dch_sequence, align 4
  %i.aa = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = load i32, ptr @hf_dch_sequence, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.r, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ 3, %bb.f ], [ 8, %bb.e ]
  %i.ad = add nuw nsw i32 %.0, %.sink             ; 3 uses
  %i.ae = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.ad) ; 51 uses
  %i.af = load i32, ptr %i.b, align 4
  %.off = add i32 %i.af, -41
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.h, label %bb.bv

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr @hf_efr32, align 4
  %i.ah = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ag, ptr noundef %i.ae, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.ai = load i32, ptr @ett_silabs_efr32, align 4
  %i.aj = call ptr @proto_item_add_subtree(ptr noundef %i.ah, i32 noundef %i.ai) ; 33 uses
  %i.ak = load i32, ptr @hf_efr32_hwstart, align 4
  %i.al = call ptr @proto_tree_add_item(ptr noundef %i.aj, i32 noundef %i.ak, ptr noundef %i.ae, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.am = call i32 @tvb_reported_length_remaining(ptr noundef %i.ae, i32 noundef 1) ; 5 uses
  %i.an = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ae, i32 noundef %i.am) ; 5 uses
  %i.ao = getelementptr i8, ptr %1, i64 416       ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noalias dereferenceable_or_null(10) ptr @wmem_alloc(ptr noundef %i.ap, i64 noundef 10) #9 ; 23 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 3      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ar, i8 noundef 0, i64 noundef 6, i1 noundef false) #8
  %i.as = getelementptr i8, ptr %i.aq, i64 2
  %i.at = lshr i8 %i.an, 6                        ; 2 uses
  %.lobit.i.i = and i8 %i.at, 1
  store i8 %.lobit.i.i, ptr %i.as, align 1
  %i.au = lshr i8 %i.an, 3
  %i.av = and i8 %i.au, 7                         ; 6 uses
  %i.aw = add nuw nsw i8 %i.av, 3
  store i8 %i.aw, ptr %i.aq, align 1
  %i.ax = and i8 %i.an, 7
  %i.ay = getelementptr i8, ptr %i.aq, i64 1      ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %i.aq, i64 9      ; 4 uses
  store i8 0, ptr %i.az, align 1
  %i.ba = trunc i8 %i.at to i1
  br i1 %i.ba, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  switch i8 %i.av, label %bb.l [
    i8 1, label %bb.j
    i8 2, label %bb.r
    i8 3, label %bb.r
    i8 5, label %bb.k
    i8 6, label %.sink.split.i
    i8 7, label %.sink.split.i
  ]

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ar, align 1
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bb = getelementptr i8, ptr %i.aq, i64 4
  store i8 1, ptr %i.bb, align 1
  store i8 1, ptr %i.ar, align 1
  br label %bb.q

bb.l:                                             ; preds = %bb.i
  store i8 1, ptr %i.az, align 1
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  switch i8 %i.av, label %bb.p [
    i8 0, label %bb.q
    i8 1, label %bb.s
    i8 2, label %bb.s
    i8 4, label %bb.n
    i8 5, label %bb.o
    i8 6, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %i.aq, i64 4
  store i8 1, ptr %i.bc, align 1
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.m
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  store i8 1, ptr %i.az, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.bd = phi i8 [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.j ], [ 4, %bb.n ], [ 4, %bb.k ], [ %i.av, %bb.m ]
  %i.be = phi i8 [ 0, %bb.l ], [ 0, %bb.p ], [ 1, %bb.j ], [ 0, %bb.n ], [ 1, %bb.k ], [ %i.av, %bb.m ]
  %i.bf = getelementptr i8, ptr %i.aq, i64 6
  store i8 %i.be, ptr %i.bf, align 1
  br label %get_efr32_appended_info.exit.i

.sink.split.i:                                    ; preds = %bb.i, %bb.i
  %i.bg = getelementptr i8, ptr %i.aq, i64 4
  store i8 1, ptr %i.bg, align 1
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i, %bb.i, %bb.i
  %.ph.i.ph.i = phi i8 [ 0, %bb.i ], [ 0, %bb.i ], [ 4, %.sink.split.i ]
  store i8 1, ptr %i.ar, align 1
  %i.bh = getelementptr i8, ptr %i.aq, i64 5
  store i8 1, ptr %i.bh, align 1
  %i.bi = getelementptr i8, ptr %i.aq, i64 6
  store i8 1, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.aq, i64 7
  store i8 %.ph.i.ph.i, ptr %i.bj, align 1
  %i.bk = and i8 %i.an, 24
  %i.bl = icmp eq i8 %i.bk, 24
  %i.bm = select i1 %i.bl, i8 2, i8 1
  br label %get_efr32_appended_info.exit.i

bb.s:                                             ; preds = %bb.o, %bb.m, %bb.m
  %.sink71.i.ph.i = phi i64 [ 4, %bb.o ], [ 3, %bb.m ], [ 3, %bb.m ]
  %.sink.i.ph.i = phi i8 [ 1, %bb.o ], [ 0, %bb.m ], [ 0, %bb.m ]
  %.ph.i.ph169.i = phi i8 [ 4, %bb.o ], [ 0, %bb.m ], [ 0, %bb.m ]
  %i.bn = getelementptr i8, ptr %i.aq, i64 %.sink71.i.ph.i
  store i8 %.sink.i.ph.i, ptr %i.bn, align 1
  %i.bo = getelementptr i8, ptr %i.aq, i64 5
  store i8 1, ptr %i.bo, align 1
  %i.bp = getelementptr i8, ptr %i.aq, i64 6
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr i8, ptr %i.aq, i64 7
  store i8 %.ph.i.ph169.i, ptr %i.bq, align 1
  %i.br = and i8 %i.an, 24
  %i.bs = icmp eq i8 %i.br, 16
  %i.bt = select i1 %i.bs, i8 2, i8 1
  br label %get_efr32_appended_info.exit.i

get_efr32_appended_info.exit.i:                   ; preds = %bb.s, %bb.r, %bb.q
  %.sink74.i.i = phi i64 [ 7, %bb.q ], [ 8, %bb.r ], [ 8, %bb.s ]
  %.sink72.i.i = phi i8 [ %i.bd, %bb.q ], [ %i.bm, %bb.r ], [ %i.bt, %bb.s ]
  %i.bu = getelementptr i8, ptr %i.aq, i64 %.sink74.i.i
  store i8 %.sink72.i.i, ptr %i.bu, align 1
  %i.bv = load i8, ptr %i.az, align 1, !range !6, !noundef !7
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %get_efr32_appended_info.exit.i
  %i.bx = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %i.aj, ptr noundef %1, ptr noundef nonnull @ei_silabs_dch_invalid_appendedinfolen, ptr noundef %i.ae, i32 noundef 1, ptr noundef nonnull @.str.142) ; 0 uses
  br label %dissect_silabs_efr32.exit

bb.u:                                             ; preds = %get_efr32_appended_info.exit.i
  %i.by = add i32 %i.am, -1
  %i.bz = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ae, i32 noundef %i.by)
  %i.ca = and i8 %i.bz, 15                        ; 8 uses
  %i.cb = load ptr, ptr %i.ao, align 8
  %i.cc = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.cb, i64 noundef 16) #9 ; 0 uses
  %4 = icmp samesign ult i8 %i.ca, 8
  br i1 %4, label %switch.lookup, label %get_protocol_info.exit.i

switch.lookup:                                    ; preds = %bb.u
  %5 = zext nneg i8 %i.ca to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_silabs_dch, i64 %5
  %switch.load = load ptr, ptr %switch.gep, align 8
  %6 = zext nneg i8 %i.ca to i64
  %switch.gep46 = getelementptr inbounds nuw i8, ptr @switch.table.dissect_silabs_dch.3, i64 %6
  %switch.load47 = load i8, ptr %switch.gep46, align 1
  %switch.ext = zext i8 %switch.load47 to i32
  br label %get_protocol_info.exit.i

get_protocol_info.exit.i:                         ; preds = %bb.u, %switch.lookup
  %i.cd = phi ptr [ %switch.load, %switch.lookup ], [ @.str.292, %bb.u ]
  %.not.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.u ] ; 5 uses
  %i.ce = sub nuw nsw i8 -4, %i.av
  %i.cf = sext i8 %i.ce to i32
  %i.cg = add i32 %i.am, %i.cf                    ; 10 uses
  %i.ch = getelementptr i8, ptr %i.aq, i64 8
  %i.ci = load i8, ptr %i.ch, align 1             ; 4 uses
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %.not.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i, label %get_phr_length.exit.i, label %bb.v

bb.v:                                             ; preds = %get_protocol_info.exit.i
  switch i8 %i.ca, label %get_phr_length.exit.i [
    i8 1, label %bb.w
    i8 2, label %bb.w
    i8 5, label %bb.w
    i8 7, label %bb.w
    i8 8, label %bb.w
    i8 3, label %get_phr_length.exit.thread.i
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.v
  %i.ck = add i32 %i.am, -2
  %i.cl = sub i32 %i.ck, %i.cj
  %i.cm = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ae, i32 noundef %i.cl) ; 2 uses
  %i.cn = and i8 %i.cm, 64
  %.not8.i.i = icmp eq i8 %i.cn, 0
  %.not9.i.i = icmp sgt i8 %i.cm, -1
  %i.co = select i1 %.not9.i.i, i8 1, i8 2
  %.0.i.i = select i1 %.not8.i.i, i8 %i.co, i8 4
  br label %get_phr_length.exit.i

get_phr_length.exit.i:                            ; preds = %bb.w, %bb.v, %get_protocol_info.exit.i
  %.1.i.i = phi i8 [ 1, %get_protocol_info.exit.i ], [ %.0.i.i, %bb.w ], [ 1, %bb.v ] ; 6 uses
  switch i8 %i.ca, label %get_phr_length.exit.thread.i [
    i8 7, label %bb.x
    i8 2, label %bb.ai
    i8 5, label %bb.ai
    i8 8, label %bb.ai
  ]

bb.x:                                             ; preds = %get_phr_length.exit.i
  %i.cp = icmp eq i8 %i.ci, 2
  br i1 %i.cp, label %bb.y, label %get_phy_mode_id.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cq = add i32 %i.am, -3
  %i.cr = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ae, i32 noundef %i.cq)
  %i.cs = icmp ugt i8 %i.cr, 31
  br label %get_phy_mode_id.exit.i

get_phy_mode_id.exit.i:                           ; preds = %bb.y, %bb.x
  %.0.i159.i = phi i1 [ false, %bb.x ], [ %i.cs, %bb.y ]
  %i.ct = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ae, i32 noundef 1)
  %i.cu = icmp eq i8 %i.ct, 11
  br i1 %i.cu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %get_phy_mode_id.exit.i
  %i.cv = call zeroext i8 @tvb_get_uint8(ptr noundef %i.ae, i32 noundef 1)
  %i.cw = icmp ne i8 %i.cv, 0
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %get_phy_mode_id.exit.i
  %.not59.i.i = phi i1 [ false, %get_phy_mode_id.exit.i ], [ %i.cw, %bb.z ] ; 3 uses
  %i.cx = icmp eq i8 %.1.i.i, 2
  br i1 %i.cx, label %decode_wisun_phr_type.exit.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = icmp eq i8 %.1.i.i, 4
  %or.cond.i.i.i = and i1 %i.cy, %.0.i159.i
  br i1 %or.cond.i.i.i, label %decode_wisun_phr_type.exit.i.i, label %decode_wisun_phr_type.exit.thread74.i.i

decode_wisun_phr_type.exit.i.i:                   ; preds = %bb.ab
  %i.cz = call i32 @tvb_get_uint24(ptr noundef %i.ae, i32 noundef 2, i32 noundef -2147483648)
  %i.da = lshr i32 %i.cz, 6
  %i.db = trunc i32 %i.da to i16
  %i.dc = and i16 %i.db, 2047
  %i.dd = call noundef i16 @llvm.bitreverse.i16(i16 range(i16 0, -31) %i.dc)
  %i.de = lshr exact i16 %i.dd, 5
  %i.df = zext nneg i16 %i.de to i32
  %i.dg = icmp eq i32 %i.cg, %i.df                ; 2 uses
  %spec.select.i.i.i = select i1 %i.dg, i32 7, i32 0
  %.not.i161.i = select i1 %i.dg, i1 true, i1 %.not59.i.i
  br i1 %.not.i161.i, label %bb.ad, label %bb.ac

decode_wisun_phr_type.exit.thread74.i.i:          ; preds = %bb.ab
  br i1 %.not59.i.i, label %.thread78.i.i, label %decode_wisun_phr_type.exit70.i.i

decode_wisun_phr_type.exit.thread.i.i:            ; preds = %bb.aa
  %i.dh = call zeroext i16 @tvb_get_uint16(ptr noundef %i.ae, i32 noundef 1, i32 noundef -2147483648) ; 2 uses
  %.not.i.i.i = trunc i16 %i.dh to i1
  %i.di = icmp eq i32 %i.cg, 2
  %or.cond20.i.i.i = and i1 %i.di, %.not.i.i.i    ; 2 uses
  %.0.i.i.i = select i1 %or.cond20.i.i.i, i32 18, i32 0
  %i.dj = add i32 %i.cg, -2
  %i.dk = and i16 %i.dh, -32
  %i.dl = call noundef i16 @llvm.bitreverse.i16(i16 range(i16 0, -31) %i.dk)
  %i.dm = zext nneg i16 %i.dl to i32
  %i.dn = icmp eq i32 %i.dj, %i.dm                ; 2 uses
  %.1.i.i.i = select i1 %i.dn, i32 6, i32 %.0.i.i.i
  %i.do = or i1 %or.cond20.i.i.i, %i.dn
  %.not72.i.i = select i1 %i.do, i1 true, i1 %.not59.i.i
  br i1 %.not72.i.i, label %bb.ad, label %.thread.i.i

.thread.i.i:                                      ; preds = %decode_wisun_phr_type.exit.thread.i.i
  %i.dp = call zeroext i16 @tvb_get_uint16(ptr noundef %i.ae, i32 noundef 2, i32 noundef -2147483648) ; 2 uses
  %.not.i66.i.i = trunc i16 %i.dp to i1
  %i.dq = icmp eq i32 %i.cg, 3
  %or.cond20.i67.i.i = and i1 %i.dq, %.not.i66.i.i
  %.0.i68.i.i = select i1 %or.cond20.i67.i.i, i32 18, i32 0
  %i.dr = add i32 %i.cg, -3
  %i.ds = and i16 %i.dp, -32
  %i.dt = call noundef i16 @llvm.bitreverse.i16(i16 range(i16 0, -31) %i.ds)
  %i.du = zext nneg i16 %i.dt to i32
  %i.dv = icmp eq i32 %i.dr, %i.du
  %.1.i69.i.i = select i1 %i.dv, i32 6, i32 %.0.i68.i.i
  br label %decode_wisun_phr_type.exit70.i.i

bb.ac:                                            ; preds = %decode_wisun_phr_type.exit.i.i
  %i.dw = add i32 %i.cg, -1
  %i.dx = call i32 @tvb_get_uint24(ptr noundef %i.ae, i32 noundef 3, i32 noundef -2147483648)
  %i.dy = lshr i32 %i.dx, 6
  %i.dz = trunc i32 %i.dy to i16
  %i.ea = and i16 %i.dz, 2047
  %i.eb = call noundef i16 @llvm.bitreverse.i16(i16 range(i16 0, -31) %i.ea)
  %i.ec = lshr exact i16 %i.eb, 5
  %i.ed = zext nneg i16 %i.ec to i32
  %i.ee = icmp eq i32 %i.dw, %i.ed
  %spec.select.i64.i.i = select i1 %i.ee, i32 7, i32 0
  br label %decode_wisun_phr_type.exit70.i.i

decode_wisun_phr_type.exit70.i.i:                 ; preds = %bb.ac, %.thread.i.i, %decode_wisun_phr_type.exit.thread74.i.i
  %.4.i63.i.i = phi i32 [ %spec.select.i64.i.i, %bb.ac ], [ 0, %decode_wisun_phr_type.exit.thread74.i.i ], [ %.1.i69.i.i, %.thread.i.i ] ; 2 uses
  %.not60.i.i = icmp ne i32 %.4.i63.i.i, 0        ; 2 uses
  %spec.select.i.i = zext i1 %.not60.i.i to i32
  %spec.select61.i.i = select i1 %.not60.i.i, i32 2, i32 1
  br label %bb.ad

bb.ad:                                            ; preds = %decode_wisun_phr_type.exit70.i.i, %decode_wisun_phr_type.exit.thread.i.i, %decode_wisun_phr_type.exit.i.i
  %.057.in.i.i = phi i32 [ %spec.select.i.i.i, %decode_wisun_phr_type.exit.i.i ], [ %.4.i63.i.i, %decode_wisun_phr_type.exit70.i.i ], [ %.1.i.i.i, %decode_wisun_phr_type.exit.thread.i.i ] ; 2 uses
  %.056.i.i = phi i32 [ 0, %decode_wisun_phr_type.exit.i.i ], [ %spec.select.i.i, %decode_wisun_phr_type.exit70.i.i ], [ 0, %decode_wisun_phr_type.exit.thread.i.i ] ; 4 uses
  %.0.i160.i = phi i32 [ 1, %decode_wisun_phr_type.exit.i.i ], [ %spec.select61.i.i, %decode_wisun_phr_type.exit70.i.i ], [ 1, %decode_wisun_phr_type.exit.thread.i.i ] ; 3 uses
  switch i32 %.057.in.i.i, label %.thread78.i.i [
    i32 18, label %bb.ae
    i32 6, label %bb.ae
    i32 7, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.ef = icmp eq i32 %.057.in.i.i, 18
  %i.eg = load ptr, ptr %i.ao, align 8
  %i.eh = call ptr @tvb_memdup(ptr noundef %i.eg, ptr noundef %i.ae, i32 noundef %.0.i160.i, i64 noundef 2) ; 2 uses
  call void @bitswap_buf_inplace(ptr noundef %i.eh, i64 noundef 2)
  %i.ei = call ptr @tvb_new_child_real_data(ptr noundef %i.ae, ptr noundef %i.eh, i32 noundef 2, i32 noundef 2) ; 3 uses
  %i.ej = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.ei, ptr noundef nonnull @.str.300) ; 0 uses
  %i.ek = load i32, ptr @ett_silabs_efr32_phr, align 4 ; 2 uses
  br i1 %i.ef, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.el = load i32, ptr @hf_phr_wisun_fsk_ms, align 4
  %i.em = call ptr @proto_tree_add_bitmask(ptr noundef %i.aj, ptr noundef %i.ei, i32 noundef 0, i32 noundef %i.el, i32 noundef %i.ek, ptr noundef nonnull @dissect_silabs_wisun_phr.phr_wisun_fsk_ms_fields, i32 noundef 0) ; 0 uses
  %i.en = load ptr, ptr %i.s, align 8
  call void @col_clear(ptr noundef %i.en, i32 noundef 25)
  %i.eo = load ptr, ptr %i.s, align 8
  call void @col_set_str(ptr noundef %i.eo, i32 noundef 25, ptr noundef nonnull @.str.301)
  br label %dissect_silabs_wisun_phr.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.ep = load i32, ptr @hf_phr_fsk, align 4
  %i.eq = call ptr @proto_tree_add_bitmask(ptr noundef %i.aj, ptr noundef %i.ei, i32 noundef 0, i32 noundef %i.ep, i32 noundef %i.ek, ptr noundef nonnull @dissect_silabs_wisun_phr.phr_fsk_fields, i32 noundef 0) ; 0 uses
  br label %dissect_silabs_wisun_phr.exit.i

bb.ah:                                            ; preds = %bb.ad
  %i.er = add nuw nsw i32 %.0.i160.i, 1
  %i.es = load ptr, ptr %i.ao, align 8
  %i.et = call ptr @tvb_memdup(ptr noundef %i.es, ptr noundef %i.ae, i32 noundef %i.er, i64 noundef 3) ; 2 uses
  call void @bitswap_buf_inplace(ptr noundef %i.et, i64 noundef 3)
  %i.eu = call ptr @tvb_new_child_real_data(ptr noundef %i.ae, ptr noundef %i.et, i32 noundef 3, i32 noundef 3) ; 2 uses
  %i.ev = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.eu, ptr noundef nonnull @.str.300) ; 0 uses
  %i.ew = load i32, ptr @hf_phr_ofdm, align 4
  %i.ex = load i32, ptr @ett_silabs_efr32_phr, align 4
  %i.ey = call ptr @proto_tree_add_bitmask(ptr noundef %i.aj, ptr noundef %i.eu, i32 noundef 0, i32 noundef %i.ew, i32 noundef %i.ex, ptr noundef nonnull @dissect_silabs_wisun_phr.phr_ofdm_fields, i32 noundef 0) ; 0 uses
  br label %dissect_silabs_wisun_phr.exit.i

.thread78.i.i:                                    ; preds = %bb.ad, %decode_wisun_phr_type.exit.thread74.i.i
  %.084.i.i = phi i32 [ %.0.i160.i, %bb.ad ], [ 1, %decode_wisun_phr_type.exit.thread74.i.i ]
  %.05683.i.i = phi i32 [ %.056.i.i, %bb.ad ], [ 0, %decode_wisun_phr_type.exit.thread74.i.i ]
  %i.ez = load i32, ptr @hf_efr32_phr, align 4
  %i.fa = zext nneg i8 %.1.i.i to i32
  %i.fb = call ptr @proto_tree_add_item(ptr noundef %i.aj, i32 noundef %i.ez, ptr noundef %i.ae, i32 noundef %.084.i.i, i32 noundef %i.fa, i32 noundef -2147483648) ; 0 uses
  br label %dissect_silabs_wisun_phr.exit.i

dissect_silabs_wisun_phr.exit.i:                  ; preds = %.thread78.i.i, %bb.ah, %bb.ag, %bb.af
  %.1163.i = phi i32 [ %.not.i, %.thread78.i.i ], [ 0, %bb.af ], [ %.not.i, %bb.ag ], [ 0, %bb.ah ]
  %.05682.i.i = phi i32 [ %.05683.i.i, %.thread78.i.i ], [ %.056.i.i, %bb.af ], [ %.056.i.i, %bb.ag ], [ %.056.i.i, %bb.ah ]
  %i.fc = zext nneg i8 %.1.i.i to i32
  %i.fd = add nuw nsw i32 %.05682.i.i, %i.fc      ; 2 uses
  %i.fe = add nuw nsw i32 %i.fd, 1
  %i.ff = sub i32 %i.cg, %i.fd
  br label %get_phr_length.exit.thread.i

bb.ai:                                            ; preds = %get_phr_length.exit.i, %get_phr_length.exit.i, %get_phr_length.exit.i
end_hunk_0
