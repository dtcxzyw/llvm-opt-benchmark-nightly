Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-compiler?download=true
inline.NumInlined: 5481
inline.NumDeleted: 2947
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2v88internal4wasm16CompilationState37AllowAnotherTopTierJobForAllFunctionsEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16CompilationState30InitializeAfterDeserializationENS_4base6VectorIKiEES6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree readonly captures(address) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %6 = alloca [2 x %"class.std::unique_ptr.1514"], align 16 ; 6 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 5 uses
  %7 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %8 = alloca %"class.std::optional.1278", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::unique_ptr.1238", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.e = load atomic volatile i64, ptr @_ZZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl49InitializeCompilationProgressAfterDeserializationENS_4base6VectorIKiEES7_E29trace_event_unique_atomic3864 acquire, align 8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #29 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.78) #29, !inline_history !112 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  store atomic volatile i64 %i.l, ptr @_ZZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl49InitializeCompilationProgressAfterDeserializationENS_4base6VectorIKiEES7_E29trace_event_unique_atomic3864 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.f, %bb.a ], [ %i.k, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr null, ptr %7, align 8
  %i.m = load atomic volatile i8, ptr %.0.i monotonic, align 1
  %i.n = and i8 %i.m, 5
  %.not27.i = icmp eq i8 %i.n, 0
  br i1 %.not27.i, label %bb.d, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit33.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit33.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr @.str.116, ptr %i.a, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.117, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i8 2, ptr %i.b, align 1
  store i64 %2, ptr %i.c, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 2, ptr %i.p, align 1
  store i64 %4, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.r = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #29 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 88, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.115, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %6, i32 noundef 0) #29, !inline_history !112
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit33.i
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #29, !inline_history !113
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit33.i
  %i.ab = load ptr, ptr %6, align 16              ; 3 uses
  %.not.i.1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.1.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #29, !inline_history !113
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.0.i, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.115, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.v, ptr %i.ah, align 8
  store ptr %i.af, ptr %7, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.ai, align 8
  %i.aj = call noundef zeroext i1 @_ZN2v84base9TimeTicks16IsHighResolutionEv() #29
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.ak, align 8          ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 6224 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 6248 ; 3 uses
  %i.an = load atomic ptr, ptr %i.am acquire, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.f, label %_ZN2v88internal8Counters30wasm_compile_after_deserializeEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 6264 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #29
  %i.aq = load atomic ptr, ptr %i.am monotonic, align 8
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.g, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.as = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.al) #29
  store atomic ptr %i.as, ptr %i.am release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #29
  br label %_ZN2v88internal8Counters30wasm_compile_after_deserializeEv.exit.i

_ZN2v88internal8Counters30wasm_compile_after_deserializeEv.exit.i: ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i, %bb.e
  store ptr %i.al, ptr %i.d, align 8
  %i.at = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalIN2v88internal19TimedHistogramScopeEE7emplaceIJPNS1_14TimedHistogramEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8Counters30wasm_compile_after_deserializeEv.exit.i, %bb.d
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp eq i32 %i.az, 0
  br i1 %i.bb, label %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i, label %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i.i

_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.h
  %i.bc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #31, !noalias !124 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 41, i64 %i.ba, i1 false), !noalias !125
  br label %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i

_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i: ; preds = %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i.i, %bb.h
  %.sroa.045.0.i = phi ptr [ %i.bc, %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i.i ], [ null, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  store ptr %.sroa.045.0.i, ptr %i.bd, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v84base11OwnedVectorIhED2Ev.exit.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.be) #30
  br label %_ZN2v84base11OwnedVectorIhED2Ev.exit.i

_ZN2v84base11OwnedVectorIhED2Ev.exit.i:           ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.ba, ptr %i.bf, align 8
  %.idx.i = shl i64 %2, 2                         ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not2859.i = icmp eq i64 %2, 0
  br i1 %.not2859.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v84base11OwnedVectorIhED2Ev.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 84 ; 3 uses
  %i.bi = add i64 %.idx.i, -4                     ; 2 uses
  %i.bj = and i64 %i.bi, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bj, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.bk = load i32, ptr %1, align 4
  %i.bl = load i32, ptr %i.bh, align 4
  %i.bm = sub i32 %i.bk, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bd, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.02560.i.unr = phi ptr [ %1, %.lr.ph.i ], [ %i.bq, %.prol.loopexit.unr-lcssa ]
  %i.br = icmp eq i64 %i.bi, 0
  br i1 %i.br, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN2v84base11OwnedVectorIhED2Ev.exit.i
  %i.bs = load ptr, ptr %0, align 8               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 296 ; 2 uses
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 448
  %i.bv = load i8, ptr %i.bu, align 8, !range !57, !noundef !58
  %10 = trunc nuw i8 %i.bv to i1
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #29
  %i.bw = getelementptr i8, ptr %i.bs, i64 216
  %.val30.i = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val30.i, i64 704
  %i.by = load i8, ptr %i.bx, align 8
  %11 = icmp ne i8 %i.by, 0                       ; 2 uses
  %brmerge.i.i = or i1 %11, %10
  %.mux.i.i = select i1 %11, i16 514, i16 257
  br i1 %brmerge.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 784), align 16, !range !57, !noundef !58
  %i.ca = sub nuw nsw i8 2, %i.bz
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 737), align 1, !range !57, !noundef !58
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 736), align 32, !range !57
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = xor i1 %i.ce, true
  %i.cg = select i1 %i.cc, i1 true, i1 %i.cf
  %i.ch = zext nneg i8 %i.ca to i16               ; 2 uses
  %i.ci = shl nuw nsw i16 %i.ch, 8
  %i.cj = select i1 %i.cg, i16 %i.ci, i16 512
  %i.ck = or disjoint i16 %i.cj, %i.ch
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.sroa.5.0.i.i = phi i16 [ %i.ck, %bb.i ], [ %.mux.i.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.5.0.i.i to i8
  %sh.diff.i = lshr i16 %.sroa.5.0.i.i, 6
  %tr.sh.diff.i = trunc nuw nsw i16 %sh.diff.i to i8
  %i.cl = and i8 %tr.sh.diff.i, -4
  %i.cm = or i8 %i.cl, %.sroa.0.0.extract.trunc.i ; 3 uses
  %.idx65.i = shl i64 %4, 2                       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 %.idx65.i
  %.not2961.i = icmp eq i64 %4, 0
  br i1 %.not2961.i, label %._crit_edge64.thread.i, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 84 ; 3 uses
  %i.cp = add i64 %.idx65.i, -4                   ; 2 uses
  %i.cq = and i64 %i.cp, 4
  %lcmp.mod17.not.not = icmp eq i64 %i.cq, 0
  br i1 %lcmp.mod17.not.not, label %.prol.loopexit15.unr-lcssa, label %.prol.loopexit15

.prol.loopexit15.unr-lcssa:                       ; preds = %.lr.ph63.i
  %i.cr = load i32, ptr %3, align 4
  %i.cs = load i32, ptr %i.co, align 4
  %i.ct = sub i32 %i.cr, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.bd, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store i8 %i.cm, ptr %i.cw, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %.prol.loopexit15

.prol.loopexit15:                                 ; preds = %.prol.loopexit15.unr-lcssa, %.lr.ph63.i
  %.02462.i.unr = phi ptr [ %3, %.lr.ph63.i ], [ %i.cx, %.prol.loopexit15.unr-lcssa ]
  %i.cy = icmp eq i64 %i.cp, 0
  br i1 %i.cy, label %._crit_edge64.i, label %.lr.ph63.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.02560.i = phi ptr [ %i.dm, %.lr.ph.i.new ], [ %.02560.i.unr, %.prol.loopexit ] ; 3 uses
  %i.cz = load i32, ptr %.02560.i, align 4
  %i.da = load i32, ptr %i.bh, align 4
  %i.db = sub i32 %i.cz, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = load ptr, ptr %i.bd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store i8 0, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.02560.i, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = load i32, ptr %i.bh, align 4
  %i.di = sub i32 %i.dg, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = load ptr, ptr %i.bd, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i8 0, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.02560.i, i64 8 ; 2 uses
  %.not28.i.1 = icmp eq ptr %i.dm, %i.bg
  br i1 %.not28.i.1, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge64.i:                                  ; preds = %.lr.ph63.i.new, %.prol.loopexit15
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = trunc i64 %4 to i32
  %i.dq = add i32 %i.do, %i.dp
  store i32 %i.dq, ptr %i.dn, align 4
  %i.dr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 922), align 2, !range !57
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %._crit_edge64.thread.i, label %bb.j

.lr.ph63.i.new:                                   ; preds = %.prol.loopexit15, %.lr.ph63.i.new
  %.02462.i = phi ptr [ %i.eg, %.lr.ph63.i.new ], [ %.02462.i.unr, %.prol.loopexit15 ] ; 3 uses
  %i.dt = load i32, ptr %.02462.i, align 4
  %i.du = load i32, ptr %i.co, align 4
  %i.dv = sub i32 %i.dt, %i.du
  %i.dw = sext i32 %i.dv to i64
  %i.dx = load ptr, ptr %i.bd, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  store i8 %i.cm, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.02462.i, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = load i32, ptr %i.co, align 4
  %i.ec = sub i32 %i.ea, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = load ptr, ptr %i.bd, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ed
  store i8 %i.cm, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.02462.i, i64 8 ; 2 uses
  %.not29.i.1 = icmp eq ptr %i.eg, %i.cn
  br i1 %.not29.i.1, label %._crit_edge64.i, label %.lr.ph63.i.new

._crit_edge64.thread.i:                           ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i, %._crit_edge64.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = or i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge64.thread.i, %._crit_edge64.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #29
  %i.ek = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31, !noalias !126 ; 7 uses
  %i.el = load ptr, ptr %0, align 8, !noalias !126
  store ptr %i.el, ptr %i.ek, align 8, !noalias !126
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.em, i8 0, i64 48, i1 false), !noalias !126
  %i.en = ptrtoint ptr %i.ek to i64
  store i64 %i.en, ptr %9, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl26InitializeCompilationUnitsESt10unique_ptrINS2_22CompilationUnitBuilderESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %9)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ev = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #30
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 56) #30
  %i.fb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 922), align 2, !range !57, !noundef !58
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef zeroext i1 %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe) #29, !inline_history !122
  br i1 %i.fi, label %bb.n, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i

bb.n:                                             ; preds = %bb.m
  %i.fj = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fj) #29, !inline_history !122
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i

_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i: ; preds = %bb.n, %bb.m, %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i
  %i.fn = load i8, ptr %i.ai, align 8, !range !57, !noundef !58
  %i.fo = trunc nuw i8 %i.fn to i1
  store i8 0, ptr %i.ai, align 8
  br i1 %i.fo, label %bb.o, label %_ZNSt14_Optional_baseIN2v88internal19TimedHistogramScopeELb0ELb0EED2Ev.exit.i

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load atomic ptr, ptr %i.fr seq_cst, align 8
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not3.i.i.i.i.i.i, label %_ZN2v88internal23BaseTimedHistogramScope4StopEv.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ft = call i64 @_ZN2v84base9TimeTicks3NowEv() #29
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %8, align 8
  %i.fu = sub nsw i64 %i.ft, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fv = load ptr, ptr %i.fp, align 8
  call void @_ZN2v88internal14TimedHistogram14AddTimedSampleENS_4base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(52) %i.fv, i64 %i.fu) #29
  store i64 0, ptr %8, align 8
  br label %_ZN2v88internal23BaseTimedHistogramScope4StopEv.exit.i.i.i.i.i.i

_ZN2v88internal23BaseTimedHistogramScope4StopEv.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.fu, %bb.p ], [ -1, %bb.o ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %5, align 8
  %i.fw = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm16CompilationState3NewERKSt10shared_ptrINS1_12NativeModuleEES3_INS0_8CountersEENS1_20WasmDetectedFeaturesE:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %scevgep.i.i, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ac = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #31, !noalias !135 ; 5 uses
  store i32 2147483647, ptr %i.ac, align 4, !noalias !135
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #29, !noalias !135
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %scevgep.i.i.i.i, i8 0, i64 72, i1 false), !noalias !135
  store i32 0, ptr %i.ae, align 8, !noalias !135
  store ptr %i.ac, ptr %4, align 8, !alias.scope !135
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplESt14default_deleteIS6_EESaIS9_EE12emplace_backIJS9_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.af = load ptr, ptr %4, align 8               ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplESt14default_deleteIS5_EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt8weak_ptrIN2v88internal4wasm12NativeModuleEEC2IS3_vEERKSt10shared_ptrIT_E.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.val.i.i.i.i.i = load ptr, ptr %i.ag, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EED2Ev.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %.val3.i.i.i.i.i = load ptr, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.aj = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ak) #30
  br label %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EED2Ev.exit.i.i.i.i.i

_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.ptr1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.al = load ptr, ptr %.ptr1.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EED2Ev.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt14priority_queueIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues19TopTierPriorityUnitESt6vectorIS5_SaIS5_EESt4lessIS5_EED2Ev.exit.i.i.i.i.i
  %.ptr1.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ar = load ptr, ptr %.ptr1.1.i.i.i.i.i, align 8 ; 3 uses
  %.not.i.i.i.1.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.1.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplEEclEPS5_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #30
  br label %_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplEEclEPS5_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 104) #30
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplEEclEPS5_.exit.i.i.i, %_ZNSt8weak_ptrIN2v88internal4wasm12NativeModuleEEC2IS3_vEERKSt10shared_ptrIT_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ay = sext i32 %i.w to i64                    ; 2 uses
  %i.az = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #31, !noalias !136 ; 2 uses
  %i.ba = icmp eq i32 %i.w, 0
  br i1 %i.ba, label %_ZSt11make_uniqueIA_St6atomicIbEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit.i.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplESt14default_deleteIS5_EED2Ev.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ay, i1 false), !noalias !136
  br label %_ZSt11make_uniqueIA_St6atomicIbEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit.i.i

_ZSt11make_uniqueIA_St6atomicIbEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit.i.i: ; preds = %.loopexit.loopexit.i.i.i, %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_121CompilationUnitQueues9QueueImplESt14default_deleteIS5_EED2Ev.exit.i.i
  %i.bb = load ptr, ptr %i.ab, align 8            ; 2 uses
  store ptr %i.az, ptr %i.ab, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNKSt14default_deleteIA_St6atomicIbEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_St6atomicIbEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i: ; preds = %_ZSt11make_uniqueIA_St6atomicIbEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.bb) #30
  br label %_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_St6atomicIbEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i, %_ZSt11make_uniqueIA_St6atomicIbEENSt8__detail9_MakeUniqIT_E7__arrayEm.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bc) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 %3, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i8 0, i64 64, i1 false)
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(33) %.ptr.i) #29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bj, i8 0, i64 25, i1 false)
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(33) %.ptr.1.i) #29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bk, i8 0, i64 25, i1 false)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i64 @_ZNK2v88internal4wasm16CompilationState17detected_featuresEv(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind memory(argmem: readwrite) uwtable
define hidden i64 @_ZN2v88internal4wasm16CompilationState22UpdateDetectedFeaturesENS1_20WasmDetectedFeaturesE(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 3 uses
  %i.c = or i64 %i.b, %1
  %i.d = cmpxchg weak ptr %i.a, i64 %i.b, i64 %i.c monotonic monotonic, align 8 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22UpdateDetectedFeaturesENS1_20WasmDetectedFeaturesE.exit, label %_ZNSt6atomicIN2v88internal4wasm20WasmDetectedFeaturesEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i

_ZNSt6atomicIN2v88internal4wasm20WasmDetectedFeaturesEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i: ; preds = %bb.a, %_ZNSt6atomicIN2v88internal4wasm20WasmDetectedFeaturesEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i
  %i.f = phi { i64, i1 } [ %i.i, %_ZNSt6atomicIN2v88internal4wasm20WasmDetectedFeaturesEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i ], [ %i.d, %bb.a ]
  %i.g = extractvalue { i64, i1 } %i.f, 0         ; 3 uses
  %i.h = or i64 %i.g, %1
  %i.i = cmpxchg weak ptr %i.a, i64 %i.g, i64 %i.h monotonic monotonic, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22UpdateDetectedFeaturesENS1_20WasmDetectedFeaturesE.exit, label %_ZNSt6atomicIN2v88internal4wasm20WasmDetectedFeaturesEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i, !llvm.loop !9

_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl22UpdateDetectedFeaturesENS1_20WasmDetectedFeaturesE.exit: ; preds = %_ZNSt6atomicIN2v88internal4wasm20WasmDetectedFeaturesEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i, %bb.a
  %.sroa.04.0.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.g, %_ZNSt6atomicIN2v88internal4wasm20WasmDetectedFeaturesEE21compare_exchange_weakERS3_S3_St12memory_orderS6_.exit.i ]
  %i.k = xor i64 %.sroa.04.0.lcssa.i, -1
  %i.l = and i64 %1, %i.k
  ret i64 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm11CompileLazyEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi(ptr noundef %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::wasm::WasmCompilationUnit", align 8 ; 4 uses
  %4 = alloca %"class.std::optional.517", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::wasm::WasmCompilationUnit", align 4 ; 7 uses
  %6 = alloca %"struct.v8::internal::wasm::CompilationEnv", align 8 ; 9 uses
  %7 = alloca %"class.v8::internal::wasm::WasmDetectedFeatures", align 8 ; 6 uses
  %8 = alloca %"struct.v8::internal::wasm::WasmCompilationResult", align 8 ; 7 uses
  %9 = alloca %"class.v8::internal::wasm::WasmCodeRefScope", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"struct.v8::internal::wasm::UnpublishedWasmCode", align 8 ; 4 uses
  %i.b = add i64 %1, 263
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8              ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 0, ptr %i.n, align 8
  %i.o = tail call noundef zeroext i1 @_ZN2v84base9TimeTicks16IsHighResolutionEv() #29
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZNSt22_Optional_payload_baseIN2v88internal4wasm12_GLOBAL__N_122CompileLazyTimingScopeEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  store ptr %i.m, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.k, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #29
  store i64 %i.r, ptr %i.q, align 8
  store i8 1, ptr %i.n, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 296 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #29
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  %i.w = load i8, ptr %i.v, align 8, !range !57, !noundef !58 ; 2 uses
  %11 = trunc nuw i8 %i.w to i1                   ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #29
  %i.x = getelementptr i8, ptr %i.k, i64 216      ; 2 uses
  %.val.i = load ptr, ptr %i.x, align 8           ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 704
  %i.z = load i8, ptr %i.y, align 8
  %12 = icmp ne i8 %i.z, 0                        ; 2 uses
  %brmerge.i.i = or i1 %12, %11
  br i1 %brmerge.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i.thread

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i.thread: ; preds = %bb.c
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 784), align 16, !range !57, !noundef !58
  %i.ab = sub nuw nsw i8 2, %i.aa                 ; 2 uses
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 737), align 1, !range !57, !noundef !58
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 736), align 32, !range !57
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = xor i1 %i.af, true
  %i.ah = select i1 %i.ad, i1 true, i1 %i.ag
  %i.ai = zext nneg i8 %i.ab to i16               ; 2 uses
  %i.aj = shl nuw nsw i16 %i.ai, 8
  %i.ak = select i1 %i.ah, i16 %i.aj, i16 512     ; 2 uses
  %i.al = or disjoint i16 %i.ak, %i.ai
  %.sroa.5.0.extract.shift.i45 = lshr exact i16 %i.ak, 8
  br label %bb.d

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i: ; preds = %bb.c
  %.mux.i.i = select i1 %12, i16 514, i16 257     ; 3 uses
  %.sroa.06.0.extract.trunc.i = trunc i16 %.mux.i.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i16 %.mux.i.i, 8 ; 2 uses
  br i1 %11, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i._ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit_crit_edge, label %bb.d

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i._ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit_crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %.sroa.0.0.copyload.i.i19.pre = load i32, ptr %.phi.trans.insert, align 8, !noalias !142
  br label %_ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit

bb.d:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i.thread, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i
  %.sroa.5.0.extract.trunc.i50.in = phi i16 [ %.sroa.5.0.extract.shift.i45, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i.thread ], [ %.sroa.5.0.extract.shift.i, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i ]
  %.sroa.06.0.extract.trunc.i49 = phi i8 [ %i.ab, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i.thread ], [ %.sroa.06.0.extract.trunc.i, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i ] ; 2 uses
  %.sroa.5.0.i.i47 = phi i16 [ %i.al, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i.thread ], [ %.mux.i.i, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i ]
  %.sroa.5.0.extract.trunc.i50 = trunc nuw nsw i16 %.sroa.5.0.extract.trunc.i50.in to i8 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.am, align 8 ; 2 uses
  %i.an = and i32 %.sroa.0.0.copyload.i.i, 512
  %.not18.i = icmp eq i32 %i.an, 0
  br i1 %.not18.i, label %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 520
  %i.ap = load i64, ptr %i.ao, align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.not.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 512
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %.sroa.06.0.i.i.i.i, %bb.h ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %i.ar = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.ar, label %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp eq i32 %2, %i.at
  br i1 %i.au, label %.loopexit.i, label %bb.g, !llvm.loop !10

bb.i:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 496
  %i.aw = zext i32 %2 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 504
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = urem i64 %i.aw, %i.ay                   ; 2 uses
  %i.ba = load ptr, ptr %i.av, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = icmp eq i32 %2, %i.bf
  br i1 %i.bg, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.bh = icmp eq i32 %2, %i.bk
  br i1 %i.bh, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %bb.k
  %.020.i.i.i.i.i.i = phi ptr [ %i.bi, %bb.k ], [ %i.bd, %bb.j ]
  %i.bi = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = urem i64 %i.bl, %i.ay
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bm, %i.az
  br i1 %.not19.i.i.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !11

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.l
  br label %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i, !llvm.loop !11

.loopexit.i:                                      ; preds = %bb.k, %bb.h, %bb.j
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.h ], [ %i.bd, %bb.j ], [ %i.bi, %bb.k ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 12
  %i.bo = load i64, ptr %i.bn, align 4
  %.sroa.0.4.extract.shift.mask.i = and i64 %i.bo, -4294967296
  %i.bp = icmp eq i64 %.sroa.0.4.extract.shift.mask.i, 545460846592
  %spec.select.i = select i1 %i.bp, i8 0, i8 %.sroa.5.0.extract.trunc.i50
  br label %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i

_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %.loopexit.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.i, %bb.d
  %.sroa.5.1.i = phi i8 [ %.sroa.5.0.extract.trunc.i50, %bb.d ], [ %spec.select.i, %.loopexit.i ], [ %.sroa.5.0.extract.trunc.i50, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ %.sroa.5.0.extract.trunc.i50, %bb.g ], [ %.sroa.5.0.extract.trunc.i50, %bb.i ], [ %.sroa.5.0.extract.trunc.i50, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 768), align 256 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i
  %.not.i = icmp ne i32 %2, %i.bq
  %i.bs = icmp ne i8 %.sroa.5.1.i, 0
  %spec.select11.i = select i1 %.not.i, i1 %i.bs, i1 false
  br i1 %spec.select11.i, label %bb.n, label %.critedge.i, !prof !54

bb.n:                                             ; preds = %bb.m
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.n, %bb.m, %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i
  %.sroa.5.2.i = phi i8 [ %.sroa.06.0.extract.trunc.i49, %bb.n ], [ %.sroa.5.1.i, %bb.m ], [ %.sroa.5.1.i, %_ZNK2v88internal4wasm10WasmModule22GetCompilationPriorityEj.exit.thread.i ]
  %spec.select12.i = tail call i8 @llvm.smax.i8(i8 %.sroa.5.2.i, i8 %.sroa.06.0.extract.trunc.i49)
  %i.bt = zext i8 %spec.select12.i to i16
  %.pre = trunc i16 %.sroa.5.0.i.i47 to i8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit

_ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i._ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit_crit_edge, %.critedge.i
  %.sroa.03.0.extract.trunc.pre-phi = phi i8 [ %.sroa.06.0.extract.trunc.i, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i._ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit_crit_edge ], [ %.pre, %.critedge.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i19 = phi i32 [ %.sroa.0.0.copyload.i.i19.pre, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i._ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit_crit_edge ], [ %.sroa.0.0.copyload.i.i, %.critedge.i ]
  %.sroa.5.4.i = phi i16 [ %.sroa.5.0.extract.shift.i, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i._ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit_crit_edge ], [ %i.bt, %.critedge.i ] ; 2 uses
  %.sroa.5.0.extract.trunc = trunc nuw i16 %.sroa.5.4.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 %2, ptr %5, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 %.sroa.03.0.extract.trunc.pre-phi, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.w, ptr %i.bv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  %i.bx = load <2 x ptr>, ptr %i.bw, align 8, !noalias !142
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 536
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !142 ; 2 uses
  %i.cb = load <2 x ptr>, ptr %i.by, align 8, !noalias !142
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal4wasm14CompilationEnv9ForModuleEPKNS1_12NativeModuleE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !noalias !142
  %.not.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load i32, ptr %i.cc, align 4, !noalias !142
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !noalias !142
  br label %_ZN2v88internal4wasm14CompilationEnv9ForModuleEPKNS1_12NativeModuleE.exit

bb.q:                                             ; preds = %bb.o
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4, !noalias !142 ; 0 uses
  br label %_ZN2v88internal4wasm14CompilationEnv9ForModuleEPKNS1_12NativeModuleE.exit

_ZN2v88internal4wasm14CompilationEnv9ForModuleEPKNS1_12NativeModuleE.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit, %bb.p, %bb.q
  store ptr %.val.i, ptr %6, align 8, !alias.scope !142
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i.i19, ptr %i.ch, align 8, !alias.scope !142
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x ptr> %i.bx, ptr %i.ci, align 8, !alias.scope !142
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 40
  store <2 x ptr> %i.cb, ptr %i.cj, align 8, !alias.scope !142
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 208 ; 3 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) #29, !noalias !143
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !143 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !143 ; 8 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN2v88internal4wasm16WireBytesStorageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.critedge, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4wasm14CompilationEnv9ForModuleEPKNS1_12NativeModuleE.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 7 uses
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !noalias !143
  %.not.i.i.i.i.i21 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load i32, ptr %i.cq, align 4, !noalias !143
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cq, align 4, !noalias !143
  br label %_ZNK2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl19GetWireBytesStorageEv.exit

bb.t:                                             ; preds = %bb.r
  %i.cu = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4, !noalias !143 ; 0 uses
  br label %_ZNK2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl19GetWireBytesStorageEv.exit

_ZNK2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl19GetWireBytesStorageEv.exit: ; preds = %bb.s, %bb.t
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) #29, !noalias !143
  call void @_ZN2v88internal4wasm19WasmCompilationUnit18ExecuteCompilationEPNS1_14CompilationEnvEPKNS1_16WireBytesStorageEPNS0_8CountersEPNS1_20WasmDetectedFeaturesE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::WasmCompilationResult") align 8 %8, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull %6, ptr noundef %i.cn, ptr noundef %i.m, ptr noundef nonnull %7) #29
  %i.cv = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl19GetWireBytesStorageEv.exit
  store i32 0, ptr %i.cq, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cy, align 4
  %i.cz = load ptr, ptr %i.cp, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor7ProcessEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 688 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #29
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 576
  store ptr %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  store i64 0, ptr %i.x, align 8
  %i.y = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i32 %2, ptr %i.z, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.y, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #29
  %i.aa = load i64, ptr %i.x, align 8
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ab, ptr %i.x, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor12ProcessQueueEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.ad = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  call void @_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor15ProcessFunctionEi(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef %i.af)
  %i.ag = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 40) #30
  %i.ah = load i64, ptr %i.x, align 8
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.x, align 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor12ProcessQueueEv.exit, label %.lr.ph.i, !llvm.loop !195

_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor12ProcessQueueEv.exit: ; preds = %.lr.ph.i, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.al = load ptr, ptr %i.u, align 8
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef %i.al)
  %i.am = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor12ProcessQueueEv.exit
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #29
  br label %_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessorD2Ev.exit

_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessorD2Ev.exit: ; preds = %_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor12ProcessQueueEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi(ptr noundef %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 263
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 862), align 2, !range !57, !noundef !58
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor7ProcessEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi(ptr noundef %0, i64 %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @_ZN2v88internal4wasm10WasmEngine15CompileFunctionEPNS0_8CountersEPNS1_12NativeModuleEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(8488) %i.m, ptr noundef %i.o, ptr noundef %i.j, i32 noundef %2, i8 noundef signext 2) #29
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load atomic i8, ptr %i.r monotonic, align 1, !range !57, !noundef !58
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !54

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

declare void @_ZN2v88internal4wasm10WasmEngine15CompileFunctionEPNS0_8CountersEPNS1_12NativeModuleEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm19TierUpAllForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEE(ptr noundef %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::WasmCodeRefScope", align 8 ; 4 uses
  %i.a = add i64 %1, 263
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 7
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add i32 %i.p, %i.n                       ; 2 uses
  %i.r = icmp ult i32 %i.n, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 58656
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit, %bb.a
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit
  %.015 = phi i32 [ %i.n, %.lr.ph ], [ %i.al, %_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit ] ; 4 uses
  %i.t = call noundef zeroext i1 @_ZNK2v88internal4wasm12NativeModule15HasCodeWithTierEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(552) %i.j, i32 noundef %.015, i8 noundef signext 2) #29
  br i1 %i.t, label %_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.b, align 8
  %i.v = add i64 %i.u, 7
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 862), align 2, !range !57, !noundef !58
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor7ProcessEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi(ptr noundef %0, i64 %1, i32 noundef %.015)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #29
  %i.af = load ptr, ptr %i.s, align 8
  call void @_ZN2v88internal4wasm10WasmEngine15CompileFunctionEPNS0_8CountersEPNS1_12NativeModuleEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(8488) %i.ae, ptr noundef %i.af, ptr noundef %i.ab, i32 noundef %.015, i8 noundef signext 2) #29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load atomic i8, ptr %i.ai monotonic, align 1, !range !57, !noundef !58
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit, !prof !54

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #32
  unreachable

_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit: ; preds = %bb.e, %bb.b
  %i.al = add i32 %.015, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !196
}

declare noundef zeroext i1 @_ZNK2v88internal4wasm12NativeModule15HasCodeWithTierEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(552), i32 noundef, i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm31InitializeCompilationForTestingEPNS1_12NativeModuleE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl29InitializeCompilationProgressEPNS1_18ProfileInformationE(ptr noundef nonnull align 8 dereferenceable(416) %i.b, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl29InitializeCompilationProgressEPNS1_18ProfileInformationE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.g = load i8, ptr %i.f, align 8, !range !57, !noundef !58
  %2 = trunc nuw i8 %i.g to i1
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #29
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 922), align 2, !range !57, !noundef !58
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 921), align 1, !range !57, !noundef !58
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit, label %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29

_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.m = load i8, ptr %i.l, align 8
  %.not32 = icmp eq i8 %i.m, 0
  br i1 %.not32, label %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit

_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29: ; preds = %bb.b, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit
  %.val31 = load ptr, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val31, i64 704
  %i.o = load i8, ptr %i.n, align 8
  %3 = icmp ne i8 %i.o, 0                         ; 2 uses
  %brmerge.i = or i1 %3, %2
  %.mux.i = select i1 %3, i16 514, i16 257
  br i1 %brmerge.i, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 784), align 16, !range !57, !noundef !58
  %i.q = sub nuw nsw i8 2, %i.p
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 737), align 1, !range !57, !noundef !58
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 736), align 32, !range !57
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = xor i1 %i.u, true
  %i.w = select i1 %i.s, i1 true, i1 %i.v
  %i.x = zext nneg i8 %i.q to i16                 ; 2 uses
  %i.y = shl nuw nsw i16 %i.x, 8
  %i.z = select i1 %i.w, i16 %i.y, i16 512
  %i.aa = or disjoint i16 %i.z, %i.x
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit: ; preds = %bb.a, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29, %bb.c
  %.sroa.5.0.i = phi i16 [ %i.aa, %bb.c ], [ 0, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit ], [ %.mux.i, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29 ], [ 0, %bb.a ] ; 2 uses
  %.sroa.03.0.extract.trunc = trunc i16 %.sroa.5.0.i to i8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  %i.ae = icmp eq i32 %i.ac, 0
  br i1 %i.ae, label %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit, label %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i:            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit
  %sh.diff = lshr i16 %.sroa.5.0.i, 6
  %tr.sh.diff = trunc nuw nsw i16 %sh.diff to i8
  %i.af = and i8 %tr.sh.diff, -4
  %i.ag = or i8 %i.af, %.sroa.03.0.extract.trunc
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #31, !noalias !203 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ah, i8 %i.ag, i64 %i.ad, i1 false), !noalias !204
  br label %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit

_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit:   ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit, %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i
  %.sroa.025.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i ], [ null, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  store ptr %.sroa.025.0, ptr %i.ai, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11OwnedVectorIhED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #30
  br label %_ZN2v84base11OwnedVectorIhED2Ev.exit

_ZN2v84base11OwnedVectorIhED2Ev.exit:             ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.ad, ptr %i.ak, align 8
  %.not = icmp eq i8 %.sroa.03.0.extract.trunc, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11OwnedVectorIhED2Ev.exit
  %i.al = load i32, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, %i.al
  store i32 %i.ao, ptr %i.am, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v84base11OwnedVectorIhED2Ev.exit
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %.sroa.0.0.copyload.i = load i32, ptr %i.aq, align 8
  %i.ar = and i32 %.sroa.0.0.copyload.i, 512
  %.not33.a = icmp eq i32 %i.ar, 0
  br i1 %.not33.a, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %.sroa.021.034 = load ptr, ptr %i.as, align 8   ; 2 uses
  %i.at = icmp eq ptr %.sroa.021.034, null
  br i1 %i.at, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.021.035 = phi ptr [ %.sroa.021.034, %.lr.ph ], [ %.sroa.021.0, %bb.g ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.021.035, i64 8
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.021.035, i64 12
  %i.ay = load i64, ptr %i.ax, align 4
  %i.az = zext i32 %i.aw to i64
  %.sroa.1.0.extract.shift.i = lshr i64 %i.ay, 32 ; 2 uses
  %.sroa.1.0.extract.trunc.i = trunc nuw i64 %.sroa.1.0.extract.shift.i to i32
  %i.ba = load ptr, ptr %i.ai, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = and i8 %i.bc, 3
  %i.be = icmp sgt i32 %.sroa.1.0.extract.trunc.i, 126
  %i.bf = icmp eq i64 %.sroa.1.0.extract.shift.i, 4294967295
  %i.bg = or i1 %i.bf, %i.be
  %i.bh = and i8 %i.bc, -16
  %i.bi = select i1 %i.bg, i8 1, i8 10
  %i.bj = or disjoint i8 %i.bi, %i.bh
  store i8 %i.bj, ptr %i.bb, align 1
  %.not.i = icmp eq i8 %i.bd, 0
  %i.bk = zext i1 %.not.i to i32
  %i.bl = load i32, ptr %i.au, align 4
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.au, align 4
  %.sroa.021.0 = load ptr, ptr %.sroa.021.035, align 8 ; 2 uses
  %i.bn = icmp eq ptr %.sroa.021.0, null
  br i1 %i.bn, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 772), align 4 ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.loopexit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %.not15 = icmp ult i32 %i.bo, %i.br
  br i1 %.not15, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = zext nneg i32 %i.bo to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bt, align 8
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 5
  %i.cb = icmp ugt i64 %i.ca, %i.bs
  br i1 %i.cb, label %bb.j, label %.critedge, !prof !54

bb.j:                                             ; preds = %bb.i
  %i.cc = sub nuw nsw i32 %i.bo, %i.br
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.ai, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1             ; 2 uses
  %i.ch = and i8 %i.cg, 3
  %i.ci = and i8 %i.cg, -16
  %i.cj = or disjoint i8 %i.ci, 10
  store i8 %i.cj, ptr %i.cf, align 1
  %.not.i17 = icmp eq i8 %i.ch, 0
  %i.ck = zext i1 %.not.i17 to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add nsw i32 %i.cm, %i.ck
  store i32 %i.cn, ptr %i.cl, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.j, %.loopexit, %bb.h
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.co = load ptr, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 216
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = load ptr, ptr %1, align 8               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not42.i = icmp eq ptr %i.cr, %i.ct
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 84
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.n, %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not3444.i = icmp eq ptr %i.cx, %i.cz
  br i1 %.not3444.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %._crit_edge.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 84
  br label %bb.o

bb.l:                                             ; preds = %bb.n, %.lr.ph.i
  %.03343.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %i.dm, %bb.n ] ; 2 uses
  %i.db = load i32, ptr %.03343.i, align 4
  %i.dc = load i32, ptr %i.cu, align 4
  %i.dd = sub i32 %i.db, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.ai, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = and i8 %i.dh, 3
  %.not35.i = icmp eq i8 %i.di, 0
  br i1 %.not35.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dj = or disjoint i8 %i.dh, 1
  store i8 %i.dj, ptr %i.dg, align 1
  %i.dk = load i32, ptr %i.cv, align 4
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.cv, align 4
  br label %bb.n
end_hunk_2
