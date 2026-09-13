Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-lg8979?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@lg8979_funccode_vals = internal constant [65 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.224 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.226 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.227 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.228 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.230 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.231 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.232 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.233 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.234 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.235 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.236 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.237 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.239 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.240 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.241 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.242 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.243 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.244 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.245 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.246 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.247 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.248 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.249 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.250 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.251 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.253 = private unnamed_addr constant [5 x i8] c"Trip\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@lg8979_sbo_tripclose_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.253 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.254 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.256 = private unnamed_addr constant [8 x i8] c"10 msec\00", align 1
@.str.257 = private unnamed_addr constant [9 x i8] c"100 msec\00", align 1
@.str.258 = private unnamed_addr constant [6 x i8] c"1 sec\00", align 1
@.str.259 = private unnamed_addr constant [7 x i8] c"10 sec\00", align 1
@lg8979_pul_output_base_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.256 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.257 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.258 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.259 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.261 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.262 = private unnamed_addr constant [6 x i8] c"Raise\00", align 1
@lg8979_pul_output_rl_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.261 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.262 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.264 = private unnamed_addr constant [18 x i8] c"Non-Existent Slot\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"Analog Input\00", align 1
@.str.266 = private unnamed_addr constant [14 x i8] c"A/D Converter\00", align 1
@.str.267 = private unnamed_addr constant [17 x i8] c"Indication Input\00", align 1
@.str.268 = private unnamed_addr constant [22 x i8] c"24-Bit Digital Output\00", align 1
@.str.269 = private unnamed_addr constant [19 x i8] c"SBO Control Output\00", align 1
@.str.270 = private unnamed_addr constant [20 x i8] c"Accumulator, Form A\00", align 1
@.str.271 = private unnamed_addr constant [22 x i8] c"32-Bit Digital Output\00", align 1
@.str.272 = private unnamed_addr constant [20 x i8] c"Accumulator, Form C\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"SOE Input\00", align 1
@.str.274 = private unnamed_addr constant [10 x i8] c"KWH Input\00", align 1
@.str.275 = private unnamed_addr constant [22 x i8] c"Serial Data Collector\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"Empty Slot\00", align 1
@lg8979_cardcode_vals = internal constant [16 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.264 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.265 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.266 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.267 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.268 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.269 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.270 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.271 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.272 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.234 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.273 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.274 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.275 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.276 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.278 = private unnamed_addr constant [13 x i8] c"Warm Restart\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"Cold Start\00", align 1
@.str.280 = private unnamed_addr constant [17 x i8] c"Insufficient Ram\00", align 1
@.str.281 = private unnamed_addr constant [12 x i8] c"Bus Failure\00", align 1
@.str.282 = private unnamed_addr constant [12 x i8] c"SBO Failure\00", align 1
@.str.283 = private unnamed_addr constant [15 x i8] c"Analog Failure\00", align 1
@.str.284 = private unnamed_addr constant [23 x i8] c"Indication/SOE Failure\00", align 1
@.str.285 = private unnamed_addr constant [21 x i8] c"Card Placement Error\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"Not Used\00", align 1
@.str.287 = private unnamed_addr constant [22 x i8] c"Invalid Function Code\00", align 1
@.str.288 = private unnamed_addr constant [21 x i8] c"Invalid Block Length\00", align 1
@.str.289 = private unnamed_addr constant [19 x i8] c"Non-Existent Point\00", align 1
@.str.290 = private unnamed_addr constant [18 x i8] c"Invalid Parameter\00", align 1
@.str.291 = private unnamed_addr constant [24 x i8] c"Select/Execute Mismatch\00", align 1
@.str.292 = private unnamed_addr constant [21 x i8] c"Function Not Allowed\00", align 1
@.str.293 = private unnamed_addr constant [27 x i8] c"Database Setup has Changed\00", align 1
@.str.294 = private unnamed_addr constant [27 x i8] c"Indication Change Sequence\00", align 1
@lg8979_exprpt_code_vals = internal constant [19 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.278 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.279 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.280 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.281 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.282 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.283 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.284 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.285 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.286 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.287 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.288 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.289 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.290 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.291 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.292 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.286 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.293 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.294 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.296 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.297 = private unnamed_addr constant [20 x i8] c"1=Requested CLDSTRT\00", align 1
@.str.298 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"Unit/Slot\00", align 1
@.str.300 = private unnamed_addr constant [13 x i8] c"Block Length\00", align 1
@.str.301 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"Parameter\00", align 1
@.str.303 = private unnamed_addr constant [14 x i8] c"Execute Point\00", align 1
@.str.304 = private unnamed_addr constant [25 x i8] c"1=Time Order (0=Not T/O)\00", align 1
@lg8979_exprpt_parm_vals = internal constant [19 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.296 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.297 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.296 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.298 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.299 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.299 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.299 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.299 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.296 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.300 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.301 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.302 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.303 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.296 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.296 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.304 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@dissect_lg8979.request_flags = internal constant [4 x ptr] [ptr @hf_lg8979_shr, ptr @hf_lg8979_mfc, ptr @hf_lg8979_ack, ptr null], align 16
@.str.306 = private unnamed_addr constant [14 x i8] c"Master -> RTU\00", align 1
@.str.307 = private unnamed_addr constant [12 x i8] c"Address: %d\00", align 1
@.str.308 = private unnamed_addr constant [22 x i8] c"Unknown Function Code\00", align 1
@.str.309 = private unnamed_addr constant [23 x i8] c"Function Code: %s (%d)\00", align 1
@.str.310 = private unnamed_addr constant [34 x i8] c"SBO Command, Pt.Num: %u, Code: %s\00", align 1
@.str.311 = private unnamed_addr constant [21 x i8] c"Unknown Control Code\00", align 1
@.str.312 = private unnamed_addr constant [21 x i8] c"Output: %u, Code: %s\00", align 1
@.str.313 = private unnamed_addr constant [11 x i8] c"Output: %u\00", align 1
@.str.314 = private unnamed_addr constant [35 x i8] c"Pulse Output, Pt.Num: %u, Code: %s\00", align 1
@.str.315 = private unnamed_addr constant [47 x i8] c"Time-Sync Value: %02d/%02d %02d:%02d:%02d.%03d\00", align 1
@.str.316 = private unnamed_addr constant [34 x i8] c"Point Number %u: New Deadband: %u\00", align 1
@.str.317 = private unnamed_addr constant [13 x i8] c" (%d - %d), \00", align 1
@.str.318 = private unnamed_addr constant [32 x i8] c"Acc Point Number %u: Preset: %u\00", align 1
@dissect_lg8979.response_flags = internal constant [7 x ptr] [ptr @hf_lg8979_shr, ptr @hf_lg8979_con, ptr @hf_lg8979_frz, ptr @hf_lg8979_ind, ptr @hf_lg8979_sch, ptr @hf_lg8979_slg, ptr null], align 16
@.str.319 = private unnamed_addr constant [14 x i8] c"RTU -> Master\00", align 1
@.str.320 = private unnamed_addr constant [20 x i8] c"Point Number %u: %u\00", align 1
@.str.321 = private unnamed_addr constant [66 x i8] c"Indication Change Report, Point Number: %u, Status: %u, Change %u\00", align 1
@.str.322 = private unnamed_addr constant [37 x i8] c"Indication Status, Base Point Num %d\00", align 1
@.str.323 = private unnamed_addr constant [37 x i8] c"Indication Change, Base Point Num %d\00", align 1
@.str.324 = private unnamed_addr constant [59 x i8] c"SOE Change Report, Point Number: %u, Status: %u, Change %u\00", align 1
@.str.325 = private unnamed_addr constant [30 x i8] c"SOE Status, Base Point Num %d\00", align 1
@.str.326 = private unnamed_addr constant [30 x i8] c"SOE Change, Base Point Num %d\00", align 1
@.str.327 = private unnamed_addr constant [23 x i8] c"Digital Input Block %d\00", align 1
@.str.328 = private unnamed_addr constant [18 x i8] c"Point Number %u, \00", align 1
@.str.329 = private unnamed_addr constant [56 x i8] c"SOE Log Change Report, Point Number: %u, New Status: %u\00", align 1
@.str.330 = private unnamed_addr constant [48 x i8] c"SOE Time Stamp: [%02d/%02d %02d:%02d:%02d.%03d]\00", align 1
@.str.331 = private unnamed_addr constant [10 x i8] c"Slot %d, \00", align 1
@.str.332 = private unnamed_addr constant [15 x i8] c"Short Response\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_lg8979() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.208) ; 2 uses
  store i32 %i.a, ptr @proto_lg8979, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.208, ptr noundef nonnull @dissect_lg8979_simple, i32 noundef %i.a) ; 0 uses
  %i.c = load i32, ptr @proto_lg8979, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef nonnull @proto_register_lg8979.lg8979_hf, i32 noundef 112)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_lg8979.ett, i32 noundef 5)
  %i.d = load i32, ptr @proto_lg8979, align 4
  %i.e = tail call ptr @prefs_register_protocol(i32 noundef %i.d, ptr noundef null)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, ptr noundef nonnull @lg8979_desegment)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, -2147483648) i32 @dissect_lg8979_simple(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @dissect_lg8979(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.a, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
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

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_lg8979() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @proto_lg8979, align 4
  %i.b = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_lg8979_tcp, i32 noundef %i.a) ; 2 uses
  tail call void @dissector_add_for_decode_as_with_preference(ptr noundef nonnull @.str.212, ptr noundef %i.b)
  tail call void @dissector_add_for_decode_as(ptr noundef nonnull @.str.213, ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, -2147483648) i32 @dissect_lg8979_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr @lg8979_desegment, align 1, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.e, i32 noundef 1, ptr noundef nonnull @get_lg8979_len, ptr noundef nonnull @dissect_lg8979, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.a, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as_with_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_for_decode_as(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_lg8979(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 11 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = getelementptr i8, ptr %1, i64 8          ; 13 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.d, i32 noundef 35, ptr noundef nonnull @.str.207)
  %i.e = load ptr, ptr %i.c, align 8
  tail call void @col_clear(ptr noundef %i.e, i32 noundef 25)
  %i.f = load i32, ptr @proto_lg8979, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.h = load i32, ptr @ett_lg8979, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 79 uses
  %i.j = load i32, ptr @hf_lg8979_header, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.l = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.m = and i32 %i.l, 255                        ; 3 uses
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.m, 5
  br i1 %i.o, label %bb.c, label %classify_lg8979_packet.exit

bb.c:                                             ; preds = %bb.b
  %i.p = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = and i32 %i.q, 12
  %or.cond.not.i = icmp eq i32 %i.r, 12
  br i1 %or.cond.not.i, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = and i32 %i.q, 120
  %.not19.i = icmp ne i32 %i.s, 0
  %.not20.i = icmp sgt i8 %i.p, -1
  %or.cond21.i = and i1 %.not20.i, %.not19.i
  br i1 %or.cond21.i, label %bb.y, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.u = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 5 uses
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %i.v, 7
  %i.x = icmp samesign ugt i32 %i.m, %i.w
  br i1 %i.x, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = and i8 %i.t, 127
  switch i8 %i.y, label %classify_lg8979_packet.exit [
    i8 0, label %bb.g
    i8 5, label %bb.g
    i8 6, label %bb.g
    i8 8, label %bb.g
    i8 12, label %bb.g
    i8 14, label %bb.g
    i8 38, label %bb.g
    i8 31, label %bb.g
    i8 39, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.h
    i8 11, label %bb.i
    i8 13, label %bb.i
    i8 33, label %bb.i
    i8 1, label %bb.j
    i8 7, label %bb.j
    i8 9, label %bb.j
    i8 20, label %select.unfold
    i8 21, label %select.unfold
    i8 22, label %select.unfold
    i8 23, label %select.unfold
    i8 24, label %select.unfold
    i8 25, label %select.unfold
    i8 26, label %select.unfold
    i8 28, label %select.unfold
    i8 32, label %select.unfold
    i8 34, label %select.unfold
    i8 35, label %select.unfold
    i8 36, label %select.unfold
    i8 37, label %select.unfold
    i8 63, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.z = icmp eq i8 %i.u, 0
  br i1 %i.z, label %select.unfold, label %bb.y

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.aa = icmp eq i8 %i.u, 1
  br i1 %i.aa, label %select.unfold, label %bb.y

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.ab = icmp eq i8 %i.u, 2
  br i1 %i.ab, label %select.unfold, label %bb.y

bb.j:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.ac = icmp eq i8 %i.u, 4
  br i1 %i.ac, label %select.unfold, label %bb.y

select.unfold:                                    ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.ad = load ptr, ptr %i.c, align 8
  tail call void @col_set_str(ptr noundef %i.ad, i32 noundef 25, ptr noundef nonnull @.str.306)
  %i.ae = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %.not784 = icmp sgt i8 %i.ae, -1
  %i.af = load i32, ptr @hf_lg8979_flags, align 4
  %i.ag = load i32, ptr @ett_lg8979_flags, align 4
  %i.ah = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.i, ptr noundef %0, i32 noundef 1, i32 noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull @dissect_lg8979.request_flags, i32 noundef -2147483648) ; 0 uses
  %i.ai = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = zext i8 %i.ai to i32
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.aj, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.307, i32 noundef %i.ak)
  %i.al = load i32, ptr @hf_lg8979_address, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.al, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br i1 %.not784, label %bb.k, label %.loopexit814

bb.k:                                             ; preds = %select.unfold
  %i.an = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.ao = and i8 %i.an, 127                       ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.ar = tail call ptr @val_to_str_const(i32 noundef %i.aq, ptr noundef nonnull @lg8979_funccode_vals, ptr noundef nonnull @.str.308)
  tail call void @col_append_sep_str(ptr noundef %i.ap, i32 noundef 25, ptr noundef null, ptr noundef %i.ar)
  %i.as = load i32, ptr @ett_lg8979_funccode, align 4
  %i.at = tail call ptr @val_to_str_const(i32 noundef %i.aq, ptr noundef nonnull @lg8979_funccode_vals, ptr noundef nonnull @.str.308)
  %i.au = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef %i.as, ptr noundef null, ptr noundef nonnull @.str.309, ptr noundef %i.at, i32 noundef %i.aq) ; 2 uses
  %i.av = load i32, ptr @hf_lg8979_lastblock, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.au, i32 noundef %i.av, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ax = load i32, ptr @hf_lg8979_funccode, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %i.au, i32 noundef %i.ax, ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.az = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 6 uses
  %i.ba = load i32, ptr @hf_lg8979_length, align 4
  %i.bb = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.ba, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  switch i8 %i.ao, label %.loopexit814 [
    i8 1, label %bb.l
    i8 7, label %bb.l
    i8 9, label %bb.l
    i8 2, label %bb.m
    i8 11, label %bb.n
    i8 13, label %bb.n
    i8 20, label %bb.o
    i8 21, label %bb.p
    i8 22, label %bb.q
    i8 23, label %bb.r
    i8 25, label %bb.s
    i8 32, label %bb.t
    i8 33, label %bb.u
    i8 34, label %bb.v
    i8 35, label %bb.w
    i8 36, label %bb.x
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  %i.bc = load i32, ptr @hf_lg8979_start_ptnum16, align 4
  %i.bd = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bc, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.be = load i32, ptr @hf_lg8979_stop_ptnum16, align 4
  %i.bf = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.be, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit814

bb.m:                                             ; preds = %bb.k
  %i.bg = load i32, ptr @hf_lg8979_ang_group, align 4
  %i.bh = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bg, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit814

bb.n:                                             ; preds = %bb.k, %bb.k
  %i.bi = load i32, ptr @hf_lg8979_start_ptnum8, align 4
  %i.bj = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bi, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bk = load i32, ptr @hf_lg8979_stop_ptnum8, align 4
  %i.bl = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bk, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit814

bb.o:                                             ; preds = %bb.k
  %i.bm = load i32, ptr @hf_lg8979_start_ptnum8, align 4
  %i.bn = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bm, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.bo = load i32, ptr @hf_lg8979_ang_output_val, align 4
  %i.bp = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.bo, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit814

bb.p:                                             ; preds = %bb.k
  %i.bq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.br = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 6)
  %i.bs = lshr i8 %i.br, 7
  %i.bt = load i32, ptr @ett_lg8979_point, align 4
  %i.bu = zext i8 %i.bq to i32                    ; 2 uses
  %i.bv = zext nneg i8 %i.bs to i32               ; 2 uses
  %i.bw = tail call ptr @val_to_str_const(i32 noundef %i.bv, ptr noundef nonnull @lg8979_sbo_tripclose_vals, ptr noundef nonnull @.str.311)
  %i.bx = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef %i.bt, ptr noundef null, ptr noundef nonnull @.str.310, i32 noundef %i.bu, ptr noundef %i.bw) ; 3 uses
  %i.by = load ptr, ptr %i.c, align 8
  %i.bz = tail call ptr @val_to_str_const(i32 noundef %i.bv, ptr noundef nonnull @lg8979_sbo_tripclose_vals, ptr noundef nonnull @.str.311)
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.by, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.312, i32 noundef %i.bu, ptr noundef %i.bz)
  %i.ca = load i32, ptr @hf_lg8979_start_ptnum8, align 4
  %i.cb = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.ca, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.cc = load i32, ptr @hf_lg8979_sbo_tripclose, align 4
  %i.cd = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.cc, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ce = load i32, ptr @hf_lg8979_sbo_timercnt, align 4
  %i.cf = tail call ptr @proto_tree_add_item(ptr noundef %i.bx, i32 noundef %i.ce, ptr noundef %0, i32 noundef 6, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit814

bb.q:                                             ; preds = %bb.k
  %i.cg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 5)
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = zext i8 %i.cg to i32
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.ch, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.313, i32 noundef %i.ci)
  %i.cj = load i32, ptr @hf_lg8979_start_ptnum8, align 4
  %i.ck = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.cj, ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  br label %.loopexit814
end_hunk_0
begin_hunk_1_@dissect_lg8979:bb.a
  br label %.loopexit

bb.ah:                                            ; preds = %.lr.ph983
  %i.kn = lshr i8 %i.gt, 1                        ; 2 uses
  %i.ko = zext nneg i8 %i.kn to i32
  %.not883 = icmp eq i8 %i.kn, 0
  br i1 %.not883, label %.loopexit, label %.lr.ph865

.lr.ph865:                                        ; preds = %bb.ah, %.lr.ph865
  %.5864 = phi i32 [ %i.lh, %.lr.ph865 ], [ 0, %bb.ah ]
  %.8774863 = phi i32 [ %i.lg, %.lr.ph865 ], [ %i.gw, %bb.ah ] ; 7 uses
  %i.kp = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %.8774863)
  %i.kq = and i16 %i.kp, 4095
  %i.kr = add i32 %.8774863, 1                    ; 2 uses
  %i.ks = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kr)
  %i.kt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kr)
  %i.ku = load i32, ptr @ett_lg8979_point, align 4
  %i.kv = zext nneg i16 %i.kq to i32
  %.lobit782 = lshr i8 %i.ks, 7
  %i.kw = zext nneg i8 %.lobit782 to i32
  %i.kx = lshr i8 %i.kt, 6
  %.lobit783 = and i8 %i.kx, 1
  %i.ky = zext nneg i8 %.lobit783 to i32
  %i.kz = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %.8774863, i32 noundef 2, i32 noundef %i.ku, ptr noundef null, ptr noundef nonnull @.str.321, i32 noundef %i.kv, i32 noundef %i.kw, i32 noundef %i.ky) ; 3 uses
  %i.la = load i32, ptr @hf_lg8979_ind_chgrpt_ptnum, align 4
  %i.lb = call ptr @proto_tree_add_item(ptr noundef %i.kz, i32 noundef %i.la, ptr noundef %0, i32 noundef %.8774863, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.lc = load i32, ptr @hf_lg8979_ind_chgrpt_status, align 4
  %i.ld = call ptr @proto_tree_add_item(ptr noundef %i.kz, i32 noundef %i.lc, ptr noundef %0, i32 noundef %.8774863, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.le = load i32, ptr @hf_lg8979_ind_chgrpt_change, align 4
  %i.lf = call ptr @proto_tree_add_item(ptr noundef %i.kz, i32 noundef %i.le, ptr noundef %0, i32 noundef %.8774863, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.lg = add i32 %.8774863, 2                    ; 2 uses
  %i.lh = add nuw nsw i32 %.5864, 1               ; 2 uses
  %exitcond919.not = icmp eq i32 %i.lh, %i.ko
  br i1 %exitcond919.not, label %.loopexit, label %.lr.ph865, !llvm.loop !13

bb.ai:                                            ; preds = %.lr.ph983
  %i.li = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.gw)
  %i.lj = load i32, ptr @hf_lg8979_start_ptnum16, align 4
  %i.lk = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.lj, ptr noundef %0, i32 noundef %i.gw, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ll = add i32 %.4770876982, 4                 ; 2 uses
  %i.lm = icmp ugt i8 %i.gt, 3
  br i1 %i.lm, label %.lr.ph861.preheader, label %.loopexit

.lr.ph861.preheader:                              ; preds = %bb.ai
  %.lhs.trunc797 = add i8 %i.gt, -2
  %i.ln = lshr i8 %.lhs.trunc797, 1
  %smax917 = zext nneg i8 %i.ln to i32
  br label %.lr.ph861

.lr.ph861:                                        ; preds = %.lr.ph861.preheader, %.lr.ph861
  %.6860 = phi i32 [ %i.nc, %.lr.ph861 ], [ 0, %.lr.ph861.preheader ]
  %.2764859 = phi i16 [ %i.nb, %.lr.ph861 ], [ %i.li, %.lr.ph861.preheader ] ; 2 uses
  %.9775858 = phi i32 [ %i.na, %.lr.ph861 ], [ %i.ll, %.lr.ph861.preheader ] ; 11 uses
  %i.lo = load i32, ptr @ett_lg8979_point, align 4
  %i.lp = zext i16 %.2764859 to i32               ; 2 uses
  %i.lq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef %i.lo, ptr noundef null, ptr noundef nonnull @.str.322, i32 noundef %i.lp) ; 8 uses
  %i.lr = load i32, ptr @hf_lg8979_ind_frcrpt_status_b0, align 4
  %i.ls = call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.lr, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.lt = load i32, ptr @hf_lg8979_ind_frcrpt_status_b1, align 4
  %i.lu = call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.lt, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.lv = load i32, ptr @hf_lg8979_ind_frcrpt_status_b2, align 4
  %i.lw = call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.lv, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.lx = load i32, ptr @hf_lg8979_ind_frcrpt_status_b3, align 4
  %i.ly = call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.lx, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.lz = load i32, ptr @hf_lg8979_ind_frcrpt_status_b4, align 4
  %i.ma = call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.lz, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mb = load i32, ptr @hf_lg8979_ind_frcrpt_status_b5, align 4
  %i.mc = call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.mb, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.md = load i32, ptr @hf_lg8979_ind_frcrpt_status_b6, align 4
  %i.me = call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.md, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mf = load i32, ptr @hf_lg8979_ind_frcrpt_status_b7, align 4
  %i.mg = call ptr @proto_tree_add_item(ptr noundef %i.lq, i32 noundef %i.mf, ptr noundef %0, i32 noundef %.9775858, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mh = add i32 %.9775858, 1                    ; 9 uses
  %i.mi = load i32, ptr @ett_lg8979_point, align 4
  %i.mj = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef %i.mi, ptr noundef null, ptr noundef nonnull @.str.323, i32 noundef %i.lp) ; 8 uses
  %i.mk = load i32, ptr @hf_lg8979_ind_frcrpt_change_b0, align 4
  %i.ml = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.mk, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mm = load i32, ptr @hf_lg8979_ind_frcrpt_change_b1, align 4
  %i.mn = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.mm, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mo = load i32, ptr @hf_lg8979_ind_frcrpt_change_b2, align 4
  %i.mp = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.mo, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mq = load i32, ptr @hf_lg8979_ind_frcrpt_change_b3, align 4
  %i.mr = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.mq, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ms = load i32, ptr @hf_lg8979_ind_frcrpt_change_b4, align 4
  %i.mt = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.ms, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mu = load i32, ptr @hf_lg8979_ind_frcrpt_change_b5, align 4
  %i.mv = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.mu, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.mw = load i32, ptr @hf_lg8979_ind_frcrpt_change_b6, align 4
  %i.mx = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.mw, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.my = load i32, ptr @hf_lg8979_ind_frcrpt_change_b7, align 4
  %i.mz = call ptr @proto_tree_add_item(ptr noundef %i.mj, i32 noundef %i.my, ptr noundef %0, i32 noundef %i.mh, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.na = add i32 %.9775858, 2                    ; 2 uses
  %i.nb = add i16 %.2764859, 8
  %i.nc = add nuw nsw i32 %.6860, 1               ; 2 uses
  %exitcond918.not = icmp eq i32 %i.nc, %smax917
  br i1 %exitcond918.not, label %.loopexit, label %.lr.ph861, !llvm.loop !14

bb.aj:                                            ; preds = %.lr.ph983
  %i.nd = lshr i8 %i.gt, 1                        ; 2 uses
  %i.ne = zext nneg i8 %i.nd to i32
  %.not882 = icmp eq i8 %i.nd, 0
  br i1 %.not882, label %.loopexit, label %.lr.ph856

.lr.ph856:                                        ; preds = %bb.aj, %.lr.ph856
  %.7855 = phi i32 [ %i.nx, %.lr.ph856 ], [ 0, %bb.aj ]
  %.10776854 = phi i32 [ %i.nw, %.lr.ph856 ], [ %i.gw, %bb.aj ] ; 7 uses
  %i.nf = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %.10776854)
  %i.ng = and i16 %i.nf, 4095
  %i.nh = add i32 %.10776854, 1                   ; 2 uses
  %i.ni = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.nh)
  %i.nj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.nh)
  %i.nk = load i32, ptr @ett_lg8979_point, align 4
  %i.nl = zext nneg i16 %i.ng to i32
  %.lobit780 = lshr i8 %i.ni, 7
  %i.nm = zext nneg i8 %.lobit780 to i32
  %i.nn = lshr i8 %i.nj, 6
  %.lobit781 = and i8 %i.nn, 1
  %i.no = zext nneg i8 %.lobit781 to i32
  %i.np = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %.10776854, i32 noundef 2, i32 noundef %i.nk, ptr noundef null, ptr noundef nonnull @.str.324, i32 noundef %i.nl, i32 noundef %i.nm, i32 noundef %i.no) ; 3 uses
  %i.nq = load i32, ptr @hf_lg8979_soe_chgrpt_ptnum, align 4
  %i.nr = call ptr @proto_tree_add_item(ptr noundef %i.np, i32 noundef %i.nq, ptr noundef %0, i32 noundef %.10776854, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ns = load i32, ptr @hf_lg8979_soe_chgrpt_status, align 4
  %i.nt = call ptr @proto_tree_add_item(ptr noundef %i.np, i32 noundef %i.ns, ptr noundef %0, i32 noundef %.10776854, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.nu = load i32, ptr @hf_lg8979_soe_chgrpt_change, align 4
  %i.nv = call ptr @proto_tree_add_item(ptr noundef %i.np, i32 noundef %i.nu, ptr noundef %0, i32 noundef %.10776854, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.nw = add i32 %.10776854, 2                   ; 2 uses
  %i.nx = add nuw nsw i32 %.7855, 1               ; 2 uses
  %exitcond916.not = icmp eq i32 %i.nx, %i.ne
  br i1 %exitcond916.not, label %.loopexit, label %.lr.ph856, !llvm.loop !15

bb.ak:                                            ; preds = %.lr.ph983
  %i.ny = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.gw)
  %i.nz = load i32, ptr @hf_lg8979_start_ptnum16, align 4
  %i.oa = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.nz, ptr noundef %0, i32 noundef %i.gw, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ob = add i32 %.4770876982, 4                 ; 2 uses
  %i.oc = icmp ugt i8 %i.gt, 3
  br i1 %i.oc, label %.lr.ph852.preheader, label %.loopexit

.lr.ph852.preheader:                              ; preds = %bb.ak
  %.lhs.trunc799 = add i8 %i.gt, -2
  %i.od = lshr i8 %.lhs.trunc799, 1
  %smax914 = zext nneg i8 %i.od to i32
  br label %.lr.ph852

.lr.ph852:                                        ; preds = %.lr.ph852.preheader, %.lr.ph852
  %.8851 = phi i32 [ %i.ps, %.lr.ph852 ], [ 0, %.lr.ph852.preheader ]
  %.3765850 = phi i16 [ %i.pr, %.lr.ph852 ], [ %i.ny, %.lr.ph852.preheader ] ; 2 uses
  %.11777849 = phi i32 [ %i.pq, %.lr.ph852 ], [ %i.ob, %.lr.ph852.preheader ] ; 11 uses
  %i.oe = load i32, ptr @ett_lg8979_point, align 4
  %i.of = zext i16 %.3765850 to i32               ; 2 uses
  %i.og = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef %i.oe, ptr noundef null, ptr noundef nonnull @.str.325, i32 noundef %i.of) ; 8 uses
  %i.oh = load i32, ptr @hf_lg8979_soe_frcrpt_status_b0, align 4
  %i.oi = call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.oh, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.oj = load i32, ptr @hf_lg8979_soe_frcrpt_status_b1, align 4
  %i.ok = call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.oj, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ol = load i32, ptr @hf_lg8979_soe_frcrpt_status_b2, align 4
  %i.om = call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.ol, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.on = load i32, ptr @hf_lg8979_soe_frcrpt_status_b3, align 4
  %i.oo = call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.on, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.op = load i32, ptr @hf_lg8979_soe_frcrpt_status_b4, align 4
  %i.oq = call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.op, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.or = load i32, ptr @hf_lg8979_soe_frcrpt_status_b5, align 4
  %i.os = call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.or, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ot = load i32, ptr @hf_lg8979_soe_frcrpt_status_b6, align 4
  %i.ou = call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.ot, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ov = load i32, ptr @hf_lg8979_soe_frcrpt_status_b7, align 4
  %i.ow = call ptr @proto_tree_add_item(ptr noundef %i.og, i32 noundef %i.ov, ptr noundef %0, i32 noundef %.11777849, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ox = add i32 %.11777849, 1                   ; 9 uses
  %i.oy = load i32, ptr @ett_lg8979_point, align 4
  %i.oz = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef %i.oy, ptr noundef null, ptr noundef nonnull @.str.326, i32 noundef %i.of) ; 8 uses
  %i.pa = load i32, ptr @hf_lg8979_soe_frcrpt_change_b0, align 4
  %i.pb = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pa, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pc = load i32, ptr @hf_lg8979_soe_frcrpt_change_b1, align 4
  %i.pd = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pc, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pe = load i32, ptr @hf_lg8979_soe_frcrpt_change_b2, align 4
  %i.pf = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pe, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pg = load i32, ptr @hf_lg8979_soe_frcrpt_change_b3, align 4
  %i.ph = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pg, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pi = load i32, ptr @hf_lg8979_soe_frcrpt_change_b4, align 4
  %i.pj = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pi, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pk = load i32, ptr @hf_lg8979_soe_frcrpt_change_b5, align 4
  %i.pl = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pk, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pm = load i32, ptr @hf_lg8979_soe_frcrpt_change_b6, align 4
  %i.pn = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pm, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.po = load i32, ptr @hf_lg8979_soe_frcrpt_change_b7, align 4
  %i.pp = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.po, ptr noundef %0, i32 noundef %i.ox, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.pq = add i32 %.11777849, 2                   ; 2 uses
  %i.pr = add i16 %.3765850, 8
  %i.ps = add nuw nsw i32 %.8851, 1               ; 2 uses
  %exitcond915.not = icmp eq i32 %i.ps, %smax914
  br i1 %exitcond915.not, label %.loopexit, label %.lr.ph852, !llvm.loop !16

bb.al:                                            ; preds = %.lr.ph983
  %i.pt = load i32, ptr @hf_lg8979_start_ptnum8, align 4
  %i.pu = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.i, i32 noundef %i.pt, ptr noundef %0, i32 noundef %i.gw, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.pv = add i32 %.4770876982, 3                 ; 2 uses
  %i.pw = icmp ugt i8 %i.gt, 2
  br i1 %i.pw, label %.lr.ph847.preheader, label %.loopexit

.lr.ph847.preheader:                              ; preds = %bb.al
  %4 = zext i8 %i.gt to i32
  %.lhs.trunc801 = add nuw nsw i32 %4, 65535
  %5 = lshr i32 %.lhs.trunc801, 1
  %.sext802 = and i32 %5, 32767
  %umax912 = call i32 @llvm.umax.i32(i32 %.sext802, i32 1)
  %.pre = load i8, ptr %i.a, align 1
  br label %.lr.ph847

.lr.ph847:                                        ; preds = %.lr.ph847.preheader, %.lr.ph847
  %i.px = phi i8 [ %i.ri, %.lr.ph847 ], [ %.pre, %.lr.ph847.preheader ]
  %.9846 = phi i32 [ %i.rk, %.lr.ph847 ], [ 0, %.lr.ph847.preheader ]
  %.12778845 = phi i32 [ %i.rj, %.lr.ph847 ], [ %i.pv, %.lr.ph847.preheader ] ; 18 uses
  %i.py = load i32, ptr @ett_lg8979_point, align 4
  %i.pz = zext i8 %i.px to i32
  %i.qa = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef %i.py, ptr noundef null, ptr noundef nonnull @.str.327, i32 noundef %i.pz) ; 16 uses
  %i.qb = load i32, ptr @hf_lg8979_digin_b0, align 4
  %i.qc = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qb, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qd = load i32, ptr @hf_lg8979_digin_b1, align 4
  %i.qe = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qd, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qf = load i32, ptr @hf_lg8979_digin_b2, align 4
  %i.qg = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qf, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qh = load i32, ptr @hf_lg8979_digin_b3, align 4
  %i.qi = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qh, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qj = load i32, ptr @hf_lg8979_digin_b4, align 4
  %i.qk = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qj, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.ql = load i32, ptr @hf_lg8979_digin_b5, align 4
  %i.qm = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.ql, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qn = load i32, ptr @hf_lg8979_digin_b6, align 4
  %i.qo = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qn, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qp = load i32, ptr @hf_lg8979_digin_b7, align 4
  %i.qq = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qp, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qr = load i32, ptr @hf_lg8979_digin_b8, align 4
  %i.qs = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qr, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qt = load i32, ptr @hf_lg8979_digin_b9, align 4
  %i.qu = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qt, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qv = load i32, ptr @hf_lg8979_digin_b10, align 4
  %i.qw = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qv, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qx = load i32, ptr @hf_lg8979_digin_b11, align 4
  %i.qy = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qx, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.qz = load i32, ptr @hf_lg8979_digin_b12, align 4
  %i.ra = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.qz, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.rb = load i32, ptr @hf_lg8979_digin_b13, align 4
  %i.rc = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.rb, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.rd = load i32, ptr @hf_lg8979_digin_b14, align 4
  %i.re = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.rd, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.rf = load i32, ptr @hf_lg8979_digin_b15, align 4
  %i.rg = call ptr @proto_tree_add_item(ptr noundef %i.qa, i32 noundef %i.rf, ptr noundef %0, i32 noundef %.12778845, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.rh = load i8, ptr %i.a, align 1
  %i.ri = add i8 %i.rh, 1                         ; 2 uses
  store i8 %i.ri, ptr %i.a, align 1
  %i.rj = add i32 %.12778845, 2                   ; 2 uses
  %i.rk = add nuw nsw i32 %.9846, 1               ; 2 uses
  %exitcond913.not = icmp eq i32 %i.rk, %umax912
  br i1 %exitcond913.not, label %.loopexit, label %.lr.ph847, !llvm.loop !17

bb.am:                                            ; preds = %.lr.ph983, %.lr.ph983
  %i.rl = load i32, ptr @hf_lg8979_start_ptnum8, align 4
  %i.rm = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.i, i32 noundef %i.rl, ptr noundef %0, i32 noundef %i.gw, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.rn = add i32 %.4770876982, 3                 ; 2 uses
  %i.ro = icmp ugt i8 %i.gt, 2
  br i1 %i.ro, label %.lr.ph843.preheader, label %.loopexit

.lr.ph843.preheader:                              ; preds = %bb.am
  %6 = zext i8 %i.gt to i32
  %.lhs.trunc803 = add nuw nsw i32 %6, 65535
  %7 = lshr i32 %.lhs.trunc803, 1
  %.sext804 = and i32 %7, 32767
  %umax = call i32 @llvm.umax.i32(i32 %.sext804, i32 1)
  br label %.lr.ph843

.lr.ph843:                                        ; preds = %.lr.ph843.preheader, %.lr.ph843
  %.10842 = phi i32 [ %i.rw, %.lr.ph843 ], [ 0, %.lr.ph843.preheader ]
  %.13841 = phi i32 [ %i.rt, %.lr.ph843 ], [ %i.rn, %.lr.ph843.preheader ] ; 2 uses
  %i.rp = load i32, ptr @hf_lg8979_acc_point, align 4
  %i.rq = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.rp, ptr noundef %0, i32 noundef %.13841, i32 noundef 2, i32 noundef -2147483648)
  %i.rr = load i8, ptr %i.a, align 1
  %i.rs = zext i8 %i.rr to i32
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.rq, ptr noundef nonnull @.str.328, i32 noundef %i.rs)
  %i.rt = add i32 %.13841, 2                      ; 2 uses
  %i.ru = load i8, ptr %i.a, align 1
  %i.rv = add i8 %i.ru, 1
  store i8 %i.rv, ptr %i.a, align 1
  %i.rw = add nuw nsw i32 %.10842, 1              ; 2 uses
  %exitcond911.not = icmp eq i32 %i.rw, %umax
  br i1 %exitcond911.not, label %.loopexit, label %.lr.ph843, !llvm.loop !18

bb.an:                                            ; preds = %.lr.ph983
  %i.rx = udiv i8 %i.gt, 9
  %i.ry = zext nneg i8 %i.rx to i32
  %.not881 = icmp ult i8 %i.gt, 9
  br i1 %.not881, label %.loopexit, label %.lr.ph839

.lr.ph839:                                        ; preds = %bb.an, %.lr.ph839
  %.11838 = phi i32 [ %i.ts, %.lr.ph839 ], [ 0, %bb.an ]
  %.14837 = phi i32 [ %i.tr, %.lr.ph839 ], [ %i.gw, %bb.an ] ; 12 uses
  %i.rz = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %.14837)
  %i.sa = and i16 %i.rz, 4095
  %i.sb = add i32 %.14837, 1
  %i.sc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.sb)
  %i.sd = load i32, ptr @ett_lg8979_point, align 4
  %i.se = zext nneg i16 %i.sa to i32
  %.lobit = lshr i8 %i.sc, 7
  %i.sf = zext nneg i8 %.lobit to i32
  %i.sg = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %.14837, i32 noundef 9, i32 noundef %i.sd, ptr noundef null, ptr noundef nonnull @.str.329, i32 noundef %i.se, i32 noundef %i.sf) ; 3 uses
  %i.sh = load i32, ptr @hf_lg8979_soe_logchg_ptnum, align 4
  %i.si = call ptr @proto_tree_add_item(ptr noundef %i.sg, i32 noundef %i.sh, ptr noundef %0, i32 noundef %.14837, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.sj = load i32, ptr @hf_lg8979_soe_logchg_newstat, align 4
  %i.sk = call ptr @proto_tree_add_item(ptr noundef %i.sg, i32 noundef %i.sj, ptr noundef %0, i32 noundef %.14837, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.sl = add i32 %.14837, 2                      ; 3 uses
  %i.sm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.sl)
  %i.sn = add i32 %.14837, 3                      ; 2 uses
  %i.so = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.sn)
  %i.sp = add i32 %.14837, 4                      ; 2 uses
  %i.sq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.sp)
  %i.sr = add i32 %.14837, 5                      ; 2 uses
  %i.ss = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.sr)
  %i.st = add i32 %.14837, 6                      ; 2 uses
  %i.su = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.st)
  %i.sv = add i32 %.14837, 7                      ; 2 uses
  %i.sw = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.sv)
  %i.sx = load i32, ptr @ett_lg8979_ts, align 4
  %i.sy = zext i8 %i.sm to i32
  %i.sz = zext i8 %i.so to i32
  %i.ta = zext i8 %i.sq to i32
  %i.tb = zext i8 %i.ss to i32
  %i.tc = zext i8 %i.su to i32
  %i.td = zext i16 %i.sw to i32
  %i.te = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.sg, ptr noundef %0, i32 noundef %i.sl, i32 noundef 7, i32 noundef %i.sx, ptr noundef null, ptr noundef nonnull @.str.330, i32 noundef %i.sy, i32 noundef %i.sz, i32 noundef %i.ta, i32 noundef %i.tb, i32 noundef %i.tc, i32 noundef %i.td) ; 6 uses
  %i.tf = load i32, ptr @hf_lg8979_soe_logchg_mon, align 4
  %i.tg = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.tf, ptr noundef %0, i32 noundef %i.sl, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.th = load i32, ptr @hf_lg8979_soe_logchg_day, align 4
  %i.ti = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.th, ptr noundef %0, i32 noundef %i.sn, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.tj = load i32, ptr @hf_lg8979_soe_logchg_hour, align 4
  %i.tk = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.tj, ptr noundef %0, i32 noundef %i.sp, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.tl = load i32, ptr @hf_lg8979_soe_logchg_min, align 4
  %i.tm = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.tl, ptr noundef %0, i32 noundef %i.sr, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.tn = load i32, ptr @hf_lg8979_soe_logchg_sec, align 4
  %i.to = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.tn, ptr noundef %0, i32 noundef %i.st, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.tp = load i32, ptr @hf_lg8979_soe_logchg_msec, align 4
  %i.tq = call ptr @proto_tree_add_item(ptr noundef %i.te, i32 noundef %i.tp, ptr noundef %0, i32 noundef %i.sv, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.tr = add i32 %.14837, 9                      ; 2 uses
  %i.ts = add nuw nsw i32 %.11838, 1              ; 2 uses
  %exitcond910.not = icmp eq i32 %i.ts, %i.ry
  br i1 %exitcond910.not, label %.loopexit, label %.lr.ph839, !llvm.loop !19

bb.ao:                                            ; preds = %.lr.ph983
  %i.tt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gw)
  %i.tu = add i32 %.4770876982, 3                 ; 3 uses
  %i.tv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.tu)
  %i.tw = lshr i8 %i.tv, 7
  %i.tx = load i32, ptr @ett_lg8979_point, align 4
  %i.ty = zext i8 %i.tt to i32                    ; 2 uses
  %i.tz = zext nneg i8 %i.tw to i32               ; 2 uses
  %i.ua = call ptr @val_to_str_const(i32 noundef %i.tz, ptr noundef nonnull @lg8979_sbo_tripclose_vals, ptr noundef nonnull @.str.311)
  %i.ub = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.i, ptr noundef %0, i32 noundef %i.gw, i32 noundef 2, i32 noundef %i.tx, ptr noundef null, ptr noundef nonnull @.str.310, i32 noundef %i.ty, ptr noundef %i.ua) ; 3 uses
  %i.uc = load ptr, ptr %i.c, align 8
  %i.ud = call ptr @val_to_str_const(i32 noundef %i.tz, ptr noundef nonnull @lg8979_sbo_tripclose_vals, ptr noundef nonnull @.str.311)
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.uc, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.312, i32 noundef %i.ty, ptr noundef %i.ud)
  %i.ue = load i32, ptr @hf_lg8979_start_ptnum8, align 4
  %i.uf = call ptr @proto_tree_add_item(ptr noundef %i.ub, i32 noundef %i.ue, ptr noundef %0, i32 noundef %i.gw, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ug = load i32, ptr @hf_lg8979_sbo_tripclose, align 4
  %i.uh = call ptr @proto_tree_add_item(ptr noundef %i.ub, i32 noundef %i.ug, ptr noundef %0, i32 noundef %i.tu, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ui = load i32, ptr @hf_lg8979_sbo_timercnt, align 4
  %i.uj = call ptr @proto_tree_add_item(ptr noundef %i.ub, i32 noundef %i.ui, ptr noundef %0, i32 noundef %i.tu, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.uk = add i32 %.4770876982, 4
  br label %.loopexit

bb.ap:                                            ; preds = %.lr.ph983
  %i.ul = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gw)
  %i.um = load ptr, ptr %i.c, align 8
  %i.un = zext i8 %i.ul to i32
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.um, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.313, i32 noundef %i.un)
  %i.uo = load i32, ptr @hf_lg8979_start_ptnum8, align 4
  %i.up = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.uo, ptr noundef %0, i32 noundef %i.gw, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.uq = add i32 %.4770876982, 3
  br label %.loopexit

bb.aq:                                            ; preds = %.lr.ph983
  %i.ur = load i32, ptr @hf_lg8979_rtucfg_num_chassis, align 4
  %i.us = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.i, i32 noundef %i.ur, ptr noundef %0, i32 noundef %i.gw, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.ut = add i32 %.4770876982, 3                 ; 2 uses
  %i.uu = load i8, ptr %i.b, align 1
  %.not880 = icmp eq i8 %i.uu, 0
  br i1 %.not880, label %.loopexit, label %.lr.ph835

.lr.ph835:                                        ; preds = %bb.aq, %.lr.ph835
  %.12834 = phi i32 [ %i.wd, %.lr.ph835 ], [ 0, %bb.aq ]
  %.15833 = phi i32 [ %.16.15, %.lr.ph835 ], [ %i.ut, %bb.aq ] ; 18 uses
  %i.uv = load i32, ptr @hf_lg8979_rtucfg_chassis_num, align 4
  %i.uw = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.uv, ptr noundef %0, i32 noundef %.15833, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %.16830 = add i32 %.15833, 1
  %i.ux = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.uy = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.ux, ptr noundef %0, i32 noundef %.16830, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.uy, ptr noundef nonnull @.str.331, i32 noundef 0)
  %.16 = add i32 %.15833, 2
  %i.uz = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.va = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.uz, ptr noundef %0, i32 noundef %.16, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.va, ptr noundef nonnull @.str.331, i32 noundef 1)
  %.16.1 = add i32 %.15833, 3
  %i.vb = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vc = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vb, ptr noundef %0, i32 noundef %.16.1, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vc, ptr noundef nonnull @.str.331, i32 noundef 2)
  %.16.2 = add i32 %.15833, 4
  %i.vd = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.ve = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vd, ptr noundef %0, i32 noundef %.16.2, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.ve, ptr noundef nonnull @.str.331, i32 noundef 3)
  %.16.3 = add i32 %.15833, 5
  %i.vf = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vg = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vf, ptr noundef %0, i32 noundef %.16.3, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vg, ptr noundef nonnull @.str.331, i32 noundef 4)
  %.16.4 = add i32 %.15833, 6
  %i.vh = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vi = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vh, ptr noundef %0, i32 noundef %.16.4, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vi, ptr noundef nonnull @.str.331, i32 noundef 5)
  %.16.5 = add i32 %.15833, 7
  %i.vj = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vk = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vj, ptr noundef %0, i32 noundef %.16.5, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vk, ptr noundef nonnull @.str.331, i32 noundef 6)
  %.16.6 = add i32 %.15833, 8
  %i.vl = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vm = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vl, ptr noundef %0, i32 noundef %.16.6, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vm, ptr noundef nonnull @.str.331, i32 noundef 7)
  %.16.7 = add i32 %.15833, 9
  %i.vn = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vo = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vn, ptr noundef %0, i32 noundef %.16.7, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vo, ptr noundef nonnull @.str.331, i32 noundef 8)
  %.16.8 = add i32 %.15833, 10
  %i.vp = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vq = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vp, ptr noundef %0, i32 noundef %.16.8, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vq, ptr noundef nonnull @.str.331, i32 noundef 9)
  %.16.9 = add i32 %.15833, 11
  %i.vr = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vs = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vr, ptr noundef %0, i32 noundef %.16.9, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vs, ptr noundef nonnull @.str.331, i32 noundef 10)
  %.16.10 = add i32 %.15833, 12
  %i.vt = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vu = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vt, ptr noundef %0, i32 noundef %.16.10, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vu, ptr noundef nonnull @.str.331, i32 noundef 11)
  %.16.11 = add i32 %.15833, 13
  %i.vv = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vw = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vv, ptr noundef %0, i32 noundef %.16.11, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vw, ptr noundef nonnull @.str.331, i32 noundef 12)
  %.16.12 = add i32 %.15833, 14
  %i.vx = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.vy = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vx, ptr noundef %0, i32 noundef %.16.12, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.vy, ptr noundef nonnull @.str.331, i32 noundef 13)
  %.16.13 = add i32 %.15833, 15
  %i.vz = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.wa = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.vz, ptr noundef %0, i32 noundef %.16.13, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.wa, ptr noundef nonnull @.str.331, i32 noundef 14)
  %.16.14 = add i32 %.15833, 16
  %i.wb = load i32, ptr @hf_lg8979_rtucfg_card_slot, align 4
  %i.wc = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.wb, ptr noundef %0, i32 noundef %.16.14, i32 noundef 1, i32 noundef -2147483648)
  call void (ptr, ptr, ...) @proto_item_prepend_text(ptr noundef %i.wc, ptr noundef nonnull @.str.331, i32 noundef 15)
  %.16.15 = add i32 %.15833, 17                   ; 2 uses
  %i.wd = add nuw nsw i32 %.12834, 1              ; 2 uses
  %i.we = load i8, ptr %i.b, align 1
  %i.wf = zext i8 %i.we to i32
  %i.wg = icmp samesign ult i32 %i.wd, %i.wf
  br i1 %i.wg, label %.lr.ph835, label %.loopexit, !llvm.loop !20

bb.ar:                                            ; preds = %.lr.ph983
  %i.wh = load i32, ptr @hf_lg8979_timebias_proctime, align 4
  %i.wi = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.wh, ptr noundef %0, i32 noundef %i.gw, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.wj = add i32 %.4770876982, 3
  br label %.loopexit

bb.as:                                            ; preds = %.lr.ph983
  %i.wk = load i32, ptr @hf_lg8979_firmware_ver, align 4
  %i.wl = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.wk, ptr noundef %0, i32 noundef %i.gw, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.wm = add i32 %.4770876982, 4
  br label %.loopexit

bb.at:                                            ; preds = %.lr.ph983
  %i.wn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gw)
  %i.wo = load i32, ptr @hf_lg8979_exprpt_code, align 4
  %i.wp = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.wo, ptr noundef %0, i32 noundef %i.gw, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.wq = load i32, ptr @hf_lg8979_exprpt_parm, align 4
  %i.wr = add i32 %.4770876982, 3                 ; 2 uses
  %i.ws = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.wq, ptr noundef %0, i32 noundef %i.wr, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.wt = icmp eq i8 %i.wn, 14
  br i1 %i.wt, label %bb.au, label %proto_item_set_generated.exit

bb.au:                                            ; preds = %bb.at
  %i.wu = load i32, ptr @hf_lg8979_disallowed_func, align 4
  %i.wv = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.wu, ptr noundef %0, i32 noundef %i.wr, i32 noundef 1, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.wv, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ww = getelementptr i8, ptr %i.wv, i64 40
  %i.wx = load ptr, ptr %i.ww, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.wx, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.wy = getelementptr i8, ptr %i.wx, i64 28     ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 4
  %i.xa = or i32 %i.wz, 2
  store i32 %i.xa, ptr %i.wy, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.xb = add i32 %.4770876982, 4
  br label %.loopexit

.loopexit.loopexit885.peel.begin:                 ; preds = %bb.af
  %i.xc = and i32 %.4869, 1
  %.not960 = icmp eq i32 %i.xc, 0
  br i1 %.not960, label %bb.ax, label %.loopexit.loopexit885.peel.begin.thread

bb.ax:                                            ; preds = %.loopexit.loopexit885.peel.begin
  %i.xd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.7773)
  %i.xe = lshr i8 %i.xd, 4
  %i.xf = zext nneg i8 %i.xe to i32
  %i.xg = add i32 %.7773, 1
  %i.xh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.xg)
  %i.xi = zext i8 %i.xh to i32
  %i.xj = shl nuw nsw i32 %i.xi, 4
  %i.xk = or disjoint i32 %i.xj, %i.xf
  %i.xl = load i32, ptr @hf_lg8979_ang_point, align 4
  %i.xm = zext i16 %i.jc to i32                   ; 2 uses
  %i.xn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.i, i32 noundef %i.xl, ptr noundef %0, i32 noundef %.7773, i32 noundef 2, i32 noundef %i.xm, ptr noundef nonnull @.str.320, i32 noundef %i.xm, i32 noundef %i.xk) ; 0 uses
  %i.xo = add i32 %.7773, 2
  br label %.loopexit

.loopexit.loopexit885.peel.begin.thread:          ; preds = %.lr.ph870, %.loopexit.loopexit885.peel.begin
  %i.xp = phi i32 [ %.7773, %.loopexit.loopexit885.peel.begin ], [ %i.hw, %.lr.ph870 ] ; 4 uses
  %i.xq = phi i16 [ %i.jc, %.loopexit.loopexit885.peel.begin ], [ %i.ht, %.lr.ph870 ]
  %i.xr = phi i32 [ %i.jd, %.loopexit.loopexit885.peel.begin ], [ 0, %.lr.ph870 ]
  %i.xs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.xp)
  %i.xt = zext i8 %i.xs to i32
  %i.xu = add i32 %i.xp, 1                        ; 2 uses
  %i.xv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.xu)
  %i.xw = and i8 %i.xv, 15
  %i.xx = zext nneg i8 %i.xw to i32
  %i.xy = shl nuw nsw i32 %i.xx, 8
  %i.xz = or disjoint i32 %i.xy, %i.xt
  %i.ya = load i32, ptr @hf_lg8979_ang_point, align 4
  %i.yb = zext i16 %i.xq to i32                   ; 2 uses
  %i.yc = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.i, i32 noundef %i.ya, ptr noundef %0, i32 noundef %i.xp, i32 noundef 2, i32 noundef %i.yb, ptr noundef nonnull @.str.320, i32 noundef %i.yb, i32 noundef %i.xz) ; 0 uses
  %i.yd = icmp eq i32 %i.xr, %i.id
  %i.ye = add i32 %i.xp, 2
  %spec.select.peel = select i1 %i.yd, i32 %i.ye, i32 %i.xu
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph835, %.lr.ph839, %.lr.ph843, %.lr.ph847, %.lr.ph852, %.lr.ph856, %.lr.ph861, %.lr.ph865, %.lr.ph874, %bb.ax, %.loopexit.loopexit885.peel.begin.thread, %bb.aq, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ab, %bb.z, %.lr.ph983, %proto_item_set_generated.exit, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.ag
  %.17 = phi i32 [ %i.gw, %.lr.ph983 ], [ %i.xb, %proto_item_set_generated.exit ], [ %i.tr, %.lr.ph839 ], [ %i.km, %bb.ag ], [ %i.hr, %.lr.ph874 ], [ %i.lg, %.lr.ph865 ], [ %i.na, %.lr.ph861 ], [ %spec.select.peel, %.loopexit.loopexit885.peel.begin.thread ], [ %i.nw, %.lr.ph856 ], [ %i.pq, %.lr.ph852 ], [ %i.rj, %.lr.ph847 ], [ %i.uk, %bb.ao ], [ %i.uq, %bb.ap ], [ %i.rt, %.lr.ph843 ], [ %i.wj, %bb.ar ], [ %i.wm, %bb.as ], [ %i.gw, %bb.z ], [ %i.hw, %bb.ab ], [ %i.gw, %bb.ah ], [ %i.ll, %bb.ai ], [ %i.gw, %bb.aj ], [ %i.ob, %bb.ak ], [ %i.pv, %bb.al ], [ %i.rn, %bb.am ], [ %i.gw, %bb.an ], [ %i.ut, %bb.aq ], [ %i.xo, %bb.ax ], [ %.16.15, %.lr.ph835 ] ; 3 uses
  %i.yf = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.17)
  %i.yg = icmp ugt i32 %i.yf, 2
  br i1 %i.yg, label %.lr.ph983, label %.critedge

.critedge785:                                     ; preds = %bb.y
  %i.yh = load ptr, ptr %i.c, align 8
  tail call void @col_append_sep_str(ptr noundef %i.yh, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.332)
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %.lr.ph877.preheader, %.critedge785
  %.4770818 = phi i32 [ 3, %.critedge785 ], [ 3, %.lr.ph877.preheader ], [ %.17, %.loopexit ]
  %i.yi = load i32, ptr @hf_lg8979_crc16, align 4
  %i.yj = call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.yi, ptr noundef %0, i32 noundef %.4770818, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %classify_lg8979_packet.exit

classify_lg8979_packet.exit:                      ; preds = %bb.f, %bb.b, %.critedge, %.loopexit814
  %i.yk = call i32 @tvb_reported_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %i.yk
}

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_fstr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_prepend_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_lg8979_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21}
!10 = distinct !{!10, !21}
!11 = distinct !{!11, !21}
!12 = distinct !{!12, !21, !22}
!13 = distinct !{!13, !21}
!14 = distinct !{!14, !21}
!15 = distinct !{!15, !21}
!16 = distinct !{!16, !21}
!17 = distinct !{!17, !21}
!18 = distinct !{!18, !21}
!19 = distinct !{!19, !21}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
