Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/benchmark_runner?download=true
inline.NumInlined: 770
inline.NumDeleted: 435
begin_hunk_0_@_ZN9benchmark8internal17ParseBenchMinTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #20
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.y = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.l, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  %.not.i1.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.m, %bb.j
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.m ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.j ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.m ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.j ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #20
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.l ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.h ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.i ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.k ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 4 uses
  %i.ab = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ab, null
  br i1 %.not.i14, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 7) #20 ; 0 uses
  %.pr27 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i15 = icmp eq ptr %.pr27, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr27, i32 noundef 0) #20 ; 0 uses
  %.pr29 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.pr29, null
  br i1 %.not.i16, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr29, ptr noundef nonnull @.str.4, i64 noundef 3) #20 ; 0 uses
  %.pr31.pr = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i17 = icmp eq ptr %.pr31.pr, null
  br i1 %.not.i17, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr31.pr, ptr noundef nonnull @.str.5, i64 noundef 85) #20 ; 0 uses
  br label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.b, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %bb.n, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !16
  %i.ag = tail call ptr @__errno_location() #21
  store i32 0, ptr %i.ag, align 4, !tbaa !17
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = call double @strtod(ptr noundef %i.ah, ptr noundef nonnull %i.b) #20
  %i.aj = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, !prof !18

bb.o:                                             ; preds = %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit
  %i.al = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  %.not.i18 = icmp eq i32 %i.al, 0
  br i1 %.not.i18, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19

_ZN9benchmark8internal18GetNullLogInstanceEv.exit19: ; preds = %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, %bb.o, %bb.p
  %i.am = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19 ; 2 uses
  %.not.i20 = icmp eq ptr %i.am, null
  br i1 %.not.i20, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.6, i64 noundef 57) #20 ; 0 uses
  %.pr33 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19 ; 2 uses
  %.not.i21 = icmp eq ptr %.pr33, null
  br i1 %.not.i21, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22: ; preds = %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !14
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr33, ptr noundef %i.ao, i64 noundef %i.ap) #20 ; 0 uses
  %.pr35 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19 ; 2 uses
  %.not.i23 = icmp eq ptr %.pr35, null
  br i1 %.not.i23, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr35, ptr noundef nonnull @.str.7, i64 noundef 42) #20 ; 0 uses
  br label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22, %bb.q
  %i.as = bitcast double %i.ai to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit
  %.sroa.59.0 = phi i64 [ %i.as, %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit ], [ %i.k, %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit ], [ 0, %bb.a ]
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

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunnerC2ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 50), (56, 76), (80, 88)) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %0, i8 0, i64 50, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = tail call { i32, i64 } @_ZN9benchmark8internal17ParseBenchMinTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E) ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = extractvalue { i32, i64 } %i.e, 1
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !45, !range !46, !noundef !47
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !48
  %.pre11.pre1317 = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !50
  %i.n = tail call noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.m) #20
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.d, align 8, !tbaa !70
  %i.p = icmp eq i32 %i.o, 1
  %spec.select.i = select i1 %i.p, ptr @_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE, ptr %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.l, %bb.b ], [ %spec.select.i, %bb.c ]
  %.0.i = load double, ptr %.0.in.i, align 8, !tbaa !15
  %.pre = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !45, !range !46
  %i.q = trunc nuw i8 %.pre to i1
  store double %.0.i, ptr %i.i, align 8, !tbaa !48
  %.pre11.pre13 = load ptr, ptr %i.b, align 8, !tbaa !49 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.pre11.pre13, i64 376
  %i.s = load double, ptr %i.r, align 8, !tbaa !50
  %i.t = tail call noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.s) #20
  %.pre11.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !49 ; 3 uses
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.pre11.pre.pre, i64 384
  %i.v = load double, ptr %i.u, align 8, !tbaa !71 ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load double, ptr @_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE, align 8, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.f, %bb.g, %bb.d
  %.pre11 = phi ptr [ %.pre11.pre13, %bb.d ], [ %.pre11.pre.pre, %bb.g ], [ %.pre11.pre.pre, %bb.f ], [ %.pre11.pre1317, %.thread ] ; 4 uses
  %i.y = phi double [ 0.000000e+00, %bb.d ], [ %i.x, %bb.g ], [ %i.v, %bb.f ], [ 0.000000e+00, %.thread ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.y, ptr %i.z, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !45, !range !46, !noundef !47
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = fcmp ule double %i.y, 0.000000e+00
  %narrow = select i1 %i.ac, i1 true, i1 %i.ad
  %i.ae = zext i1 %narrow to i8
  store i8 %i.ae, ptr %i.aa, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre11, i64 368
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !75 ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = load i32, ptr @_ZN9benchmark27FLAGS_benchmark_repetitionsE, align 4
  %spec.select = select i1 %.not, i32 %i.ai, i32 %i.ah
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi i32 [ 1, %bb.h ], [ %spec.select, %bb.i ]
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre11, i64 392
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77
  %.not6 = icmp eq i64 %i.am, 0
  br i1 %.not6, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = load i32, ptr %i.d, align 8, !tbaa !78
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = zext i1 %i.ao to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i8 [ 1, %bb.j ], [ %i.ap, %bb.k ]
  store i8 %i.aq, ptr %i.ak, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.ar, align 4, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre11, i64 256
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81, !nonnull !47, !align !82 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre11, i64 400
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !83 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87, !noalias !84
  %.not.i.i.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.not.i, label %bb.m, label %.thread.i

.thread.i:                                        ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !17, !noalias !88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 296
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !91, !noalias !88
  call void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #20, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  br label %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22, !noalias !94 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE, i64 16), ptr %i.bc, align 8, !tbaa !97, !noalias !94
  %i.bd = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = icmp slt i32 %i.aw, 1
  br i1 %i.bf, label %bb.n, label %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23, !noalias !94
  unreachable

_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i: ; preds = %bb.m
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %i.bg = shl nuw nsw i64 %i.be, 3                ; 3 uses
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #22, !noalias !94 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.be
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bh, i8 0, i64 %i.bg, i1 false), !tbaa !99, !noalias !94
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bh, i64 %i.bg
  br label %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %.sink.i.i = phi ptr [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sink.i.i, ptr %i.bj, align 8, !noalias !94
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %.sink.i.i.i.i, ptr %i.bl, align 8, !tbaa !101, !noalias !94
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !104, !noalias !94
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !105, !alias.scope !84
  br label %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit

_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit: ; preds = %.thread.i, %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %5 = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !45, !range !46, !noundef !47
  %i.bm = trunc nuw i8 %5 to i1
  br i1 %i.bm, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit
  %i.bn = load i8, ptr %i.ak, align 8, !tbaa !79, !range !46, !noundef !47
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.p, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val = load i64, ptr %i.bp, align 8, !tbaa !77 ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %bb.q, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.r, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, !prof !18

bb.r:                                             ; preds = %bb.q
  %i.bs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  %.not.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i

_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.bt = load i64, ptr %i.g, align 8, !tbaa !15
  br label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, %bb.p, %bb.o, %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit
  %i.bu = phi i64 [ 1, %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit ], [ 1, %bb.o ], [ %i.bt, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i ], [ %.val, %bb.p ]
  store i64 %i.bu, ptr %4, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %2, ptr %i.bv, align 8, !tbaa !107
  %i.bw = load i8, ptr @_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE, align 1, !tbaa !45, !range !46, !noundef !47 ; 2 uses
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = load i8, ptr @_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE, align 1, !range !46
  %i.bz = select i1 %i.bx, i8 1, i8 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 %i.bz, ptr %i.ca, align 8, !tbaa !108
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  store i8 %i.bw, ptr %i.cb, align 1, !tbaa !109
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !49, !nonnull !47, !align !82
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 272
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !110 ; 2 uses
  %.not7 = icmp eq i32 %i.ce, 0
  br i1 %.not7, label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit
  %i.cf = trunc i32 %i.ce to i8                   ; 2 uses
  %i.cg = lshr i8 %i.cf, 2
  %i.ch = and i8 %i.cg, 1
  store i8 %i.ch, ptr %i.ca, align 8, !tbaa !108
  %i.ci = lshr i8 %i.cf, 1
  %i.cj = and i8 %i.ci, 1
  store i8 %i.cj, ptr %i.cb, align 1, !tbaa !109
  %i.ck = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.u, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !18

bb.u:                                             ; preds = %bb.t
  %i.cm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  %.not.i9 = icmp eq i32 %i.cm, 0
  br i1 %.not.i9, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.cn = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19 ; 2 uses
  %.not.i10 = icmp eq ptr %i.cn, null
  br i1 %.not.i10, label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.8, i64 noundef 53) #20 ; 0 uses
  br label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.w, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit
  ret void
}

declare noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv(ptr dead_on_unwind noalias writable sret(%"struct.benchmark::internal::BenchmarkRunner::IterationResults") align 8 initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::unique_ptr.12", align 8 ; 11 uses
  %5 = alloca %"class.std::function.20", align 8  ; 9 uses
  %i.a = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !17
  %.not.i = icmp slt i32 %i.a, 2
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #20
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  %.not.i1.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #20
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.f ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.b ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.c ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.e ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 8 uses
  %i.h = load ptr, ptr %.0.i, align 8, !tbaa !19  ; 2 uses
  %.not.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i2, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.3, i64 noundef 7) #20 ; 0 uses
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !19  ; 2 uses
  %.not.i3 = icmp eq ptr %.pr, null
  br i1 %.not.i3, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i32 noundef 2) #20 ; 0 uses
  %.pr50 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i4 = icmp eq ptr %.pr50, null
  br i1 %.not.i4, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr50, ptr noundef nonnull @.str.4, i64 noundef 3) #20 ; 0 uses
  %.pr52.pr = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i5 = icmp eq ptr %.pr52.pr, null
  br i1 %.not.i5, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr52.pr, ptr noundef nonnull @.str.9, i64 noundef 8) #20 ; 0 uses
  br label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49, !nonnull !47, !align !82
  call void @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(256) %i.n) #20
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !19  ; 2 uses
  %.not.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i6, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit
  %i.p = load ptr, ptr %3, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p, i64 noundef %i.r) #20 ; 0 uses
  %.pr54 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i7 = icmp eq ptr %.pr54, null
  br i1 %.not.i7, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr54, ptr noundef nonnull @.str.10, i64 noundef 5) #20 ; 0 uses
  %.pr56 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i8 = icmp eq ptr %.pr56, null
  br i1 %.not.i8, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !111
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr56, i64 noundef %i.v) #20 ; 0 uses
  %.pr58.pr = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i9 = icmp eq ptr %.pr58.pr, null
  br i1 %.not.i9, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr58.pr, ptr noundef nonnull @.str.11, i64 noundef 1) #20 ; 0 uses
  br label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit, %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit, %bb.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !112
  %i.ad = call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #22 ; 18 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !49, !nonnull !47, !align !82
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i8 0, i64 40, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !115
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 0, ptr %i.aj, align 8, !tbaa !8
  store i8 0, ptr %i.ai, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 88 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !115
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i64 0, ptr %i.am, align 8, !tbaa !8
  store i8 0, ptr %i.al, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i32 0, ptr %i.an, align 8, !tbaa !116
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 120 ; 3 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
end_hunk_0
begin_hunk_1_@_ZN9benchmark8internal15BenchmarkRunner15DoOneRepetitionEv:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.n, !llvm.loop !150

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.n
  store ptr %.0.i.i.i.i.i.i, ptr %i.ee, align 8, !tbaa !142, !alias.scope !200
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.gl, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.gp, %bb.o ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !152 ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ERKSG_RT0_.exit.i.i.i, label %bb.o, !llvm.loop !153

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ERKSG_RT0_.exit.i.i.i: ; preds = %bb.o
  store ptr %.0.i.i7.i.i.i.i, ptr %i.ef, align 8, !tbaa !142, !alias.scope !200
  %i.gq = load i64, ptr %i.r, align 8, !tbaa !141, !noalias !200
  store i64 %i.gq, ptr %i.eg, align 8, !tbaa !141, !alias.scope !200
  store ptr %i.gl, ptr %i.ed, align 8, !tbaa !142, !alias.scope !200
  %.pre.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !154, !noalias !200
  %.pre6.i.i.i = load ptr, ptr %1, align 8, !tbaa !143, !noalias !200
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ERKSG_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i
  %i.gr = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ERKSG_RT0_.exit.i.i.i ], [ %i.gd, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i ]
  %i.gs = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ERKSG_RT0_.exit.i.i.i ], [ %i.gc, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gs, ptr noundef %i.gr)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !200
  %i.gt = icmp sgt i64 %.0, 0
  br i1 %i.gt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 544
  store <2 x i64> %i.cc, ptr %i.gu, align 8, !tbaa !111
  store <2 x i64> %i.cd, ptr %i.eh, align 8, !tbaa !111
  store i64 %.sroa.8.0, ptr %i.ej, align 8, !tbaa !111
  %i.gv = extractelement <2 x i64> %i.cc, i64 0
  %i.gw = sitofp i64 %i.gv to double
  %i.gx = uitofp nneg i64 %.0 to double
  %i.gy = fdiv double %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 584
  store double %i.gy, ptr %i.gz, align 8, !tbaa !229, !alias.scope !200
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ha = load i32, ptr %i.fd, align 8, !tbaa !83, !noalias !200
  %i.hb = sitofp i32 %i.ha to double              ; 2 uses
  %i.hc = fdiv double %i.ch, %i.hb
  %i.hd = load i64, ptr %2, align 8, !tbaa !188, !noalias !200
  call void @_ZN9benchmark8internal6FinishEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7CounterESt4lessIS7_ESaISt4pairIKS7_S8_EEEldd(ptr noundef nonnull %i.gc, i64 noundef %i.hd, double noundef %i.hc, double noundef %i.hb) #20
  br label %_ZN9benchmark8internal12_GLOBAL__N_115CreateRunReportERKNS0_17BenchmarkInstanceERKNS0_13ThreadManager6ResultElRKNS_13MemoryManager6ResultEdll.exit

_ZN9benchmark8internal12_GLOBAL__N_115CreateRunReportERKNS0_17BenchmarkInstanceERKNS0_13ThreadManager6ResultElRKNS_13MemoryManager6ResultEdll.exit: ; preds = %bb.j, %bb.r
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !24 ; 5 uses
  %.not8 = icmp eq ptr %i.hf, null
  br i1 %.not8, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit, label %bb.s

bb.s:                                             ; preds = %_ZN9benchmark8internal12_GLOBAL__N_115CreateRunReportERKNS0_17BenchmarkInstanceERKNS0_13ThreadManager6ResultElRKNS_13MemoryManager6ResultEdll.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !230
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !230
  %i.hj = load i32, ptr %i.ds, align 8, !tbaa !208
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.t, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 3 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !232 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !233
  %.not.i = icmp eq ptr %i.hm, %i.ho
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(592) %i.hm, ptr noundef nonnull align 8 dereferenceable(592) %5)
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !232
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 592
  store ptr %i.hq, ptr %i.hl, align 8, !tbaa !232
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit

bb.v:                                             ; preds = %bb.t
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  call void @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, ptr %i.hm, ptr noundef nonnull align 8 dereferenceable(592) %5)
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.v, %bb.u, %bb.s, %_ZN9benchmark8internal12_GLOBAL__N_115CreateRunReportERKNS0_17BenchmarkInstanceERKNS0_13ThreadManager6ResultElRKNS_13MemoryManager6ResultEdll.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !232 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !233
  %.not.i9 = icmp eq ptr %i.ht, %i.hv
  br i1 %.not.i9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit
  call void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(592) %i.ht, ptr noundef nonnull align 8 dereferenceable(592) %5)
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !232
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 592
  store ptr %i.hx, ptr %i.hs, align 8, !tbaa !232
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit10

bb.x:                                             ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit
  call void @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ht, ptr noundef nonnull align 8 dereferenceable(592) %5)
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit10

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit10: ; preds = %bb.w, %bb.x
  %i.hy = load i32, ptr %i.a, align 4, !tbaa !80
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.a, align 4, !tbaa !80
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 496
  %i.ib = load ptr, ptr %i.ed, align 8, !tbaa !120
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ia, ptr noundef %i.ib)
  %i.ic = load ptr, ptr %i.dt, align 8, !tbaa !14 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.du
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit10
  %i.ie = load i64, ptr %i.du, align 8, !tbaa !15
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ig = load ptr, ptr %i.dp, align 8, !tbaa !14 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.dq
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ii = load i64, ptr %i.dq, align 8, !tbaa !15
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ik = load ptr, ptr %i.dl, align 8, !tbaa !14 ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.dm
  br i1 %i.il, label %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.im = load i64, ptr %i.dm, align 8, !tbaa !15
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #24
  br label %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit

_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(592) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ip = load ptr, ptr %i.o, align 8, !tbaa !120
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.io, ptr noundef %i.ip)
  %i.iq = load ptr, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.k
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11: ; preds = %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit
  %i.is = load i64, ptr %i.k, align 8, !tbaa !15
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12: ; preds = %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11
  %i.iu = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.h
  br i1 %i.iv, label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12
  %i.iw = load i64, ptr %i.h, align 8, !tbaa !15
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #24
  br label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit16

_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(50) ptr @_ZN9benchmark8internal15BenchmarkRunner10GetResultsEv(ptr noundef nonnull returned align 8 dereferenceable(144) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x ptr>, ptr %1, align 16, !tbaa !235
  store <2 x ptr> %i.h, ptr %i.a, align 8, !tbaa !235
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !233
  store ptr %i.j, ptr %i.e, align 8, !tbaa !233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.b, ptr noundef %i.d)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.m) #24
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.n = load ptr, ptr %1, align 16, !tbaa !234
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !232
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.n, ptr noundef %i.o)
  %i.p = load ptr, ptr %1, align 16, !tbaa !234   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EEaSEOS4_.exit
  %i.q = load ptr, ptr %i.i, align 16, !tbaa !233
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #24
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EEaSEOS4_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret ptr %0
}

declare void @_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #13 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE, i64 16), ptr %0, align 8, !tbaa !97
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !237

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %bb.a, %bb.b
  %.05.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i:           ; preds = %bb.b, %bb.a
  %.not.i.i1.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #24
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #13 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE, i64 16), ptr %0, align 8, !tbaa !97
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i, !llvm.loop !237

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i:        ; preds = %bb.a, %bb.b
  %.05.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i.i, align 8, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  tail call void @_ZSt9terminatev() #23, !inline_history !238
  unreachable

_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i.i:         ; preds = %bb.b, %bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i, label %_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #24, !inline_history !238
  br label %_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultD2Ev.exit

_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6threadEvT_S2_.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefault10RunThreadsERKSt8functionIFviEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.36", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::thread", align 8       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !236
  %.not23 = icmp eq ptr %i.d, %i.e
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6threadD2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFviEEclEi.exit

bb.b:                                             ; preds = %._crit_edge
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFviEEclEi.exit:                   ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !138
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #20, !inline_history !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !240  ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !240  ; 2 uses
  %.not19 = icmp eq ptr %i.k, %i.l
  br i1 %.not19, label %._crit_edge22, label %.lr.ph21

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6threadD2Ev.exit
  %.018 = phi i64 [ 0, %.lr.ph ], [ %i.m, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = add nuw i64 %.018, 1                     ; 3 uses
  %i.n = trunc i64 %i.m to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %3, align 8, !tbaa !99
  %i.o = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEE, i64 16), ptr %i.o, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEC2IJRKS5_iEEEDpOT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2) #20, !inline_history !243 ; 0 uses
  %i.u = load <2 x ptr>, ptr %i.f, align 8, !tbaa !244
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !244
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEC2IJRKS5_iEEEDpOT_.exit.i

_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJSt8functionIFviEEiEEEEEC2IJRKS5_iEEEDpOT_.exit.i: ; preds = %bb.d, %bb.c
  store ptr %i.o, ptr %2, align 8, !tbaa !245
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #20
  %i.v = load ptr, ptr %2, align 8, !tbaa !245    ; 3 uses
  %.not.i.i9 = icmp eq ptr %i.v, null
  br i1 %.not.i.i9, label %_ZNSt6threadC2IRKSt8functionIFviEEJiEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

end_hunk_1
