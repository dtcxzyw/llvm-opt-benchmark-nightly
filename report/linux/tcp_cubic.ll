Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp_cubic?download=true
inline.NumInlined: 47
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop", target_cpu: "x86-64")
    ".section\09\22.initcall6.init\22, \22a\22\09\09"
    "__initcall__kmod_tcp_cubic__1203_546_cubictcp_register6:\09\09\09"
    ".long\09cubictcp_register - .\09"
    ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [32 x i8] }
%struct.list_head = type { ptr, ptr }

@__param_str_fast_convergence = internal constant [27 x i8] c"tcp_cubic.fast_convergence\00", align 16
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@fast_convergence = internal global i32 1, section ".data..read_mostly", align 4
@__param_fast_convergence = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_fast_convergence, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @fast_convergence } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1167 = internal constant [40 x i8] c"tcp_cubic.parmtype=fast_convergence:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1168 = internal constant [61 x i8] c"tcp_cubic.parm=fast_convergence:turn on/off fast convergence\00", section ".modinfo", align 1
@__param_str_beta = internal constant [15 x i8] c"tcp_cubic.beta\00", align 1
@beta = internal global i32 717, section ".data..read_mostly", align 4
@__param_beta = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_beta, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @beta } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1169 = internal constant [28 x i8] c"tcp_cubic.parmtype=beta:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1170 = internal constant [53 x i8] c"tcp_cubic.parm=beta:beta for multiplicative increase\00", section ".modinfo", align 1
@__param_str_initial_ssthresh = internal constant [27 x i8] c"tcp_cubic.initial_ssthresh\00", align 16
@initial_ssthresh = internal global i32 0, section ".data..read_mostly", align 4
@__param_initial_ssthresh = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_initial_ssthresh, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @initial_ssthresh } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1171 = internal constant [40 x i8] c"tcp_cubic.parmtype=initial_ssthresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1172 = internal constant [70 x i8] c"tcp_cubic.parm=initial_ssthresh:initial value of slow start threshold\00", section ".modinfo", align 1
@__param_str_bic_scale = internal constant [20 x i8] c"tcp_cubic.bic_scale\00", align 16
@bic_scale = internal global i32 41, section ".data..read_mostly", align 4
@__param_bic_scale = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_bic_scale, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @bic_scale } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1173 = internal constant [33 x i8] c"tcp_cubic.parmtype=bic_scale:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1174 = internal constant [88 x i8] c"tcp_cubic.parm=bic_scale:scale (scaled by 1024) value for bic function (bic_scale/1024)\00", section ".modinfo", align 1
@__param_str_tcp_friendliness = internal constant [27 x i8] c"tcp_cubic.tcp_friendliness\00", align 16
@tcp_friendliness = internal global i32 1, section ".data..read_mostly", align 4
@__param_tcp_friendliness = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_tcp_friendliness, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @tcp_friendliness } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1175 = internal constant [40 x i8] c"tcp_cubic.parmtype=tcp_friendliness:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1176 = internal constant [61 x i8] c"tcp_cubic.parm=tcp_friendliness:turn on/off tcp friendliness\00", section ".modinfo", align 1
@__param_str_hystart = internal constant [18 x i8] c"tcp_cubic.hystart\00", align 16
@hystart = internal global i32 1, section ".data..read_mostly", align 4
@__param_hystart = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_hystart, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @hystart } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1177 = internal constant [31 x i8] c"tcp_cubic.parmtype=hystart:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1178 = internal constant [63 x i8] c"tcp_cubic.parm=hystart:turn on/off hybrid slow start algorithm\00", section ".modinfo", align 1
@__param_str_hystart_detect = internal constant [25 x i8] c"tcp_cubic.hystart_detect\00", align 16
@hystart_detect = internal global i32 3, section ".data..read_mostly", align 4
@__param_hystart_detect = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_hystart_detect, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @hystart_detect } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1179 = internal constant [38 x i8] c"tcp_cubic.parmtype=hystart_detect:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1180 = internal constant [125 x i8] c"tcp_cubic.parm=hystart_detect:hybrid slow start detection mechanisms 1: packet-train 2: delay 3: both packet-train and delay\00", section ".modinfo", align 1
@__param_str_hystart_low_window = internal constant [29 x i8] c"tcp_cubic.hystart_low_window\00", align 16
@hystart_low_window = internal global i32 16, section ".data..read_mostly", align 4
@__param_hystart_low_window = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_hystart_low_window, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @hystart_low_window } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1181 = internal constant [42 x i8] c"tcp_cubic.parmtype=hystart_low_window:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1182 = internal constant [73 x i8] c"tcp_cubic.parm=hystart_low_window:lower bound cwnd for hybrid slow start\00", section ".modinfo", align 1
@__param_str_hystart_ack_delta_us = internal constant [31 x i8] c"tcp_cubic.hystart_ack_delta_us\00", align 16
@hystart_ack_delta_us = internal global i32 2000, section ".data..read_mostly", align 4
@__param_hystart_ack_delta_us = internal constant { ptr, ptr, ptr, i16, i8, i8, [4 x i8], %union.anon } { ptr @__param_str_hystart_ack_delta_us, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, [4 x i8] zeroinitializer, %union.anon { ptr @hystart_ack_delta_us } }, section "__param", align 8
@__UNIQUE_ID_modinfo_1183 = internal constant [44 x i8] c"tcp_cubic.parmtype=hystart_ack_delta_us:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1184 = internal constant [83 x i8] c"tcp_cubic.parm=hystart_ack_delta_us:spacing between ack's indicating train (usecs)\00", section ".modinfo", align 1
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@cubictcp = internal global %struct.tcp_congestion_ops { ptr @cubictcp_cong_avoid, ptr null, ptr @cubictcp_recalc_ssthresh, ptr @cubictcp_state, ptr null, ptr @cubictcp_cwnd_event_tx_start, ptr null, ptr @cubictcp_acked, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"cubic\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @cubictcp_init, ptr null, [32 x i8] zeroinitializer }, section ".data..read_mostly", align 64
@__UNIQUE_ID_addressable_cubictcp_register_1204 = internal global ptr @cubictcp_register, section ".discard.addressable", align 8
@__UNIQUE_ID_modinfo_1205 = internal constant [47 x i8] c"tcp_cubic.author=Sangtae Ha, Stephen Hemminger\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1206 = internal constant [34 x i8] c"tcp_cubic.file=net/ipv4/tcp_cubic\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1207 = internal constant [22 x i8] c"tcp_cubic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1208 = internal constant [32 x i8] c"tcp_cubic.description=CUBIC TCP\00", section ".modinfo", align 1
@__UNIQUE_ID_modinfo_1209 = internal constant [22 x i8] c"tcp_cubic.version=2.3\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tcp_cubic\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@__modver_attr = internal constant { { { ptr, i16, [6 x i8] }, ptr, ptr, ptr, ptr, ptr }, ptr, ptr } { { { ptr, i16, [6 x i8] }, ptr, ptr, ptr, ptr, ptr } { { ptr, i16, [6 x i8] } { ptr @.str, i16 292, [6 x i8] zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 8
@cube_factor = internal unnamed_addr global i64 0, section ".data..read_mostly", align 8
@cube_rtt_scale = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@beta_scale = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@cubic_root.v = internal unnamed_addr constant [64 x i8] c"\00666vvvv{\81\86\8A\8F\93\97\9C\9D\A1\A4\A8\AA\AD\B0\B3\B5\B9\BB\BE\C0\C2\C5\C7\C8\CA\CC\CE\D1\D3\D5\D7\D9\DB\DD\DE\E0\E1\E3\E5\E7\E8\EA\EC\ED\EF\F0\F2\F4\F5\F6\F8\FA\FB\FC\FE", align 16
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_addressable_cubictcp_register_1204, ptr @__UNIQUE_ID_modinfo_1167, ptr @__UNIQUE_ID_modinfo_1168, ptr @__UNIQUE_ID_modinfo_1169, ptr @__UNIQUE_ID_modinfo_1170, ptr @__UNIQUE_ID_modinfo_1171, ptr @__UNIQUE_ID_modinfo_1172, ptr @__UNIQUE_ID_modinfo_1173, ptr @__UNIQUE_ID_modinfo_1174, ptr @__UNIQUE_ID_modinfo_1175, ptr @__UNIQUE_ID_modinfo_1176, ptr @__UNIQUE_ID_modinfo_1177, ptr @__UNIQUE_ID_modinfo_1178, ptr @__UNIQUE_ID_modinfo_1179, ptr @__UNIQUE_ID_modinfo_1180, ptr @__UNIQUE_ID_modinfo_1181, ptr @__UNIQUE_ID_modinfo_1182, ptr @__UNIQUE_ID_modinfo_1183, ptr @__UNIQUE_ID_modinfo_1184, ptr @__UNIQUE_ID_modinfo_1205, ptr @__UNIQUE_ID_modinfo_1206, ptr @__UNIQUE_ID_modinfo_1207, ptr @__UNIQUE_ID_modinfo_1208, ptr @__UNIQUE_ID_modinfo_1209, ptr @__modver_attr, ptr @__param_beta, ptr @__param_bic_scale, ptr @__param_fast_convergence, ptr @__param_hystart, ptr @__param_hystart_ack_delta_us, ptr @__param_hystart_detect, ptr @__param_hystart_low_window, ptr @__param_initial_ssthresh, ptr @__param_tcp_friendliness, ptr @cubictcp_acked, ptr @cubictcp_cong_avoid, ptr @cubictcp_cwnd_event_tx_start, ptr @cubictcp_init, ptr @cubictcp_recalc_ssthresh, ptr @cubictcp_state, ptr @cubictcp_unregister], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none)
define internal void @cubictcp_init(ptr nofree noundef captures(address) initializes((1304, 1344), (1347, 1348)) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1304
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = getelementptr i8, ptr %0, i64 1347
  store i8 0, ptr %i.b, align 1
  %i.c = load i32, ptr @hystart, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1696
  %.val.i = load i64, ptr %i.d, align 32
  %i.e = trunc i64 %.val.i to i32                 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 1356
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 1348
  store i32 %i.e, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 1708
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 1352
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 1360
  store i32 -1, ptr %i.k, align 16
  %i.l = getelementptr i8, ptr %0, i64 1346
  store i8 0, ptr %i.l, align 2
  %.pre = load i32, ptr @hystart, align 4
  %i.m = icmp eq i32 %.pre, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i1 [ %i.m, %bb.b ], [ true, %bb.a ]
  %i.o = load i32, ptr @initial_ssthresh, align 4 ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %0, i64 1500
  store volatile i32 %i.o, ptr %i.q, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal void @cubictcp_cwnd_event_tx_start(ptr nofree noundef captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr @jiffies, align 64
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 1612
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 1332       ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp sgt i32 %i.e, 0
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add i32 %i.g, %i.e                       ; 2 uses
  %i.k = sub i32 %i.b, %i.j
  %i.l = icmp slt i32 %i.k, 0
  %spec.store.select = select i1 %i.l, i32 %i.b, i32 %i.j
  store i32 %spec.store.select, ptr %i.f, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cubictcp_cong_avoid(ptr noundef %0, i32 %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1304       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 1471
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, 8
  %.not.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr i8, ptr %0, i64 1452
  %.val8.i = load i32, ptr %i.e, align 4          ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 1500
  %.val9.i = load i32, ptr %i.f, align 4
  %i.g = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  br i1 %.not.i, label %bb.b, label %tcp_is_cwnd_limited.exit.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %tcp_is_cwnd_limited.exit, label %tcp_is_cwnd_limited.exit.thread20

tcp_is_cwnd_limited.exit:                         ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 1624
  %i.i = load i32, ptr %i.h, align 8
  %i.j = shl i32 %i.i, 1
  %i.k = icmp ult i32 %.val8.i, %i.j
  br i1 %i.k, label %tcp_is_cwnd_limited.exit.thread.thread, label %tcp_is_cwnd_limited.exit.thread20

tcp_is_cwnd_limited.exit.thread:                  ; preds = %bb.a
  br i1 %i.g, label %tcp_is_cwnd_limited.exit.thread.thread, label %bb.c

tcp_is_cwnd_limited.exit.thread.thread:           ; preds = %tcp_is_cwnd_limited.exit, %tcp_is_cwnd_limited.exit.thread
  %i.l = tail call i32 @tcp_slow_start(ptr noundef %0, i32 noundef %2) #10 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %tcp_is_cwnd_limited.exit.thread20, label %._crit_edge

._crit_edge:                                      ; preds = %tcp_is_cwnd_limited.exit.thread.thread
  %i.m = getelementptr i8, ptr %0, i64 1452
  %.val.pre = load i32, ptr %i.m, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %tcp_is_cwnd_limited.exit.thread
  %.val = phi i32 [ %.val.pre, %._crit_edge ], [ %.val8.i, %tcp_is_cwnd_limited.exit.thread ] ; 15 uses
  %.0 = phi i32 [ %i.l, %._crit_edge ], [ %2, %tcp_is_cwnd_limited.exit.thread ] ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 1336       ; 5 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, %.0
  store i32 %i.p, ptr %i.n, align 4
  %i.q = getelementptr i8, ptr %0, i64 1312       ; 3 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, %.val
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load volatile i64, ptr @jiffies, align 64
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr i8, ptr %0, i64 1316
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sub i32 %i.u, %i.w
  %i.y = icmp slt i32 %i.x, 32
  br i1 %i.y, label %.bictcp_update.exit_crit_edge, label %bb.e

.bictcp_update.exit_crit_edge:                    ; preds = %bb.d
  %.pre = load i32, ptr %i.a, align 4
  br label %bictcp_update.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr i8, ptr %0, i64 1332       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not.i17 = icmp eq i32 %i.aa, 0
  br i1 %.not.i17, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load volatile i64, ptr @jiffies, align 64
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr i8, ptr %0, i64 1316      ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, %i.ac
  br i1 %i.af, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.val, ptr %i.q, align 4
  %i.ag = load volatile i64, ptr @jiffies, align 64
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ad, align 4
  br label %usecs_to_jiffies.exit.i

bb.h:                                             ; preds = %bb.e
  store i32 %.val, ptr %i.q, align 4
  %i.ai = load volatile i64, ptr @jiffies, align 64
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr i8, ptr %0, i64 1316
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = load volatile i64, ptr @jiffies, align 64
  %i.am = trunc i64 %i.al to i32                  ; 3 uses
  store i32 %i.am, ptr %i.z, align 4
  store i32 %.0, ptr %i.n, align 4
  %i.an = getelementptr i8, ptr %0, i64 1340
  store i32 %.val, ptr %i.an, align 4
  %i.ao = getelementptr i8, ptr %0, i64 1308
  %i.ap = load i32, ptr %i.ao, align 4            ; 3 uses
  %.not95.i = icmp ugt i32 %i.ap, %.val
  br i1 %.not95.i, label %fls64.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr i8, ptr %0, i64 1324
  store i32 0, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %0, i64 1320
  store i32 %.val, ptr %i.ar, align 4
  br label %usecs_to_jiffies.exit.i

fls64.exit.i.i:                                   ; preds = %bb.h
  %i.as = load i64, ptr @cube_factor, align 8
  %i.at = sub nuw i32 %i.ap, %.val
  %i.au = zext i32 %i.at to i64
  %i.av = mul i64 %i.as, %i.au                    ; 4 uses
  %i.aw = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.av, i32 -1) #11, !srcloc !11
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 7
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %fls64.exit.i.i
  %i.az = and i64 %i.av, 4294967295
  %i.ba = getelementptr i8, ptr @cubic_root.v, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, 35
  %i.be = lshr i32 %i.bd, 6
  br label %cubic_root.exit.i

bb.k:                                             ; preds = %fls64.exit.i.i
  %i.bf = mul i32 %i.ax, 84
  %i.bg = lshr i32 %i.bf, 8
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  %i.bi = mul nsw i32 %i.bh, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = lshr i64 %i.av, %i.bj
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = getelementptr i8, ptr @cubic_root.v, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, 10
  %i.bq = shl i32 %i.bp, %i.bh
  %i.br = lshr i32 %i.bq, 6                       ; 3 uses
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = add nsw i32 %i.br, -1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw nsw i64 %i.bv, %i.bt
  %i.bx = udiv i64 %i.av, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add i32 %i.bs, %i.by
  %i.ca = mul i32 %i.bz, 341
  %i.cb = lshr i32 %i.ca, 10
  br label %cubic_root.exit.i

cubic_root.exit.i:                                ; preds = %bb.k, %bb.j
  %.0.i97.i = phi i32 [ %i.be, %bb.j ], [ %i.cb, %bb.k ]
  %i.cc = getelementptr i8, ptr %0, i64 1324
  store i32 %.0.i97.i, ptr %i.cc, align 4
  %i.cd = getelementptr i8, ptr %0, i64 1320
  store i32 %i.ap, ptr %i.cd, align 4
  br label %usecs_to_jiffies.exit.i

usecs_to_jiffies.exit.i:                          ; preds = %cubic_root.exit.i, %bb.i, %bb.g
  %i.ce = phi i32 [ %i.aa, %bb.g ], [ %i.am, %bb.i ], [ %i.am, %cubic_root.exit.i ]
  %i.cf = load volatile i64, ptr @jiffies, align 64
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = sub i32 %i.cg, %i.ce
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr %0, i64 1328
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = tail call i64 @__usecs_to_jiffies(i32 noundef %i.ck) #10
  %i.cm = add i64 %i.cl, %i.ci
  %i.cn = shl i64 %i.cm, 10
  %i.co = udiv i64 %i.cn, 1000                    ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 1324
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp samesign ult i64 %i.co, %i.cr
  %i.ct = sub nsw i64 %i.co, %i.cr
  %.084.i = tail call i64 @llvm.abs.i64(i64 %i.ct, i1 true) ; 3 uses
  %i.cu = load i32, ptr @cube_rtt_scale, align 4
  %i.cv = zext i32 %i.cu to i64
  %i.cw = mul i64 %.084.i, %i.cv
  %i.cx = mul i64 %i.cw, %.084.i
  %i.cy = mul i64 %i.cx, %.084.i
  %i.cz = lshr i64 %i.cy, 40
  %i.da = trunc nuw nsw i64 %i.cz to i32          ; 2 uses
  %i.db = getelementptr i8, ptr %0, i64 1320
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = sub nsw i32 0, %i.da
  %.0.p.i = select i1 %i.cs, i32 %i.dd, i32 %i.da
  %.0.i18 = add i32 %.0.p.i, %i.dc                ; 2 uses
  %i.de = icmp ugt i32 %.0.i18, %.val
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %usecs_to_jiffies.exit.i
  %i.df = sub nuw i32 %.0.i18, %.val
  %i.dg = udiv i32 %.val, %i.df
  br label %bb.n

bb.m:                                             ; preds = %usecs_to_jiffies.exit.i
  %i.dh = mul i32 %.val, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.i = phi i32 [ %i.dh, %bb.m ], [ %i.dg, %bb.l ] ; 2 uses
  %i.di = getelementptr i8, ptr %0, i64 1308
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = tail call i32 @llvm.umin.i32(i32 %storemerge.i, i32 20)
  %spec.store.select.i = select i1 %i.dk, i32 %i.dl, i32 %storemerge.i
  store i32 %spec.store.select.i, ptr %i.a, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %i.dm = load i32, ptr @tcp_friendliness, align 4
  %.not96.i = icmp eq i32 %i.dm, 0
  br i1 %.not96.i, label %._crit_edge102.i, label %bb.p

._crit_edge102.i:                                 ; preds = %bb.o
  %.pre103.i = load i32, ptr %i.a, align 4
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dn = load i32, ptr @beta_scale, align 4
  %i.do = mul i32 %i.dn, %.val
  %i.dp = lshr i32 %i.do, 3                       ; 3 uses
  %.promoted.i = load i32, ptr %i.n, align 4      ; 2 uses
  %i.dq = icmp ugt i32 %.promoted.i, %i.dp
  %i.dr = getelementptr i8, ptr %0, i64 1340      ; 2 uses
  %.promoted98.i = load i32, ptr %i.dr, align 4   ; 2 uses
  br i1 %i.dq, label %.lr.ph.i, label %._crit_edge101.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %i.ds = phi i32 [ %i.dv, %.lr.ph.i ], [ %.promoted98.i, %bb.p ]
  %i.dt = phi i32 [ %i.du, %.lr.ph.i ], [ %.promoted.i, %bb.p ]
  %i.du = sub nuw i32 %i.dt, %i.dp                ; 3 uses
  %i.dv = add i32 %i.ds, 1                        ; 3 uses
  %i.dw = icmp ugt i32 %i.du, %i.dp
  br i1 %i.dw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %i.du, ptr %i.n, align 4
  store i32 %i.dv, ptr %i.dr, align 4
  br label %._crit_edge101.i

._crit_edge101.i:                                 ; preds = %._crit_edge.i, %bb.p
  %i.dx = phi i32 [ %i.dv, %._crit_edge.i ], [ %.promoted98.i, %bb.p ] ; 2 uses
  %i.dy = icmp ugt i32 %i.dx, %.val
  %.pre104.i = load i32, ptr %i.a, align 4        ; 2 uses
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge101.i
  %i.dz = sub nuw i32 %i.dx, %.val
  %i.ea = udiv i32 %.val, %i.dz
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre104.i, i32 %i.ea)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge101.i, %._crit_edge102.i
  %i.eb = phi i32 [ %.pre103.i, %._crit_edge102.i ], [ %.pre104.i, %._crit_edge101.i ], [ %spec.select.i, %bb.q ]
  %i.ec = tail call i32 @llvm.umax.i32(i32 %i.eb, i32 2) ; 2 uses
  store i32 %i.ec, ptr %i.a, align 4
  br label %bictcp_update.exit

bictcp_update.exit:                               ; preds = %.bictcp_update.exit_crit_edge, %bb.r
  %i.ed = phi i32 [ %.pre, %.bictcp_update.exit_crit_edge ], [ %i.ec, %bb.r ]
  tail call void @tcp_cong_avoid_ai(ptr noundef %0, i32 noundef %i.ed, i32 noundef %.0) #10
  br label %tcp_is_cwnd_limited.exit.thread20

tcp_is_cwnd_limited.exit.thread20:                ; preds = %bb.b, %tcp_is_cwnd_limited.exit.thread.thread, %tcp_is_cwnd_limited.exit, %bictcp_update.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_cong_avoid_ai(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal range(i32 2, 4194304) i32 @cubictcp_recalc_ssthresh(ptr nofree noundef captures(none) initializes((1332, 1336)) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1332
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr i8, ptr %0, i64 1452
  %.val19 = load i32, ptr %i.b, align 4           ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 1308       ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp ult i32 %.val19, %i.d
  %i.f = load i32, ptr @fast_convergence, align 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  %i.h = load i32, ptr @beta, align 4
  %i.i = add i32 %i.h, 1024
  %i.j = mul i32 %i.i, %.val19
  %i.k = lshr i32 %i.j, 11
  %storemerge = select i1 %or.cond, i32 %i.k, i32 %.val19
  store i32 %storemerge, ptr %i.c, align 4
  %i.l = load i32, ptr @beta, align 4
  %i.m = mul i32 %i.l, %.val19
  %i.n = lshr i32 %i.m, 10
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.n, i32 2)
  ret i32 %i.o
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @cubictcp_state(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i8 %1, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 1304
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = getelementptr i8, ptr %0, i64 1347
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %0, i64 1696
  %.val.i = load i64, ptr %i.d, align 32
  %i.e = trunc i64 %.val.i to i32                 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 1356
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 1348
  store i32 %i.e, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 1708
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 1352
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 1360
  store i32 -1, ptr %i.k, align 16
  %i.l = getelementptr i8, ptr %0, i64 1346
  store i8 0, ptr %i.l, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cubictcp_acked(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %hystart_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1332
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load volatile i64, ptr @jiffies, align 64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, %i.e
  %i.i = icmp slt i32 %i.h, 1000
  br i1 %i.i, label %hystart_update.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 1328       ; 3 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = add i32 %i.k, -1
  %or.cond19.not = icmp ult i32 %i.l, %spec.store.select
  br i1 %or.cond19.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %spec.store.select, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = phi i32 [ %i.k, %bb.d ], [ %spec.store.select, %bb.e ]
  %i.n = getelementptr i8, ptr %0, i64 1347       ; 3 uses
  %i.o = load i8, ptr %i.n, align 1
  %.not18 = icmp eq i8 %i.o, 0
  br i1 %.not18, label %bb.g, label %hystart_update.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %0, i64 1452       ; 5 uses
  %.val = load i32, ptr %i.p, align 4             ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 1500       ; 3 uses
  %.val20 = load i32, ptr %i.q, align 4
  %i.r = icmp ult i32 %.val, %.val20
  %i.s = load i32, ptr @hystart, align 4
  %i.t = icmp ne i32 %i.s, 0
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.h, label %hystart_update.exit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 1352       ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr i8, ptr %0, i64 1712
  %i.x = load i32, ptr %i.w, align 16
  %i.y = sub i32 %i.v, %i.x
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %0, i64 1696
  %.val.i.i = load i64, ptr %i.aa, align 32
  %i.ab = trunc i64 %.val.i.i to i32              ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 1356
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %0, i64 1348
  store i32 %i.ab, ptr %i.ad, align 4
  %i.ae = getelementptr i8, ptr %0, i64 1708
  %i.af = load i32, ptr %i.ae, align 4
  store i32 %i.af, ptr %i.u, align 8
  %i.ag = getelementptr i8, ptr %0, i64 1360
  store i32 -1, ptr %i.ag, align 16
  %i.ah = getelementptr i8, ptr %0, i64 1346
  store i8 0, ptr %i.ah, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = load i32, ptr @hystart_low_window, align 4
  %i.aj = icmp ult i32 %.val, %i.ai
  br i1 %i.aj, label %hystart_update.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i32, ptr @hystart_detect, align 4
  %i.al = and i32 %i.ak, 1
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %0, i64 1696
  %.val.i = load i64, ptr %i.am, align 32
  %i.an = trunc i64 %.val.i to i32                ; 3 uses
  %i.ao = getelementptr i8, ptr %0, i64 1356      ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sub i32 %i.an, %i.ap
  %i.ar = load i32, ptr @hystart_ack_delta_us, align 4
  %.not56.i = icmp sgt i32 %i.aq, %i.ar
  br i1 %.not56.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.an, ptr %i.ao, align 4
  %i.as = getelementptr i8, ptr %0, i64 472
  %i.at = load volatile i64, ptr %i.as, align 8   ; 2 uses
  %.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i, label %hystart_ack_delay.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr i8, ptr %0, i64 556
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 4000000
  %i.ay = udiv i64 %i.ax, %i.at
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1000)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  br label %hystart_ack_delay.exit.i

hystart_ack_delay.exit.i:                         ; preds = %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ba, %bb.n ], [ 0, %bb.m ]
  %i.bb = add nuw i32 %.0.i.i, %i.m
  %i.bc = getelementptr i8, ptr %0, i64 500
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %spec.select.i = lshr i32 %i.bb, %i.bf
  %i.bg = getelementptr i8, ptr %0, i64 1348
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = sub i32 %i.an, %i.bh
  %i.bj = icmp ugt i32 %i.bi, %spec.select.i
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %hystart_ack_delay.exit.i
  store i8 1, ptr %i.n, align 1
  %i.bk = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val66.i = load ptr, ptr %i.bk, align 16
  %i.bl = getelementptr i8, ptr %.val66.i, i64 744
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 824    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bn, ptr elementtype(i64) %i.bn) #12, !srcloc !13
  %.val61.i = load i32, ptr %i.p, align 4
  %i.bo = zext i32 %.val61.i to i64
  %.val65.i = load ptr, ptr %i.bk, align 16
  %i.bp = getelementptr i8, ptr %.val65.i, i64 744
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 832    ; 2 uses
  tail call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.br, i64 %i.bo, ptr elementtype(i64) %i.br) #12, !srcloc !14
  %.val60.i = load i32, ptr %i.p, align 4
  store volatile i32 %.val60.i, ptr %i.q, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %hystart_ack_delay.exit.i, %bb.l, %bb.k
  %i.bs = load i32, ptr @hystart_detect, align 4
  %i.bt = and i32 %i.bs, 2
  %.not57.i = icmp eq i32 %i.bt, 0
  br i1 %.not57.i, label %hystart_update.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr i8, ptr %0, i64 1360      ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 16           ; 2 uses
  %i.bw = icmp ugt i32 %i.bv, %spec.store.select
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %spec.store.select, ptr %i.bu, align 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = phi i32 [ %spec.store.select, %bb.r ], [ %i.bv, %bb.q ]
  %i.by = getelementptr i8, ptr %0, i64 1346      ; 2 uses
  %i.bz = load i8, ptr %i.by, align 2             ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 8
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = add nuw nsw i8 %i.bz, 1
  store i8 %i.cb, ptr %i.by, align 2
  br label %hystart_update.exit

bb.u:                                             ; preds = %bb.s
  %i.cc = load i32, ptr %i.j, align 16            ; 3 uses
  %i.cd = icmp ugt i32 %i.cc, 127999
  %i.ce = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 32007)
  %i.cf = lshr i32 %i.ce, 3
  %i.cg = select i1 %i.cd, i32 16000, i32 %i.cf
  %i.ch = add i32 %i.cg, %i.cc
  %i.ci = icmp ugt i32 %i.bx, %i.ch
  br i1 %i.ci, label %bb.v, label %hystart_update.exit

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.n, align 1
  %i.cj = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val64.i = load ptr, ptr %i.cj, align 16
  %i.ck = getelementptr i8, ptr %.val64.i, i64 744
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 840    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cm, ptr elementtype(i64) %i.cm) #12, !srcloc !15
  %.val59.i = load i32, ptr %i.p, align 4
  %i.cn = zext i32 %.val59.i to i64
  %.val63.i = load ptr, ptr %i.cj, align 16
  %i.co = getelementptr i8, ptr %.val63.i, i64 744
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 848    ; 2 uses
  tail call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cq, i64 %i.cn, ptr elementtype(i64) %i.cq) #12, !srcloc !16
  %.val58.i = load i32, ptr %i.p, align 4
  store volatile i32 %.val58.i, ptr %i.q, align 4
  br label %hystart_update.exit

hystart_update.exit:                              ; preds = %bb.v, %bb.u, %bb.t, %bb.p, %bb.j, %bb.f, %bb.g, %bb.c, %bb.a
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cubictcp_unregister() #6 section ".exit.text" align 16 prefalign(16) {
bb.a:
  tail call void @tcp_unregister_congestion_control(ptr noundef @cubictcp) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @cubictcp_register() #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @beta, align 4             ; 2 uses
  %i.b = shl i32 %i.a, 3
  %i.c = add i32 %i.b, 8192
  %i.d = sdiv i32 %i.c, 3
  %i.e = sub i32 1024, %i.a
  %i.f = sdiv i32 %i.d, %i.e
  store i32 %i.f, ptr @beta_scale, align 4
  %i.g = load i32, ptr @bic_scale, align 4
  %i.h = mul i32 %i.g, 10                         ; 2 uses
  store i32 %i.h, ptr @cube_rtt_scale, align 4
  %i.i = zext i32 %i.h to i64
  %i.j = udiv i64 1099511627776, %i.i
  store i64 %i.j, ptr @cube_factor, align 8
  %i.k = tail call i32 @tcp_register_congestion_control(ptr noundef @cubictcp) #10
  ret i32 %i.k
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { fn_ret_thunk_extern nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree noinline norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !12}
!11 = !{i64 1853162}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2163360302}
!14 = !{i64 2163381365}
!15 = !{i64 2163408982}
!16 = !{i64 2163430045}
end_hunk_0
