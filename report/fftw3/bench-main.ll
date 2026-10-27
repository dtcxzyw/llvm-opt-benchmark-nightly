Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/bench-main?download=true
inline.NumInlined: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.my_option = type { ptr, i32, i32 }

@report = external local_unnamed_addr global ptr, align 8
@verbose = dso_local local_unnamed_addr global i32 0, align 4
@options = internal constant [24 x %struct.my_option] [%struct.my_option { ptr @.str.2, i32 0, i32 97 }, %struct.my_option { ptr @.str.3, i32 0, i32 405 }, %struct.my_option { ptr @.str.4, i32 0, i32 406 }, %struct.my_option { ptr @.str.5, i32 0, i32 100 }, %struct.my_option { ptr @.str.6, i32 2, i32 104 }, %struct.my_option { ptr @.str.7, i32 0, i32 105 }, %struct.my_option { ptr @.str.8, i32 2, i32 73 }, %struct.my_option { ptr @.str.9, i32 2, i32 402 }, %struct.my_option { ptr @.str.10, i32 2, i32 400 }, %struct.my_option { ptr @.str.11, i32 0, i32 404 }, %struct.my_option { ptr @.str.12, i32 2, i32 320 }, %struct.my_option { ptr @.str.13, i32 2, i32 300 }, %struct.my_option { ptr @.str.14, i32 2, i32 310 }, %struct.my_option { ptr @.str.15, i32 2, i32 330 }, %struct.my_option { ptr @.str.16, i32 0, i32 115 }, %struct.my_option { ptr @.str.17, i32 0, i32 83 }, %struct.my_option { ptr @.str.18, i32 0, i32 116 }, %struct.my_option { ptr @.str.19, i32 0, i32 114 }, %struct.my_option { ptr @.str.20, i32 0, i32 111 }, %struct.my_option { ptr @.str.21, i32 1, i32 118 }, %struct.my_option { ptr @.str.22, i32 0, i32 121 }, %struct.my_option { ptr @.str.23, i32 0, i32 401 }, %struct.my_option { ptr @.str.24, i32 0, i32 403 }, %struct.my_option { ptr null, i32 2, i32 0 }], align 16
@my_optarg = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@time_min = external local_unnamed_addr global double, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"double\0A\00", align 1
@my_optind = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"accuracy-rounds\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"impulse-accuracy-rounds\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"can-do\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"info-all\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"print-precision\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"print-time-min\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"random-seed\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"report-benchmark\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"report-mflops\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"report-time\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"report-verbose\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"setup-speed\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"time-min\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"time-repeat\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"user-option\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"verify-rounds\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"verify-tolerance\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @bench_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !12
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  store ptr @report_verbose, ptr @report, align 8, !tbaa !17
  store i32 0, ptr @verbose, align 4, !tbaa !12
  call void @main_init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  call void @bench_srand(i32 noundef 1) #4
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi double [ 0.000000e+00, %bb.a ], [ %.021.be, %.backedge ] ; 29 uses
  %.019 = phi double [ 1.000000e-10, %bb.a ], [ %.019.be, %.backedge ] ; 26 uses
  %.017 = phi i32 [ 0, %bb.a ], [ %.017.be, %.backedge ] ; 29 uses
  %.015 = phi i32 [ 10, %bb.a ], [ %.015.be, %.backedge ] ; 26 uses
  %.013 = phi i32 [ 0, %bb.a ], [ %.013.be, %.backedge ] ; 26 uses
  %.0 = phi i32 [ 1, %bb.a ], [ %.0.be, %.backedge ] ; 26 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !12
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.e = call i32 @my_getopt(i32 noundef %i.c, ptr noundef %i.d, ptr noundef nonnull @options) #4
  switch i32 %i.e, label %bb.ad [
    i32 -1, label %.preheader
    i32 116, label %bb.c
    i32 114, label %bb.d
    i32 115, label %bb.e
    i32 83, label %bb.f
    i32 100, label %bb.g
    i32 111, label %bb.h
    i32 118, label %bb.i
    i32 121, label %bb.m
    i32 97, label %bb.n
    i32 105, label %bb.o
    i32 73, label %bb.p
    i32 104, label %bb.q
    i32 300, label %bb.s
    i32 310, label %bb.t
    i32 320, label %bb.u
    i32 330, label %bb.v
    i32 400, label %bb.w
    i32 401, label %bb.x
    i32 402, label %bb.y
    i32 403, label %bb.z
    i32 404, label %bb.aa
    i32 405, label %bb.ab
    i32 406, label %bb.ac
    i32 63, label %._crit_edge
  ]

.preheader:                                       ; preds = %bb.b
  %i.f = load i32, ptr @my_optind, align 4, !tbaa !12
  %i.g = load i32, ptr %i.a, align 4, !tbaa !12
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @my_optarg, align 8, !tbaa !19
  %i.j = call double @strtod(ptr noundef captures(none) %i.i, ptr noundef null) #4
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @my_optarg, align 8, !tbaa !19
  %i.l = call i64 @strtol(ptr noundef nonnull captures(none) %i.k, ptr noundef null, i32 noundef 10) #4, !inline_history !9
  %i.m = trunc i64 %i.l to i32
  br label %.backedge

bb.e:                                             ; preds = %bb.b
  call void @timer_init(double noundef %.021, i32 noundef %.017) #4
  %i.n = load ptr, ptr @my_optarg, align 8, !tbaa !19
  call void @speed(ptr noundef %i.n, i32 noundef 0) #4
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  call void @timer_init(double noundef %.021, i32 noundef %.017) #4
  %i.o = load ptr, ptr @my_optarg, align 8, !tbaa !19
  call void @speed(ptr noundef %i.o, i32 noundef 1) #4
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.p = load ptr, ptr @my_optarg, align 8, !tbaa !19
  call void @report_can_do(ptr noundef %i.p) #4
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @my_optarg, align 8, !tbaa !19
  call void @useropt(ptr noundef %i.q) #4
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.r = load i32, ptr @verbose, align 4, !tbaa !12 ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr @my_optarg, align 8, !tbaa !19 ; 2 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = call i64 @strtol(ptr noundef nonnull captures(none) %i.t, ptr noundef null, i32 noundef 10) #4, !inline_history !9
  %i.v = trunc i64 %i.u to i32
  store i32 %i.v, ptr @verbose, align 4, !tbaa !12
  br label %.backedge

bb.l:                                             ; preds = %bb.j
  %i.w = add nuw nsw i32 %i.r, 1
  store i32 %i.w, ptr @verbose, align 4, !tbaa !12
  br label %.backedge

bb.m:                                             ; preds = %bb.b
  %i.x = load ptr, ptr @my_optarg, align 8, !tbaa !19
  call void @verify(ptr noundef %i.x, i32 noundef %.015, double noundef %.019) #4
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  %i.y = load ptr, ptr @my_optarg, align 8, !tbaa !19
  call void @accuracy(ptr noundef %i.y, i32 noundef %.0, i32 noundef %.013) #4
  br label %.backedge

bb.o:                                             ; preds = %bb.b
  %i.z = load ptr, ptr @my_optarg, align 8, !tbaa !19
  call void @report_info(ptr noundef %i.z) #4
  br label %.backedge

bb.p:                                             ; preds = %bb.b
  call void @report_info_all() #4
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  %i.aa = load i32, ptr @verbose, align 4, !tbaa !12
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.r, label %.backedge

.backedge:                                        ; preds = %bb.q, %bb.r, %bb.i, %bb.l, %bb.k, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.p, %bb.o, %bb.n, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.021.be = phi double [ %i.j, %bb.c ], [ %.021, %bb.d ], [ %.021, %bb.e ], [ %.021, %bb.f ], [ %.021, %bb.g ], [ %.021, %bb.h ], [ %.021, %bb.k ], [ %.021, %bb.l ], [ %.021, %bb.i ], [ %.021, %bb.m ], [ %.021, %bb.n ], [ %.021, %bb.o ], [ %.021, %bb.p ], [ %.021, %bb.r ], [ %.021, %bb.q ], [ %.021, %bb.s ], [ %.021, %bb.t ], [ %.021, %bb.u ], [ %.021, %bb.v ], [ %.021, %bb.w ], [ %.021, %bb.x ], [ %.021, %bb.y ], [ %.021, %bb.z ], [ %.021, %bb.aa ], [ %.021, %bb.ab ], [ %.021, %bb.ac ]
  %.019.be = phi double [ %.019, %bb.c ], [ %.019, %bb.d ], [ %.019, %bb.e ], [ %.019, %bb.f ], [ %.019, %bb.g ], [ %.019, %bb.h ], [ %.019, %bb.k ], [ %.019, %bb.l ], [ %.019, %bb.i ], [ %.019, %bb.m ], [ %.019, %bb.n ], [ %.019, %bb.o ], [ %.019, %bb.p ], [ %.019, %bb.r ], [ %.019, %bb.q ], [ %.019, %bb.s ], [ %.019, %bb.t ], [ %.019, %bb.u ], [ %.019, %bb.v ], [ %.019, %bb.w ], [ %.019, %bb.x ], [ %.019, %bb.y ], [ %i.aj, %bb.z ], [ %.019, %bb.aa ], [ %.019, %bb.ab ], [ %.019, %bb.ac ]
  %.017.be = phi i32 [ %.017, %bb.c ], [ %i.m, %bb.d ], [ %.017, %bb.e ], [ %.017, %bb.f ], [ %.017, %bb.g ], [ %.017, %bb.h ], [ %.017, %bb.k ], [ %.017, %bb.l ], [ %.017, %bb.i ], [ %.017, %bb.m ], [ %.017, %bb.n ], [ %.017, %bb.o ], [ %.017, %bb.p ], [ %.017, %bb.r ], [ %.017, %bb.q ], [ %.017, %bb.s ], [ %.017, %bb.t ], [ %.017, %bb.u ], [ %.017, %bb.v ], [ %.017, %bb.w ], [ %.017, %bb.x ], [ %.017, %bb.y ], [ %.017, %bb.z ], [ %.017, %bb.aa ], [ %.017, %bb.ab ], [ %.017, %bb.ac ]
  %.015.be = phi i32 [ %.015, %bb.c ], [ %.015, %bb.d ], [ %.015, %bb.e ], [ %.015, %bb.f ], [ %.015, %bb.g ], [ %.015, %bb.h ], [ %.015, %bb.k ], [ %.015, %bb.l ], [ %.015, %bb.i ], [ %.015, %bb.m ], [ %.015, %bb.n ], [ %.015, %bb.o ], [ %.015, %bb.p ], [ %.015, %bb.r ], [ %.015, %bb.q ], [ %.015, %bb.s ], [ %.015, %bb.t ], [ %.015, %bb.u ], [ %.015, %bb.v ], [ %.015, %bb.w ], [ %i.ah, %bb.x ], [ %.015, %bb.y ], [ %.015, %bb.z ], [ %.015, %bb.aa ], [ %.015, %bb.ab ], [ %.015, %bb.ac ]
  %.013.be = phi i32 [ %.013, %bb.c ], [ %.013, %bb.d ], [ %.013, %bb.e ], [ %.013, %bb.f ], [ %.013, %bb.g ], [ %.013, %bb.h ], [ %.013, %bb.k ], [ %.013, %bb.l ], [ %.013, %bb.i ], [ %.013, %bb.m ], [ %.013, %bb.n ], [ %.013, %bb.o ], [ %.013, %bb.p ], [ %.013, %bb.r ], [ %.013, %bb.q ], [ %.013, %bb.s ], [ %.013, %bb.t ], [ %.013, %bb.u ], [ %.013, %bb.v ], [ %.013, %bb.w ], [ %.013, %bb.x ], [ %.013, %bb.y ], [ %.013, %bb.z ], [ %.013, %bb.aa ], [ %.013, %bb.ab ], [ %i.as, %bb.ac ]
  %.0.be = phi i32 [ %.0, %bb.c ], [ %.0, %bb.d ], [ %.0, %bb.e ], [ %.0, %bb.f ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ %.0, %bb.k ], [ %.0, %bb.l ], [ %.0, %bb.i ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.r ], [ %.0, %bb.q ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ %.0, %bb.w ], [ %.0, %bb.x ], [ %.0, %bb.y ], [ %.0, %bb.z ], [ %.0, %bb.aa ], [ %i.ap, %bb.ab ], [ %.0, %bb.ac ]
  br label %bb.b, !llvm.loop !10

bb.r:                                             ; preds = %bb.q
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  call void @my_usage(ptr noundef %i.ad, ptr noundef nonnull @options) #4
  br label %.backedge

bb.s:                                             ; preds = %bb.b
  store ptr @report_mflops, ptr @report, align 8, !tbaa !17
  br label %.backedge

bb.t:                                             ; preds = %bb.b
  store ptr @report_time, ptr @report, align 8, !tbaa !17
  br label %.backedge

bb.u:                                             ; preds = %bb.b
  store ptr @report_benchmark, ptr @report, align 8, !tbaa !17
  br label %.backedge

bb.v:                                             ; preds = %bb.b
  store ptr @report_verbose, ptr @report, align 8, !tbaa !17
  br label %.backedge

bb.w:                                             ; preds = %bb.b
  call void @timer_init(double noundef %.021, i32 noundef %.017) #4
  %i.ae = load double, ptr @time_min, align 8, !tbaa !22
  call void (ptr, ...) @ovtpvt(ptr noundef nonnull @.str, double noundef %i.ae) #4
  br label %.backedge

bb.x:                                             ; preds = %bb.b
  %i.af = load ptr, ptr @my_optarg, align 8, !tbaa !19
  %i.ag = call i64 @strtol(ptr noundef nonnull captures(none) %i.af, ptr noundef null, i32 noundef 10) #4, !inline_history !9
  %i.ah = trunc i64 %i.ag to i32
  br label %.backedge

bb.y:                                             ; preds = %bb.b
  call void (ptr, ...) @ovtpvt(ptr noundef nonnull @.str.1) #4
  br label %.backedge

bb.z:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr @my_optarg, align 8, !tbaa !19
  %i.aj = call double @strtod(ptr noundef captures(none) %i.ai, ptr noundef null) #4
  br label %.backedge

bb.aa:                                            ; preds = %bb.b
  %i.ak = load ptr, ptr @my_optarg, align 8, !tbaa !19
  %i.al = call i64 @strtol(ptr noundef nonnull captures(none) %i.ak, ptr noundef null, i32 noundef 10) #4, !inline_history !9
  %i.am = trunc i64 %i.al to i32
  call void @bench_srand(i32 noundef %i.am) #4
  br label %.backedge

bb.ab:                                            ; preds = %bb.b
  %i.an = load ptr, ptr @my_optarg, align 8, !tbaa !19
  %i.ao = call i64 @strtol(ptr noundef nonnull captures(none) %i.an, ptr noundef null, i32 noundef 10) #4, !inline_history !9
  %i.ap = trunc i64 %i.ao to i32
  br label %.backedge

bb.ac:                                            ; preds = %bb.b
  %i.aq = load ptr, ptr @my_optarg, align 8, !tbaa !19
  %i.ar = call i64 @strtol(ptr noundef nonnull captures(none) %i.aq, ptr noundef null, i32 noundef 10) #4, !inline_history !9
  %i.as = trunc i64 %i.ar to i32
  br label %.backedge

bb.ad:                                            ; preds = %bb.b
  call void @abort() #5
  unreachable

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  call void @timer_init(double noundef %.021, i32 noundef %.017) #4
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.au = load i32, ptr @my_optind, align 4, !tbaa !12 ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr @my_optind, align 4, !tbaa !12
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19
  call void @speed(ptr noundef %i.ay, i32 noundef 0) #4
  %i.az = load i32, ptr @my_optind, align 4, !tbaa !12
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !12
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %.preheader
  %.023 = phi i32 [ 0, %.lr.ph ], [ 0, %.preheader ], [ 1, %bb.b ]
  call void @cleanup() #4
  ret i32 %.023
}

declare void @report_verbose(ptr noundef, ptr noundef, i32 noundef) #1

declare void @main_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @bench_srand(i32 noundef) local_unnamed_addr #1

declare i32 @my_getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #2

declare void @timer_init(double noundef, i32 noundef) local_unnamed_addr #1

declare void @speed(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @report_can_do(ptr noundef) local_unnamed_addr #1

declare void @useropt(ptr noundef) local_unnamed_addr #1

declare void @verify(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare void @accuracy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @report_info(ptr noundef) local_unnamed_addr #1

declare void @report_info_all() local_unnamed_addr #1

declare void @my_usage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @report_mflops(ptr noundef, ptr noundef, i32 noundef) #1

declare void @report_time(ptr noundef, ptr noundef, i32 noundef) #1

declare void @report_benchmark(ptr noundef, ptr noundef, i32 noundef) #1

declare void @ovtpvt(ptr noundef, ...) local_unnamed_addr #1

declare void @cleanup() local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{null}
!10 = distinct !{!10, !20}
!11 = distinct !{!11, !20}
!12 = !{!6, !6, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"any p2 pointer", !13, i64 0}
!15 = !{!"p2 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"double", !5, i64 0}
!22 = !{!21, !21, i64 0}
end_hunk_0
