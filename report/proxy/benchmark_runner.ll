Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_runner?download=true
inline.NumInlined: 817
inline.NumDeleted: 439
begin_hunk_0
@_ZN9benchmark8internal14memory_managerE = hidden local_unnamed_addr global ptr null, align 8
@_ZN9benchmark8internal16profiler_managerE = hidden local_unnamed_addr global ptr null, align 8
@_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE = internal global double 0.000000e+00, align 8
@_ZN9benchmarkL18kDefaultMinTimeStrE = internal constant [5 x i8] c"0.5s\00", align 1
@.str = private unnamed_addr constant [56 x i8] c"Malformed iters value passed to --benchmark_min_time: `\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"`. Expected --benchmark_min_time=<integer>x.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"-- LOG(\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"Value passed to --benchmark_min_time should have a suffix. Eg., `30s` for 30-seconds.\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Malformed seconds value passed to --benchmark_min_time: `\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"`. Expected --benchmark_min_time=<float>x.\00", align 1
@_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E = external global %"class.std::__cxx11::basic_string", align 8
@_ZN9benchmark23FLAGS_benchmark_dry_runE = external local_unnamed_addr global i8, align 1
@_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE = external local_unnamed_addr global double, align 8
@_ZN9benchmark27FLAGS_benchmark_repetitionsE = external local_unnamed_addr global i32, align 4
@_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE = external local_unnamed_addr global i8, align 1
@_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Perf counters were requested but could not be set up.\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Running \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" for \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Ran in \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Next iters: \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden local_unnamed_addr global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN9benchmark8internal8LogLevelEvE9log_level = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = linkonce_odr hidden local_unnamed_addr global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = linkonce_odr hidden global i64 0, comdat, align 8
@_ZSt4clog = external global %"class.std::basic_ostream", align 8
@_ZTVN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE, ptr @_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultD2Ev, ptr @_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultD0Ev, ptr @_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefault10RunThreadsERKSt8functionIFviEE] }, align 8
@_ZTIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE, ptr @_ZTIN9benchmark16ThreadRunnerBaseE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE = internal constant [57 x i8] c"N9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE\00", align 1
@_ZTIN9benchmark16ThreadRunnerBaseE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9benchmark16ThreadRunnerBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN9benchmark16ThreadRunnerBaseE = linkonce_odr hidden constant [31 x i8] c"N9benchmark16ThreadRunnerBaseE\00", comdat, align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEE, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEED2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEE6_M_runEv] }, comdat, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEE = linkonce_odr dso_local constant [72 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.17 = private unnamed_addr constant [117 x i8] c"The benchmark didn't run, nor was it explicitly skipped. Please call 'SkipWithXXX` in your benchmark as appropriate.\00", align 1
@"_ZTIZN9benchmark8internal15BenchmarkRunner13DoNIterationsEvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN9benchmark8internal15BenchmarkRunner13DoNIterationsEvE3$_0" }, align 8
@"_ZTSZN9benchmark8internal15BenchmarkRunner13DoNIterationsEvE3$_0" = internal constant [61 x i8] c"ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEvE3$_0\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_benchmark_runner.cc, ptr null }]

@_ZN9benchmark8internal15BenchmarkRunnerC1ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN9benchmark8internal15BenchmarkRunnerC2ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden { i32, i64 } @_ZN9benchmark8internal17ParseBenchMinTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 %i.d
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  switch i8 %i.i, label %bb.g [
    i8 120, label %bb.c
    i8 115, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.j = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.j, align 4, !tbaa !18
  %i.k = call i64 @__isoc23_strtol(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 10) #23
  %i.l = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.o = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20 ; 2 uses
  %.not.i10 = icmp eq ptr %i.o, null
  br i1 %.not.i10, label %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA56_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA56_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str, i64 noundef 55) ; 0 uses
  %.pr = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20 ; 2 uses
  %.not.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i11, label %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA56_cEERNS0_7LogTypeES4_RKT_.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !15
  %i.r = load i64, ptr %i.c, align 8, !tbaa !9
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr, ptr noundef %i.q, i64 noundef %i.r) ; 0 uses
  %.pr25 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20 ; 2 uses
  %.not.i12 = icmp eq ptr %.pr25, null
  br i1 %.not.i12, label %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr25, ptr noundef nonnull @.str.2, i64 noundef 44) ; 0 uses
  br label %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %_ZN9benchmark8internallsIA56_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %i.u = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !18
  %.not.i13 = icmp slt i32 %i.u, 0
  br i1 %.not.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !19

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !20
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.y = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.l, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.m, %bb.j
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.m ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.j ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.m ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.j ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.l ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.h ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.i ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.k ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 4 uses
  %i.ab = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ab, null
  br i1 %.not.i14, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr27 = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i15 = icmp eq ptr %.pr27, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr27, i32 noundef 0) ; 0 uses
  %.pr29 = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i16 = icmp eq ptr %.pr29, null
  br i1 %.not.i16, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr29, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %.pr31.pr = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i17 = icmp eq ptr %.pr31.pr, null
  br i1 %.not.i17, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr31.pr, ptr noundef nonnull @.str.5, i64 noundef 85) ; 0 uses
  br label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.b, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %bb.n, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.ag = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.ag, align 4, !tbaa !18
  %i.ah = load ptr, ptr %0, align 8, !tbaa !15
  %i.ai = call double @strtod(ptr noundef %i.ah, ptr noundef nonnull %i.b) #23
  %1 = bitcast double %i.ai to i64
  %i.aj = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, !prof !19

bb.o:                                             ; preds = %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit
  %i.al = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i18 = icmp eq i32 %i.al, 0
  br i1 %.not.i18, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19

_ZN9benchmark8internal18GetNullLogInstanceEv.exit19: ; preds = %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, %bb.o, %bb.p
  %i.am = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20 ; 2 uses
  %.not.i20 = icmp eq ptr %i.am, null
  br i1 %.not.i20, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.6, i64 noundef 57) ; 0 uses
  %.pr33 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20 ; 2 uses
  %.not.i21 = icmp eq ptr %.pr33, null
  br i1 %.not.i21, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22: ; preds = %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !15
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !9
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr33, ptr noundef %i.ao, i64 noundef %i.ap) ; 0 uses
  %.pr35 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20 ; 2 uses
  %.not.i23 = icmp eq ptr %.pr35, null
  br i1 %.not.i23, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr35, ptr noundef nonnull @.str.7, i64 noundef 42) ; 0 uses
  br label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit
  %.sroa.59.0 = phi i64 [ %1, %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit ], [ %i.k, %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i32 [ 2, %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit ], [ 1, %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit ], [ 2, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.59.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunnerC2ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 50), (56, 72)) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %0, i8 0, i64 50, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = invoke { i32, i64 } @_ZN9benchmark8internal17ParseBenchMinTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E)
          to label %bb.b unwind label %bb.z       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i32, i64 } %i.e, 0
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = extractvalue { i32, i64 } %i.e, 1
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !46, !range !47, !noundef !48
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !49
  %.pre18.pre1924 = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !51
  %i.n = invoke noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.m)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.c
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.o = load i32, ptr %i.d, align 8, !tbaa !71
  %i.p = icmp eq i32 %i.o, 1
  %spec.select.i = select i1 %i.p, ptr @_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE, ptr %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.0.in.i = phi ptr [ %i.l, %.noexc ], [ %spec.select.i, %bb.d ]
  %.0.i = load double, ptr %.0.in.i, align 8, !tbaa !16
  %.pre = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !46, !range !47
  %i.q = trunc nuw i8 %.pre to i1
  store double %.0.i, ptr %i.i, align 8, !tbaa !49
  %.pre18.pre19 = load ptr, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pre18.pre19, i64 376
  %i.s = load double, ptr %i.r, align 8, !tbaa !51
  %i.t = invoke noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.s)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %.pre18.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !50 ; 3 uses
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.pre18.pre.pre, i64 384
  %i.v = load double, ptr %i.u, align 8, !tbaa !72 ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = load double, ptr @_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE, align 8, !tbaa !73
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.i, %bb.e
  %.pre18 = phi ptr [ %.pre18.pre19, %bb.e ], [ %.pre18.pre.pre, %bb.i ], [ %.pre18.pre.pre, %bb.h ], [ %.pre18.pre1924, %.thread ] ; 4 uses
  %i.y = phi double [ 0.000000e+00, %bb.e ], [ %i.x, %bb.i ], [ %i.v, %bb.h ], [ 0.000000e+00, %.thread ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.y, ptr %i.z, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !46, !range !47, !noundef !48
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = fcmp ule double %i.y, 0.000000e+00
  %narrow = select i1 %i.ac, i1 true, i1 %i.ad
  %i.ae = zext i1 %narrow to i8
  store i8 %i.ae, ptr %i.aa, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre18, i64 368
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = load i32, ptr @_ZN9benchmark27FLAGS_benchmark_repetitionsE, align 4
  %spec.select = select i1 %.not, i32 %i.ai, i32 %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ 1, %bb.j ], [ %spec.select, %bb.k ]
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre18, i64 392
  %i.am = load i64, ptr %i.al, align 8, !tbaa !78
  %.not8.a = icmp eq i64 %i.am, 0
  br i1 %.not8.a, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr %i.d, align 8, !tbaa !79
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = zext i1 %i.ao to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = phi i8 [ 1, %bb.l ], [ %i.ap, %bb.m ]
  store i8 %i.aq, ptr %i.ak, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.ar, align 4, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre18, i64 256
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !82, !nonnull !48, !align !83 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre18, i64 400
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !84 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88, !noalias !85
  %.not.i.i.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.not.i, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !18, !noalias !89
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 296
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !92, !noalias !89
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc11.a unwind label %bb.z, !inline_history !94

.noexc11.a:                                       ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  br label %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc12 unwind label %bb.z   ; 6 uses

.noexc12:                                         ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE, i64 16), ptr %i.bc, align 8, !tbaa !95, !noalias !97
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i32 %i.aw, 1
  br i1 %i.bg, label %.noexc.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc12
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #26
          to label %.noexc.i.i unwind label %bb.p, !noalias !97

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i: ; preds = %.noexc12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false), !noalias !97
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %i.bh = shl nuw nsw i64 %i.bf, 3                ; 3 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #25
          to label %.noexc2.i.i unwind label %bb.p, !noalias !97 ; 4 uses

.noexc2.i.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !100, !noalias !97
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bi, i8 0, i64 %i.bh, i1 false), !tbaa !103, !noalias !97
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bh
end_hunk_0
begin_hunk_1_@_ZN9benchmark8internal10RunResultsD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3

bb.e:                                             ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3: ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv(ptr dead_on_unwind noalias writable sret(%"struct.benchmark::internal::BenchmarkRunner::IterationResults") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::unique_ptr.12", align 8 ; 17 uses
  %4 = alloca %"class.std::function.20", align 8  ; 12 uses
  %i.a = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !18
  %.not.i = icmp slt i32 %i.a, 2
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !20
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.f ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.b ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.c ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.e ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 8 uses
  %i.h = load ptr, ptr %.0.i, align 8, !tbaa !20  ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, null
  br i1 %.not.i12, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !20  ; 2 uses
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i32 noundef 2) ; 0 uses
  %.pr77 = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i14 = icmp eq ptr %.pr77, null
  br i1 %.not.i14, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr77, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %.pr79.pr = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i15 = icmp eq ptr %.pr79.pr, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr79.pr, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  br label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !48, !align !83
  call void @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(256) %i.n)
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !20  ; 2 uses
  %.not.i16 = icmp eq ptr %i.o, null
  br i1 %.not.i16, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit: ; preds = %bb.i
  %.pr81 = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i17 = icmp eq ptr %.pr81, null
  br i1 %.not.i17, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr81, ptr noundef nonnull @.str.10, i64 noundef 5)
          to label %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.j
  %.pr83 = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i19 = icmp eq ptr %.pr83, null
  br i1 %.not.i19, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !118
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr83, i64 noundef %i.v)
          to label %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit: ; preds = %bb.k
  %.pr85.pr = load ptr, ptr %.0.i, align 8, !tbaa !20 ; 2 uses
  %.not.i21 = icmp eq ptr %.pr85.pr, null
  br i1 %.not.i21, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr85.pr, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.ai ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit, %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit, %bb.l
  %i.y = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %3, align 8, !tbaa !119
  %i.ad = invoke noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #25
          to label %bb.m unwind label %bb.aj      ; 18 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !48, !align !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i8 0, i64 40, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !122
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 0, ptr %i.aj, align 8, !tbaa !9
  store i8 0, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 88 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i64 0, ptr %i.am, align 8, !tbaa !9
  store i8 0, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i32 0, ptr %i.an, align 8, !tbaa !123
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 120 ; 3 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !126
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store ptr null, ptr %i.ap, align 8, !tbaa !127
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !129
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.as, i8 0, i64 88, i1 false)
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.at) #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  store i32 %i.ag, ptr %i.au, align 8, !tbaa !130
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 292
  store i32 0, ptr %i.av, align 4, !tbaa !137
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 296
  store i32 0, ptr %i.aw, align 8, !tbaa !138
  %i.ax = load ptr, ptr %3, align 8, !tbaa !139   ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !139
  %.not.i.i23 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i23, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ax)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.m, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !113 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %3 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %5, ptr %4, align 8, !tbaa !140
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %6, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !142
  store ptr @"_ZNSt17_Function_handlerIFviEZN9benchmark8internal15BenchmarkRunner13DoNIterationsEvE3$_0E9_M_invokeERKSt9_Any_dataOi", ptr %i.bb, align 8, !tbaa !144
  store ptr @"_ZNSt17_Function_handlerIFviEZN9benchmark8internal15BenchmarkRunner13DoNIterationsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.ba, align 8, !tbaa !88
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.ak

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !88 ; 2 uses
  %.not.i24 = icmp eq ptr %i.bf, null
  br i1 %.not.i24, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, i8 0, i64 40, i1 false)
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bl, align 8, !tbaa !9
  store i8 0, ptr %i.bk, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !122
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.bo, align 8, !tbaa !9
  store i8 0, ptr %i.bn, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !123
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !126
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.br, align 8, !tbaa !127
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !128
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.bu, align 8, !tbaa !146
  %i.bv = load ptr, ptr %3, align 8, !tbaa !139
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 160 ; 3 uses
  %i.bx = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bw) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i, label %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bx) #26
          to label %.noexc25 unwind label %bb.an

.noexc25:                                         ; preds = %bb.r
  unreachable

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit:       ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.by = load ptr, ptr %3, align 8, !tbaa !139   ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.by, i64 40, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %.noexc26 unwind label %_ZN9benchmark9MutexLockD2Ev.exit68

.noexc26:                                         ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %.noexc27 unwind label %_ZN9benchmark9MutexLockD2Ev.exit68

.noexc27:                                         ; preds = %.noexc26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !123
  store i32 %i.cc, ptr %i.bp, align 8, !tbaa !123
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  %i.cf = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %i.ce)
          to label %_ZN9benchmark9MutexLockD2Ev.exit unwind label %_ZN9benchmark9MutexLockD2Ev.exit68 ; 0 uses

_ZN9benchmark9MutexLockD2Ev.exit:                 ; preds = %.noexc27
  %i.cg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bw) #23 ; 0 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !139   ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !139
  %.not.i.i29 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i29, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30, label %bb.s

bb.s:                                             ; preds = %_ZN9benchmark9MutexLockD2Ev.exit
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ch)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30: ; preds = %_ZN9benchmark9MutexLockD2Ev.exit, %bb.s
  %i.ci = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !18
  %.not.i31 = icmp slt i32 %i.ci, 2
  br i1 %.not.i31, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30
  %i.cj = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.u, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, !prof !19

bb.u:                                             ; preds = %bb.t
  %i.cl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i33 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i33, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !20
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30
  %i.cm = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.x, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, !prof !19

bb.x:                                             ; preds = %bb.w
  %i.co = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i37 = icmp eq i32 %i.co, 0
  br i1 %.not.i1.i37, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !20
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34: ; preds = %bb.y, %bb.v
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i35 = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.y ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.v ]
  %.0.ph.i36 = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.y ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.v ]
  call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i35) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38: ; preds = %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34, %bb.x, %bb.w, %bb.u, %bb.t
  %.0.i32 = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.x ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.t ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.u ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.w ], [ %.0.ph.i36, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34 ] ; 8 uses
  %i.cp = load ptr, ptr %.0.i32, align 8, !tbaa !20 ; 2 uses
  %.not.i39 = icmp eq ptr %i.cp, null
  br i1 %.not.i39, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit41 unwind label %bb.ao ; 0 uses

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit41: ; preds = %bb.z
  %.pr87 = load ptr, ptr %.0.i32, align 8, !tbaa !20 ; 2 uses
  %.not.i42 = icmp eq ptr %.pr87, null
  br i1 %.not.i42, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit41
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr87, i32 noundef 2)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit44 unwind label %bb.ap ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit44: ; preds = %bb.aa
  %.pr89 = load ptr, ptr %.0.i32, align 8, !tbaa !20 ; 2 uses
  %.not.i45 = icmp eq ptr %.pr89, null
  br i1 %.not.i45, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit44
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr89, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit47 unwind label %bb.ap ; 0 uses

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit47: ; preds = %bb.ab
  %.pr91.pr = load ptr, ptr %.0.i32, align 8, !tbaa !20 ; 2 uses
  %.not.i48 = icmp eq ptr %.pr91.pr, null
  br i1 %.not.i48, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit47
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr91.pr, ptr noundef nonnull @.str.12, i64 noundef 7)
          to label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50 unwind label %bb.ap ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit44, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit47, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit41
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50: ; preds = %bb.ac
  %.pr93 = load ptr, ptr %.0.i32, align 8, !tbaa !20 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not.i51 = icmp eq ptr %.pr93, null
  br i1 %.not.i51, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !73
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr93, double noundef %i.cw)
          to label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit unwind label %bb.ap ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit: ; preds = %bb.ad
  %.pr95.pre = load ptr, ptr %.0.i32, align 8, !tbaa !20 ; 2 uses
  %.not.i53 = icmp eq ptr %.pr95.pre, null
  br i1 %.not.i53, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr95.pre, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit55 unwind label %bb.ap ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread
  %.ph99 = phi ptr [ %i.cv, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit ], [ %i.cv, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50 ], [ %i.cu, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit61
end_hunk_1
