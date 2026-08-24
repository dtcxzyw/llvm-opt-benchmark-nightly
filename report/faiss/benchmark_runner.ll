Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/benchmark_runner?download=true
inline.NumInlined: 815
inline.NumDeleted: 440
begin_hunk_0_@_ZN9benchmark8internal17ParseBenchMinTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.k:                                             ; preds = %bb.g
  %i.y = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.l, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.m, %bb.j
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.m ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.j ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.m ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.j ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.l ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.h ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.i ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.k ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 4 uses
  %i.ab = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ab, null
  br i1 %.not.i14, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr27 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i15 = icmp eq ptr %.pr27, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr27, i32 noundef 0) ; 0 uses
  %.pr29 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.pr29, null
  br i1 %.not.i16, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr29, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %.pr31.pr = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i17 = icmp eq ptr %.pr31.pr, null
  br i1 %.not.i17, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr31.pr, ptr noundef nonnull @.str.5, i64 noundef 85) ; 0 uses
  br label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.b, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %bb.n, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !16
  %i.ag = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.ag, align 4, !tbaa !17
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = call double @strtod(ptr noundef %i.ah, ptr noundef nonnull %i.b) #23
  %i.aj = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, !prof !18

bb.o:                                             ; preds = %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit
  %i.al = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i18 = icmp eq i32 %i.al, 0
  br i1 %.not.i18, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19

_ZN9benchmark8internal18GetNullLogInstanceEv.exit19: ; preds = %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, %bb.o, %bb.p
  %i.am = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19 ; 2 uses
  %.not.i20 = icmp eq ptr %i.am, null
  br i1 %.not.i20, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.6, i64 noundef 57) ; 0 uses
  %.pr33 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19 ; 2 uses
  %.not.i21 = icmp eq ptr %.pr33, null
  br i1 %.not.i21, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22: ; preds = %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !14
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr33, ptr noundef %i.ao, i64 noundef %i.ap) ; 0 uses
  %.pr35 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19 ; 2 uses
  %.not.i23 = icmp eq ptr %.pr35, null
  br i1 %.not.i23, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr35, ptr noundef nonnull @.str.7, i64 noundef 42) ; 0 uses
  br label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit19, %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit22, %bb.q
  %i.as = bitcast double %i.ai to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
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

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunnerC2ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 50), (56, 72)) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %0, i8 0, i64 50, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.c, align 8, !tbaa !24
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
  %i.j = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !45, !range !46, !noundef !47
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !48
  %.pre18.pre2025 = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !50
  %i.n = invoke noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.m)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.c
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.o = load i32, ptr %i.d, align 8, !tbaa !70
  %i.p = icmp eq i32 %i.o, 1
  %spec.select.i = select i1 %i.p, ptr @_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE, ptr %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.0.in.i = phi ptr [ %i.l, %.noexc ], [ %spec.select.i, %bb.d ]
  %.0.i = load double, ptr %.0.in.i, align 8, !tbaa !15
  %.pre = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !45, !range !46
  %i.q = trunc nuw i8 %.pre to i1
  store double %.0.i, ptr %i.i, align 8, !tbaa !48
  %.pre18.pre20 = load ptr, ptr %i.b, align 8, !tbaa !49 ; 2 uses
  br i1 %i.q, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pre18.pre20, i64 376
  %i.s = load double, ptr %i.r, align 8, !tbaa !50
  %i.t = invoke noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.s)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  %.pre18.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !49 ; 3 uses
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.pre18.pre.pre, i64 384
  %i.v = load double, ptr %i.u, align 8, !tbaa !71 ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = load double, ptr @_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE, align 8, !tbaa !72
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.i, %bb.e
  %.pre18 = phi ptr [ %.pre18.pre20, %bb.e ], [ %.pre18.pre.pre, %bb.i ], [ %.pre18.pre.pre, %bb.h ], [ %.pre18.pre2025, %.thread ] ; 4 uses
  %i.y = phi double [ 0.000000e+00, %bb.e ], [ %i.x, %bb.i ], [ %i.v, %bb.h ], [ 0.000000e+00, %.thread ] ; 2 uses
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
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre18, i64 368
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !75 ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = load i32, ptr @_ZN9benchmark27FLAGS_benchmark_repetitionsE, align 4
  %spec.select = select i1 %.not, i32 %i.ai, i32 %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = phi i32 [ 1, %bb.j ], [ %spec.select, %bb.k ]
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre18, i64 392
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77
  %.not8 = icmp eq i64 %i.am, 0
  br i1 %.not8, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr %i.d, align 8, !tbaa !78
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = zext i1 %i.ao to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = phi i8 [ 1, %bb.l ], [ %i.ap, %bb.m ]
  store i8 %i.aq, ptr %i.ak, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.ar, align 4, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre18, i64 256
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !81, !nonnull !47, !align !82 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre18, i64 400
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !83 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87, !noalias !84
  %.not.i.i.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.not.i, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !84
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !17, !noalias !88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 296
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !91, !noalias !88
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc11 unwind label %bb.z, !inline_history !93

.noexc11:                                         ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !84
  br label %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc12 unwind label %bb.z   ; 6 uses

.noexc12:                                         ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultE, i64 16), ptr %i.bc, align 8, !tbaa !94, !noalias !96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i32 %i.aw, 1
  br i1 %i.bg, label %.noexc.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc12
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #26
          to label %.noexc.i.i unwind label %bb.p, !noalias !96

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i: ; preds = %.noexc12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false), !noalias !96
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %i.bh = shl nuw nsw i64 %i.bf, 3                ; 3 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #25
          to label %.noexc2.i.i unwind label %bb.p, !noalias !96 ; 4 uses

.noexc2.i.i:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !99, !noalias !96
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bi, i8 0, i64 %i.bh, i1 false), !tbaa !102, !noalias !96
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bh
  br label %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i

bb.p:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 32) #27, !noalias !96
  br label %.body

_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %.noexc2.i.i, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i
  %.sink.i.i.i.i = phi ptr [ %i.bj, %.noexc2.i.i ], [ null, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %.noexc2.i.i ], [ null, %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %.sink.i.i.i.i, ptr %i.bm, align 8, !tbaa !104, !noalias !96
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !105, !noalias !96
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !106, !alias.scope !84
  br label %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit

_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit: ; preds = %_ZNSt10unique_ptrIN9benchmark8internal12_GLOBAL__N_119ThreadRunnerDefaultESt14default_deleteIS3_EED2Ev.exit.i, %.noexc11
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %5 = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !45, !range !46, !noundef !47
  %i.bn = trunc nuw i8 %5 to i1
  br i1 %i.bn, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit
  %i.bo = load i8, ptr %i.ak, align 8, !tbaa !79, !range !46, !noundef !47
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.r, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val = load i64, ptr %i.bq, align 8, !tbaa !77 ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %bb.s, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

bb.s:                                             ; preds = %bb.r
  %i.br = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.t, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, !prof !18

bb.t:                                             ; preds = %bb.s
  %i.bt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i

_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !15
  br label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, %bb.r, %bb.q, %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit
  %i.bv = phi i64 [ 1, %_ZN9benchmark8internal12_GLOBAL__N_115GetThreadRunnerERKSt8functionIFSt10unique_ptrINS_16ThreadRunnerBaseESt14default_deleteIS4_EEiEEi.exit ], [ 1, %bb.q ], [ %i.bu, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i ], [ %.val, %bb.r ]
  store i64 %i.bv, ptr %4, align 8, !tbaa !107
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %2, ptr %i.bw, align 8, !tbaa !108
  %i.bx = load i8, ptr @_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE, align 1, !tbaa !45, !range !46, !noundef !47 ; 2 uses
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load i8, ptr @_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE, align 1, !range !46
  %i.ca = select i1 %i.by, i8 1, i8 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 8, !tbaa !109
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !110
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !49, !nonnull !47, !align !82
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 272
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !111 ; 2 uses
  %.not9 = icmp eq i32 %i.cf, 0
  br i1 %.not9, label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit
  %i.cg = trunc i32 %i.cf to i8                   ; 2 uses
  %i.ch = lshr i8 %i.cg, 2
  %i.ci = and i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cb, align 8, !tbaa !109
  %i.cj = lshr i8 %i.cg, 1
  %i.ck = and i8 %i.cj, 1
  store i8 %i.ck, ptr %i.cc, align 1, !tbaa !110
  %i.cl = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.w, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !18

bb.w:                                             ; preds = %bb.v
  %i.cn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i14 = icmp eq i32 %i.cn, 0
  br i1 %.not.i14, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.co = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19 ; 2 uses
  %.not.i15 = icmp eq ptr %i.co, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.8, i64 noundef 53)
          to label %_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.aa ; 0 uses

bb.z:                                             ; preds = %bb.o, %.thread.i, %bb.c, %bb.f, %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.y
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %i.as, align 8, !tbaa !112 ; 3 uses
  %.not.i17 = icmp eq ptr %i.cs, null
  br i1 %.not.i17, label %.body, label %_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i: ; preds = %bb.aa
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !94
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #23, !inline_history !113
  br label %.body

_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.y, %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit
  ret void

.body:                                            ; preds = %_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i, %bb.aa, %bb.z, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.cq, %bb.z ], [ %i.cr, %bb.aa ], [ %i.cr, %_ZNKSt14default_deleteIN9benchmark16ThreadRunnerBaseEEclEPS1_.exit.i ]
  call void @_ZN9benchmark8internal10RunResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) #23
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal10RunResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.c

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !115
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.m, ptr noundef %i.o)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1 unwind label %bb.e

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1: ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !114    ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
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
  %i.a = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !17
  %.not.i = icmp slt i32 %i.a, 2
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
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
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.f ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.b ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.c ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.e ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 8 uses
  %i.h = load ptr, ptr %.0.i, align 8, !tbaa !19  ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, null
  br i1 %.not.i12, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !19  ; 2 uses
  %.not.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i13, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i32 noundef 2) ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv:bb.a
  %i.by = load ptr, ptr %3, align 8, !tbaa !138   ; 5 uses
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
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !122
  store i32 %i.cc, ptr %i.bp, align 8, !tbaa !122
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  %i.cf = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %i.ce)
          to label %_ZN9benchmark9MutexLockD2Ev.exit unwind label %_ZN9benchmark9MutexLockD2Ev.exit68 ; 0 uses

_ZN9benchmark9MutexLockD2Ev.exit:                 ; preds = %.noexc27
  %i.cg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bw) #23 ; 0 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !138
  %.not.i.i29 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i29, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30, label %bb.s

bb.s:                                             ; preds = %_ZN9benchmark9MutexLockD2Ev.exit
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ch)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30: ; preds = %_ZN9benchmark9MutexLockD2Ev.exit, %bb.s
  %i.ci = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !17
  %.not.i31 = icmp slt i32 %i.ci, 2
  br i1 %.not.i31, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30
  %i.cj = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.u, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, !prof !18

bb.u:                                             ; preds = %bb.t
  %i.cl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i33 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i33, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit30
  %i.cm = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.x, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, !prof !18

bb.x:                                             ; preds = %bb.w
  %i.co = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i37 = icmp eq i32 %i.co, 0
  br i1 %.not.i1.i37, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34: ; preds = %bb.y, %bb.v
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i35 = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.y ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.v ]
  %.0.ph.i36 = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.y ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.v ]
  call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i35) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38: ; preds = %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34, %bb.x, %bb.w, %bb.u, %bb.t
  %.0.i32 = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.x ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.t ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.u ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.w ], [ %.0.ph.i36, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i34 ] ; 8 uses
  %i.cp = load ptr, ptr %.0.i32, align 8, !tbaa !19 ; 2 uses
  %.not.i39 = icmp eq ptr %i.cp, null
  br i1 %.not.i39, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit41 unwind label %bb.an ; 0 uses

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit41: ; preds = %bb.z
  %.pr87 = load ptr, ptr %.0.i32, align 8, !tbaa !19 ; 2 uses
  %.not.i42 = icmp eq ptr %.pr87, null
  br i1 %.not.i42, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit41
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr87, i32 noundef 2)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit44 unwind label %bb.ao ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit44: ; preds = %bb.aa
  %.pr89 = load ptr, ptr %.0.i32, align 8, !tbaa !19 ; 2 uses
  %.not.i45 = icmp eq ptr %.pr89, null
  br i1 %.not.i45, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit44
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr89, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit47 unwind label %bb.ao ; 0 uses

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit47: ; preds = %bb.ab
  %.pr91.pr = load ptr, ptr %.0.i32, align 8, !tbaa !19 ; 2 uses
  %.not.i48 = icmp eq ptr %.pr91.pr, null
  br i1 %.not.i48, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit47
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr91.pr, ptr noundef nonnull @.str.12, i64 noundef 7)
          to label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50 unwind label %bb.ao ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit44, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit47, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit38, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit41
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50: ; preds = %bb.ac
  %.pr93 = load ptr, ptr %.0.i32, align 8, !tbaa !19 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not.i51 = icmp eq ptr %.pr93, null
  br i1 %.not.i51, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !72
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr93, double noundef %i.cw)
          to label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit unwind label %bb.ao ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit: ; preds = %bb.ad
  %.pr95.pre = load ptr, ptr %.0.i32, align 8, !tbaa !19 ; 2 uses
  %.not.i53 = icmp eq ptr %.pr95.pre, null
  br i1 %.not.i53, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr95.pre, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit55 unwind label %bb.ao ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread
  %.ph99 = phi ptr [ %i.cv, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit ], [ %i.cv, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit50 ], [ %i.cu, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit61

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit55: ; preds = %bb.ae
  %.pr97 = load ptr, ptr %.0.i32, align 8, !tbaa !19 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not.i56 = icmp eq ptr %.pr97, null
  br i1 %.not.i56, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit61, label %bb.af

bb.af:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit55
  %i.db = load double, ptr %i.da, align 8, !tbaa !72
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr97, double noundef %i.db)
          to label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58 unwind label %bb.ao ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58: ; preds = %bb.af
  %.pr103.pre = load ptr, ptr %.0.i32, align 8, !tbaa !19 ; 2 uses
  %.not.i59 = icmp eq ptr %.pr103.pre, null
  br i1 %.not.i59, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit61, label %bb.ag

bb.ag:                                            ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr103.pre, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit61 unwind label %bb.ao ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit61: ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit55, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58, %bb.ag
  %i.de = phi ptr [ %i.cv, %bb.ag ], [ %i.cv, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58 ], [ %i.cv, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit55 ], [ %.ph99, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread ]
  %i.df = phi ptr [ %i.da, %bb.ag ], [ %i.da, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58 ], [ %i.da, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit55 ], [ %i.cz, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit58.thread ]
  %i.dg = load i64, ptr %0, align 8, !tbaa !146
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !49, !nonnull !47, !align !82 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 400
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !83
  %i.dk = sext i32 %i.dj to i64
  %i.dl = sdiv i64 %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !148
  %i.dn = load double, ptr %i.de, align 8, !tbaa !149
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store double %i.dn, ptr %i.do, align 8, !tbaa !150
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 294
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !151, !range !46, !noundef !47
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit61
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.sink.split

bb.ai:                                            ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.ai
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !15
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.av

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  %.not.i65 = icmp eq ptr %i.eb, null
  br i1 %.not.i65, label %_ZNSt14_Function_baseD2Ev.exit66, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = invoke noundef zeroext i1 %i.eb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit66 unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit66:                 ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.at

bb.am:                                            ; preds = %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZN9benchmark9MutexLockD2Ev.exit68:               ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit, %.noexc26, %.noexc27
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bw) #23 ; 0 uses
  br label %bb.as

bb.an:                                            ; preds = %bb.z
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit61
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 293
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !152, !range !46, !noundef !47
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %.sink.split, label %bb.aq

.sink.split:                                      ; preds = %bb.ap, %bb.ah
  %.sink.in = phi ptr [ %i.ds, %bb.ah ], [ %i.df, %bb.ap ]
  %.sink = load double, ptr %.sink.in, align 8, !tbaa !72
  store double %.sink, ptr %i.do, align 8, !tbaa !150
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.ap
  %i.en = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %.not.i69 = icmp eq ptr %i.en, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.en)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.as:                                            ; preds = %bb.am, %_ZN9benchmark9MutexLockD2Ev.exit68, %bb.ao, %bb.an
  %.pn8 = phi { ptr, i32 } [ %i.ej, %bb.ao ], [ %i.ei, %bb.an ], [ %i.eg, %_ZN9benchmark9MutexLockD2Ev.exit68 ], [ %i.ef, %bb.am ]
  call void @_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt14_Function_baseD2Ev.exit66, %.thread
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %bb.as ], [ %i.ea, %_ZNSt14_Function_baseD2Ev.exit66 ], [ %i.dz, %.thread ]
  %.pr105 = load ptr, ptr %3, align 8, !tbaa !138 ; 2 uses
  %.not.i70 = icmp eq ptr %.pr105, null
  br i1 %.not.i70, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit71, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.pr105)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit71

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit71: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.pn8.pn.pn = phi { ptr, i32 } [ %.pn8.pn, %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit71 ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  resume { ptr, i32 } %.pn8.pn.pn
}

declare void @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark8internal13ThreadManager6ResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZN9benchmark8internal13ThreadManager6ResultD2Ev.exit

_ZN9benchmark8internal13ThreadManager6ResultD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 -9223372036854775808, 1000000000001) i64 @_ZNK9benchmark8internal15BenchmarkRunner21PredictNumItersNeededERKNS1_16IterationResultsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !74, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  %.in.v.i = select i1 %i.c, i64 88, i64 96
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load double, ptr %.in.i, align 8, !tbaa !72 ; 2 uses
  %i.e = fmul double %i.d, 1.400000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load double, ptr %i.f, align 8, !tbaa !72 ; 3 uses
  %i.h = fcmp olt double %i.g, 1.000000e-09
  %.sroa.speculated25 = select i1 %i.h, double 1.000000e-09, double %i.g
  %i.i = fdiv double %i.e, %.sroa.speculated25
  %i.j = fdiv double %i.g, %i.d
  %i.k = fcmp ogt double %i.j, 1.000000e-01
  %i.l = select i1 %i.k, double %i.i, double 1.000000e+01 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = load i64, ptr %i.m, align 8, !tbaa !148
  %i.o = sitofp i64 %i.n to double                ; 2 uses
  %i.p = fmul double %i.l, %i.o                   ; 2 uses
  %i.q = fadd double %i.o, 1.000000e+00           ; 2 uses
  %i.r = fcmp olt double %i.p, %i.q
  %.sroa.speculated = select i1 %i.r, double %i.q, double %i.p
  %i.s = tail call i64 @llround(double noundef %.sroa.speculated) #23
  %.sroa.speculated20 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 1000000000000) ; 2 uses
  %i.t = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !17
  %.not.i = icmp slt i32 %i.t, 3
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.c, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.x = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.z, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !19
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.f ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.b ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.c ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.e ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 8 uses
  %i.aa = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i9 = icmp eq ptr %i.aa, null
  br i1 %.not.i9, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !19  ; 2 uses
  %.not.i10 = icmp eq ptr %.pr, null
  br i1 %.not.i10, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i32 noundef 3) ; 0 uses
  %.pr29 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i11 = icmp eq ptr %.pr29, null
  br i1 %.not.i11, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr29, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %.pr31.pr = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i12 = icmp eq ptr %.pr31.pr, null
  br i1 %.not.i12, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA13_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA13_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr31.pr, ptr noundef nonnull @.str.14, i64 noundef 12) ; 0 uses
  %.pr33 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i13 = icmp eq ptr %.pr33, null
  br i1 %.not.i13, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA13_cEERNS0_7LogTypeES4_RKT_.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr33, i64 noundef %.sroa.speculated20) ; 0 uses
  %.pr35.pr.pr = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i14 = icmp eq ptr %.pr35.pr.pr, null
  br i1 %.not.i14, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr35.pr.pr, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  %.pr37 = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i15 = icmp eq ptr %.pr37, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr37, double noundef %i.l) ; 0 uses
  %.pr39.pr.pr = load ptr, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.pr39.pr.pr, null
  br i1 %.not.i16, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr39.pr.pr, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA13_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit, %bb.h
  ret i64 %.sroa.speculated20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK9benchmark8internal15BenchmarkRunner17GetMinTimeToApplyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !74, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  %.in.v = select i1 %i.c, i64 88, i64 96
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.d = load double, ptr %.in, align 8, !tbaa !72
  ret double %i.d
}

; Function Attrs: nounwind
declare i64 @llround(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !153
  %i.c = icmp ne i32 %i.b, 0
  %i.d = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !range !46
end_hunk_1
