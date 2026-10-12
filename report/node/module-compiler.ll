Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-compiler?download=true
inline.NumInlined: 5481
inline.NumDeleted: 2947
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2v88internal4wasm16CompilationState30InitializeAfterDeserializationENS_4base6VectorIKiEES6_:bb.a
  store ptr null, ptr %7, align 8
  %i.m = load atomic volatile i8, ptr %.0.i monotonic, align 1
  %i.n = and i8 %i.m, 5
  %.not27.i = icmp eq i8 %i.n, 0
  br i1 %.not27.i, label %bb.d, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit33.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit33.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @.str.116, ptr %i.a, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.117, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 2, ptr %i.b, align 1
  store i64 %2, ptr %i.c, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 2, ptr %i.p, align 1
  store i64 %4, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.r = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #28 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 88, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.115, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %6, i32 noundef 0) #28, !inline_history !106
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit33.i
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #28, !inline_history !107
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit33.i
  %i.ab = load ptr, ptr %6, align 16              ; 3 uses
  %.not.i.1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.1.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #28, !inline_history !107
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1.i, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.0.i, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.115, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.v, ptr %i.ah, align 8
  store ptr %i.af, ptr %7, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.ai, align 8
  %i.aj = call noundef zeroext i1 @_ZN2v84base9TimeTicks16IsHighResolutionEv() #28
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.ak, align 8          ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 6224 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 6248 ; 3 uses
  %i.an = load atomic ptr, ptr %i.am acquire, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.f, label %_ZN2v88internal8Counters30wasm_compile_after_deserializeEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 6264 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #28
  %i.aq = load atomic ptr, ptr %i.am monotonic, align 8
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.g, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.as = call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.al) #28
  store atomic ptr %i.as, ptr %i.am release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #28
  br label %_ZN2v88internal8Counters30wasm_compile_after_deserializeEv.exit.i

_ZN2v88internal8Counters30wasm_compile_after_deserializeEv.exit.i: ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i, %bb.e
  store ptr %i.al, ptr %i.d, align 8
  %i.at = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalIN2v88internal19TimedHistogramScopeEE7emplaceIJPNS1_14TimedHistogramEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8Counters30wasm_compile_after_deserializeEv.exit.i, %bb.d
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp eq i32 %i.az, 0
  br i1 %i.bb, label %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i, label %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i.i

_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.h
  %i.bc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #30, !noalias !118 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 41, i64 %i.ba, i1 false), !noalias !119
  br label %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i

_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i: ; preds = %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i.i, %bb.h
  %.sroa.045.0.i = phi ptr [ %i.bc, %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i.i ], [ null, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  store ptr %.sroa.045.0.i, ptr %i.bd, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v84base11OwnedVectorIhED2Ev.exit.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.be) #29
  br label %_ZN2v84base11OwnedVectorIhED2Ev.exit.i

_ZN2v84base11OwnedVectorIhED2Ev.exit.i:           ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.ba, ptr %i.bf, align 8
  %.idx.i = shl i64 %2, 2                         ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not2860.i = icmp eq i64 %2, 0
  br i1 %.not2860.i, label %._crit_edge.i, label %.lr.ph.i

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
  %.02561.i.unr = phi ptr [ %1, %.lr.ph.i ], [ %i.bq, %.prol.loopexit.unr-lcssa ]
  %i.br = icmp eq i64 %i.bi, 0
  br i1 %i.br, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN2v84base11OwnedVectorIhED2Ev.exit.i
  %i.bs = load ptr, ptr %0, align 8               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 296 ; 2 uses
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 448
  %i.bv = load i8, ptr %i.bu, align 8, !range !57, !noundef !58
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #28
  %i.bw = getelementptr i8, ptr %i.bs, i64 216
  %.val30.i = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val30.i, i64 704
  %i.by = load i8, ptr %i.bx, align 8             ; 2 uses
  %.not59.i = icmp eq i8 %i.by, 0
  %i.bz = or i8 %i.by, %i.bv
  %brmerge.i.not.i = icmp eq i8 %i.bz, 0
  %.mux.i.i = select i1 %.not59.i, i16 257, i16 514
  br i1 %brmerge.i.not.i, label %bb.i, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ca = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 784), align 16, !range !57, !noundef !58
  %i.cb = sub nuw nsw i8 2, %i.ca
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 737), align 1, !range !57, !noundef !58
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 736), align 32, !range !57
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = xor i1 %i.cf, true
  %i.ch = select i1 %i.cd, i1 true, i1 %i.cg
  %i.ci = zext nneg i8 %i.cb to i16               ; 2 uses
  %i.cj = shl nuw nsw i16 %i.ci, 8
  %i.ck = select i1 %i.ch, i16 %i.cj, i16 512
  %i.cl = or disjoint i16 %i.ck, %i.ci
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i: ; preds = %bb.i, %._crit_edge.i
  %.sroa.5.0.i.i = phi i16 [ %i.cl, %bb.i ], [ %.mux.i.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.5.0.i.i to i8
  %sh.diff.i = lshr i16 %.sroa.5.0.i.i, 6
  %tr.sh.diff.i = trunc nuw nsw i16 %sh.diff.i to i8
  %i.cm = and i8 %tr.sh.diff.i, -4
  %i.cn = or i8 %i.cm, %.sroa.0.0.extract.trunc.i ; 3 uses
  %.idx66.i = shl i64 %4, 2                       ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %.idx66.i
  %.not2962.i = icmp eq i64 %4, 0
  br i1 %.not2962.i, label %._crit_edge65.thread.i, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aw, i64 84 ; 3 uses
  %i.cq = add i64 %.idx66.i, -4                   ; 2 uses
  %i.cr = and i64 %i.cq, 4
  %lcmp.mod17.not.not = icmp eq i64 %i.cr, 0
  br i1 %lcmp.mod17.not.not, label %.prol.loopexit15.unr-lcssa, label %.prol.loopexit15

.prol.loopexit15.unr-lcssa:                       ; preds = %.lr.ph64.i
  %i.cs = load i32, ptr %3, align 4
  %i.ct = load i32, ptr %i.cp, align 4
  %i.cu = sub i32 %i.cs, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.bd, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 %i.cn, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %.prol.loopexit15

.prol.loopexit15:                                 ; preds = %.prol.loopexit15.unr-lcssa, %.lr.ph64.i
  %.02463.i.unr = phi ptr [ %3, %.lr.ph64.i ], [ %i.cy, %.prol.loopexit15.unr-lcssa ]
  %i.cz = icmp eq i64 %i.cq, 0
  br i1 %i.cz, label %._crit_edge65.i, label %.lr.ph64.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.02561.i = phi ptr [ %i.dn, %.lr.ph.i.new ], [ %.02561.i.unr, %.prol.loopexit ] ; 3 uses
  %i.da = load i32, ptr %.02561.i, align 4
  %i.db = load i32, ptr %i.bh, align 4
  %i.dc = sub i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = load ptr, ptr %i.bd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.02561.i, i64 4
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = load i32, ptr %i.bh, align 4
  %i.dj = sub i32 %i.dh, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = load ptr, ptr %i.bd, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 0, ptr %i.dm, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.02561.i, i64 8 ; 2 uses
  %.not28.i.1 = icmp eq ptr %i.dn, %i.bg
  br i1 %.not28.i.1, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge65.i:                                  ; preds = %.lr.ph64.i.new, %.prol.loopexit15
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = trunc i64 %4 to i32
  %i.dr = add i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %i.do, align 4
  %i.ds = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 922), align 2, !range !57
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %._crit_edge65.thread.i, label %bb.j

.lr.ph64.i.new:                                   ; preds = %.prol.loopexit15, %.lr.ph64.i.new
  %.02463.i = phi ptr [ %i.eh, %.lr.ph64.i.new ], [ %.02463.i.unr, %.prol.loopexit15 ] ; 3 uses
  %i.du = load i32, ptr %.02463.i, align 4
  %i.dv = load i32, ptr %i.cp, align 4
  %i.dw = sub i32 %i.du, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.bd, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx
  store i8 %i.cn, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.02463.i, i64 4
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = load i32, ptr %i.cp, align 4
  %i.ed = sub i32 %i.eb, %i.ec
  %i.ee = sext i32 %i.ed to i64
  %i.ef = load ptr, ptr %i.bd, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 %i.cn, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.02463.i, i64 8 ; 2 uses
  %.not29.i.1 = icmp eq ptr %i.eh, %i.co
  br i1 %.not29.i.1, label %._crit_edge65.i, label %.lr.ph64.i.new

._crit_edge65.thread.i:                           ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i, %._crit_edge65.i
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = or i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge65.thread.i, %._crit_edge65.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #28
  %i.el = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30, !noalias !120 ; 7 uses
  %i.em = load ptr, ptr %0, align 8, !noalias !120
  store ptr %i.em, ptr %i.el, align 8, !noalias !120
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.en, i8 0, i64 48, i1 false), !noalias !120
  %i.eo = ptrtoint ptr %i.el to i64
  store i64 %i.eo, ptr %9, align 8
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_120CompilationStateImpl26InitializeCompilationUnitsESt10unique_ptrINS2_22CompilationUnitBuilderESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %9)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #29
  br label %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ew = load ptr, ptr %i.en, align 8            ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #29
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i

_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN2v88internal4wasm19WasmCompilationUnitESaIS3_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 56) #29
  %i.fc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 922), align 2, !range !57, !noundef !58
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noundef zeroext i1 %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff) #28, !inline_history !116
  br i1 %i.fj, label %bb.n, label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i

bb.n:                                             ; preds = %bb.m
  %i.fk = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(8) %i.fk) #28, !inline_history !116
  br label %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i

_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i: ; preds = %bb.n, %bb.m, %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit.i
  %i.fo = load i8, ptr %i.ai, align 8, !range !57, !noundef !58
  %i.fp = trunc nuw i8 %i.fo to i1
  store i8 0, ptr %i.ai, align 8
  br i1 %i.fp, label %bb.o, label %_ZNSt14_Optional_baseIN2v88internal19TimedHistogramScopeELb0ELb0EED2Ev.exit.i

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal4wasm12_GLOBAL__N_122CompilationUnitBuilderESt14default_deleteIS4_EED2Ev.exit42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load atomic ptr, ptr %i.fs seq_cst, align 8
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not3.i.i.i.i.i.i, label %_ZN2v88internal23BaseTimedHistogramScope4StopEv.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fu = call i64 @_ZN2v84base9TimeTicks3NowEv() #28
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %8, align 8
  %i.fv = sub nsw i64 %i.fu, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fw = load ptr, ptr %i.fq, align 8
  call void @_ZN2v88internal14TimedHistogram14AddTimedSampleENS_4base9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(52) %i.fw, i64 %i.fv) #28
  store i64 0, ptr %8, align 8
  br label %_ZN2v88internal23BaseTimedHistogramScope4StopEv.exit.i.i.i.i.i.i

_ZN2v88internal23BaseTimedHistogramScope4StopEv.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.fv, %bb.p ], [ -1, %bb.o ]
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %5, align 8
  %i.fx = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %.not.i.i.i.i.i43.i = icmp ne ptr %i.fz, null
  %i.ga = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1836), align 4, !range !57
  %i.gb = trunc nuw i8 %i.ga to i1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i43.i, i1 %i.gb, i1 false, !prof !59
  br i1 %or.cond.i.i.i.i.i.i, label %bb.q, label %_ZN2v88internal12V8FileLogger15CallEventLoggerEPNS0_7IsolateEPKcNS_14LogEventStatusEb.exit.i.i.i.i.i.i, !prof !59

bb.q:                                             ; preds = %_ZN2v88internal23BaseTimedHistogramScope4StopEv.exit.i.i.i.i.i.i
  %i.gc = load ptr, ptr %i.fq, align 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call preserve_mostcc void @_ZN2v88internal12V8FileLogger23CallEventLoggerInternalEPNS0_7IsolateEPKcNS_14LogEventStatusEb(ptr noundef nonnull %i.fz, ptr noundef %i.gd, i32 noundef 1, i1 noundef zeroext true)
  br label %_ZN2v88internal12V8FileLogger15CallEventLoggerEPNS0_7IsolateEPKcNS_14LogEventStatusEb.exit.i.i.i.i.i.i

_ZN2v88internal12V8FileLogger15CallEventLoggerEPNS0_7IsolateEPKcNS_14LogEventStatusEb.exit.i.i.i.i.i.i: ; preds = %bb.q, %_ZN2v88internal23BaseTimedHistogramScope4StopEv.exit.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8            ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not2.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal19TimedHistogramScopeELb0ELb0EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal12V8FileLogger15CallEventLoggerEPNS0_7IsolateEPKcNS_14LogEventStatusEb.exit.i.i.i.i.i.i
  store i64 %i.fx, ptr %i.gf, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor7ProcessEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi:bb.a
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
  %i.m = tail call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 58656
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @_ZN2v88internal4wasm10WasmEngine15CompileFunctionEPNS0_8CountersEPNS1_12NativeModuleEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(8488) %i.m, ptr noundef %i.o, ptr noundef %i.j, i32 noundef %2, i8 noundef signext 2) #28
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load atomic i8, ptr %i.r monotonic, align 1, !range !57, !noundef !58
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !54

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #31
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
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
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit
  %.015 = phi i32 [ %i.n, %.lr.ph ], [ %i.al, %_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit ] ; 4 uses
  %i.t = call noundef zeroext i1 @_ZNK2v88internal4wasm12NativeModule15HasCodeWithTierEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(552) %i.j, i32 noundef %.015, i8 noundef signext 2) #28
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
  %i.ae = call noundef ptr @_ZN2v88internal4wasm13GetWasmEngineEv() #28
  %i.af = load ptr, ptr %i.s, align 8
  call void @_ZN2v88internal4wasm10WasmEngine15CompileFunctionEPNS0_8CountersEPNS1_12NativeModuleEjNS1_13ExecutionTierE(ptr noundef nonnull align 8 dereferenceable(8488) %i.ae, ptr noundef %i.af, ptr noundef %i.ab, i32 noundef %.015, i8 noundef signext 2) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load atomic i8, ptr %i.ai monotonic, align 1, !range !57, !noundef !58
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit, !prof !54

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #31
  unreachable

_ZN2v88internal4wasm19TierUpNowForTestingEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi.exit: ; preds = %bb.e, %bb.b
  %i.al = add i32 %.015, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !185
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
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.g = load i8, ptr %i.f, align 8, !range !57, !noundef !58
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28
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
  %i.o = load i8, ptr %i.n, align 8               ; 2 uses
  %.not33 = icmp eq i8 %i.o, 0
  %i.p = or i8 %i.o, %i.g
  %brmerge.i.not = icmp eq i8 %i.p, 0
  %.mux.i = select i1 %.not33, i16 257, i16 514
  br i1 %brmerge.i.not, label %bb.c, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit

bb.c:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 784), align 16, !range !57, !noundef !58
  %i.r = sub nuw nsw i8 2, %i.q
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 737), align 1, !range !57, !noundef !58
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 736), align 32, !range !57
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = xor i1 %i.v, true
  %i.x = select i1 %i.t, i1 true, i1 %i.w
  %i.y = zext nneg i8 %i.r to i16                 ; 2 uses
  %i.z = shl nuw nsw i16 %i.y, 8
  %i.aa = select i1 %i.x, i16 %i.z, i16 512
  %i.ab = or disjoint i16 %i.aa, %i.y
  br label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit: ; preds = %bb.a, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29, %bb.c
  %.sroa.5.0.i = phi i16 [ %i.ab, %bb.c ], [ 0, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit ], [ %.mux.i, %_ZN2v88internal4wasm12_GLOBAL__N_112IsLazyModuleEPKNS1_10WasmModuleE.exit.thread29 ], [ 0, %bb.a ] ; 2 uses
  %.sroa.03.0.extract.trunc = trunc i16 %.sroa.5.0.i to i8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 3 uses
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit, label %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i:            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit
  %sh.diff = lshr i16 %.sroa.5.0.i, 6
  %tr.sh.diff = trunc nuw nsw i16 %sh.diff to i8
  %i.ag = and i8 %tr.sh.diff, -4
  %i.ah = or i8 %i.ag, %.sroa.03.0.extract.trunc
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #30, !noalias !192 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 %i.ah, i64 %i.ae, i1 false), !noalias !193
  br label %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit

_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit:   ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit, %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i
  %.sroa.025.0 = phi ptr [ %i.ai, %_ZSt6fill_nIPhmhET_S1_T0_RKT1_.exit.i ], [ null, %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  store ptr %.sroa.025.0, ptr %i.aj, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11OwnedVectorIhED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #29
  br label %_ZN2v84base11OwnedVectorIhED2Ev.exit

_ZN2v84base11OwnedVectorIhED2Ev.exit:             ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZN2v84base11OwnedVectorIhE3NewIhEES2_mT_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.ae, ptr %i.al, align 8
  %.not = icmp eq i8 %.sroa.03.0.extract.trunc, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v84base11OwnedVectorIhED2Ev.exit
  %i.am = load i32, ptr %i.ac, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v84base11OwnedVectorIhED2Ev.exit
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %.sroa.0.0.copyload.i = load i32, ptr %i.ar, align 8
  %i.as = and i32 %.sroa.0.0.copyload.i, 512
  %.not34 = icmp eq i32 %i.as, 0
  br i1 %.not34, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  %.sroa.021.035 = load ptr, ptr %i.at, align 8   ; 2 uses
  %i.au = icmp eq ptr %.sroa.021.035, null
  br i1 %i.au, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.021.036 = phi ptr [ %.sroa.021.035, %.lr.ph ], [ %.sroa.021.0, %bb.g ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 8
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.021.036, i64 12
  %i.az = load i64, ptr %i.ay, align 4
  %i.ba = zext i32 %i.ax to i64
  %.sroa.1.0.extract.shift.i = lshr i64 %i.az, 32 ; 2 uses
  %.sroa.1.0.extract.trunc.i = trunc nuw i64 %.sroa.1.0.extract.shift.i to i32
  %i.bb = load ptr, ptr %i.aj, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = and i8 %i.bd, 3
  %i.bf = icmp sgt i32 %.sroa.1.0.extract.trunc.i, 126
  %i.bg = icmp eq i64 %.sroa.1.0.extract.shift.i, 4294967295
  %i.bh = or i1 %i.bg, %i.bf
  %i.bi = and i8 %i.bd, -16
  %i.bj = select i1 %i.bh, i8 1, i8 10
  %i.bk = or disjoint i8 %i.bj, %i.bi
  store i8 %i.bk, ptr %i.bc, align 1
  %.not.i = icmp eq i8 %i.be, 0
  %i.bl = zext i1 %.not.i to i32
  %i.bm = load i32, ptr %i.av, align 4
  %i.bn = add nsw i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %i.av, align 4
  %.sroa.021.0 = load ptr, ptr %.sroa.021.036, align 8 ; 2 uses
  %i.bo = icmp eq ptr %.sroa.021.0, null
  br i1 %i.bo, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 772), align 4 ; 4 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.loopexit
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %.not15 = icmp ult i32 %i.bp, %i.bs
  br i1 %.not15, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = zext nneg i32 %i.bp to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.bu, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 5
  %i.cc = icmp ugt i64 %i.cb, %i.bt
  br i1 %i.cc, label %bb.j, label %.critedge, !prof !54

bb.j:                                             ; preds = %bb.i
  %i.cd = sub nuw nsw i32 %i.bp, %i.bs
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.aj, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1             ; 2 uses
  %i.ci = and i8 %i.ch, 3
  %i.cj = and i8 %i.ch, -16
  %i.ck = or disjoint i8 %i.cj, 10
  store i8 %i.ck, ptr %i.cg, align 1
  %.not.i17 = icmp eq i8 %i.ci, 0
  %i.cl = zext i1 %.not.i17 to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = add nsw i32 %i.cn, %i.cl
  store i32 %i.co, ptr %i.cm, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.j, %.loopexit, %bb.h
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.cp = load ptr, ptr %0, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 216
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = load ptr, ptr %1, align 8               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not42.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 84 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %.pre49.i = load i32, ptr %i.cv, align 4
  %.pre51.i = load ptr, ptr %i.aj, align 8
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.n, %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not3444.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not3444.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %._crit_edge.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 84 ; 2 uses
  %.pre53.i = load i32, ptr %i.db, align 4
  %.pre55.i = load ptr, ptr %i.aj, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.n, %.lr.ph.i
  %i.dc = phi ptr [ %.pre51.i, %.lr.ph.i ], [ %i.dn, %bb.n ] ; 2 uses
  %i.dd = phi i32 [ %.pre49.i, %.lr.ph.i ], [ %i.do, %bb.n ] ; 2 uses
  %.03343.i = phi ptr [ %i.cs, %.lr.ph.i ], [ %i.dp, %bb.n ] ; 2 uses
  %i.de = load i32, ptr %.03343.i, align 4
  %i.df = sub i32 %i.de, %i.dd
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1             ; 2 uses
  %i.dj = and i8 %i.di, 3
  %.not35.i = icmp eq i8 %i.dj, 0
  br i1 %.not35.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dk = or disjoint i8 %i.di, 1
  store i8 %i.dk, ptr %i.dh, align 1
  %i.dl = load i32, ptr %i.cw, align 4
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.cw, align 4
  %.pre.i = load i32, ptr %i.cv, align 4
  %.pre50.i = load ptr, ptr %i.aj, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dn = phi ptr [ %i.dc, %bb.l ], [ %.pre50.i, %bb.m ]
  %i.do = phi i32 [ %i.dd, %bb.l ], [ %.pre.i, %bb.m ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.03343.i, i64 4 ; 2 uses
  %.not.i18 = icmp eq ptr %i.dp, %i.cu
  br i1 %.not.i18, label %._crit_edge.i, label %bb.l

bb.o:                                             ; preds = %bb.q, %.lr.ph47.i
  %i.dq = phi ptr [ %.pre55.i, %.lr.ph47.i ], [ %i.ed, %bb.q ] ; 2 uses
  %i.dr = phi i32 [ %.pre53.i, %.lr.ph47.i ], [ %i.ee, %bb.q ] ; 2 uses
  %.045.i = phi ptr [ %i.cy, %.lr.ph47.i ], [ %i.ef, %bb.q ] ; 2 uses
  %i.ds = load i32, ptr %.045.i, align 4
  %i.dt = sub i32 %i.ds, %i.dr
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1             ; 3 uses
  %i.dx = and i8 %i.dw, 3
  %i.dy = icmp eq i8 %i.dx, 2
  %i.dz = and i8 %i.dw, 12
  %i.ea = icmp eq i8 %i.dz, 8
  %or.cond.i = or i1 %i.dy, %i.ea
  br i1 %or.cond.i, label %bb.q, label %bb.p
end_hunk_1
