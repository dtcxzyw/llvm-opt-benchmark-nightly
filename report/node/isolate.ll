inline.NumInlined: 8933
inline.NumDeleted: 4075
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal7Isolate5EnterEv:bb.a
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal7Isolate22SetIsolateThreadLocalsEPS1_PNS1_20PerIsolateThreadDataE.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate4ExitEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64320) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58488 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 8
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  store atomic ptr %i.g, ptr %i.a seq_cst, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #48
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  store ptr %i.k, ptr %i.l, align 8
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 63936 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %spec.select.i = select i1 %.not8.i, ptr null, ptr %i.o
  tail call void @_ZN2v88internal9LocalHeap10SetCurrentEPS1_(ptr noundef %spec.select.i) #46
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal34g_current_per_isolate_thread_data_E)
  store ptr %i.i, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.q, null
  br i1 %.not9.i, label %_ZN2v88internal7Isolate22SetIsolateThreadLocalsEPS1_PNS1_20PerIsolateThreadDataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal7Isolate22SetIsolateThreadLocalsEPS1_PNS1_20PerIsolateThreadDataE.exit

.critedge.i:                                      ; preds = %bb.b
  tail call void @_ZN2v88internal9LocalHeap10SetCurrentEPS1_(ptr noundef null) #46
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal34g_current_per_isolate_thread_data_E)
  store ptr %i.i, ptr %i.t, align 8
  br label %_ZN2v88internal7Isolate22SetIsolateThreadLocalsEPS1_PNS1_20PerIsolateThreadDataE.exit

_ZN2v88internal7Isolate22SetIsolateThreadLocalsEPS1_PNS1_20PerIsolateThreadDataE.exit: ; preds = %bb.c, %bb.d, %.critedge.i
  %.sink.i = phi ptr [ %i.s, %bb.d ], [ null, %.critedge.i ], [ null, %bb.c ]
  %i.u = tail call noundef ptr @_ZN2v88internal12WriteBarrier12SetForThreadEPNS0_14MarkingBarrierE(ptr noundef %.sink.i) #46 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN2v88internal7Isolate22SetIsolateThreadLocalsEPS1_PNS1_20PerIsolateThreadDataE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_ZN2v88internal7Isolate40SetOptimizingCompileDispatcherForTestingEPNS0_27OptimizingCompileDispatcherE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64320) %0, ptr noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63472 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %1, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate20NewPersistentHandlesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.908") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64320) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47, !noalias !228 ; 2 uses
  tail call void @_ZN2v88internal17PersistentHandlesC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull %1) #46, !noalias !228
  store ptr %i.a, ptr %0, align 8, !alias.scope !228
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #46
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #46
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #46
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_21AsPrintableStatisticsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #3

declare void @_ZN2v88internal4wasm10WasmEngine27DumpAndResetTurboStatisticsEv(ptr noundef nonnull align 8 dereferenceable(8488)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate27PrintNumberStringCacheStatsEPKcb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64320) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58656 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8448
  %i.d = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal12StatsCounter3GetEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8432
  %i.f = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #46
  br label %_ZN2v88internal12StatsCounter3GetEv.exit

_ZN2v88internal12StatsCounter3GetEv.exit:         ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.g = load atomic i32, ptr %.0.i.i seq_cst, align 4
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8544
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.j, null
  br i1 %.not.i.i29, label %bb.c, label %_ZN2v88internal12StatsCounter3GetEv.exit31, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8528
  %i.l = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #46
  br label %_ZN2v88internal12StatsCounter3GetEv.exit31

_ZN2v88internal12StatsCounter3GetEv.exit31:       ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit, %bb.c
  %.0.i.i30 = phi ptr [ %i.l, %bb.c ], [ %i.j, %_ZN2v88internal12StatsCounter3GetEv.exit ]
  %i.m = load atomic i32, ptr %.0.i.i30 seq_cst, align 4 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8568
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.p, null
  br i1 %.not.i.i32, label %bb.d, label %_ZN2v88internal12StatsCounter3GetEv.exit34, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit31
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8552
  %i.r = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q) #46
  br label %_ZN2v88internal12StatsCounter3GetEv.exit34

_ZN2v88internal12StatsCounter3GetEv.exit34:       ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit31, %bb.d
  %.0.i.i33 = phi ptr [ %i.r, %bb.d ], [ %i.p, %_ZN2v88internal12StatsCounter3GetEv.exit31 ]
  %i.s = load atomic i32, ptr %.0.i.i33 seq_cst, align 4 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8592
  %i.v = load atomic ptr, ptr %i.u acquire, align 8 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.v, null
  br i1 %.not.i.i35, label %bb.e, label %_ZN2v88internal12StatsCounter3GetEv.exit37, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit34
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8576
  %i.x = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #46
  br label %_ZN2v88internal12StatsCounter3GetEv.exit37

_ZN2v88internal12StatsCounter3GetEv.exit37:       ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit34, %bb.e
  %.0.i.i36 = phi ptr [ %i.x, %bb.e ], [ %i.v, %_ZN2v88internal12StatsCounter3GetEv.exit34 ]
  %i.y = load atomic i32, ptr %.0.i.i36 seq_cst, align 4 ; 3 uses
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8616
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i38, label %bb.f, label %_ZN2v88internal12StatsCounter3GetEv.exit40, !prof !7

bb.f:                                             ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8600
  %i.ad = tail call noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #46
  br label %_ZN2v88internal12StatsCounter3GetEv.exit40

_ZN2v88internal12StatsCounter3GetEv.exit40:       ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit37, %bb.f
  %.0.i.i39 = phi ptr [ %i.ad, %bb.f ], [ %i.ab, %_ZN2v88internal12StatsCounter3GetEv.exit37 ]
  %i.ae = load atomic i32, ptr %.0.i.i39 seq_cst, align 4 ; 2 uses
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.96, ptr noundef %1) #46
  %i.af = icmp eq i32 %i.g, 0
  %or.cond = and i1 %2, %i.af
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal12StatsCounter3GetEv.exit40
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.97) #46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal12StatsCounter3GetEv.exit40
  %.not = icmp eq i32 %i.m, 0
  %i.ag = uitofp i32 %i.s to double
  %i.ah = uitofp i32 %i.m to double
  %.not28 = icmp eq i32 %i.y, 0
  %i.ai = uitofp i32 %i.ae to double
  %i.aj = uitofp i32 %i.y to double
  %3 = insertelement <2 x double> poison, double %i.ag, i64 0
  %4 = insertelement <2 x double> %3, double %i.ai, i64 1
  %5 = insertelement <2 x double> poison, double %i.ah, i64 0
  %6 = insertelement <2 x double> %5, double %i.aj, i64 1
  %7 = fdiv <2 x double> %4, %6                   ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = select i1 %.not, double 0.000000e+00, double %8
  %10 = extractelement <2 x double> %7, i64 1
  %i.ak = select i1 %.not28, double 0.000000e+00, double %10
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.98, double noundef %9, i32 noundef %i.s, i32 noundef %i.m) #46
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.99, double noundef %i.ak, i32 noundef %i.ae, i32 noundef %i.y) #46
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add i64 %i.am, -1
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = sdiv i32 %i.as, 2                       ; 2 uses
  %i.au = tail call noundef i32 @_ZN2v88internal14SmiStringCache19GetUsedEntriesCountEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ao) #46 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 9616
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = tail call noundef i32 @_ZN2v88internal17DoubleStringCache19GetUsedEntriesCountEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ay) #46 ; 2 uses
  %i.bc = uitofp i32 %i.bb to double
  %i.bd = uitofp i32 %i.au to double
  %11 = uitofp i32 %i.ba to double
  %i.be = uitofp i32 %i.at to double
  %12 = insertelement <2 x double> poison, double %i.bd, i64 0
  %13 = insertelement <2 x double> %12, double %i.bc, i64 1
  %14 = insertelement <2 x double> poison, double %i.be, i64 0
  %15 = insertelement <2 x double> %14, double %11, i64 1
  %16 = fdiv <2 x double> %13, %15                ; 2 uses
  %17 = extractelement <2 x double> %16, i64 0
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.100, double noundef %17, i32 noundef %i.au, i32 noundef %i.at) #46
  %18 = extractelement <2 x double> %16, i64 1
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.101, double noundef %18, i32 noundef %i.bb, i32 noundef %i.ba) #46
  br i1 %2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 180), align 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.102, i32 noundef %i.bf) #46
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 184), align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.103, i32 noundef %i.bg) #46
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.104) #46
  ret void
}

declare noundef ptr @_ZN2v88internal18BasicBlockProfiler3GetEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal18BasicBlockProfiler7HasDataEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #26

declare void @_ZN2v88internal8OFStreamC1EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #3

declare void @_ZN2v88internal18BasicBlockProfiler3LogEPNS0_7IsolateERSo(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #46
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #46
  ret void
}

declare void @_ZN2v88internal18BasicBlockProfiler5PrintEPNS0_7IsolateERSo(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v88internal18BasicBlockProfiler11ResetCountsEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate38IncreaseConcurrentOptimizationPriorityENS0_8CodeKindENS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64320) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63472
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal27OptimizingCompileDispatcher10PrioritizeENS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(105) %i.b, i64 %2) #46
  ret void
}

declare void @_ZN2v88internal27OptimizingCompileDispatcher10PrioritizeENS0_6TaggedINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(105), i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate27AbortConcurrentOptimizationENS0_16BlockingBehaviorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64320) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63472
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal27OptimizingCompileDispatcher5FlushENS0_16BlockingBehaviorE(ptr noundef nonnull align 8 dereferenceable(105) %i.b, i32 noundef %1) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 59560
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %.not3 = icmp eq ptr %i.f, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal6maglev26MaglevConcurrentDispatcher5FlushENS0_16BlockingBehaviorE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, i32 noundef %1) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN2v88internal27OptimizingCompileDispatcher5FlushENS0_16BlockingBehaviorE(ptr noundef nonnull align 8 dereferenceable(105), i32 noundef) local_unnamed_addr #3

declare void @_ZN2v88internal6maglev26MaglevConcurrentDispatcher5FlushENS0_16BlockingBehaviorE(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate18GetTurboStatisticsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.329") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64320) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 63568 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal8MallocednwEm(i64 noundef 200) #46 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.c, i8 0, i64 200, i1 false)
  store ptr %i.e, ptr %i.d, align 8
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 3 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #46
  %i.o = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #47 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.q, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.c, ptr %i.r, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 63576 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 8 uses
  store ptr %i.o, ptr %i.s, align 8
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #46, !inline_history !231
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #46, !inline_history !231
  br label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.af = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.h, label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_.exit, !prof !7

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #46
  br label %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_.exit

_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 63576
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.al, ptr %0, align 8
  %.not.i.i.i1 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i1, label %_ZNSt10shared_ptrIN2v88internal21CompilationStatisticsEEC2ERKS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN2v88internal21CompilationStatisticsELN9__gnu_cxx12_Lock_policyE2EE5resetIS2_EENSt9enable_ifIXsr21__sp_is_constructibleIS2_T_EE5valueEvE4typeEPS8_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i2 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %i.am, align 4
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4
  br label %_ZNSt10shared_ptrIN2v88internal21CompilationStatisticsEEC2ERKS3_.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v88internal21CompilationStatisticsEEC2ERKS3_.exit
end_hunk_0
