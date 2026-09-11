Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-qcdiag?download=true
inline.NumInlined: 34
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.219 = private unnamed_addr constant [43 x i8] c"Reset Radio Link Protocol (RLP) Statistics\00", align 1
@.str.220 = private unnamed_addr constant [25 x i8] c"Reset (S)TDSO Statistics\00", align 1
@.str.221 = private unnamed_addr constant [22 x i8] c"Logging Configuration\00", align 1
@.str.222 = private unnamed_addr constant [27 x i8] c"Trace Event Report Control\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"SBI Read\00", align 1
@.str.224 = private unnamed_addr constant [10 x i8] c"SBI Write\00", align 1
@.str.225 = private unnamed_addr constant [11 x i8] c"Verify SSD\00", align 1
@.str.226 = private unnamed_addr constant [14 x i8] c"Log on Demand\00", align 1
@.str.227 = private unnamed_addr constant [24 x i8] c"Extended Message Report\00", align 1
@.str.228 = private unnamed_addr constant [55 x i8] c"Open Network Computing Remote Procedure Call (ONC-RPC)\00", align 1
@.str.229 = private unnamed_addr constant [19 x i8] c"DIAG Loopback Test\00", align 1
@.str.230 = private unnamed_addr constant [22 x i8] c"Get Extended Build ID\00", align 1
@.str.231 = private unnamed_addr constant [31 x i8] c"Extended Message Report Config\00", align 1
@.str.232 = private unnamed_addr constant [28 x i8] c"Terse Format Message Config\00", align 1
@.str.233 = private unnamed_addr constant [25 x i8] c"Translate Format Message\00", align 1
@.str.234 = private unnamed_addr constant [31 x i8] c"Subsystem Dispatcher Version 2\00", align 1
@.str.235 = private unnamed_addr constant [15 x i8] c"Get Event Mask\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"Set Event Mask\00", align 1
@.str.237 = private unnamed_addr constant [21 x i8] c"Change Port Settings\00", align 1
@.str.238 = private unnamed_addr constant [28 x i8] c"Country Network Information\00", align 1
@.str.239 = private unnamed_addr constant [19 x i8] c"Call Supplementary\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c"MMS Originate SMS\00", align 1
@.str.241 = private unnamed_addr constant [17 x i8] c"Measurement Mode\00", align 1
@.str.242 = private unnamed_addr constant [20 x i8] c"Measurement Request\00", align 1
@.str.243 = private unnamed_addr constant [22 x i8] c"Optimized F3 Messages\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"DCI Command\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"DCI Delayed\00", align 1
@.str.246 = private unnamed_addr constant [19 x i8] c"DCI Error Response\00", align 1
@.str.247 = private unnamed_addr constant [32 x i8] c"SSM Disallowed Command Response\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"Log On Extended\00", align 1
@.str.249 = private unnamed_addr constant [31 x i8] c"Multi-SIM Radio Device Command\00", align 1
@.str.250 = private unnamed_addr constant [47 x i8] c"Logging Optimized Debugging Messages (QShrink)\00", align 1
@.str.251 = private unnamed_addr constant [19 x i8] c"DCI Control Packet\00", align 1
@.str.252 = private unnamed_addr constant [21 x i8] c"Compressed Diag Data\00", align 1
@.str.253 = private unnamed_addr constant [14 x i8] c"Small Message\00", align 1
@.str.254 = private unnamed_addr constant [15 x i8] c"QTrace Message\00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"Log Security\00", align 1
@qcdiag_cmds = internal constant [155 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.114 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.115 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.116 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.117 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.118 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.119 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.120 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.121 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.123 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.124 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.125 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.126 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.127 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.128 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.129 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.130 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.131 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.133 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.134 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.135 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.136 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.137 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.139 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.140 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.141 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.71 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.147 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.148 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.149 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.150 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.151 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.152 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.154 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.155 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.156 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.159 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.160 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.161 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.162 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.164 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.166 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.167 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.168 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.169 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.170 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.171 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.172 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.174 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.175 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.176 }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @.str.177 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.178 }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @.str.179 }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @.str.180 }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @.str.181 }, { i32, [4 x i8], ptr } { i32 74, [4 x i8] zeroinitializer, ptr @.str.182 }, { i32, [4 x i8], ptr } { i32 75, [4 x i8] zeroinitializer, ptr @.str.183 }, { i32, [4 x i8], ptr } { i32 76, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } { i32 77, [4 x i8] zeroinitializer, ptr @.str.185 }, { i32, [4 x i8], ptr } { i32 78, [4 x i8] zeroinitializer, ptr @.str.186 }, { i32, [4 x i8], ptr } { i32 79, [4 x i8] zeroinitializer, ptr @.str.187 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.188 }, { i32, [4 x i8], ptr } { i32 81, [4 x i8] zeroinitializer, ptr @.str.189 }, { i32, [4 x i8], ptr } { i32 82, [4 x i8] zeroinitializer, ptr @.str.190 }, { i32, [4 x i8], ptr } { i32 83, [4 x i8] zeroinitializer, ptr @.str.191 }, { i32, [4 x i8], ptr } { i32 84, [4 x i8] zeroinitializer, ptr @.str.192 }, { i32, [4 x i8], ptr } { i32 85, [4 x i8] zeroinitializer, ptr @.str.193 }, { i32, [4 x i8], ptr } { i32 86, [4 x i8] zeroinitializer, ptr @.str.194 }, { i32, [4 x i8], ptr } { i32 87, [4 x i8] zeroinitializer, ptr @.str.195 }, { i32, [4 x i8], ptr } { i32 88, [4 x i8] zeroinitializer, ptr @.str.196 }, { i32, [4 x i8], ptr } { i32 89, [4 x i8] zeroinitializer, ptr @.str.197 }, { i32, [4 x i8], ptr } { i32 90, [4 x i8] zeroinitializer, ptr @.str.198 }, { i32, [4 x i8], ptr } { i32 91, [4 x i8] zeroinitializer, ptr @.str.199 }, { i32, [4 x i8], ptr } { i32 92, [4 x i8] zeroinitializer, ptr @.str.200 }, { i32, [4 x i8], ptr } { i32 93, [4 x i8] zeroinitializer, ptr @.str.201 }, { i32, [4 x i8], ptr } { i32 94, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 95, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.202 }, { i32, [4 x i8], ptr } { i32 97, [4 x i8] zeroinitializer, ptr @.str.203 }, { i32, [4 x i8], ptr } { i32 98, [4 x i8] zeroinitializer, ptr @.str.204 }, { i32, [4 x i8], ptr } { i32 99, [4 x i8] zeroinitializer, ptr @.str.205 }, { i32, [4 x i8], ptr } { i32 100, [4 x i8] zeroinitializer, ptr @.str.206 }, { i32, [4 x i8], ptr } { i32 101, [4 x i8] zeroinitializer, ptr @.str.207 }, { i32, [4 x i8], ptr } { i32 102, [4 x i8] zeroinitializer, ptr @.str.208 }, { i32, [4 x i8], ptr } { i32 103, [4 x i8] zeroinitializer, ptr @.str.209 }, { i32, [4 x i8], ptr } { i32 104, [4 x i8] zeroinitializer, ptr @.str.210 }, { i32, [4 x i8], ptr } { i32 105, [4 x i8] zeroinitializer, ptr @.str.211 }, { i32, [4 x i8], ptr } { i32 106, [4 x i8] zeroinitializer, ptr @.str.212 }, { i32, [4 x i8], ptr } { i32 107, [4 x i8] zeroinitializer, ptr @.str.213 }, { i32, [4 x i8], ptr } { i32 108, [4 x i8] zeroinitializer, ptr @.str.214 }, { i32, [4 x i8], ptr } { i32 109, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 110, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 111, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 112, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 113, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 114, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } { i32 115, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 116, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 117, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 118, [4 x i8] zeroinitializer, ptr @.str.224 }, { i32, [4 x i8], ptr } { i32 119, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } { i32 120, [4 x i8] zeroinitializer, ptr @.str.226 }, { i32, [4 x i8], ptr } { i32 121, [4 x i8] zeroinitializer, ptr @.str.227 }, { i32, [4 x i8], ptr } { i32 122, [4 x i8] zeroinitializer, ptr @.str.228 }, { i32, [4 x i8], ptr } { i32 123, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } { i32 124, [4 x i8] zeroinitializer, ptr @.str.230 }, { i32, [4 x i8], ptr } { i32 125, [4 x i8] zeroinitializer, ptr @.str.231 }, { i32, [4 x i8], ptr } { i32 126, [4 x i8] zeroinitializer, ptr @.str.232 }, { i32, [4 x i8], ptr } { i32 127, [4 x i8] zeroinitializer, ptr @.str.233 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.234 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.235 }, { i32, [4 x i8], ptr } { i32 130, [4 x i8] zeroinitializer, ptr @.str.236 }, { i32, [4 x i8], ptr } { i32 131, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 132, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 133, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 134, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 135, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 136, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 137, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 138, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 139, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 140, [4 x i8] zeroinitializer, ptr @.str.237 }, { i32, [4 x i8], ptr } { i32 141, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } { i32 142, [4 x i8] zeroinitializer, ptr @.str.239 }, { i32, [4 x i8], ptr } { i32 143, [4 x i8] zeroinitializer, ptr @.str.240 }, { i32, [4 x i8], ptr } { i32 144, [4 x i8] zeroinitializer, ptr @.str.241 }, { i32, [4 x i8], ptr } { i32 145, [4 x i8] zeroinitializer, ptr @.str.242 }, { i32, [4 x i8], ptr } { i32 146, [4 x i8] zeroinitializer, ptr @.str.243 }, { i32, [4 x i8], ptr } { i32 147, [4 x i8] zeroinitializer, ptr @.str.244 }, { i32, [4 x i8], ptr } { i32 148, [4 x i8] zeroinitializer, ptr @.str.245 }, { i32, [4 x i8], ptr } { i32 149, [4 x i8] zeroinitializer, ptr @.str.246 }, { i32, [4 x i8], ptr } { i32 150, [4 x i8] zeroinitializer, ptr @.str.247 }, { i32, [4 x i8], ptr } { i32 151, [4 x i8] zeroinitializer, ptr @.str.248 }, { i32, [4 x i8], ptr } { i32 152, [4 x i8] zeroinitializer, ptr @.str.249 }, { i32, [4 x i8], ptr } { i32 153, [4 x i8] zeroinitializer, ptr @.str.250 }, { i32, [4 x i8], ptr } { i32 154, [4 x i8] zeroinitializer, ptr @.str.251 }, { i32, [4 x i8], ptr } { i32 155, [4 x i8] zeroinitializer, ptr @.str.252 }, { i32, [4 x i8], ptr } { i32 156, [4 x i8] zeroinitializer, ptr @.str.253 }, { i32, [4 x i8], ptr } { i32 157, [4 x i8] zeroinitializer, ptr @.str.254 }, { i32, [4 x i8], ptr } { i32 158, [4 x i8] zeroinitializer, ptr @.str.255 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.257 = private unnamed_addr constant [44 x i8] c"User Equipment without streaming capability\00", align 1
@.str.258 = private unnamed_addr constant [41 x i8] c"User Equipment with streaming capability\00", align 1
@qcdiag_diag_ver_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.257 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.258 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.260 = private unnamed_addr constant [20 x i8] c"Offline Analog mode\00", align 1
@.str.261 = private unnamed_addr constant [21 x i8] c"Offline Digital mode\00", align 1
@.str.262 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.263 = private unnamed_addr constant [26 x i8] c"Offline Factory Test mode\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"Online mode\00", align 1
@.str.265 = private unnamed_addr constant [15 x i8] c"Low Power mode\00", align 1
@.str.266 = private unnamed_addr constant [15 x i8] c"Power Off mode\00", align 1
@qcdiag_mode_change_mode_vals = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.260 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.261 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.262 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.263 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.264 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.265 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.266 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.268 = private unnamed_addr constant [14 x i8] c"qcdiag_subsys\00", align 1
@.str.269 = private unnamed_addr constant [4 x i8] c"OEM\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"ZREX\00", align 1
@.str.271 = private unnamed_addr constant [21 x i8] c"System Determination\00", align 1
@.str.272 = private unnamed_addr constant [10 x i8] c"Bluetooth\00", align 1
@.str.273 = private unnamed_addr constant [6 x i8] c"WCDMA\00", align 1
@.str.274 = private unnamed_addr constant [7 x i8] c"1xEvDO\00", align 1
@.str.275 = private unnamed_addr constant [7 x i8] c"DIABLO\00", align 1
@.str.276 = private unnamed_addr constant [26 x i8] c"TREX - Off-target testing\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"GSM\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"UMTS\00", align 1
@.str.279 = private unnamed_addr constant [5 x i8] c"HWTC\00", align 1
@.str.280 = private unnamed_addr constant [18 x i8] c"Factory Test Mode\00", align 1
@.str.281 = private unnamed_addr constant [4 x i8] c"REX\00", align 1
@.str.282 = private unnamed_addr constant [4 x i8] c"GPS\00", align 1
@.str.283 = private unnamed_addr constant [27 x i8] c"Wireless Messaging Service\00", align 1
@.str.284 = private unnamed_addr constant [13 x i8] c"Call Manager\00", align 1
@.str.285 = private unnamed_addr constant [8 x i8] c"Handset\00", align 1
@.str.286 = private unnamed_addr constant [15 x i8] c"Audio Settings\00", align 1
@.str.287 = private unnamed_addr constant [14 x i8] c"DIAG Services\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"EFS2\00", align 1
@.str.289 = private unnamed_addr constant [18 x i8] c"Port Map Settings\00", align 1
@.str.290 = private unnamed_addr constant [16 x i8] c"QCT Mediaplayer\00", align 1
@.str.291 = private unnamed_addr constant [12 x i8] c"QCT QCamera\00", align 1
@.str.292 = private unnamed_addr constant [12 x i8] c"QCT MobiMon\00", align 1
@.str.293 = private unnamed_addr constant [12 x i8] c"QCT GuniMon\00", align 1
@.str.294 = private unnamed_addr constant [26 x i8] c"Location Services Manager\00", align 1
@.str.295 = private unnamed_addr constant [15 x i8] c"QCT QCamcorder\00", align 1
@.str.296 = private unnamed_addr constant [17 x i8] c"Multiplexer (1x)\00", align 1
@.str.297 = private unnamed_addr constant [10 x i8] c"Data (1x)\00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"Searcher (1x)\00", align 1
@.str.299 = private unnamed_addr constant [20 x i8] c"Call Processor (1x)\00", align 1
@.str.300 = private unnamed_addr constant [13 x i8] c"Applications\00", align 1
@.str.301 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1
@.str.302 = private unnamed_addr constant [29 x i8] c"Generic Sim Driver Interface\00", align 1
@.str.303 = private unnamed_addr constant [21 x i8] c"Task Main Controller\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.305 = private unnamed_addr constant [17 x i8] c"Power Management\00", align 1
@.str.306 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.307 = private unnamed_addr constant [13 x i8] c"Clock Regime\00", align 1
@.str.308 = private unnamed_addr constant [5 x i8] c"WLAN\00", align 1
@.str.309 = private unnamed_addr constant [21 x i8] c"PS Data Path Logging\00", align 1
@.str.310 = private unnamed_addr constant [9 x i8] c"MediaFLO\00", align 1
@.str.311 = private unnamed_addr constant [11 x i8] c"Digital TV\00", align 1
@.str.312 = private unnamed_addr constant [10 x i8] c"WCDMA RRC\00", align 1
@.str.313 = private unnamed_addr constant [10 x i8] c"Profiling\00", align 1
@.str.314 = private unnamed_addr constant [13 x i8] c"TXCO Manager\00", align 1
@.str.315 = private unnamed_addr constant [3 x i8] c"NV\00", align 1
@.str.316 = private unnamed_addr constant [11 x i8] c"Parameters\00", align 1
@.str.317 = private unnamed_addr constant [5 x i8] c"MDDI\00", align 1
@.str.318 = private unnamed_addr constant [35 x i8] c"Data Services AT Command Processor\00", align 1
@.str.319 = private unnamed_addr constant [9 x i8] c"L4/Linux\00", align 1
@.str.320 = private unnamed_addr constant [26 x i8] c"Multimedia Voice Services\00", align 1
@.str.321 = private unnamed_addr constant [11 x i8] c"Compact NV\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"apiOne\00", align 1
@.str.323 = private unnamed_addr constant [26 x i8] c"Hardware Integration Test\00", align 1
@.str.324 = private unnamed_addr constant [32 x i8] c"Digital Restrictions Management\00", align 1
@.str.325 = private unnamed_addr constant [18 x i8] c"Device Management\00", align 1
@.str.326 = private unnamed_addr constant [16 x i8] c"Flow Controller\00", align 1
@.str.327 = private unnamed_addr constant [15 x i8] c"Malloc Manager\00", align 1
@.str.328 = private unnamed_addr constant [21 x i8] c"Alternate Filesystem\00", align 1
@.str.329 = private unnamed_addr constant [25 x i8] c"Regression Test Commands\00", align 1
@.str.330 = private unnamed_addr constant [8 x i8] c"Sensors\00", align 1
@.str.331 = private unnamed_addr constant [52 x i8] c"File Delivery over Unidirectional Transport (FLUTE)\00", align 1
@.str.332 = private unnamed_addr constant [7 x i8] c"Analog\00", align 1
@.str.333 = private unnamed_addr constant [34 x i8] c"apiOne Program on Modem Processor\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"LTE\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"BREW\00", align 1
@.str.336 = private unnamed_addr constant [12 x i8] c"Power Debug\00", align 1
@.str.337 = private unnamed_addr constant [18 x i8] c"Chaos Coordinator\00", align 1
@.str.338 = private unnamed_addr constant [9 x i8] c"Security\00", align 1
@.str.339 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.340 = private unnamed_addr constant [8 x i8] c"Q6 Core\00", align 1
@.str.341 = private unnamed_addr constant [9 x i8] c"Core BSP\00", align 1
@.str.342 = private unnamed_addr constant [10 x i8] c"MediaFLO2\00", align 1
@.str.343 = private unnamed_addr constant [14 x i8] c"ULog Services\00", align 1
@.str.344 = private unnamed_addr constant [20 x i8] c"Async Packet Router\00", align 1
@.str.345 = private unnamed_addr constant [4 x i8] c"QNP\00", align 1
@.str.346 = private unnamed_addr constant [7 x i8] c"STRIDE\00", align 1
@.str.347 = private unnamed_addr constant [14 x i8] c"DPP Partition\00", align 1
@.str.348 = private unnamed_addr constant [8 x i8] c"Q5 Core\00", align 1
@.str.349 = private unnamed_addr constant [8 x i8] c"Uscript\00", align 1
@.str.350 = private unnamed_addr constant [19 x i8] c"Non Access Stratum\00", align 1
@.str.351 = private unnamed_addr constant [23 x i8] c"Common Map API (CMAPI)\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"SSM\00", align 1
@.str.353 = private unnamed_addr constant [9 x i8] c"TD-SCDMA\00", align 1
@.str.354 = private unnamed_addr constant [9 x i8] c"SSM Test\00", align 1
@.str.355 = private unnamed_addr constant [7 x i8] c"mPower\00", align 1
@.str.356 = private unnamed_addr constant [32 x i8] c"Qualcomm Debug Subsystem (QDSS)\00", align 1
@.str.357 = private unnamed_addr constant [4 x i8] c"CXM\00", align 1
@.str.358 = private unnamed_addr constant [15 x i8] c"Secondary GNSS\00", align 1
@.str.359 = private unnamed_addr constant [15 x i8] c"Time Test Lite\00", align 1
@.str.360 = private unnamed_addr constant [8 x i8] c"FTM ANT\00", align 1
@.str.361 = private unnamed_addr constant [5 x i8] c"MLog\00", align 1
@.str.362 = private unnamed_addr constant [15 x i8] c"Limits Manager\00", align 1
@.str.363 = private unnamed_addr constant [12 x i8] c"EFS Monitor\00", align 1
@.str.364 = private unnamed_addr constant [20 x i8] c"Display Calibration\00", align 1
@.str.365 = private unnamed_addr constant [15 x i8] c"Version Report\00", align 1
@.str.366 = private unnamed_addr constant [34 x i8] c"Internet Packet Accelerator (IPA)\00", align 1
@.str.367 = private unnamed_addr constant [18 x i8] c"System Operations\00", align 1
@.str.368 = private unnamed_addr constant [11 x i8] c"CNSS Power\00", align 1
@.str.369 = private unnamed_addr constant [5 x i8] c"LwIP\00", align 1
@.str.370 = private unnamed_addr constant [12 x i8] c"IMS QVP RTP\00", align 1
@qcdiag_subsys = internal constant [103 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.269 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.270 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.271 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.272 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.273 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.274 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.275 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.276 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.277 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.278 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.279 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.280 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.281 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.282 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.283 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.284 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.285 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.286 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.287 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.288 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.289 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.290 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.291 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.292 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.293 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.294 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.295 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.296 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.297 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.298 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.299 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.300 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.301 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.302 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.303 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.304 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.305 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.306 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.307 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.308 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.309 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.310 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.311 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.312 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.313 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.314 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.315 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.316 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.317 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.318 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.319 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.320 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.321 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.322 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.323 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.324 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.325 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.326 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.327 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.328 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.329 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.330 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.331 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.332 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.333 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.334 }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @.str.335 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.336 }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @.str.337 }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @.str.338 }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @.str.339 }, { i32, [4 x i8], ptr } { i32 74, [4 x i8] zeroinitializer, ptr @.str.340 }, { i32, [4 x i8], ptr } { i32 75, [4 x i8] zeroinitializer, ptr @.str.341 }, { i32, [4 x i8], ptr } { i32 76, [4 x i8] zeroinitializer, ptr @.str.342 }, { i32, [4 x i8], ptr } { i32 77, [4 x i8] zeroinitializer, ptr @.str.343 }, { i32, [4 x i8], ptr } { i32 78, [4 x i8] zeroinitializer, ptr @.str.344 }, { i32, [4 x i8], ptr } { i32 79, [4 x i8] zeroinitializer, ptr @.str.345 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.346 }, { i32, [4 x i8], ptr } { i32 81, [4 x i8] zeroinitializer, ptr @.str.347 }, { i32, [4 x i8], ptr } { i32 82, [4 x i8] zeroinitializer, ptr @.str.348 }, { i32, [4 x i8], ptr } { i32 83, [4 x i8] zeroinitializer, ptr @.str.349 }, { i32, [4 x i8], ptr } { i32 84, [4 x i8] zeroinitializer, ptr @.str.350 }, { i32, [4 x i8], ptr } { i32 85, [4 x i8] zeroinitializer, ptr @.str.351 }, { i32, [4 x i8], ptr } { i32 86, [4 x i8] zeroinitializer, ptr @.str.352 }, { i32, [4 x i8], ptr } { i32 87, [4 x i8] zeroinitializer, ptr @.str.353 }, { i32, [4 x i8], ptr } { i32 88, [4 x i8] zeroinitializer, ptr @.str.354 }, { i32, [4 x i8], ptr } { i32 89, [4 x i8] zeroinitializer, ptr @.str.355 }, { i32, [4 x i8], ptr } { i32 90, [4 x i8] zeroinitializer, ptr @.str.356 }, { i32, [4 x i8], ptr } { i32 91, [4 x i8] zeroinitializer, ptr @.str.357 }, { i32, [4 x i8], ptr } { i32 92, [4 x i8] zeroinitializer, ptr @.str.358 }, { i32, [4 x i8], ptr } { i32 93, [4 x i8] zeroinitializer, ptr @.str.359 }, { i32, [4 x i8], ptr } { i32 94, [4 x i8] zeroinitializer, ptr @.str.360 }, { i32, [4 x i8], ptr } { i32 95, [4 x i8] zeroinitializer, ptr @.str.361 }, { i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.362 }, { i32, [4 x i8], ptr } { i32 97, [4 x i8] zeroinitializer, ptr @.str.363 }, { i32, [4 x i8], ptr } { i32 98, [4 x i8] zeroinitializer, ptr @.str.364 }, { i32, [4 x i8], ptr } { i32 99, [4 x i8] zeroinitializer, ptr @.str.365 }, { i32, [4 x i8], ptr } { i32 100, [4 x i8] zeroinitializer, ptr @.str.366 }, { i32, [4 x i8], ptr } { i32 101, [4 x i8] zeroinitializer, ptr @.str.367 }, { i32, [4 x i8], ptr } { i32 102, [4 x i8] zeroinitializer, ptr @.str.368 }, { i32, [4 x i8], ptr } { i32 103, [4 x i8] zeroinitializer, ptr @.str.369 }, { i32, [4 x i8], ptr } { i32 104, [4 x i8] zeroinitializer, ptr @.str.370 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.372 = private unnamed_addr constant [24 x i8] c"Disable logging service\00", align 1
@.str.373 = private unnamed_addr constant [19 x i8] c"Retrieve ID ranges\00", align 1
@.str.374 = private unnamed_addr constant [20 x i8] c"Retrieve valid mask\00", align 1
@.str.375 = private unnamed_addr constant [13 x i8] c"Set Log Mask\00", align 1
@.str.376 = private unnamed_addr constant [13 x i8] c"Get Log Mask\00", align 1
@qcdiag_logcfg_ops = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.372 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.373 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.374 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.375 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.376 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.378 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.379 = private unnamed_addr constant [21 x i8] c"Invalid Equipment ID\00", align 1
@qcdiag_logcfg_status_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.378 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.379 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.381 = private unnamed_addr constant [3 x i8] c"1X\00", align 1
@.str.382 = private unnamed_addr constant [4 x i8] c"MSP\00", align 1
@.str.383 = private unnamed_addr constant [5 x i8] c"TDMA\00", align 1
@.str.384 = private unnamed_addr constant [4 x i8] c"BOA\00", align 1
@.str.385 = private unnamed_addr constant [4 x i8] c"DTV\00", align 1
@.str.386 = private unnamed_addr constant [5 x i8] c"APPS\00", align 1
@.str.387 = private unnamed_addr constant [4 x i8] c"DSP\00", align 1
@qcdiag_logcfg_equipid_vals = internal constant [15 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.269 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.381 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.273 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.277 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.382 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.278 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.383 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.384 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.385 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.386 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.387 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.353 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.389 = private unnamed_addr constant [41 x i8] c"Logging request and operation successful\00", align 1
@.str.390 = private unnamed_addr constant [57 x i8] c"Logging request acknowledged, success of logging unknown\00", align 1
@.str.391 = private unnamed_addr constant [58 x i8] c"Logging attempted, but log packet was dropped or disabled\00", align 1
@.str.392 = private unnamed_addr constant [62 x i8] c"Request unsuccessful, log code not supported for this service\00", align 1
@.str.393 = private unnamed_addr constant [49 x i8] c"Unable to log this packet in the present context\00", align 1
@qcdiag_log_on_demand_status_vals = internal constant [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.389 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.390 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.391 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.392 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.393 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.395 = private unnamed_addr constant [54 x i8] c"Older targets with a 16-bit hardware version register\00", align 1
@.str.396 = private unnamed_addr constant [54 x i8] c"Older targets with a 32-bit hardware version register\00", align 1
@.str.397 = private unnamed_addr constant [61 x i8] c"Current AMSS targets with a 32-bit hardware version register\00", align 1
@qcdiag_ext_build_id_ver = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.395 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.396 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.397 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.399 = private unnamed_addr constant [25 x i8] c"Unknown Command (0x%02x)\00", align 1
@.str.400 = private unnamed_addr constant [8 x i8] c"%d.%02x\00", align 1
@.str.401 = private unnamed_addr constant [12 x i8] c"qcdiag.code\00", align 1
@tfs_response_request = external constant %struct.true_false_string, align 8
@.str.402 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.403 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.404 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.405 = private unnamed_addr constant [27 x i8] c"Unknown Subsystem (0x%02x)\00", align 1
@.str.406 = private unnamed_addr constant [10 x i8] c"Subsystem\00", align 1
@.str.407 = private unnamed_addr constant [27 x i8] c"Unknown Operation (0x%02x)\00", align 1
@.str.408 = private unnamed_addr constant [7 x i8] c"%u: %u\00", align 1
@.str.409 = private unnamed_addr constant [18 x i8] c"Log Codes Enabled\00", align 1
@.str.410 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@.str.411 = private unnamed_addr constant [9 x i8] c", 0x%04x\00", align 1
@.str.412 = private unnamed_addr constant [8 x i8] c"(empty)\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden { i64, i32 } @qcdiag_parse_timestamp(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %1, i32 noundef -2147483648) ; 2 uses
  %2 = lshr i64 %i.a, 16
  %3 = uitofp nneg i64 %2 to double
  %4 = fmul nnan double %3, 1.250000e+00
  %5 = and i64 %i.a, 65535
  %6 = uitofp nneg i64 %5 to double
  %7 = fmul nnan double %6, f0x3EF999999999999A
  %8 = fadd double %4, %7
  %i.b = fdiv double %8, 1.000000e+03
  %i.c = fadd double %i.b, f0x41B2D53D80000000    ; 2 uses
  %i.d = fptoui double %i.c to i32                ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = uitofp i32 %i.d to double
  %i.g = fsub double %i.c, %i.f
  %i.h = fmul double %i.g, 1.000000e+09
  %i.i = fptoui double %i.h to i32
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %i.e, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %i.i, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_uint64(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_qcdiag() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  store i32 %i.a, ptr @proto_qcdiag, align 4
  tail call void @proto_register_prefix(ptr noundef nonnull @.str.2, ptr noundef nonnull @register_qualcomm_fields)
  %i.b = load i32, ptr @proto_qcdiag, align 4
  %i.c = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %i.b, i32 noundef 4, i32 noundef 1)
  store ptr %i.c, ptr @qcdiag_dissector_table, align 8
  %i.d = load i32, ptr @proto_qcdiag, align 4
  %i.e = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %i.d, i32 noundef 4, i32 noundef 1)
  store ptr %i.e, ptr @qcdiag_subsys_dissector_table, align 8
  %i.f = load i32, ptr @proto_qcdiag, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef nonnull @.str.2, ptr noundef nonnull @dissect_qcdiag, i32 noundef %i.f)
  store ptr %i.g, ptr @qcdiag_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_prefix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @register_qualcomm_fields(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca [41 x %struct.hf_register_info], align 16 ; 343 uses
  %2 = alloca %struct.xml_data, align 8           ; 7 uses
  %3 = alloca %struct._value_string, align 8      ; 4 uses
  %i.a = tail call ptr @wmem_epan_scope()
  %i.b = tail call ptr @wmem_array_sized_new(ptr noundef %i.a, i64 noundef 80, i32 noundef 4096) ; 3 uses
  %i.c = tail call ptr @g_ptr_array_sized_new(i32 noundef 4096) ; 6 uses
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.10) #9
  %i.e = icmp ne ptr %i.d, null
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.f = tail call ptr @epan_get_environment_prefix()
  %i.g = tail call ptr @get_datafile_dir(ptr noundef %i.f)
  %i.h = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.g, ptr noundef nonnull @.str.11, ptr noundef null) ; 4 uses
  %i.i = tail call ptr @g_dir_open(ptr noundef %i.h, i32 noundef 0, ptr noundef null) ; 5 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.thread.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %bb.a
  %i.j = tail call ptr @g_dir_read_name(ptr noundef nonnull %i.i) ; 2 uses
  %.not321923.i = icmp eq ptr %i.j, null
  br i1 %.not321923.i, label %.critedge.outer._crit_edge.i, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %.critedge.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.lr.ph.i

.thread.i:                                        ; preds = %bb.a
  tail call void @g_free(ptr noundef %i.h)
  br label %qcdictionary_load.exit

bb.b:                                             ; preds = %.lr.ph.i, %.critedge.backedge.i
  %i.l = phi ptr [ %i.az, %.lr.ph.i ], [ %i.t, %.critedge.backedge.i ] ; 3 uses
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #10 ; 2 uses
  %i.n = icmp ugt i64 %i.m, 3
  br i1 %i.n, label %bb.c, label %.critedge.backedge.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.l, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 1
  %i.r = icmp ne i32 %i.q, 1819113518
  %i.s = zext i1 %i.r to i32
  %.not16.i = icmp eq i32 %i.s, 0
  br i1 %.not16.i, label %bb.d, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %bb.c, %bb.b
  %i.t = call ptr @g_dir_read_name(ptr noundef nonnull %i.i) ; 2 uses
  %.not32.i = icmp eq ptr %i.t, null
  br i1 %.not32.i, label %.critedge.outer._crit_edge.i, label %bb.b, !llvm.loop !7

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr null, ptr %2, align 8
  store ptr %i.l, ptr %i.k, align 8
  call void @proto_execute_in_directory(ptr noundef %i.h, ptr noundef nonnull @dictionary_read_xml_file, ptr noundef nonnull %2)
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.critedge.outer.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @xmlDocGetRootElement(ptr noundef nonnull %i.u) ; 2 uses
  %.not17.i = icmp eq ptr %i.w, null
  br i1 %.not17.i, label %.critedge.outer.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.04248.i.i = load ptr, ptr %i.x, align 8       ; 2 uses
  %.not49.i.i = icmp eq ptr %.04248.i.i, null
  br i1 %.not49.i.i, label %dictionary_process_file.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.p
  %.25.i = phi ptr [ %.3.i, %bb.p ], [ %.0.ph24.i, %bb.f ] ; 5 uses
  %.04250.i.i = phi ptr [ %.042.i.i, %bb.p ], [ %.04248.i.i, %bb.f ] ; 5 uses
  %i.y = getelementptr i8, ptr %.04250.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 8
  %.not46.i.i = icmp eq i32 %i.z, 1
  br i1 %.not46.i.i, label %bb.g, label %bb.p

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr i8, ptr %.04250.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 @xmlStrcmp(ptr noundef %i.ab, ptr noundef nonnull @.str.14)
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ae = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #11 ; 7 uses
  %i.af = call ptr @xmlGetProp(ptr noundef nonnull %.04250.i.i, ptr noundef nonnull @.str.15)
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = call ptr @xmlGetProp(ptr noundef nonnull %.04250.i.i, ptr noundef nonnull @.str.16) ; 7 uses
  %.not47.i.i = icmp eq ptr %i.ag, null
  br i1 %.not47.i.i, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call i32 @g_ascii_strncasecmp(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.17, i64 noundef 2)
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = getelementptr i8, ptr %i.ae, i64 8      ; 2 uses
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = call zeroext i1 @ws_hexstrtou32(ptr noundef nonnull %i.ag, ptr noundef null, ptr noundef %i.aj)
  br i1 %i.ak, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr @xmlFree, align 8
  %i.am = load ptr, ptr %i.ae, align 8
  call void %i.al(ptr noundef %i.am), !inline_history !8
  %i.an = load ptr, ptr @xmlFree, align 8
  call void %i.an(ptr noundef nonnull %i.ag), !inline_history !8
  call void @g_free(ptr noundef %i.ae)
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.ao = call zeroext i1 @ws_strtou32(ptr noundef nonnull %i.ag, ptr noundef null, ptr noundef %i.aj)
  br i1 %i.ao, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr @xmlFree, align 8
  %i.aq = load ptr, ptr %i.ae, align 8
  call void %i.ap(ptr noundef %i.aq), !inline_history !8
  %i.ar = load ptr, ptr @xmlFree, align 8
  call void %i.ar(ptr noundef nonnull %i.ag), !inline_history !8
  call void @g_free(ptr noundef %i.ae)
  br label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.as = load ptr, ptr @xmlFree, align 8
  call void %i.as(ptr noundef nonnull %i.ag), !inline_history !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %i.at = call ptr @g_slist_prepend(ptr noundef %.25.i, ptr noundef %i.ae)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.g, %.lr.ph.i.i
  %.3.i = phi ptr [ %i.at, %bb.o ], [ %.25.i, %bb.k ], [ %.25.i, %bb.m ], [ %.25.i, %bb.g ], [ %.25.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = getelementptr i8, ptr %.04250.i.i, i64 48
  %.042.i.i = load ptr, ptr %i.au, align 8        ; 2 uses
  %.not.i.i = icmp eq ptr %.042.i.i, null
  br i1 %.not.i.i, label %dictionary_process_file.exit.i, label %.lr.ph.i.i, !llvm.loop !9

dictionary_process_file.exit.i:                   ; preds = %bb.p, %bb.f
  %.1.i = phi ptr [ %.0.ph24.i, %bb.f ], [ %.3.i, %bb.p ]
  %i.av = call ptr @g_slist_reverse(ptr noundef %.1.i)
  br label %.critedge.outer.sink.split.i

.critedge.outer.sink.split.i:                     ; preds = %dictionary_process_file.exit.i, %bb.e
  %.58.ph.i = phi ptr [ %i.av, %dictionary_process_file.exit.i ], [ %.0.ph24.i, %bb.e ]
  %.ph.i = phi i1 [ true, %dictionary_process_file.exit.i ], [ %.028.ph25.i, %bb.e ]
  %i.aw = load ptr, ptr %2, align 8
  call void @xmlFreeDoc(ptr noundef %i.aw)
end_hunk_0
begin_hunk_1_@dissect_qcdiag_log_config_hdr:bb.a
  %i.q = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  call void @col_set_str(ptr noundef %i.r, i32 noundef 25, ptr noundef %i.p)
  %i.s = call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.t = xor i1 %3, true
  %i.u = call ptr @tfs_get_string(i1 noundef zeroext %i.t, ptr noundef nonnull @tfs_response_request) ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.v, i32 noundef 25, ptr noundef nonnull @.str.404, ptr noundef %i.u)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.s, ptr noundef nonnull @.str.404, ptr noundef %i.u)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.b, ptr noundef nonnull @.str.402, ptr noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.m
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_letohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @qcdiag_log_codes_enabled(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 536870912) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ett_qcdiag_log_codes_enabled, align 4
  %i.b = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %i.a, ptr noundef null, ptr noundef nonnull @.str.409)
  %i.c = shl i32 %3, 12
  %.not4 = icmp eq i32 %4, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.0283 = phi i32 [ %i.aa, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.d = add i32 %.0283, %1                       ; 2 uses
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.d) ; 3 uses
  %i.f = zext i8 %i.e to i32                      ; 8 uses
  %i.g = icmp eq i8 %i.e, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call ptr @proto_tree_add_format_text(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.d, i32 noundef 1) ; 15 uses
  %i.i = shl nuw i32 %.0283, 3
  %i.j = add i32 %i.i, %i.c                       ; 9 uses
  %i.k = and i32 %i.f, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %i.f, 2
  %.not.1 = icmp eq i32 %i.l, 0
  br i1 %.not.1, label %bb.f, label %bb.e

.thread:                                          ; preds = %bb.b
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.410, i32 noundef %i.j)
  %i.m = and i32 %i.f, 2
  %.not.16 = icmp eq i32 %i.m, 0
  br i1 %.not.16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.n = or disjoint i32 %i.j, 1
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.411, i32 noundef %i.n)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = or disjoint i32 %i.j, 1
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.410, i32 noundef %i.o)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d, %bb.c
  %.1.1 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.c ], [ false, %.thread ] ; 2 uses
  %i.p = and i32 %i.f, 4
  %.not.2 = icmp eq i32 %i.p, 0
  br i1 %.not.2, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = or disjoint i32 %i.j, 2                  ; 2 uses
  br i1 %.1.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.411, i32 noundef %i.q)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.410, i32 noundef %i.q)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.1.2 = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ %.1.1, %bb.f ] ; 2 uses
  %i.r = and i32 %i.f, 8
  %.not.3 = icmp eq i32 %i.r, 0
  br i1 %.not.3, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = or disjoint i32 %i.j, 3                  ; 2 uses
  br i1 %.1.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.411, i32 noundef %i.s)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.410, i32 noundef %i.s)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %.1.3 = phi i1 [ false, %bb.m ], [ false, %bb.l ], [ %.1.2, %bb.j ] ; 2 uses
  %i.t = and i32 %i.f, 16
  %.not.4 = icmp eq i32 %i.t, 0
  br i1 %.not.4, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = or disjoint i32 %i.j, 4                  ; 2 uses
  br i1 %.1.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.411, i32 noundef %i.u)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.410, i32 noundef %i.u)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.1.4 = phi i1 [ false, %bb.q ], [ false, %bb.p ], [ %.1.3, %bb.n ] ; 2 uses
  %i.v = and i32 %i.f, 32
  %.not.5 = icmp eq i32 %i.v, 0
  br i1 %.not.5, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = or disjoint i32 %i.j, 5                  ; 2 uses
  br i1 %.1.4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.411, i32 noundef %i.w)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.410, i32 noundef %i.w)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r
  %.1.5 = phi i1 [ false, %bb.u ], [ false, %bb.t ], [ %.1.4, %bb.r ] ; 2 uses
  %i.x = and i32 %i.f, 64
  %.not.6 = icmp eq i32 %i.x, 0
  br i1 %.not.6, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.y = or disjoint i32 %i.j, 6                  ; 2 uses
  br i1 %.1.5, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.411, i32 noundef %i.y)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.410, i32 noundef %i.y)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v
  %.1.6 = phi i1 [ false, %bb.y ], [ false, %bb.x ], [ %.1.5, %bb.v ]
  %.not.7 = icmp sgt i8 %i.e, -1
  br i1 %.not.7, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.z = or disjoint i32 %i.j, 7                  ; 2 uses
  br i1 %.1.6, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.411, i32 noundef %i.z)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.h, ptr noundef nonnull @.str.410, i32 noundef %i.z)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.ab, %bb.ac, %.lr.ph
  %i.aa = add nuw nsw i32 %.0283, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_find_uint8_remaining(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint_with_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #8

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind null_pointer_is_valid memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { allocsize(0) }

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
!8 = distinct !{null, null}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
end_hunk_1
