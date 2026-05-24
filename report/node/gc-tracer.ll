inline.NumInlined: 1245
inline.NumDeleted: 558
begin_hunk_0_@_ZN2v88internal8GCTracer19RecordGCSumCountersEv:_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.ao = add i8 %i.an, 1
  store i8 %i.ao, ptr %i.am, align 8
  %i.ap = zext i8 %i.an to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ap ; 2 uses
  store i64 %i.al, ptr %i.aq, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.w, ptr %.sroa.466.0..sroa_idx, align 8
  %i.ar = load i8, ptr %i.am, align 8
  %i.as = icmp eq i8 %i.ar, 10
  br i1 %i.as, label %bb.a, label %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit

bb.a:                                             ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  store i8 0, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4425
  store i8 1, ptr %i.at, align 1
  br label %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit

_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit: ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %bb.a
  %i.au = load atomic volatile i64, ptr @_ZZN2v88internal8GCTracer19RecordGCSumCountersEvE29trace_event_unique_atomic1396 acquire, align 8 ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit
  %i.aw = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #19 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.18) #19 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  store atomic volatile i64 %i.bb, ptr @_ZZN2v88internal8GCTracer19RecordGCSumCountersEvE29trace_event_unique_atomic1396 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit
  %.015 = phi ptr [ %i.av, %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit ], [ %i.ba, %bb.b ] ; 2 uses
  %i.bc = load atomic volatile i8, ptr %.015 monotonic, align 1
  %i.bd = and i8 %i.bc, 5
  %.not19 = icmp eq i8 %i.bd, 0
  br i1 %.not19, label %bb.d, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit34

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit34: ; preds = %bb.c
  %i.be = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.bf = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr @.str.171, ptr %i.a, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.172, ptr %i.bg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i8 4, ptr %i.b, align 1
  store double %i.be, ptr %i.c, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 4, ptr %i.bh, align 1
  store double %i.bf, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.bj = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #19 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i8 noundef signext 73, ptr noundef nonnull %.015, ptr noundef nonnull @.str.170, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4, i32 noundef 8) #19, !inline_history !12 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not.i35 = icmp eq ptr %i.bp, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit34
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit34, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.bt = load ptr, ptr %4, align 16              ; 3 uses
  %.not.i35.1 = icmp eq ptr %i.bt, null
  br i1 %.not.i35.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.bx = load atomic volatile i64, ptr @_ZZN2v88internal8GCTracer19RecordGCSumCountersEvE29trace_event_unique_atomic1400 acquire, align 8 ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr
  %.not20 = icmp eq i64 %i.bx, 0
  br i1 %.not20, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bz = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #19 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.18) #19 ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  store atomic volatile i64 %i.ce, ptr @_ZZN2v88internal8GCTracer19RecordGCSumCountersEvE29trace_event_unique_atomic1400 release, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.014 = phi ptr [ %i.by, %bb.d ], [ %i.cd, %bb.e ] ; 2 uses
  %i.cf = load atomic volatile i8, ptr %.014 monotonic, align 1
  %i.cg = and i8 %i.cf, 5
  %.not21 = icmp eq i8 %i.cg, 0
  br i1 %.not21, label %bb.g, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit41

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit41: ; preds = %bb.f
  %i.ch = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %i.ci = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store ptr @.str.171, ptr %i.d, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.172, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i8 4, ptr %i.e, align 1
  store double %i.ch, ptr %i.f, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 4, ptr %i.ck, align 1
  store double %i.ci, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.cm = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #19 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i8 noundef signext 73, ptr noundef nonnull %.014, ptr noundef nonnull @.str.173, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %3, i32 noundef 8) #19, !inline_history !12 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %.not.i42 = icmp eq ptr %i.cs, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i43: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit41
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cs) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit41, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i43
  %i.cw = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i42.1 = icmp eq ptr %i.cw, null
  br i1 %.not.i42.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i43.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i43.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cw) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i43.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit44.1, %bb.f
  %i.da = load atomic volatile i64, ptr @_ZZN2v88internal8GCTracer19RecordGCSumCountersEvE29trace_event_unique_atomic1405 acquire, align 8 ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr
  %.not22 = icmp eq i64 %i.da, 0
  br i1 %.not22, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dc = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #19 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef ptr %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.18) #19 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  store atomic volatile i64 %i.dh, ptr @_ZZN2v88internal8GCTracer19RecordGCSumCountersEvE29trace_event_unique_atomic1405 release, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ %i.db, %bb.g ], [ %i.dg, %bb.h ] ; 2 uses
  %i.di = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.dj = and i8 %i.di, 5
  %.not23 = icmp eq i8 %i.dj, 0
  br i1 %.not23, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = call { double, i8 } @_ZN2v88internal8GCTracer39OldGenerationSpeedInBytesPerMillisecondEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) ; 2 uses
  %i.dl = extractvalue { double, i8 } %i.dk, 0
  %i.dm = extractvalue { double, i8 } %i.dk, 1
  %i.dn = trunc nuw i8 %i.dm to i1
  %.0.i = select i1 %i.dn, double %i.dl, double 0.000000e+00
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.dq = load i8, ptr %i.dp, align 8             ; 7 uses
  %.not24.i.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not24.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %i.dr = zext i8 %i.dq to i64                    ; 7 uses
  %min.iters.check = icmp ult i8 %i.dq, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i
  %9 = add nsw i64 %i.dr, -1                      ; 2 uses
  %i.ds = zext i8 %i.dq to i32
  %i.dt = add nsw i32 %i.ds, -1
  %10 = trunc nsw i64 %9 to i32
  %i.du = icmp ult i32 %i.dt, %10
  %11 = icmp ugt i64 %9, 4294967295
  %12 = or i1 %i.du, %11
  br i1 %12, label %.lr.ph.split.us.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.dr, 252                     ; 2 uses
  %i.dv = and i64 %i.dr, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ec, %vector.body ]
  %vec.phi88 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi89 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi90 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %i.dw = sub i64 %i.dr, %index
  %i.dx = add nuw nsw i64 %i.dw, 4294967295
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -16
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -48
  %wide.vec = load <4 x i64>, ptr %i.ea, align 8  ; 2 uses
  %reverse = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse92 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec93 = load <4 x i64>, ptr %i.eb, align 8 ; 2 uses
  %reverse95 = shufflevector <4 x i64> %wide.vec93, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse97 = shufflevector <4 x i64> %wide.vec93, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.ec = add <2 x i64> %reverse92, %vec.phi      ; 2 uses
  %i.ed = add <2 x i64> %reverse97, %vec.phi88    ; 2 uses
  %i.ee = add <2 x i64> %reverse, %vec.phi89      ; 2 uses
  %i.ef = add <2 x i64> %reverse95, %vec.phi90    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ed, %i.ec
  %i.eh = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx98 = add <2 x i64> %i.ef, %i.ee
  %i.ei = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx98) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dr
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %vector.scevcheck, %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ %i.dr, %vector.scevcheck ], [ %i.dr, %.lr.ph.i.i.i ], [ %i.dv, %middle.block ] ; 5 uses
  %.sroa.6.026.us.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i ], [ %i.eh, %middle.block ] ; 2 uses
  %.sroa.020.025.us.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i ], [ %i.ei, %middle.block ] ; 2 uses
  %xtraiter = and i64 %indvars.iv.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.prol

.lr.ph.split.us.i.i.i.prol:                       ; preds = %.lr.ph.split.us.i.i.i.preheader
  %i.ej = add nuw nsw i64 %indvars.iv.i.i.i.ph, 255
  %i.ek = and i64 %i.ej, 254
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ek ; 2 uses
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load i64, ptr %i.en, align 8
  %.sroa.3.0.i.us.i.i.i.prol = add nsw i64 %i.eo, %.sroa.6.026.us.i.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.i.prol = add i64 %i.em, %.sroa.020.025.us.i.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.i.prol.loopexit

.lr.ph.split.us.i.i.i.prol.loopexit:              ; preds = %.lr.ph.split.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.preheader
  %.sroa.3.0.i.us.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.0.0.i.us.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.6.026.us.i.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.020.025.us.i.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %i.ep = icmp eq i64 %indvars.iv.i.i.i.ph, 1
  br i1 %i.ep, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %.sroa.6.026.us.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %.sroa.020.025.us.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ]
  %i.eq = add nuw nsw i64 %indvars.iv.i.i.i, 4294967295
  %i.er = and i64 %i.eq, 4294967295
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.er ; 2 uses
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %.sroa.3.0.i.us.i.i.i = add nsw i64 %i.ev, %.sroa.6.026.us.i.i.i
  %.sroa.0.0.i.us.i.i.i = add i64 %i.et, %.sroa.020.025.us.i.i.i
  %i.ew = add nsw i64 %indvars.iv.i.i.i, 4294967294
  %i.ex = and i64 %i.ew, 4294967295
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ex ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = load i64, ptr %i.fa, align 8
  %.sroa.3.0.i.us.i.i.i.1 = add nsw i64 %i.fb, %.sroa.3.0.i.us.i.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.i.1 = add i64 %i.ez, %.sroa.0.0.i.us.i.i.i ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 2 uses
  %.not.us.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 0
  br i1 %.not.us.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !17

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i, %middle.block, %bb.j
  %.sroa.020.0.lcssa.i.i.i = phi i64 [ 0, %bb.j ], [ %i.ei, %middle.block ], [ %.sroa.0.0.i.us.i.i.i.lcssa.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i.i = phi i64 [ 0, %bb.j ], [ %i.eh, %middle.block ], [ %.sroa.3.0.i.us.i.i.i.lcssa.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4593
  %i.fd = load i8, ptr %i.fc, align 1, !range !5, !noundef !6
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = icmp ult i8 %i.dq, 10
  %or.cond.i.i.i = and i1 %i.ff, %i.fe
  br i1 %or.cond.i.i.i, label %.lr.ph33.i.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i

.lr.ph33.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %narrow = sub nuw nsw i8 10, %i.dq              ; 2 uses
  %i.fg = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter103 = and i64 %i.fg, 1
  %i.fh = icmp eq i8 %i.dq, 9
  br i1 %i.fh, label %.lr.ph33.split.us.i.i.i.epil.preheader, label %.lr.ph33.i.i.i.new

.lr.ph33.i.i.i.new:                               ; preds = %.lr.ph33.i.i.i
  %unroll_iter = and i64 %i.fg, 14
  br label %.lr.ph33.split.us.i.i.i

.lr.ph33.split.us.i.i.i:                          ; preds = %.lr.ph33.split.us.i.i.i, %.lr.ph33.i.i.i.new
  %indvars.iv49.i.i.i = phi i64 [ 10, %.lr.ph33.i.i.i.new ], [ %indvars.iv.next50.i.i.i.1, %.lr.ph33.split.us.i.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %.lr.ph33.i.i.i.new ], [ %.sroa.3.0.i14.us.i.i.i.1, %.lr.ph33.split.us.i.i.i ]
  %.sroa.020.130.us.i.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %.lr.ph33.i.i.i.new ], [ %.sroa.0.0.i15.us.i.i.i.1, %.lr.ph33.split.us.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph33.i.i.i.new ], [ %niter.next.1, %.lr.ph33.split.us.i.i.i ]
  %i.fi = add nuw nsw i64 %indvars.iv49.i.i.i, 4294967295
  %i.fj = and i64 %i.fi, 4294967295
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.fj ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fn = load i64, ptr %i.fm, align 8
  %.sroa.3.0.i14.us.i.i.i = add nsw i64 %i.fn, %.sroa.6.131.us.i.i.i
  %.sroa.0.0.i15.us.i.i.i = add i64 %i.fl, %.sroa.020.130.us.i.i.i
  %i.fo = add nsw i64 %indvars.iv49.i.i.i, 4294967294
  %i.fp = and i64 %i.fo, 4294967294
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.fp ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.ft = load i64, ptr %i.fs, align 8
  %.sroa.3.0.i14.us.i.i.i.1 = add nsw i64 %i.ft, %.sroa.3.0.i14.us.i.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.i.1 = add i64 %i.fr, %.sroa.0.0.i15.us.i.i.i ; 3 uses
  %indvars.iv.next50.i.i.i.1 = add nsw i64 %indvars.iv49.i.i.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i.i
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i, label %.lr.ph33.split.us.i.i.i.epil.preheader

.lr.ph33.split.us.i.i.i.epil.preheader:           ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, %.lr.ph33.i.i.i
  %indvars.iv49.i.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i.i ], [ %indvars.iv.next50.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %.lr.ph33.i.i.i ], [ %.sroa.3.0.i14.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %.lr.ph33.i.i.i ], [ %.sroa.0.0.i15.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod107 = trunc i8 %narrow to i1
  call void @llvm.assume(i1 %lcmp.mod107)
  %i.fu = add nuw nsw i64 %indvars.iv49.i.i.i.epil.init, 4294967295
  %i.fv = and i64 %i.fu, 4294967295
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.fv ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fz = load i64, ptr %i.fy, align 8
  %.sroa.3.0.i14.us.i.i.i.epil = add nsw i64 %i.fz, %.sroa.6.131.us.i.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.i.epil = add i64 %i.fx, %.sroa.020.130.us.i.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i: ; preds = %.lr.ph33.split.us.i.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, %._crit_edge.i.i.i
  %.sroa.020.2.i.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.0.0.i15.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.i.epil, %.lr.ph33.split.us.i.i.i.epil.preheader ]
  %.sroa.6.2.i.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.3.0.i14.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.i.epil, %.lr.ph33.split.us.i.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 %.sroa.6.2.i.i.i, ptr %1, align 8
  %.not77 = icmp eq i64 %.sroa.6.2.i.i.i, 0
  br i1 %.not77, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit53, label %bb.k

bb.k:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i
  %i.ga = uitofp i64 %.sroa.020.2.i.i.i to double
  %i.gb = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.gc = fdiv double %i.ga, %i.gb                ; 2 uses
  %i.gd = fcmp ogt double %i.gc, f0x41D0000000000000
  %.sroa.speculated8.i.i.i = select i1 %i.gd, double f0x41D0000000000000, double %i.gc ; 2 uses
  %i.ge = fcmp olt double %.sroa.speculated8.i.i.i, 1.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.ge, double 1.000000e+00, double %.sroa.speculated8.i.i.i
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit53

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit53: ; preds = %bb.k, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i
  %.0.i47 = phi double [ %.sroa.speculated.i.i.i, %bb.k ], [ 0.000000e+00, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store ptr @.str.175, ptr %i.g, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @.str.176, ptr %i.gf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i8 4, ptr %i.h, align 1
  store double %.0.i, ptr %i.i, align 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 4, ptr %i.gg, align 1
  store double %.0.i47, ptr %i.gh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.gi = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #19 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = call noundef i64 %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i8 noundef signext 73, ptr noundef nonnull %.0, ptr noundef nonnull @.str.174, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %2, i32 noundef 8) #19, !inline_history !12 ; 0 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.go = load ptr, ptr %i.gn, align 8            ; 3 uses
  %.not.i54 = icmp eq ptr %i.go, null
  br i1 %.not.i54, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i55

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i55: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit53
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.go) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EE5resetEPS1_.exit53, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i55
  %i.gs = load ptr, ptr %2, align 16              ; 3 uses
  %.not.i54.1 = icmp eq ptr %i.gs, null
  br i1 %.not.i54.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i55.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i55.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gs) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i55.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit56.1, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer24RecordMutatorUtilizationENS_4base9TimeTicksENS2_9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(6440) initializes((3752, 3760)) %0, i64 %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.v8::base::TimeDelta", align 8 ; 3 uses
  %4 = alloca %"class.v8::base::TimeDelta", align 8 ; 6 uses
  store i64 %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3744 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %i.b = sub nsw i64 %1, %.sroa.0.0.copyload      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3752 ; 3 uses
  store i64 %i.b, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.d = sub nsw i64 %i.b, %2
  store i64 %i.d, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3728 ; 3 uses
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = fcmp oeq double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3720 ; 2 uses
  %i.i = load double, ptr %i.h, align 8
  %i.j = fcmp oeq double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  store double %i.k, ptr %i.e, align 8
  %i.l = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  store double %i.l, ptr %i.h, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %i.n = fadd double %i.f, %i.m
  %i.o = fmul double %i.n, 5.000000e-01
  store double %i.o, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3720 ; 2 uses
  %i.q = load double, ptr %i.p, align 8
  %i.r = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.s = fadd double %i.q, %i.r
  %i.t = fmul double %i.s, 5.000000e-01
  store double %i.t, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = load i64, ptr %i.c, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8GCTracer8PrintNVPEv:bb.a
_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit12: ; preds = %_ZN2v88internal8ToStringENS0_23GarbageCollectionReasonE.exit, %bb.ao
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.37) #19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 47 uses
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.db) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.38) #19
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.dk) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.39) #19
  %i.dq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.do) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.40) #19
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.ds) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.41) #19
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.dw) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.42) #19
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.ea) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.ed = load ptr, ptr %0, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1912
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call noundef i64 @_ZN2v88internal15MemoryAllocator20GetPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312) %i.ef) #19
  %i.eh = load i8, ptr %i.dc, align 8, !range !5, !noundef !6
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit13, label %bb.ap

bb.ap:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit12
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit13

_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit13: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit12, %bb.ap
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.43) #19
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.eg) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.el = load ptr, ptr %0, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1912
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = call noundef i64 @_ZN2v88internal15MemoryAllocator26GetSharedPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312) %i.en) #19
  %i.ep = load i8, ptr %i.dc, align 8, !range !5, !noundef !6
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit14, label %bb.aq

bb.aq:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit13
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit14

_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit14: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit13, %bb.aq
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.44) #19
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.eo) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.et = load ptr, ptr %0, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1912
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef i64 @_ZN2v88internal15MemoryAllocator25GetTotalPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312) %i.ev) #19
  %i.ex = load i8, ptr %i.dc, align 8, !range !5, !noundef !6
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit15, label %bb.ar

bb.ar:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit14
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit15

_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit15: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit14, %bb.ar
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.45) #19
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.ew) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.fb = load ptr, ptr %0, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 216
  %i.fd = load ptr, ptr %i.fc, align 8            ; 3 uses
  %.not = icmp eq ptr %i.fd, null
  br i1 %.not, label %.thread, label %bb.as

bb.as:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit15
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 176
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call noundef i64 %i.fg(ptr noundef nonnull align 8 dereferenceable(96) %i.fd) #19 ; 2 uses
  %.pre = load i8, ptr %i.dc, align 8, !range !5
  %i.fi = trunc nuw i8 %.pre to i1
  br i1 %i.fi, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27, label %.thread

.thread:                                          ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit15, %bb.as
  %i.fj = phi i64 [ %i.fh, %bb.as ], [ 0, %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit15 ]
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27: ; preds = %bb.as, %.thread
  %i.fl = phi i64 [ %i.fh, %bb.as ], [ %i.fj, %.thread ]
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.46) #19
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.fl) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.fn = load ptr, ptr %0, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1624
  %i.fp = load atomic i64, ptr %i.fo monotonic, align 8
  %i.fq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.47) #19
  %i.fr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.fp) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.fs = load ptr, ptr %0, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1632
  %i.fu = load atomic i64, ptr %i.ft monotonic, align 8
  %i.fv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.48) #19
  %i.fw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.fu) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 2 uses
  %.val.i.i = load double, ptr %i.fx, align 8     ; 2 uses
  %i.fy = fcmp ogt double %.val.i.i, f0x41D0000000000000
  %.sroa.speculated.i.i.i = select i1 %i.fy, double f0x41D0000000000000, double %.val.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %.val.i1.i = load double, ptr %i.fz, align 8    ; 2 uses
  %i.ga = fcmp ogt double %.val.i1.i, f0x41D0000000000000
  %.sroa.speculated.i.i2.i = select i1 %i.ga, double f0x41D0000000000000, double %.val.i1.i
  %i.gb = fadd double %.sroa.speculated.i.i.i, %.sroa.speculated.i.i2.i
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.49) #19
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %i.gb) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %.val.i = load double, ptr %i.fx, align 8       ; 2 uses
  %i.ge = fcmp ogt double %.val.i, f0x41D0000000000000
  %.sroa.speculated.i.i = select i1 %i.ge, double f0x41D0000000000000, double %.val.i
  %i.gf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.50) #19
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %.sroa.speculated.i.i) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.gh = load ptr, ptr %0, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1824
  %i.gj = load double, ptr %i.gi, align 8
  %i.gk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.51) #19
  %i.gl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %i.gj) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.52) #19
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.l) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.go = load ptr, ptr %0, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1784
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.53) #19
  %i.gs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.gq) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.gt = load ptr, ptr %0, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1808
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.54) #19
  %i.gx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.gv) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.gy = load ptr, ptr %0, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1832
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.55) #19
  %i.hc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 noundef %i.ha) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.hd = load ptr, ptr %0, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1836
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.56) #19
  %i.hh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 noundef %i.hf) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.hi = load ptr, ptr %0, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1840
  %i.hk = load i32, ptr %i.hj, align 8
  %i.hl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.57) #19
  %i.hm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 noundef %i.hk) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.hn = load ptr, ptr %0, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1792
  %i.hp = load double, ptr %i.ho, align 8
  %i.hq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.58) #19
  %i.hr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %i.hp) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 10 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 5065
  %i.hu = load i8, ptr %i.ht, align 1, !range !5, !noundef !6
  %i.hv = trunc nuw i8 %i.hu to i1                ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.hx = load i8, ptr %i.hw, align 8             ; 7 uses
  %i.hy = icmp ne i8 %i.hx, 0                     ; 2 uses
  %.not3.i = select i1 %i.hv, i1 true, i1 %i.hy
  br i1 %.not3.i, label %bb.at, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30

bb.at:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27
  br i1 %i.hy, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.at
  %i.hz = zext i8 %i.hx to i64                    ; 3 uses
  %xtraiter = and i64 %i.hz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %i.hz, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0132.i.i.prol = phi double [ %i.ie, %.lr.ph.i.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ia = add nuw nsw i64 %indvars.iv.i.i.prol, 4294967295
  %i.ib = and i64 %i.ia, 4294967295
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8
  %i.ie = fadd double %.0132.i.i.prol, %i.id      ; 3 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !19

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.lcssa247.unr = phi double [ poison, %.lr.ph.preheader.i.i ], [ %i.ie, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %i.hz, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.0132.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.ie, %.lr.ph.i.i.prol ]
  %i.if = icmp ult i8 %i.hx, 4
  br i1 %i.if, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.at
  %.013.lcssa.i.i = phi double [ 0.000000e+00, %bb.at ], [ %.lcssa247.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.jd, %.lr.ph.i.i ] ; 3 uses
  %i.ig = icmp ult i8 %i.hx, 10
  %or.cond.i.i = and i1 %i.ig, %i.hv
  br i1 %or.cond.i.i, label %.lr.ph6.preheader.i.i, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i"

.lr.ph6.preheader.i.i:                            ; preds = %._crit_edge.i.i
  %narrow = sub nuw nsw i8 10, %i.hx
  %i.ih = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter248 = and i64 %i.ih, 3                 ; 3 uses
  %i.ii = add nsw i8 %i.hx, -7
  %i.ij = icmp ult i8 %i.ii, 3
  br i1 %i.ij, label %.lr.ph6.i.i.epil.preheader, label %.lr.ph6.preheader.i.i.new

.lr.ph6.preheader.i.i.new:                        ; preds = %.lr.ph6.preheader.i.i
  %unroll_iter = and i64 %i.ih, 12
  br label %.lr.ph6.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.0132.i.i = phi double [ %i.jd, %.lr.ph.i.i ], [ %.0132.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ik = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.il = and i64 %i.ik, 4294967295
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.il
  %i.in = load double, ptr %i.im, align 8
  %i.io = fadd double %.0132.i.i, %i.in
  %i.ip = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.iq = and i64 %i.ip, 4294967295
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8
  %i.it = fadd double %i.io, %i.is
  %i.iu = add nsw i64 %indvars.iv.i.i, 4294967293
  %i.iv = and i64 %i.iu, 4294967295
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8
  %i.iy = fadd double %i.it, %i.ix
  %i.iz = add nsw i64 %indvars.iv.i.i, 4294967292
  %i.ja = and i64 %i.iz, 4294967295
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ja
  %i.jc = load double, ptr %i.jb, align 8
  %i.jd = fadd double %i.iy, %i.jc                ; 2 uses
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, -4 ; 2 uses
  %.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 0
  br i1 %.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !21

.lr.ph6.i.i:                                      ; preds = %.lr.ph6.i.i, %.lr.ph6.preheader.i.i.new
  %indvars.iv10.i.i = phi i64 [ 10, %.lr.ph6.preheader.i.i.new ], [ %indvars.iv.next11.i.i.3, %.lr.ph6.i.i ] ; 5 uses
  %.14.i.i = phi double [ %.013.lcssa.i.i, %.lr.ph6.preheader.i.i.new ], [ %i.jx, %.lr.ph6.i.i ]
  %niter = phi i64 [ 0, %.lr.ph6.preheader.i.i.new ], [ %niter.next.3, %.lr.ph6.i.i ]
  %i.je = add nuw nsw i64 %indvars.iv10.i.i, 4294967295
  %i.jf = and i64 %i.je, 4294967295
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8
  %i.ji = fadd double %.14.i.i, %i.jh
  %i.jj = add nsw i64 %indvars.iv10.i.i, 4294967294
  %i.jk = and i64 %i.jj, 4294967294
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8
  %i.jn = fadd double %i.ji, %i.jm
  %i.jo = add nsw i64 %indvars.iv10.i.i, 4294967293
  %i.jp = and i64 %i.jo, 4294967295
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8
  %i.js = fadd double %i.jn, %i.jr
  %i.jt = add nsw i64 %indvars.iv10.i.i, 4294967292
  %i.ju = and i64 %i.jt, 4294967294
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8
  %i.jx = fadd double %i.js, %i.jw                ; 3 uses
  %indvars.iv.next11.i.i.3 = add nsw i64 %indvars.iv10.i.i, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa", label %.lr.ph6.i.i, !llvm.loop !22

"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph6.i.i
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i", label %.lr.ph6.i.i.epil.preheader

.lr.ph6.i.i.epil.preheader:                       ; preds = %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa", %.lr.ph6.preheader.i.i
  %indvars.iv10.i.i.epil.init = phi i64 [ 10, %.lr.ph6.preheader.i.i ], [ %indvars.iv.next11.i.i.3, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa" ]
  %.14.i.i.epil.init = phi double [ %.013.lcssa.i.i, %.lr.ph6.preheader.i.i ], [ %i.jx, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod251 = icmp ne i64 %xtraiter248, 0
  call void @llvm.assume(i1 %lcmp.mod251)
  br label %.lr.ph6.i.i.epil

.lr.ph6.i.i.epil:                                 ; preds = %.lr.ph6.i.i.epil, %.lr.ph6.i.i.epil.preheader
  %indvars.iv10.i.i.epil = phi i64 [ %indvars.iv10.i.i.epil.init, %.lr.ph6.i.i.epil.preheader ], [ %indvars.iv.next11.i.i.epil, %.lr.ph6.i.i.epil ] ; 2 uses
  %.14.i.i.epil = phi double [ %.14.i.i.epil.init, %.lr.ph6.i.i.epil.preheader ], [ %i.kc, %.lr.ph6.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph6.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph6.i.i.epil ]
  %i.jy = add nuw nsw i64 %indvars.iv10.i.i.epil, 4294967295
  %i.jz = and i64 %i.jy, 4294967295
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8
  %i.kc = fadd double %.14.i.i.epil, %i.kb        ; 2 uses
  %indvars.iv.next11.i.i.epil = add nsw i64 %indvars.iv10.i.i.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter248
  br i1 %epil.iter.cmp.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i", label %.lr.ph6.i.i.epil, !llvm.loop !23

"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i": ; preds = %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa", %.lr.ph6.i.i.epil, %._crit_edge.i.i
  %.014.i.i = phi double [ %.013.lcssa.i.i, %._crit_edge.i.i ], [ %i.jx, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i.loopexit.unr-lcssa" ], [ %i.kc, %.lr.ph6.i.i.epil ]
  %i.kd = uitofp i8 %i.hx to double
  %i.ke = select i1 %i.hv, double 1.000000e+01, double %i.kd
  %i.kf = fdiv double %.014.i.i, %i.ke
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i"
  %.0.i28 = phi double [ %i.kf, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.i" ], [ 0.000000e+00, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit27 ]
  %i.kg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.59) #19
  %i.kh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %.0.i28) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.ki = load ptr, ptr %0, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1800
  %i.kk = load double, ptr %i.kj, align 8
  %i.kl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %i.da, ptr noundef nonnull @.str.60) #19
  %i.km = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, double noundef %i.kk) #19 ; 0 uses
  store i8 0, ptr %i.dc, align 8
  %i.kn = load i32, ptr %i.a, align 8
  switch i32 %i.kn, label %bb.fq [
    i32 0, label %bb.au
    i32 3, label %bb.br
    i32 4, label %bb.br
    i32 1, label %bb.cu
    i32 2, label %bb.cu
  ]

bb.au:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 5078
  %i.kp = load i8, ptr %i.ko, align 2, !range !5, !noundef !6
  %i.kq = trunc nuw i8 %i.kp to i1                ; 2 uses
  %i.kr = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31

_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31: ; preds = %bb.au, %bb.av
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.61) #19
  %i.ku = select i1 %i.kq, ptr @.str.216, ptr @.str.217
  %i.kv = select i1 %i.kq, i64 4, i64 5
  %i.kw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.ku, i64 noundef %i.kv) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.kz = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ky) #19
  %i.la = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32, label %bb.aw

bb.aw:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31
  %i.lc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIbEERS1_PKcT_.exit31, %bb.aw
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.62) #19
  %i.ld = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.kz) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.lf = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.le) #19
  %i.lg = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33, label %bb.ax

bb.ax:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32
  %i.li = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit32, %bb.ax
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.63) #19
  %i.lj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.lf) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ll = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lk) #19
  %i.lm = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34, label %bb.ay

bb.ay:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33
  %i.lo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit33, %bb.ay
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.64) #19
  %i.lp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ll) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.lr = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lq) #19
  %i.ls = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35, label %bb.az

bb.az:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34
  %i.lu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit34, %bb.az
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.65) #19
  %i.lv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.lr) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.lx = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lw) #19
  %i.ly = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36, label %bb.ba

bb.ba:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35
  %i.ma = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit35, %bb.ba
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.66) #19
  %i.mb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.lx) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.md = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mc) #19
  %i.me = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37, label %bb.bb

bb.bb:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36
  %i.mg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit36, %bb.bb
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.67) #19
  %i.mh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.md) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.mj = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mi) #19
  %i.mk = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38, label %bb.bc

bb.bc:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37
  %i.mm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit37, %bb.bc
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.68) #19
  %i.mn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.mj) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.mp = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mo) #19
  %i.mq = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39, label %bb.bd

bb.bd:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38
  %i.ms = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit38, %bb.bd
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.69) #19
  %i.mt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.mp) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.mv = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mu) #19
  %i.mw = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40, label %bb.be

bb.be:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39
  %i.my = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit39, %bb.be
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.70) #19
  %i.mz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.mv) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.nb = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.na) #19
  %i.nc = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41, label %bb.bf

bb.bf:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40
  %i.ne = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit40, %bb.bf
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.71) #19
  %i.nf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.nb) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.nh = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ng) #19
  %i.ni = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit42, label %bb.bg

bb.bg:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41
  %i.nk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit42

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit42: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit41, %bb.bg
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.72) #19
  %i.nl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.nh) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.nn = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nm) #19
  %i.no = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit43, label %bb.bh

bb.bh:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit42
  %i.nq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit43

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit43: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit42, %bb.bh
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.73) #19
  %i.nr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.nn) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.nt = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ns) #19
  %i.nu = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit44, label %bb.bi

bb.bi:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit43
  %i.nw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit44

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit44: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit43, %bb.bi
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.74) #19
  %i.nx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.nt) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.nz = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ny) #19
  %i.oa = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit45, label %bb.bj

bb.bj:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit44
  %i.oc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit45

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit45: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit44, %bb.bj
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.75) #19
  %i.od = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.nz) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.of = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oe) #19
  %i.og = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit46, label %bb.bk

bb.bk:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit45
  %i.oi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit46

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit46: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit45, %bb.bk
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.76) #19
  %i.oj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.of) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ol = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ok) #19
  %i.om = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.on = trunc nuw i8 %i.om to i1
  br i1 %i.on, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit47, label %bb.bl

bb.bl:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit46
  %i.oo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit47

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit47: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit46, %bb.bl
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.77) #19
  %i.op = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ol) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.or = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oq) #19
  %i.os = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit48, label %bb.bm

bb.bm:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit47
  %i.ou = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit48

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit48: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit47, %bb.bm
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.78) #19
  %i.ov = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.or) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.ox = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ow) #19
  %i.oy = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit49, label %bb.bn

bb.bn:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit48
  %i.pa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit49

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit49: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit48, %bb.bn
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.79) #19
  %i.pb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ox) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.pd = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pc) #19
  %i.pe = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit51, label %bb.bo

bb.bo:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit49
  %i.pg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit51

_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit51: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit49, %bb.bo
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.80) #19
  %i.ph = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.pd) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.pj = load i32, ptr %i.pi, align 8
  %i.pk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.81) #19
  %i.pl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef %i.pj) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.pm = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kx) #19
  %i.pn = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit52, label %bb.bp

bb.bp:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit51
  %i.pp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit52

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit52: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit51, %bb.bp
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.82) #19
  %i.pq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.pm) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 4816 ; 7 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.pt = load i8, ptr %i.ps, align 8             ; 7 uses
  %.not24.i.i2.i = icmp eq i8 %i.pt, 0
  br i1 %.not24.i.i2.i, label %._crit_edge.i.i12.i, label %.lr.ph.i.i3.i

.lr.ph.i.i3.i:                                    ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit52
  %i.pu = zext i8 %i.pt to i64                    ; 7 uses
  %min.iters.check211 = icmp ult i8 %i.pt, 8
  br i1 %min.iters.check211, label %.lr.ph.split.us.i.i4.i.preheader, label %vector.scevcheck209

vector.scevcheck209:                              ; preds = %.lr.ph.i.i3.i
  %8 = add nsw i64 %i.pu, -1                      ; 2 uses
  %i.pv = zext i8 %i.pt to i32
  %i.pw = add nsw i32 %i.pv, -1
  %9 = trunc nsw i64 %8 to i32
  %i.px = icmp ult i32 %i.pw, %9
  %10 = icmp ugt i64 %8, 4294967295
  %11 = or i1 %i.px, %10
  br i1 %11, label %.lr.ph.split.us.i.i4.i.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %vector.scevcheck209
  %n.vec214 = and i64 %i.pu, 252                  ; 2 uses
  %i.py = and i64 %i.pu, 3
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph212
  %index216 = phi i64 [ 0, %vector.ph212 ], [ %index.next231, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <2 x i64> [ zeroinitializer, %vector.ph212 ], [ %i.qf, %vector.body215 ]
  %vec.phi218 = phi <2 x i64> [ zeroinitializer, %vector.ph212 ], [ %i.qg, %vector.body215 ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph212 ], [ %i.qh, %vector.body215 ]
  %vec.phi220 = phi <2 x i64> [ zeroinitializer, %vector.ph212 ], [ %i.qi, %vector.body215 ]
  %i.pz = sub i64 %i.pu, %index216
  %i.qa = add nuw nsw i64 %i.pz, 4294967295
  %i.qb = and i64 %i.qa, 4294967295
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds i8, ptr %i.qc, i64 -16
  %i.qe = getelementptr inbounds i8, ptr %i.qc, i64 -48
  %wide.vec221 = load <4 x i64>, ptr %i.qd, align 8 ; 2 uses
  %reverse223 = shufflevector <4 x i64> %wide.vec221, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse225 = shufflevector <4 x i64> %wide.vec221, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec226 = load <4 x i64>, ptr %i.qe, align 8 ; 2 uses
  %reverse228 = shufflevector <4 x i64> %wide.vec226, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse230 = shufflevector <4 x i64> %wide.vec226, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.qf = add <2 x i64> %reverse225, %vec.phi217  ; 2 uses
  %i.qg = add <2 x i64> %reverse230, %vec.phi218  ; 2 uses
  %i.qh = add <2 x i64> %reverse223, %vec.phi219  ; 2 uses
  %i.qi = add <2 x i64> %reverse228, %vec.phi220  ; 2 uses
  %index.next231 = add nuw i64 %index216, 4       ; 2 uses
  %i.qj = icmp eq i64 %index.next231, %n.vec214
  br i1 %i.qj, label %middle.block232, label %vector.body215, !llvm.loop !24

middle.block232:                                  ; preds = %vector.body215
  %bin.rdx233 = add <2 x i64> %i.qg, %i.qf
  %i.qk = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx233) ; 2 uses
  %bin.rdx234 = add <2 x i64> %i.qi, %i.qh
  %i.ql = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx234) ; 2 uses
  %cmp.n235 = icmp eq i64 %n.vec214, %i.pu
  br i1 %cmp.n235, label %._crit_edge.i.i12.i, label %.lr.ph.split.us.i.i4.i.preheader

.lr.ph.split.us.i.i4.i.preheader:                 ; preds = %vector.scevcheck209, %.lr.ph.i.i3.i, %middle.block232
  %indvars.iv.i.i5.i.ph = phi i64 [ %i.pu, %vector.scevcheck209 ], [ %i.pu, %.lr.ph.i.i3.i ], [ %i.py, %middle.block232 ] ; 5 uses
  %.sroa.6.026.us.i.i6.i.ph = phi i64 [ 0, %vector.scevcheck209 ], [ 0, %.lr.ph.i.i3.i ], [ %i.qk, %middle.block232 ] ; 2 uses
  %.sroa.020.025.us.i.i7.i.ph = phi i64 [ 0, %vector.scevcheck209 ], [ 0, %.lr.ph.i.i3.i ], [ %i.ql, %middle.block232 ] ; 2 uses
  %xtraiter263 = and i64 %indvars.iv.i.i5.i.ph, 1
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  br i1 %lcmp.mod264.not, label %.lr.ph.split.us.i.i4.i.prol.loopexit, label %.lr.ph.split.us.i.i4.i.prol

.lr.ph.split.us.i.i4.i.prol:                      ; preds = %.lr.ph.split.us.i.i4.i.preheader
  %i.qm = add nuw nsw i64 %indvars.iv.i.i5.i.ph, 255
  %i.qn = and i64 %i.qm, 254
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.qn ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qr = load i64, ptr %i.qq, align 8
  %.sroa.3.0.i.us.i.i8.i.prol = add nsw i64 %i.qr, %.sroa.6.026.us.i.i6.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i9.i.prol = add i64 %i.qp, %.sroa.020.025.us.i.i7.i.ph ; 2 uses
  %indvars.iv.next.i.i10.i.prol = add nsw i64 %indvars.iv.i.i5.i.ph, -1
  br label %.lr.ph.split.us.i.i4.i.prol.loopexit

.lr.ph.split.us.i.i4.i.prol.loopexit:             ; preds = %.lr.ph.split.us.i.i4.i.prol, %.lr.ph.split.us.i.i4.i.preheader
  %.sroa.3.0.i.us.i.i8.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i4.i.preheader ], [ %.sroa.3.0.i.us.i.i8.i.prol, %.lr.ph.split.us.i.i4.i.prol ]
  %.sroa.0.0.i.us.i.i9.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i4.i.preheader ], [ %.sroa.0.0.i.us.i.i9.i.prol, %.lr.ph.split.us.i.i4.i.prol ]
  %indvars.iv.i.i5.i.unr = phi i64 [ %indvars.iv.i.i5.i.ph, %.lr.ph.split.us.i.i4.i.preheader ], [ %indvars.iv.next.i.i10.i.prol, %.lr.ph.split.us.i.i4.i.prol ]
  %.sroa.6.026.us.i.i6.i.unr = phi i64 [ %.sroa.6.026.us.i.i6.i.ph, %.lr.ph.split.us.i.i4.i.preheader ], [ %.sroa.3.0.i.us.i.i8.i.prol, %.lr.ph.split.us.i.i4.i.prol ]
  %.sroa.020.025.us.i.i7.i.unr = phi i64 [ %.sroa.020.025.us.i.i7.i.ph, %.lr.ph.split.us.i.i4.i.preheader ], [ %.sroa.0.0.i.us.i.i9.i.prol, %.lr.ph.split.us.i.i4.i.prol ]
  %i.qs = icmp eq i64 %indvars.iv.i.i5.i.ph, 1
  br i1 %i.qs, label %._crit_edge.i.i12.i, label %.lr.ph.split.us.i.i4.i

.lr.ph.split.us.i.i4.i:                           ; preds = %.lr.ph.split.us.i.i4.i.prol.loopexit, %.lr.ph.split.us.i.i4.i
  %indvars.iv.i.i5.i = phi i64 [ %indvars.iv.next.i.i10.i.1, %.lr.ph.split.us.i.i4.i ], [ %indvars.iv.i.i5.i.unr, %.lr.ph.split.us.i.i4.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i6.i = phi i64 [ %.sroa.3.0.i.us.i.i8.i.1, %.lr.ph.split.us.i.i4.i ], [ %.sroa.6.026.us.i.i6.i.unr, %.lr.ph.split.us.i.i4.i.prol.loopexit ]
  %.sroa.020.025.us.i.i7.i = phi i64 [ %.sroa.0.0.i.us.i.i9.i.1, %.lr.ph.split.us.i.i4.i ], [ %.sroa.020.025.us.i.i7.i.unr, %.lr.ph.split.us.i.i4.i.prol.loopexit ]
  %i.qt = add nuw nsw i64 %indvars.iv.i.i5.i, 4294967295
  %i.qu = and i64 %i.qt, 4294967295
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.qu ; 2 uses
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qy = load i64, ptr %i.qx, align 8
  %.sroa.3.0.i.us.i.i8.i = add nsw i64 %i.qy, %.sroa.6.026.us.i.i6.i
  %.sroa.0.0.i.us.i.i9.i = add i64 %i.qw, %.sroa.020.025.us.i.i7.i
  %i.qz = add nsw i64 %indvars.iv.i.i5.i, 4294967294
  %i.ra = and i64 %i.qz, 4294967295
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.ra ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.re = load i64, ptr %i.rd, align 8
  %.sroa.3.0.i.us.i.i8.i.1 = add nsw i64 %i.re, %.sroa.3.0.i.us.i.i8.i ; 2 uses
  %.sroa.0.0.i.us.i.i9.i.1 = add i64 %i.rc, %.sroa.0.0.i.us.i.i9.i ; 2 uses
  %indvars.iv.next.i.i10.i.1 = add nsw i64 %indvars.iv.i.i5.i, -2 ; 2 uses
  %.not.us.i.i11.i.1 = icmp eq i64 %indvars.iv.next.i.i10.i.1, 0
  br i1 %.not.us.i.i11.i.1, label %._crit_edge.i.i12.i, label %.lr.ph.split.us.i.i4.i, !llvm.loop !25

._crit_edge.i.i12.i:                              ; preds = %.lr.ph.split.us.i.i4.i.prol.loopexit, %.lr.ph.split.us.i.i4.i, %middle.block232, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit52
  %.sroa.020.0.lcssa.i.i13.i = phi i64 [ 0, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit52 ], [ %i.ql, %middle.block232 ], [ %.sroa.0.0.i.us.i.i9.i.lcssa.unr, %.lr.ph.split.us.i.i4.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i9.i.1, %.lr.ph.split.us.i.i4.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i14.i = phi i64 [ 0, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit52 ], [ %i.qk, %middle.block232 ], [ %.sroa.3.0.i.us.i.i8.i.lcssa.unr, %.lr.ph.split.us.i.i4.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i8.i.1, %.lr.ph.split.us.i.i4.i ] ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 4977
  %i.rg = load i8, ptr %i.rf, align 1, !range !5, !noundef !6
  %i.rh = trunc nuw i8 %i.rg to i1
  %i.ri = icmp ult i8 %i.pt, 10
  %or.cond.i.i15.i = and i1 %i.ri, %i.rh
  br i1 %or.cond.i.i15.i, label %.lr.ph33.i.i25.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i

.lr.ph33.i.i25.i:                                 ; preds = %._crit_edge.i.i12.i
  %narrow275 = sub nuw nsw i8 10, %i.pt           ; 2 uses
  %i.rj = zext nneg i8 %narrow275 to i64          ; 2 uses
  %xtraiter266 = and i64 %i.rj, 1
  %i.rk = icmp eq i8 %i.pt, 9
  br i1 %i.rk, label %.lr.ph33.split.us.i.i26.i.epil.preheader, label %.lr.ph33.i.i25.i.new

.lr.ph33.i.i25.i.new:                             ; preds = %.lr.ph33.i.i25.i
  %unroll_iter272 = and i64 %i.rj, 14
  br label %.lr.ph33.split.us.i.i26.i

.lr.ph33.split.us.i.i26.i:                        ; preds = %.lr.ph33.split.us.i.i26.i, %.lr.ph33.i.i25.i.new
  %indvars.iv49.i.i27.i = phi i64 [ 10, %.lr.ph33.i.i25.i.new ], [ %indvars.iv.next50.i.i32.i.1, %.lr.ph33.split.us.i.i26.i ] ; 3 uses
  %.sroa.6.131.us.i.i28.i = phi i64 [ %.sroa.6.0.lcssa.i.i14.i, %.lr.ph33.i.i25.i.new ], [ %.sroa.3.0.i14.us.i.i30.i.1, %.lr.ph33.split.us.i.i26.i ]
  %.sroa.020.130.us.i.i29.i = phi i64 [ %.sroa.020.0.lcssa.i.i13.i, %.lr.ph33.i.i25.i.new ], [ %.sroa.0.0.i15.us.i.i31.i.1, %.lr.ph33.split.us.i.i26.i ]
  %niter273 = phi i64 [ 0, %.lr.ph33.i.i25.i.new ], [ %niter273.next.1, %.lr.ph33.split.us.i.i26.i ]
  %i.rl = add nuw nsw i64 %indvars.iv49.i.i27.i, 4294967295
  %i.rm = and i64 %i.rl, 4294967295
  %i.rn = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.rm ; 2 uses
  %i.ro = load i64, ptr %i.rn, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rq = load i64, ptr %i.rp, align 8
  %.sroa.3.0.i14.us.i.i30.i = add nsw i64 %i.rq, %.sroa.6.131.us.i.i28.i
  %.sroa.0.0.i15.us.i.i31.i = add i64 %i.ro, %.sroa.020.130.us.i.i29.i
  %i.rr = add nsw i64 %indvars.iv49.i.i27.i, 4294967294
  %i.rs = and i64 %i.rr, 4294967294
  %i.rt = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.rs ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rw = load i64, ptr %i.rv, align 8
  %.sroa.3.0.i14.us.i.i30.i.1 = add nsw i64 %i.rw, %.sroa.3.0.i14.us.i.i30.i ; 3 uses
  %.sroa.0.0.i15.us.i.i31.i.1 = add i64 %i.ru, %.sroa.0.0.i15.us.i.i31.i ; 3 uses
  %indvars.iv.next50.i.i32.i.1 = add nsw i64 %indvars.iv49.i.i27.i, -2 ; 2 uses
  %niter273.next.1 = add i64 %niter273, 2         ; 2 uses
  %niter273.ncmp.1.not = icmp eq i64 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i26.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i26.i
  %lcmp.mod268.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod268.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i, label %.lr.ph33.split.us.i.i26.i.epil.preheader

.lr.ph33.split.us.i.i26.i.epil.preheader:         ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa, %.lr.ph33.i.i25.i
  %indvars.iv49.i.i27.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i25.i ], [ %indvars.iv.next50.i.i32.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i28.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i14.i, %.lr.ph33.i.i25.i ], [ %.sroa.3.0.i14.us.i.i30.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i29.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i13.i, %.lr.ph33.i.i25.i ], [ %.sroa.0.0.i15.us.i.i31.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa ]
  %lcmp.mod271 = trunc i8 %narrow275 to i1
  call void @llvm.assume(i1 %lcmp.mod271)
  %i.rx = add nuw nsw i64 %indvars.iv49.i.i27.i.epil.init, 4294967295
  %i.ry = and i64 %i.rx, 4294967295
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.ry ; 2 uses
  %i.sa = load i64, ptr %i.rz, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sc = load i64, ptr %i.sb, align 8
  %.sroa.3.0.i14.us.i.i30.i.epil = add nsw i64 %i.sc, %.sroa.6.131.us.i.i28.i.epil.init
  %.sroa.0.0.i15.us.i.i31.i.epil = add i64 %i.sa, %.sroa.020.130.us.i.i29.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i: ; preds = %.lr.ph33.split.us.i.i26.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa, %._crit_edge.i.i12.i
  %.sroa.020.2.i.i17.i = phi i64 [ %.sroa.020.0.lcssa.i.i13.i, %._crit_edge.i.i12.i ], [ %.sroa.0.0.i15.us.i.i31.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i31.i.epil, %.lr.ph33.split.us.i.i26.i.epil.preheader ]
  %.sroa.6.2.i.i18.i = phi i64 [ %.sroa.6.0.lcssa.i.i14.i, %._crit_edge.i.i12.i ], [ %.sroa.3.0.i14.us.i.i30.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i30.i.epil, %.lr.ph33.split.us.i.i26.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 %.sroa.6.2.i.i18.i, ptr %2, align 8
  %.not170 = icmp eq i64 %.sroa.6.2.i.i18.i, 0
  br i1 %.not170, label %_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit.thread, label %_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit

_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit.thread: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.bq

_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.i
  %i.sd = uitofp i64 %.sroa.020.2.i.i17.i to double
  %i.se = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %i.sf = fdiv double %i.sd, %i.se                ; 2 uses
  %i.sg = fcmp ogt double %i.sf, f0x41D0000000000000
  %.sroa.speculated8.i.i19.i = select i1 %i.sg, double f0x41D0000000000000, double %i.sf ; 2 uses
  %i.sh = fcmp olt double %.sroa.speculated8.i.i19.i, 1.000000e+00
  %.sroa.speculated.i.i20.i = select i1 %i.sh, double 1.000000e+00, double %.sroa.speculated8.i.i19.i ; 2 uses
  %.pre175 = load i8, ptr %i.bg, align 8, !range !5
  %i.si = trunc nuw i8 %.pre175 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %i.si, label %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit57, label %bb.bq

bb.bq:                                            ; preds = %_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit.thread, %_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit
  %.0.i54187 = phi double [ 0.000000e+00, %_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit.thread ], [ %.sroa.speculated.i.i20.i, %_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit ]
  %i.sj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit57

_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit57: ; preds = %_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit, %bb.bq
  %.0.i54188 = phi double [ %.sroa.speculated.i.i20.i, %_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE.exit ], [ %.0.i54187, %bb.bq ]
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.83) #19
  %i.sk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %.0.i54188) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.sl = load ptr, ptr %0, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 216
  %i.sn = load ptr, ptr %i.sm, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 384
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.84) #19
  %i.sr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef %i.sp) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ss = load ptr, ptr %0, align 8
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 216
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 216
  %i.sw = load i64, ptr %i.sv, align 8
  %i.sx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.85) #19
  %i.sy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef %i.sw) #19 ; 0 uses
  br label %.sink.split

bb.br:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ta = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sz) #19
  %i.tb = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit58, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.td = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit58

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit58: ; preds = %bb.br, %bb.bs
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.86) #19
  %i.te = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ta) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.tg = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tf) #19
  %i.th = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ti = trunc nuw i8 %i.th to i1
  br i1 %i.ti, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit59, label %bb.bt

bb.bt:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit58
  %i.tj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit59

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit59: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit58, %bb.bt
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.87) #19
  %i.tk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.tg) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.tm = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tl) #19
  %i.tn = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.to = trunc nuw i8 %i.tn to i1
  br i1 %i.to, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit60, label %bb.bu

bb.bu:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit59
  %i.tp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit60

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit60: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit59, %bb.bu
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.88) #19
  %i.tq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.tm) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ts = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tr) #19
  %i.tt = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.tu = trunc nuw i8 %i.tt to i1
  br i1 %i.tu, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit61, label %bb.bv

bb.bv:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit60
  %i.tv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit61

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit61: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit60, %bb.bv
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.89) #19
  %i.tw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ts) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ty = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tx) #19
  %i.tz = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ua = trunc nuw i8 %i.tz to i1
  br i1 %i.ua, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit62, label %bb.bw

bb.bw:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit61
  %i.ub = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit62

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit62: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit61, %bb.bw
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.90) #19
  %i.uc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ty) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ue = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ud) #19
  %i.uf = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit63, label %bb.bx

end_hunk_1
begin_hunk_2_@_ZNK2v88internal8GCTracer8PrintNVPEv:bb.a
bb.fc:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit144
  %i.anf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit145

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit145: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit144, %bb.fc
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.156) #19
  %i.ang = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.anc) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ani = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.anh) #19
  %i.anj = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.ank = trunc nuw i8 %i.anj to i1
  br i1 %i.ank, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit146, label %bb.fd

bb.fd:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit145
  %i.anl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit146

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit146: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit145, %bb.fd
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.157) #19
  %i.anm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ani) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ann = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ano = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ann) #19
  %i.anp = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.anq = trunc nuw i8 %i.anp to i1
  br i1 %i.anq, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit147, label %bb.fe

bb.fe:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit146
  %i.anr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit147

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit147: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit146, %bb.fe
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.158) #19
  %i.ans = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.ano) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.anu = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ant) #19
  %i.anv = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.anw = trunc nuw i8 %i.anv to i1
  br i1 %i.anw, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit148, label %bb.ff

bb.ff:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit147
  %i.anx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit148

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit148: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit147, %bb.ff
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.159) #19
  %i.any = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.anu) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 3536
  %i.aoa = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.anz) #19
  %i.aob = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.aoc = trunc nuw i8 %i.aob to i1
  br i1 %i.aoc, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit149, label %bb.fg

bb.fg:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit148
  %i.aod = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit149

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit149: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit148, %bb.fg
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.160) #19
  %i.aoe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.aoa) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.aof = getelementptr inbounds nuw i8, ptr %0, i64 3512
  %i.aog = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aof) #19
  %i.aoh = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.aoi = trunc nuw i8 %i.aoh to i1
  br i1 %i.aoi, label %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit151, label %bb.fh

bb.fh:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit149
  %i.aoj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit151

_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit151: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit149, %bb.fh
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.161) #19
  %i.aok = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.aog) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.aol = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.aom = load i32, ptr %i.aol, align 8
  %i.aon = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.162) #19
  %i.aoo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef %i.aom) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.aoq = load double, ptr %i.aop, align 8       ; 2 uses
  %i.aor = fcmp une double %i.aoq, 0.000000e+00
  br i1 %i.aor, label %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit.thread, label %bb.fi

bb.fi:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit151
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aot = load i64, ptr %i.aos, align 8
  %i.aou = icmp eq i64 %i.aot, 0
  br i1 %i.aou, label %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit.thread, label %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit

_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit: ; preds = %bb.fi
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aow = load i64, ptr %i.aov, align 8
  %i.aox = uitofp i64 %i.aow to double
  %i.aoy = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aos) #19
  %i.aoz = fdiv double %i.aox, %i.aoy             ; 2 uses
  %.pre173 = load i8, ptr %i.bg, align 8, !range !5
  %i.apa = trunc nuw i8 %.pre173 to i1
  br i1 %i.apa, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit153, label %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit.thread

_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit.thread: ; preds = %bb.fi, %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit151, %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit
  %.0.i152190 = phi double [ %i.aoz, %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit ], [ 1.310720e+05, %bb.fi ], [ %i.aoq, %_ZN4heap4base17UnsafeJsonEmitter1pIiEERS1_PKcT_.exit151 ]
  %i.apb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit153

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit153: ; preds = %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit, %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit.thread
  %.0.i152191 = phi double [ %i.aoz, %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit ], [ %.0.i152190, %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit.thread ]
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.163) #19
  %i.apc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %.0.i152191) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.apd = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %i.ape = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.apf = trunc nuw i8 %i.ape to i1
  br i1 %i.apf, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit154, label %bb.fj

bb.fj:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit153
  %i.apg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit154

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit154: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit153, %bb.fj
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.164) #19
  %i.aph = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.apd) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.api = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.apj = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.api) #19
  %i.apk = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.apl = trunc nuw i8 %i.apk to i1
  br i1 %i.apl, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit155, label %bb.fk

bb.fk:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit154
  %i.apm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit155

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit155: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit154, %bb.fk
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.109) #19
  %i.apn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.apj) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.app = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.apo) #19
  %i.apq = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.apr = trunc nuw i8 %i.apq to i1
  br i1 %i.apr, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit156, label %bb.fl

bb.fl:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit155
  %i.aps = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit156

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit156: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit155, %bb.fl
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.110) #19
  %i.apt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.app) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.apu = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.apv = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.apu) #19
  %i.apw = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.apx = trunc nuw i8 %i.apw to i1
  br i1 %i.apx, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit157, label %bb.fm

bb.fm:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit156
  %i.apy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit157

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit157: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit156, %bb.fm
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.165) #19
  %i.apz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.apv) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.aqb = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aqa) #19
  %i.aqc = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.aqd = trunc nuw i8 %i.aqc to i1
  br i1 %i.aqd, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit158, label %bb.fn

bb.fn:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit157
  %i.aqe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit158

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit158: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit157, %bb.fn
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.166) #19
  %i.aqf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.aqb) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.aqg = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.aqh = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aqg) #19
  %i.aqi = load i8, ptr %i.bg, align 8, !range !5, !noundef !6
  %i.aqj = trunc nuw i8 %i.aqi to i1
  br i1 %i.aqj, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit159, label %bb.fo

bb.fo:                                            ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit158
  %i.aqk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit159

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit159: ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit158, %bb.fo
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.112) #19
  %i.aql = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %i.aqh) #19 ; 0 uses
  store i8 0, ptr %i.bg, align 8
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 3760 ; 7 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.aqo = load i8, ptr %i.aqn, align 8           ; 7 uses
  %.not24.i.i.i = icmp eq i8 %i.aqo, 0
  br i1 %.not24.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit159
  %i.aqp = zext i8 %i.aqo to i64                  ; 7 uses
  %min.iters.check = icmp ult i8 %i.aqo, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i
  %12 = add nsw i64 %i.aqp, -1                    ; 2 uses
  %i.aqq = zext i8 %i.aqo to i32
  %i.aqr = add nsw i32 %i.aqq, -1
  %13 = trunc nsw i64 %12 to i32
  %i.aqs = icmp ult i32 %i.aqr, %13
  %14 = icmp ugt i64 %12, 4294967295
  %15 = or i1 %i.aqs, %14
  br i1 %15, label %.lr.ph.split.us.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.aqp, 252                    ; 2 uses
  %i.aqt = and i64 %i.aqp, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ara, %vector.body ]
  %vec.phi197 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.arb, %vector.body ]
  %vec.phi198 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.arc, %vector.body ]
  %vec.phi199 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ard, %vector.body ]
  %i.aqu = sub i64 %i.aqp, %index
  %i.aqv = add nuw nsw i64 %i.aqu, 4294967295
  %i.aqw = and i64 %i.aqv, 4294967295
  %i.aqx = getelementptr inbounds nuw [16 x i8], ptr %i.aqm, i64 %i.aqw ; 2 uses
  %i.aqy = getelementptr inbounds i8, ptr %i.aqx, i64 -16
  %i.aqz = getelementptr inbounds i8, ptr %i.aqx, i64 -48
  %wide.vec = load <4 x i64>, ptr %i.aqy, align 8 ; 2 uses
  %reverse = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse201 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec202 = load <4 x i64>, ptr %i.aqz, align 8 ; 2 uses
  %reverse204 = shufflevector <4 x i64> %wide.vec202, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse206 = shufflevector <4 x i64> %wide.vec202, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.ara = add <2 x i64> %reverse201, %vec.phi    ; 2 uses
  %i.arb = add <2 x i64> %reverse206, %vec.phi197 ; 2 uses
  %i.arc = add <2 x i64> %reverse, %vec.phi198    ; 2 uses
  %i.ard = add <2 x i64> %reverse204, %vec.phi199 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.are = icmp eq i64 %index.next, %n.vec
  br i1 %i.are, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.arb, %i.ara
  %i.arf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx207 = add <2 x i64> %i.ard, %i.arc
  %i.arg = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx207) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.aqp
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %vector.scevcheck, %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ %i.aqp, %vector.scevcheck ], [ %i.aqp, %.lr.ph.i.i.i ], [ %i.aqt, %middle.block ] ; 5 uses
  %.sroa.6.026.us.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i ], [ %i.arf, %middle.block ] ; 2 uses
  %.sroa.020.025.us.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i ], [ %i.arg, %middle.block ] ; 2 uses
  %xtraiter252 = and i64 %indvars.iv.i.i.i.ph, 1
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.split.us.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.prol

.lr.ph.split.us.i.i.i.prol:                       ; preds = %.lr.ph.split.us.i.i.i.preheader
  %i.arh = add nuw nsw i64 %indvars.iv.i.i.i.ph, 255
  %i.ari = and i64 %i.arh, 254
  %i.arj = getelementptr inbounds nuw [16 x i8], ptr %i.aqm, i64 %i.ari ; 2 uses
  %i.ark = load i64, ptr %i.arj, align 8
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  %i.arm = load i64, ptr %i.arl, align 8
  %.sroa.3.0.i.us.i.i.i.prol = add nsw i64 %i.arm, %.sroa.6.026.us.i.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.i.prol = add i64 %i.ark, %.sroa.020.025.us.i.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.i.prol.loopexit

.lr.ph.split.us.i.i.i.prol.loopexit:              ; preds = %.lr.ph.split.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.preheader
  %.sroa.3.0.i.us.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.0.0.i.us.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.6.026.us.i.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.020.025.us.i.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %i.arn = icmp eq i64 %indvars.iv.i.i.i.ph, 1
  br i1 %i.arn, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %.sroa.6.026.us.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %.sroa.020.025.us.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ]
  %i.aro = add nuw nsw i64 %indvars.iv.i.i.i, 4294967295
  %i.arp = and i64 %i.aro, 4294967295
  %i.arq = getelementptr inbounds nuw [16 x i8], ptr %i.aqm, i64 %i.arp ; 2 uses
  %i.arr = load i64, ptr %i.arq, align 8
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.art = load i64, ptr %i.ars, align 8
  %.sroa.3.0.i.us.i.i.i = add nsw i64 %i.art, %.sroa.6.026.us.i.i.i
  %.sroa.0.0.i.us.i.i.i = add i64 %i.arr, %.sroa.020.025.us.i.i.i
  %i.aru = add nsw i64 %indvars.iv.i.i.i, 4294967294
  %i.arv = and i64 %i.aru, 4294967295
  %i.arw = getelementptr inbounds nuw [16 x i8], ptr %i.aqm, i64 %i.arv ; 2 uses
  %i.arx = load i64, ptr %i.arw, align 8
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arw, i64 8
  %i.arz = load i64, ptr %i.ary, align 8
  %.sroa.3.0.i.us.i.i.i.1 = add nsw i64 %i.arz, %.sroa.3.0.i.us.i.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.i.1 = add i64 %i.arx, %.sroa.0.0.i.us.i.i.i ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 2 uses
  %.not.us.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 0
  br i1 %.not.us.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !27

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i, %middle.block, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit159
  %.sroa.020.0.lcssa.i.i.i = phi i64 [ 0, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit159 ], [ %i.arg, %middle.block ], [ %.sroa.0.0.i.us.i.i.i.lcssa.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i.i = phi i64 [ 0, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit159 ], [ %i.arf, %middle.block ], [ %.sroa.3.0.i.us.i.i.i.lcssa.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ] ; 3 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 3921
  %i.asb = load i8, ptr %i.asa, align 1, !range !5, !noundef !6
  %i.asc = trunc nuw i8 %i.asb to i1
  %i.asd = icmp ult i8 %i.aqo, 10
  %or.cond.i.i.i = and i1 %i.asd, %i.asc
  br i1 %or.cond.i.i.i, label %.lr.ph33.i.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i

.lr.ph33.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %narrow274 = sub nuw nsw i8 10, %i.aqo          ; 2 uses
  %i.ase = zext nneg i8 %narrow274 to i64         ; 2 uses
  %xtraiter255 = and i64 %i.ase, 1
  %i.asf = icmp eq i8 %i.aqo, 9
  br i1 %i.asf, label %.lr.ph33.split.us.i.i.i.epil.preheader, label %.lr.ph33.i.i.i.new

.lr.ph33.i.i.i.new:                               ; preds = %.lr.ph33.i.i.i
  %unroll_iter261 = and i64 %i.ase, 14
  br label %.lr.ph33.split.us.i.i.i

.lr.ph33.split.us.i.i.i:                          ; preds = %.lr.ph33.split.us.i.i.i, %.lr.ph33.i.i.i.new
  %indvars.iv49.i.i.i = phi i64 [ 10, %.lr.ph33.i.i.i.new ], [ %indvars.iv.next50.i.i.i.1, %.lr.ph33.split.us.i.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %.lr.ph33.i.i.i.new ], [ %.sroa.3.0.i14.us.i.i.i.1, %.lr.ph33.split.us.i.i.i ]
  %.sroa.020.130.us.i.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %.lr.ph33.i.i.i.new ], [ %.sroa.0.0.i15.us.i.i.i.1, %.lr.ph33.split.us.i.i.i ]
  %niter262 = phi i64 [ 0, %.lr.ph33.i.i.i.new ], [ %niter262.next.1, %.lr.ph33.split.us.i.i.i ]
  %i.asg = add nuw nsw i64 %indvars.iv49.i.i.i, 4294967295
  %i.ash = and i64 %i.asg, 4294967295
  %i.asi = getelementptr inbounds nuw [16 x i8], ptr %i.aqm, i64 %i.ash ; 2 uses
  %i.asj = load i64, ptr %i.asi, align 8
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  %i.asl = load i64, ptr %i.ask, align 8
  %.sroa.3.0.i14.us.i.i.i = add nsw i64 %i.asl, %.sroa.6.131.us.i.i.i
  %.sroa.0.0.i15.us.i.i.i = add i64 %i.asj, %.sroa.020.130.us.i.i.i
  %i.asm = add nsw i64 %indvars.iv49.i.i.i, 4294967294
  %i.asn = and i64 %i.asm, 4294967294
  %i.aso = getelementptr inbounds nuw [16 x i8], ptr %i.aqm, i64 %i.asn ; 2 uses
  %i.asp = load i64, ptr %i.aso, align 8
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 8
  %i.asr = load i64, ptr %i.asq, align 8
  %.sroa.3.0.i14.us.i.i.i.1 = add nsw i64 %i.asr, %.sroa.3.0.i14.us.i.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.i.1 = add i64 %i.asp, %.sroa.0.0.i15.us.i.i.i ; 3 uses
  %indvars.iv.next50.i.i.i.1 = add nsw i64 %indvars.iv49.i.i.i, -2 ; 2 uses
  %niter262.next.1 = add i64 %niter262, 2         ; 2 uses
  %niter262.ncmp.1.not = icmp eq i64 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i.i
  %lcmp.mod257.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i, label %.lr.ph33.split.us.i.i.i.epil.preheader

.lr.ph33.split.us.i.i.i.epil.preheader:           ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, %.lr.ph33.i.i.i
  %indvars.iv49.i.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i.i ], [ %indvars.iv.next50.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %.lr.ph33.i.i.i ], [ %.sroa.3.0.i14.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %.lr.ph33.i.i.i ], [ %.sroa.0.0.i15.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod260 = trunc i8 %narrow274 to i1
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.ass = add nuw nsw i64 %indvars.iv49.i.i.i.epil.init, 4294967295
  %i.ast = and i64 %i.ass, 4294967295
  %i.asu = getelementptr inbounds nuw [16 x i8], ptr %i.aqm, i64 %i.ast ; 2 uses
  %i.asv = load i64, ptr %i.asu, align 8
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asu, i64 8
  %i.asx = load i64, ptr %i.asw, align 8
  %.sroa.3.0.i14.us.i.i.i.epil = add nsw i64 %i.asx, %.sroa.6.131.us.i.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.i.epil = add i64 %i.asv, %.sroa.020.130.us.i.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i: ; preds = %.lr.ph33.split.us.i.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, %._crit_edge.i.i.i
  %.sroa.020.2.i.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.0.0.i15.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.i.epil, %.lr.ph33.split.us.i.i.i.epil.preheader ]
  %.sroa.6.2.i.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.3.0.i14.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.i.epil, %.lr.ph33.split.us.i.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 %.sroa.6.2.i.i.i, ptr %1, align 8
  %.not169 = icmp eq i64 %.sroa.6.2.i.i.i, 0
  br i1 %.not169, label %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit.thread, label %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit

_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit.thread: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.fp

_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i
  %i.asy = uitofp i64 %.sroa.020.2.i.i.i to double
  %i.asz = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.ata = fdiv double %i.asy, %i.asz             ; 2 uses
  %i.atb = fcmp ogt double %i.ata, f0x41D0000000000000
  %.sroa.speculated8.i.i.i = select i1 %i.atb, double f0x41D0000000000000, double %i.ata ; 2 uses
  %i.atc = fcmp olt double %.sroa.speculated8.i.i.i, 1.000000e+00
  %.sroa.speculated.i.i.i160 = select i1 %i.atc, double 1.000000e+00, double %.sroa.speculated8.i.i.i ; 2 uses
  %.pre174 = load i8, ptr %i.bg, align 8, !range !5
  %i.atd = trunc nuw i8 %.pre174 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %i.atd, label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit164, label %bb.fp

bb.fp:                                            ; preds = %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit.thread, %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit
  %.0.i163193 = phi double [ 0.000000e+00, %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit.thread ], [ %.sroa.speculated.i.i.i160, %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit ]
  %i.ate = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit164

_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit164: ; preds = %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit, %bb.fp
  %.0.i163194 = phi double [ %.sroa.speculated.i.i.i160, %_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv.exit ], [ %.0.i163193, %bb.fp ]
  call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %6, ptr noundef nonnull @.str.167) #19
  %i.atf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, double noundef %.0.i163194) #19 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4heap4base17UnsafeJsonEmitter1pImEERS1_PKcT_.exit57, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit85, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit164
  store i8 0, ptr %i.bg, align 8
  br label %bb.fq

bb.fq:                                            ; preds = %.sink.split, %_ZN4heap4base17UnsafeJsonEmitter1pIdEERS1_PKcT_.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.atg = call noundef nonnull align 8 dereferenceable(400) ptr @_ZN4heap4base17UnsafeJsonEmitter10object_endEv(ptr noundef nonnull align 8 dereferenceable(400) %6) #19
  call void @_ZN4heap4base17UnsafeJsonEmitter8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(400) %i.atg) #19
  %i.ath = load ptr, ptr %0, align 8
  %i.ati = ptrtoint ptr %i.ath to i64
  %i.atj = add i64 %i.ati, -55464
  %i.atk = inttoptr i64 %i.atj to ptr
  %i.atl = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal7Isolate18PrintWithTimestampEPKcz(ptr noundef nonnull align 8 dereferenceable(64320) %i.atk, ptr noundef nonnull @.str.168, ptr noundef %i.atl) #19
  %i.atm = load ptr, ptr %7, align 8              ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ato = icmp eq ptr %i.atm, %i.atn
  br i1 %i.ato, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.fq
  %i.atp = load i64, ptr %i.atn, align 8
  %i.atq = add i64 %i.atp, 1
  call void @_ZdlPvm(ptr noundef %i.atm, i64 noundef %i.atq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.atr = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.atr, ptr %6, align 8
  %i.ats = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.att = getelementptr i8, ptr %i.atr, i64 -24
  %i.atu = load i64, ptr %i.att, align 8
  %i.atv = getelementptr inbounds i8, ptr %6, i64 %i.atu
  store ptr %i.ats, ptr %i.atv, align 8
  %i.atw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.atw, ptr %i.ag, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8
  %i.atx = load ptr, ptr %i.az, align 8           ; 2 uses
  %i.aty = icmp eq ptr %i.atx, %i.ba
  br i1 %i.aty, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.atz = load i64, ptr %i.ba, align 8
  %i.aua = add i64 %i.atz, 1
  call void @_ZdlPvm(ptr noundef %i.atx, i64 noundef %i.aua) #20
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #19
  store ptr %i.w, ptr %6, align 8
  %i.aub = load i64, ptr %i.y, align 8
  %i.auc = getelementptr inbounds i8, ptr %6, i64 %i.aub
  store ptr %i.x, ptr %i.auc, align 8
  store i64 0, ptr %i.ab, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8GCTracer5PrintEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %2 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.copyload = load i64, ptr %i.d, align 8
  %i.e = load i64, ptr %i.c, align 8
  %i.f = sub nsw i64 %i.e, %.sroa.01.0.copyload
  store i64 %i.f, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.g = load i32, ptr %i.b, align 8
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3520
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3512
  %i.n = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8
  %i.p = load i64, ptr %i.c, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal8GCTracer39ReportIncrementalSweepingStepToRecorderEd:bb.a
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i22.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #20
  br label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i
  store ptr %i.z, ptr %i.h, align 8
  store ptr %i.ad, ptr %i.i, align 8
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ae, ptr %i.k, align 8
  br label %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.af = phi ptr [ %i.m, %bb.c ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ag = fmul double %1, 1.000000e+03
  %i.ah = fptosi double %i.ag to i64
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = load ptr, ptr %i.i, align 8
  %i.aj = load ptr, ptr %i.h, align 8
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp eq i64 %i.am, 256
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, -55464
  %i.ar = inttoptr i64 %i.aq to ptr
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_118FlushBatchedEventsINS_7metrics47GarbageCollectionFullMainThreadIncrementalSweepEEEvRNS3_30GarbageCollectionBatchedEventsIT_EEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef %i.ar)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2v87metrics47GarbageCollectionFullMainThreadIncrementalSweepESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal8GCTracer6OutputEPKcz(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0, ptr noundef %1, ...) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1060), align 4, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @_ZN2v84base2OS6VPrintEPKcP13__va_list_tag(ptr noundef %1, ptr noundef nonnull %2) #19
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.d = call noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr nonnull %i.a, i64 256, ptr noundef %1, ptr noundef nonnull %3) #19 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.e = load ptr, ptr %0, align 8
  call void @_ZN2v88internal4Heap15AddToRingBufferEPKc(ptr noundef nonnull align 8 dereferenceable(2992) %i.e, ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

declare void @_ZN2v84base2OS6VPrintEPKcP13__va_list_tag(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN2v88internal4Heap15AddToRingBufferEPKc(ptr noundef nonnull align 8 dereferenceable(2992), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef i32 @_ZN2v84base2OS8SNPrintFEPciPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN2v84base2OS19GetCurrentProcessIdEv() local_unnamed_addr #4

declare noundef i64 @_ZN2v88internal15MemoryAllocator20GetPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer36AverageMarkCompactMutatorUtilizationEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3720
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = fadd double %i.b, %i.d                   ; 2 uses
  %i.f = fcmp oeq double %i.e, 0.000000e+00
  %i.g = fdiv double %i.d, %i.e
  %.0 = select i1 %i.f, double 1.000000e+00, double %i.g
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer36CurrentMarkCompactMutatorUtilizationEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3736
  %i.b = load double, ptr %i.a, align 8
  ret double %i.b
}

declare noundef nonnull align 8 dereferenceable(400) ptr @_ZN4heap4base17UnsafeJsonEmitter12object_startEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(400) ptr @_ZN4heap4base17UnsafeJsonEmitter1pIPKcEERS1_S4_T_(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.214, i64 noundef 1) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4heap4base17UnsafeJsonEmitter18emit_property_nameEPKc(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.215, i64 noundef 1) #19 ; 0 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = or i32 %i.m, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n) #19
  br label %_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.o) #19 ; 0 uses
  br label %_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit

_ZN4heap4base17UnsafeJsonEmitter10emit_valueEPKc.exit: ; preds = %bb.d, %bb.e
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.215, i64 noundef 1) #19 ; 0 uses
  store i8 0, ptr %i.a, align 8
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2v88internal4Heap13IsGCWithStackEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #4

declare noundef i64 @_ZN2v88internal15MemoryAllocator26GetSharedPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

declare noundef i64 @_ZN2v88internal15MemoryAllocator25GetTotalPooledChunksCountEv(ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer41AllocationThroughputInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %.val.i = load double, ptr %i.a, align 8        ; 2 uses
  %i.b = fcmp ogt double %.val.i, f0x41D0000000000000
  %.sroa.speculated.i.i = select i1 %i.b, double f0x41D0000000000000, double %.val.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %.val.i1 = load double, ptr %i.c, align 8       ; 2 uses
  %i.d = fcmp ogt double %.val.i1, f0x41D0000000000000
  %.sroa.speculated.i.i2 = select i1 %i.d, double f0x41D0000000000000, double %.val.i1
  %i.e = fadd double %.sroa.speculated.i.i, %.sroa.speculated.i.i2
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer49NewSpaceAllocationThroughputInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %.val = load double, ptr %i.a, align 8          ; 2 uses
  %i.b = fcmp ogt double %.val, f0x41D0000000000000
  %.sroa.speculated.i = select i1 %i.b, double f0x41D0000000000000, double %.val
  ret double %.sroa.speculated.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer20AverageSurvivalRatioEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5065
  %i.c = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.f = load i8, ptr %i.e, align 8               ; 7 uses
  %i.g = icmp ne i8 %i.f, 0                       ; 2 uses
  %.not3 = select i1 %i.d, i1 true, i1 %i.g
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = zext i8 %i.f to i64                      ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.0132.i.prol = phi double [ %i.m, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.i = add nuw nsw i64 %indvars.iv.i.prol, 4294967295
  %i.j = and i64 %i.i, 4294967295
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  %i.l = load double, ptr %i.k, align 8
  %i.m = fadd double %.0132.i.prol, %i.l          ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !41

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa9.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.h, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.0132.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i8 %i.f, 4
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.013.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %.lcssa9.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %i.o = icmp ult i8 %i.f, 10
  %or.cond.i = and i1 %i.o, %i.d
  br i1 %or.cond.i, label %.lr.ph6.preheader.i, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit"

.lr.ph6.preheader.i:                              ; preds = %._crit_edge.i
  %narrow = sub nuw nsw i8 10, %i.f
  %i.p = zext nneg i8 %narrow to i64              ; 2 uses
  %xtraiter10 = and i64 %i.p, 3                   ; 3 uses
  %i.q = add nsw i8 %i.f, -7
  %i.r = icmp ult i8 %i.q, 3
  br i1 %i.r, label %.lr.ph6.i.epil.preheader, label %.lr.ph6.preheader.i.new

.lr.ph6.preheader.i.new:                          ; preds = %.lr.ph6.preheader.i
  %unroll_iter = and i64 %i.p, 12
  br label %.lr.ph6.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.0132.i = phi double [ %i.al, %.lr.ph.i ], [ %.0132.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load double, ptr %i.u, align 8
  %i.w = fadd double %.0132.i, %i.v
  %i.x = add nsw i64 %indvars.iv.i, 4294967294
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = fadd double %i.w, %i.aa
  %i.ac = add nsw i64 %indvars.iv.i, 4294967293
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fadd double %i.ab, %i.af
  %i.ah = add nsw i64 %indvars.iv.i, 4294967292
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fadd double %i.ag, %i.ak                ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !21

.lr.ph6.i:                                        ; preds = %.lr.ph6.i, %.lr.ph6.preheader.i.new
  %indvars.iv10.i = phi i64 [ 10, %.lr.ph6.preheader.i.new ], [ %indvars.iv.next11.i.3, %.lr.ph6.i ] ; 5 uses
  %.14.i = phi double [ %.013.lcssa.i, %.lr.ph6.preheader.i.new ], [ %i.bf, %.lr.ph6.i ]
  %niter = phi i64 [ 0, %.lr.ph6.preheader.i.new ], [ %niter.next.3, %.lr.ph6.i ]
  %i.am = add nuw nsw i64 %indvars.iv10.i, 4294967295
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8
  %i.aq = fadd double %.14.i, %i.ap
  %i.ar = add nsw i64 %indvars.iv10.i, 4294967294
  %i.as = and i64 %i.ar, 4294967294
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as
  %i.au = load double, ptr %i.at, align 8
  %i.av = fadd double %i.aq, %i.au
  %i.aw = add nsw i64 %indvars.iv10.i, 4294967293
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = fadd double %i.av, %i.az
  %i.bb = add nsw i64 %indvars.iv10.i, 4294967292
  %i.bc = and i64 %i.bb, 4294967294
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8
  %i.bf = fadd double %i.ba, %i.be                ; 3 uses
  %indvars.iv.next11.i.3 = add nsw i64 %indvars.iv10.i, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa", label %.lr.ph6.i, !llvm.loop !22

"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa": ; preds = %.lr.ph6.i
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit", label %.lr.ph6.i.epil.preheader

.lr.ph6.i.epil.preheader:                         ; preds = %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa", %.lr.ph6.preheader.i
  %indvars.iv10.i.epil.init = phi i64 [ 10, %.lr.ph6.preheader.i ], [ %indvars.iv.next11.i.3, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa" ]
  %.14.i.epil.init = phi double [ %.013.lcssa.i, %.lr.ph6.preheader.i ], [ %i.bf, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa" ]
  %lcmp.mod13 = icmp ne i64 %xtraiter10, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph6.i.epil

.lr.ph6.i.epil:                                   ; preds = %.lr.ph6.i.epil, %.lr.ph6.i.epil.preheader
  %indvars.iv10.i.epil = phi i64 [ %indvars.iv10.i.epil.init, %.lr.ph6.i.epil.preheader ], [ %indvars.iv.next11.i.epil, %.lr.ph6.i.epil ] ; 2 uses
  %.14.i.epil = phi double [ %.14.i.epil.init, %.lr.ph6.i.epil.preheader ], [ %i.bk, %.lr.ph6.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph6.i.epil.preheader ], [ %epil.iter.next, %.lr.ph6.i.epil ]
  %i.bg = add nuw nsw i64 %indvars.iv10.i.epil, 4294967295
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = fadd double %.14.i.epil, %i.bj          ; 2 uses
  %indvars.iv.next11.i.epil = add nsw i64 %indvars.iv10.i.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter10
  br i1 %epil.iter.cmp.not, label %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit", label %.lr.ph6.i.epil, !llvm.loop !42

"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit": ; preds = %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa", %.lr.ph6.i.epil, %._crit_edge.i
  %.014.i = phi double [ %.013.lcssa.i, %._crit_edge.i ], [ %i.bf, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit.loopexit.unr-lcssa" ], [ %i.bk, %.lr.ph6.i.epil ]
  %i.bl = uitofp i8 %i.f to double
  %i.bm = select i1 %i.d, double 1.000000e+01, double %i.bl
  %i.bn = fdiv double %.014.i, %i.bm
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit"
  %.0 = phi double [ %i.bn, %"_ZNK2v84base10RingBufferIdLh10EE6ReduceIZNKS_8internal8GCTracer20AverageSurvivalRatioEvE3$_0EEdT_RKd.exit" ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { double, i8 } @_ZNK2v88internal8GCTracer41YoungGenerationSpeedInBytesPerMillisecondENS0_24YoungGenerationSpeedModeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4808
  %i.c = load i8, ptr %i.b, align 8               ; 7 uses
  %.not24.i.i = icmp eq i8 %i.c, 0
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %min.iters.check51 = icmp ult i8 %i.c, 8
  br i1 %min.iters.check51, label %.lr.ph.split.us.i.i.preheader, label %vector.scevcheck49

vector.scevcheck49:                               ; preds = %.lr.ph.i.i
  %4 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.e = zext i8 %i.c to i32
  %i.f = add nsw i32 %i.e, -1
  %5 = trunc nsw i64 %4 to i32
  %i.g = icmp ult i32 %i.f, %5
  %6 = icmp ugt i64 %4, 4294967295
  %7 = or i1 %i.g, %6
  br i1 %7, label %.lr.ph.split.us.i.i.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %vector.scevcheck49
  %n.vec54 = and i64 %i.d, 252                    ; 2 uses
  %i.h = and i64 %i.d, 3
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next71, %vector.body55 ] ; 2 uses
  %vec.phi57 = phi <2 x i64> [ zeroinitializer, %vector.ph52 ], [ %i.o, %vector.body55 ]
  %vec.phi58 = phi <2 x i64> [ zeroinitializer, %vector.ph52 ], [ %i.p, %vector.body55 ]
  %vec.phi59 = phi <2 x i64> [ zeroinitializer, %vector.ph52 ], [ %i.q, %vector.body55 ]
  %vec.phi60 = phi <2 x i64> [ zeroinitializer, %vector.ph52 ], [ %i.r, %vector.body55 ]
  %i.i = sub i64 %i.d, %index56
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -48
  %wide.vec61 = load <4 x i64>, ptr %i.m, align 8 ; 2 uses
  %reverse63 = shufflevector <4 x i64> %wide.vec61, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse65 = shufflevector <4 x i64> %wide.vec61, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec66 = load <4 x i64>, ptr %i.n, align 8 ; 2 uses
  %reverse68 = shufflevector <4 x i64> %wide.vec66, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse70 = shufflevector <4 x i64> %wide.vec66, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.o = add <2 x i64> %reverse65, %vec.phi57     ; 2 uses
  %i.p = add <2 x i64> %reverse70, %vec.phi58     ; 2 uses
  %i.q = add <2 x i64> %reverse63, %vec.phi59     ; 2 uses
  %i.r = add <2 x i64> %reverse68, %vec.phi60     ; 2 uses
  %index.next71 = add nuw i64 %index56, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next71, %n.vec54
  br i1 %i.s, label %middle.block72, label %vector.body55, !llvm.loop !43

middle.block72:                                   ; preds = %vector.body55
  %bin.rdx73 = add <2 x i64> %i.p, %i.o
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx73) ; 2 uses
  %bin.rdx74 = add <2 x i64> %i.r, %i.q
  %i.u = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %n.vec54, %i.d
  br i1 %cmp.n75, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %vector.scevcheck49, %.lr.ph.i.i, %middle.block72
  %indvars.iv.i.i.ph = phi i64 [ %i.d, %vector.scevcheck49 ], [ %i.d, %.lr.ph.i.i ], [ %i.h, %middle.block72 ] ; 5 uses
  %.sroa.6.026.us.i.i.ph = phi i64 [ 0, %vector.scevcheck49 ], [ 0, %.lr.ph.i.i ], [ %i.t, %middle.block72 ] ; 2 uses
  %.sroa.020.025.us.i.i.ph = phi i64 [ 0, %vector.scevcheck49 ], [ 0, %.lr.ph.i.i ], [ %i.u, %middle.block72 ] ; 2 uses
  %xtraiter91 = and i64 %indvars.iv.i.i.ph, 1
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader
  %i.v = add nuw nsw i64 %indvars.iv.i.i.ph, 255
  %i.w = and i64 %i.v, 254
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %.sroa.3.0.i.us.i.i.prol = add nsw i64 %i.aa, %.sroa.6.026.us.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.prol = add i64 %i.y, %.sroa.020.025.us.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.prol.loopexit

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.3.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.0.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.6.026.us.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.020.025.us.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %i.ab = icmp eq i64 %indvars.iv.i.i.ph, 1
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.split.us.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.6.026.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.020.025.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %i.ac = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.3.0.i.us.i.i = add nsw i64 %i.ah, %.sroa.6.026.us.i.i
  %.sroa.0.0.i.us.i.i = add i64 %i.af, %.sroa.020.025.us.i.i
  %i.ai = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.sroa.3.0.i.us.i.i.1 = add nsw i64 %i.an, %.sroa.3.0.i.us.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.1 = add i64 %i.al, %.sroa.0.0.i.us.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %.not.us.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.us.i.i.1, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !44

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block72, %bb.b
  %.sroa.020.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %middle.block72 ], [ %.sroa.0.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %middle.block72 ], [ %.sroa.3.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4809
  %i.ap = load i8, ptr %i.ao, align 1, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = icmp ult i8 %i.c, 10
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %.lr.ph33.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

.lr.ph33.i.i:                                     ; preds = %._crit_edge.i.i
  %narrow100 = sub nuw nsw i8 10, %i.c            ; 2 uses
  %i.as = zext nneg i8 %narrow100 to i64          ; 2 uses
  %xtraiter93 = and i64 %i.as, 1
  %i.at = icmp eq i8 %i.c, 9
  br i1 %i.at, label %.lr.ph33.split.us.i.i.epil.preheader, label %.lr.ph33.i.i.new

.lr.ph33.i.i.new:                                 ; preds = %.lr.ph33.i.i
  %unroll_iter98 = and i64 %i.as, 14
  br label %.lr.ph33.split.us.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.split.us.i.i, %.lr.ph33.i.i.new
  %indvars.iv49.i.i = phi i64 [ 10, %.lr.ph33.i.i.new ], [ %indvars.iv.next50.i.i.1, %.lr.ph33.split.us.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.3.0.i14.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %.sroa.020.130.us.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.0.0.i15.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %niter99 = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %niter99.next.1, %.lr.ph33.split.us.i.i ]
  %i.au = add nuw nsw i64 %indvars.iv49.i.i, 4294967295
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %.sroa.3.0.i14.us.i.i = add nsw i64 %i.az, %.sroa.6.131.us.i.i
  %.sroa.0.0.i15.us.i.i = add i64 %i.ax, %.sroa.020.130.us.i.i
  %i.ba = add nsw i64 %indvars.iv49.i.i, 4294967294
  %i.bb = and i64 %i.ba, 4294967294
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %.sroa.3.0.i14.us.i.i.1 = add nsw i64 %i.bf, %.sroa.3.0.i14.us.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.1 = add i64 %i.bd, %.sroa.0.0.i15.us.i.i ; 3 uses
  %indvars.iv.next50.i.i.1 = add nsw i64 %indvars.iv49.i.i, -2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2           ; 2 uses
  %niter99.ncmp.1.not = icmp eq i64 %niter99.next.1, %unroll_iter98
  br i1 %niter99.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, label %.lr.ph33.split.us.i.i.epil.preheader

.lr.ph33.split.us.i.i.epil.preheader:             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i
  %indvars.iv49.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i ], [ %indvars.iv.next50.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i8 %narrow100 to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.bg = add nuw nsw i64 %indvars.iv49.i.i.epil.init, 4294967295
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %.sroa.3.0.i14.us.i.i.epil = add nsw i64 %i.bl, %.sroa.6.131.us.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.epil = add i64 %i.bj, %.sroa.020.130.us.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i: ; preds = %.lr.ph33.split.us.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %.sroa.020.2.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ]
  %.sroa.6.2.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 %.sroa.6.2.i.i, ptr %3, align 8
  %i.bm = icmp eq i64 %.sroa.6.2.i.i, 0
  br i1 %i.bm, label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i
  %i.bn = uitofp i64 %.sroa.020.2.i.i to double
  %i.bo = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %i.bp = fdiv double %i.bn, %i.bo                ; 2 uses
  %i.bq = fcmp ogt double %i.bp, f0x41D0000000000000
  %.sroa.speculated8.i.i = select i1 %i.bq, double f0x41D0000000000000, double %i.bp ; 2 uses
  %i.br = fcmp olt double %.sroa.speculated8.i.i, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.br, double 1.000000e+00, double %.sroa.speculated8.i.i
  br label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit

_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, %bb.c
  %.sroa.0.0.i.i = phi double [ %.sroa.speculated.i.i, %bb.c ], [ undef, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  %.sroa.2.0.i.i = phi i8 [ 1, %bb.c ], [ 0, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4816 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.bu = load i8, ptr %i.bt, align 8             ; 7 uses
  %.not24.i.i2 = icmp eq i8 %i.bu, 0
  br i1 %.not24.i.i2, label %._crit_edge.i.i12, label %.lr.ph.i.i3

.lr.ph.i.i3:                                      ; preds = %bb.d
  %i.bv = zext i8 %i.bu to i64                    ; 7 uses
  %min.iters.check = icmp ult i8 %i.bu, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i4.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i3
  %8 = add nsw i64 %i.bv, -1                      ; 2 uses
  %i.bw = zext i8 %i.bu to i32
  %i.bx = add nsw i32 %i.bw, -1
  %9 = trunc nsw i64 %8 to i32
  %i.by = icmp ult i32 %i.bx, %9
  %10 = icmp ugt i64 %8, 4294967295
  %11 = or i1 %i.by, %10
  br i1 %11, label %.lr.ph.split.us.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bv, 252                     ; 2 uses
  %i.bz = and i64 %i.bv, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cg, %vector.body ]
  %vec.phi37 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi38 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi39 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cj, %vector.body ]
  %i.ca = sub i64 %i.bv, %index
  %i.cb = add nuw nsw i64 %i.ca, 4294967295
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -48
  %wide.vec = load <4 x i64>, ptr %i.ce, align 8  ; 2 uses
  %reverse = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse41 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec42 = load <4 x i64>, ptr %i.cf, align 8 ; 2 uses
  %reverse44 = shufflevector <4 x i64> %wide.vec42, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse46 = shufflevector <4 x i64> %wide.vec42, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.cg = add <2 x i64> %reverse41, %vec.phi      ; 2 uses
  %i.ch = add <2 x i64> %reverse46, %vec.phi37    ; 2 uses
  %i.ci = add <2 x i64> %reverse, %vec.phi38      ; 2 uses
  %i.cj = add <2 x i64> %reverse44, %vec.phi39    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ch, %i.cg
  %i.cl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx47 = add <2 x i64> %i.cj, %i.ci
  %i.cm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx47) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bv
  br i1 %cmp.n, label %._crit_edge.i.i12, label %.lr.ph.split.us.i.i4.preheader

.lr.ph.split.us.i.i4.preheader:                   ; preds = %vector.scevcheck, %.lr.ph.i.i3, %middle.block
  %indvars.iv.i.i5.ph = phi i64 [ %i.bv, %vector.scevcheck ], [ %i.bv, %.lr.ph.i.i3 ], [ %i.bz, %middle.block ] ; 5 uses
  %.sroa.6.026.us.i.i6.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i3 ], [ %i.cl, %middle.block ] ; 2 uses
  %.sroa.020.025.us.i.i7.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i3 ], [ %i.cm, %middle.block ] ; 2 uses
  %xtraiter = and i64 %indvars.iv.i.i5.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.i4.prol.loopexit, label %.lr.ph.split.us.i.i4.prol

.lr.ph.split.us.i.i4.prol:                        ; preds = %.lr.ph.split.us.i.i4.preheader
  %i.cn = add nuw nsw i64 %indvars.iv.i.i5.ph, 255
  %i.co = and i64 %i.cn, 254
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load i64, ptr %i.cr, align 8
  %.sroa.3.0.i.us.i.i8.prol = add nsw i64 %i.cs, %.sroa.6.026.us.i.i6.ph ; 2 uses
  %.sroa.0.0.i.us.i.i9.prol = add i64 %i.cq, %.sroa.020.025.us.i.i7.ph ; 2 uses
  %indvars.iv.next.i.i10.prol = add nsw i64 %indvars.iv.i.i5.ph, -1
  br label %.lr.ph.split.us.i.i4.prol.loopexit

.lr.ph.split.us.i.i4.prol.loopexit:               ; preds = %.lr.ph.split.us.i.i4.prol, %.lr.ph.split.us.i.i4.preheader
  %.sroa.3.0.i.us.i.i8.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i4.preheader ], [ %.sroa.3.0.i.us.i.i8.prol, %.lr.ph.split.us.i.i4.prol ]
  %.sroa.0.0.i.us.i.i9.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i4.preheader ], [ %.sroa.0.0.i.us.i.i9.prol, %.lr.ph.split.us.i.i4.prol ]
  %indvars.iv.i.i5.unr = phi i64 [ %indvars.iv.i.i5.ph, %.lr.ph.split.us.i.i4.preheader ], [ %indvars.iv.next.i.i10.prol, %.lr.ph.split.us.i.i4.prol ]
  %.sroa.6.026.us.i.i6.unr = phi i64 [ %.sroa.6.026.us.i.i6.ph, %.lr.ph.split.us.i.i4.preheader ], [ %.sroa.3.0.i.us.i.i8.prol, %.lr.ph.split.us.i.i4.prol ]
  %.sroa.020.025.us.i.i7.unr = phi i64 [ %.sroa.020.025.us.i.i7.ph, %.lr.ph.split.us.i.i4.preheader ], [ %.sroa.0.0.i.us.i.i9.prol, %.lr.ph.split.us.i.i4.prol ]
  %i.ct = icmp eq i64 %indvars.iv.i.i5.ph, 1
  br i1 %i.ct, label %._crit_edge.i.i12, label %.lr.ph.split.us.i.i4

.lr.ph.split.us.i.i4:                             ; preds = %.lr.ph.split.us.i.i4.prol.loopexit, %.lr.ph.split.us.i.i4
  %indvars.iv.i.i5 = phi i64 [ %indvars.iv.next.i.i10.1, %.lr.ph.split.us.i.i4 ], [ %indvars.iv.i.i5.unr, %.lr.ph.split.us.i.i4.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i6 = phi i64 [ %.sroa.3.0.i.us.i.i8.1, %.lr.ph.split.us.i.i4 ], [ %.sroa.6.026.us.i.i6.unr, %.lr.ph.split.us.i.i4.prol.loopexit ]
  %.sroa.020.025.us.i.i7 = phi i64 [ %.sroa.0.0.i.us.i.i9.1, %.lr.ph.split.us.i.i4 ], [ %.sroa.020.025.us.i.i7.unr, %.lr.ph.split.us.i.i4.prol.loopexit ]
  %i.cu = add nuw nsw i64 %indvars.iv.i.i5, 4294967295
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.cv ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8
  %.sroa.3.0.i.us.i.i8 = add nsw i64 %i.cz, %.sroa.6.026.us.i.i6
  %.sroa.0.0.i.us.i.i9 = add i64 %i.cx, %.sroa.020.025.us.i.i7
  %i.da = add nsw i64 %indvars.iv.i.i5, 4294967294
  %i.db = and i64 %i.da, 4294967295
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8
  %.sroa.3.0.i.us.i.i8.1 = add nsw i64 %i.df, %.sroa.3.0.i.us.i.i8 ; 2 uses
  %.sroa.0.0.i.us.i.i9.1 = add i64 %i.dd, %.sroa.0.0.i.us.i.i9 ; 2 uses
  %indvars.iv.next.i.i10.1 = add nsw i64 %indvars.iv.i.i5, -2 ; 2 uses
  %.not.us.i.i11.1 = icmp eq i64 %indvars.iv.next.i.i10.1, 0
  br i1 %.not.us.i.i11.1, label %._crit_edge.i.i12, label %.lr.ph.split.us.i.i4, !llvm.loop !46

._crit_edge.i.i12:                                ; preds = %.lr.ph.split.us.i.i4.prol.loopexit, %.lr.ph.split.us.i.i4, %middle.block, %bb.d
  %.sroa.020.0.lcssa.i.i13 = phi i64 [ 0, %bb.d ], [ %i.cm, %middle.block ], [ %.sroa.0.0.i.us.i.i9.lcssa.unr, %.lr.ph.split.us.i.i4.prol.loopexit ], [ %.sroa.0.0.i.us.i.i9.1, %.lr.ph.split.us.i.i4 ] ; 3 uses
  %.sroa.6.0.lcssa.i.i14 = phi i64 [ 0, %bb.d ], [ %i.cl, %middle.block ], [ %.sroa.3.0.i.us.i.i8.lcssa.unr, %.lr.ph.split.us.i.i4.prol.loopexit ], [ %.sroa.3.0.i.us.i.i8.1, %.lr.ph.split.us.i.i4 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 4977
  %i.dh = load i8, ptr %i.dg, align 1, !range !5, !noundef !6
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = icmp ult i8 %i.bu, 10
  %or.cond.i.i15 = and i1 %i.dj, %i.di
  br i1 %or.cond.i.i15, label %.lr.ph33.i.i25, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16

.lr.ph33.i.i25:                                   ; preds = %._crit_edge.i.i12
  %narrow = sub nuw nsw i8 10, %i.bu              ; 2 uses
  %i.dk = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter86 = and i64 %i.dk, 1
  %i.dl = icmp eq i8 %i.bu, 9
  br i1 %i.dl, label %.lr.ph33.split.us.i.i26.epil.preheader, label %.lr.ph33.i.i25.new

.lr.ph33.i.i25.new:                               ; preds = %.lr.ph33.i.i25
  %unroll_iter = and i64 %i.dk, 14
  br label %.lr.ph33.split.us.i.i26

.lr.ph33.split.us.i.i26:                          ; preds = %.lr.ph33.split.us.i.i26, %.lr.ph33.i.i25.new
  %indvars.iv49.i.i27 = phi i64 [ 10, %.lr.ph33.i.i25.new ], [ %indvars.iv.next50.i.i32.1, %.lr.ph33.split.us.i.i26 ] ; 3 uses
  %.sroa.6.131.us.i.i28 = phi i64 [ %.sroa.6.0.lcssa.i.i14, %.lr.ph33.i.i25.new ], [ %.sroa.3.0.i14.us.i.i30.1, %.lr.ph33.split.us.i.i26 ]
  %.sroa.020.130.us.i.i29 = phi i64 [ %.sroa.020.0.lcssa.i.i13, %.lr.ph33.i.i25.new ], [ %.sroa.0.0.i15.us.i.i31.1, %.lr.ph33.split.us.i.i26 ]
  %niter = phi i64 [ 0, %.lr.ph33.i.i25.new ], [ %niter.next.1, %.lr.ph33.split.us.i.i26 ]
  %i.dm = add nuw nsw i64 %indvars.iv49.i.i27, 4294967295
  %i.dn = and i64 %i.dm, 4294967295
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.dn ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  %.sroa.3.0.i14.us.i.i30 = add nsw i64 %i.dr, %.sroa.6.131.us.i.i28
  %.sroa.0.0.i15.us.i.i31 = add i64 %i.dp, %.sroa.020.130.us.i.i29
  %i.ds = add nsw i64 %indvars.iv49.i.i27, 4294967294
  %i.dt = and i64 %i.ds, 4294967294
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.dt ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i64, ptr %i.dw, align 8
  %.sroa.3.0.i14.us.i.i30.1 = add nsw i64 %i.dx, %.sroa.3.0.i14.us.i.i30 ; 3 uses
  %.sroa.0.0.i15.us.i.i31.1 = add i64 %i.dv, %.sroa.0.0.i15.us.i.i31 ; 3 uses
  %indvars.iv.next50.i.i32.1 = add nsw i64 %indvars.iv49.i.i27, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i26, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i26
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16, label %.lr.ph33.split.us.i.i26.epil.preheader

.lr.ph33.split.us.i.i26.epil.preheader:           ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa, %.lr.ph33.i.i25
  %indvars.iv49.i.i27.epil.init = phi i64 [ 10, %.lr.ph33.i.i25 ], [ %indvars.iv.next50.i.i32.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i28.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i14, %.lr.ph33.i.i25 ], [ %.sroa.3.0.i14.us.i.i30.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i29.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i13, %.lr.ph33.i.i25 ], [ %.sroa.0.0.i15.us.i.i31.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa ]
  %lcmp.mod90 = trunc i8 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.dy = add nuw nsw i64 %indvars.iv49.i.i27.epil.init, 4294967295
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.dz ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8
  %.sroa.3.0.i14.us.i.i30.epil = add nsw i64 %i.ed, %.sroa.6.131.us.i.i28.epil.init
  %.sroa.0.0.i15.us.i.i31.epil = add i64 %i.eb, %.sroa.020.130.us.i.i29.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16: ; preds = %.lr.ph33.split.us.i.i26.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa, %._crit_edge.i.i12
  %.sroa.020.2.i.i17 = phi i64 [ %.sroa.020.0.lcssa.i.i13, %._crit_edge.i.i12 ], [ %.sroa.0.0.i15.us.i.i31.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i31.epil, %.lr.ph33.split.us.i.i26.epil.preheader ]
  %.sroa.6.2.i.i18 = phi i64 [ %.sroa.6.0.lcssa.i.i14, %._crit_edge.i.i12 ], [ %.sroa.3.0.i14.us.i.i30.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i30.epil, %.lr.ph33.split.us.i.i26.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 %.sroa.6.2.i.i18, ptr %2, align 8
  %i.ee = icmp eq i64 %.sroa.6.2.i.i18, 0
  br i1 %i.ee, label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit33, label %bb.e

bb.e:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16
  %i.ef = uitofp i64 %.sroa.020.2.i.i17 to double
  %i.eg = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %i.eh = fdiv double %i.ef, %i.eg                ; 2 uses
  %i.ei = fcmp ogt double %i.eh, f0x41D0000000000000
  %.sroa.speculated8.i.i19 = select i1 %i.ei, double f0x41D0000000000000, double %i.eh ; 2 uses
  %i.ej = fcmp olt double %.sroa.speculated8.i.i19, 1.000000e+00
  %.sroa.speculated.i.i20 = select i1 %i.ej, double 1.000000e+00, double %.sroa.speculated8.i.i19
  br label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit33

_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit33: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16, %bb.e
  %.sroa.0.0.i.i21 = phi double [ %.sroa.speculated.i.i20, %bb.e ], [ undef, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16 ]
  %.sroa.2.0.i.i22 = phi i8 [ 1, %bb.e ], [ 0, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.169) #22
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit33, %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit
  %.sroa.0.0.i.i.pn = phi double [ %.sroa.0.0.i.i, %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit ], [ %.sroa.0.0.i.i21, %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit33 ]
  %.sroa.2.0.i.i.pn = phi i8 [ %.sroa.2.0.i.i, %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit ], [ %.sroa.2.0.i.i22, %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit33 ]
  %.fca.0.insert.i.i.pn = insertvalue { double, i8 } poison, double %.sroa.0.0.i.i.pn, 0
  %.pn = insertvalue { double, i8 } %.fca.0.insert.i.i.pn, i8 %.sroa.2.0.i.i.pn, 1
  ret { double, i8 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load i64, ptr %i.g, align 8
  %i.i = uitofp i64 %i.h to double
  %i.j = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19
  %i.k = fdiv double %i.i, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi double [ %i.k, %bb.c ], [ %i.b, %bb.a ], [ 1.310720e+05, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { double, i8 } @_ZNK2v88internal8GCTracer36CompactionSpeedInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3760 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.c = load i8, ptr %i.b, align 8               ; 7 uses
  %.not24.i.i = icmp eq i8 %i.c, 0
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %min.iters.check = icmp ult i8 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i
  %2 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.e = zext i8 %i.c to i32
  %i.f = add nsw i32 %i.e, -1
  %3 = trunc nsw i64 %2 to i32
  %i.g = icmp ult i32 %i.f, %3
  %4 = icmp ugt i64 %2, 4294967295
  %5 = or i1 %i.g, %4
  br i1 %5, label %.lr.ph.split.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.d, 252                      ; 2 uses
  %i.h = and i64 %i.d, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi3 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.i = sub i64 %i.d, %index
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -48
  %wide.vec = load <4 x i64>, ptr %i.m, align 8   ; 2 uses
  %reverse = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse5 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec6 = load <4 x i64>, ptr %i.n, align 8  ; 2 uses
  %reverse8 = shufflevector <4 x i64> %wide.vec6, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse10 = shufflevector <4 x i64> %wide.vec6, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.o = add <2 x i64> %reverse5, %vec.phi        ; 2 uses
  %i.p = add <2 x i64> %reverse10, %vec.phi1      ; 2 uses
  %i.q = add <2 x i64> %reverse, %vec.phi2        ; 2 uses
  %i.r = add <2 x i64> %reverse8, %vec.phi3       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx11 = add <2 x i64> %i.r, %i.q
  %i.u = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx11) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %vector.scevcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.d, %vector.scevcheck ], [ %i.d, %.lr.ph.i.i ], [ %i.h, %middle.block ] ; 5 uses
  %.sroa.6.026.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 2 uses
  %.sroa.020.025.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %i.u, %middle.block ] ; 2 uses
  %xtraiter = and i64 %indvars.iv.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader
  %i.v = add nuw nsw i64 %indvars.iv.i.i.ph, 255
  %i.w = and i64 %i.v, 254
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %.sroa.3.0.i.us.i.i.prol = add nsw i64 %i.aa, %.sroa.6.026.us.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.prol = add i64 %i.y, %.sroa.020.025.us.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.prol.loopexit

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.3.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.0.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.6.026.us.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.020.025.us.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %i.ab = icmp eq i64 %indvars.iv.i.i.ph, 1
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.split.us.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.6.026.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.020.025.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %i.ac = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.3.0.i.us.i.i = add nsw i64 %i.ah, %.sroa.6.026.us.i.i
  %.sroa.0.0.i.us.i.i = add i64 %i.af, %.sroa.020.025.us.i.i
  %i.ai = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.sroa.3.0.i.us.i.i.1 = add nsw i64 %i.an, %.sroa.3.0.i.us.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.1 = add i64 %i.al, %.sroa.0.0.i.us.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %.not.us.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.us.i.i.1, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !48

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block, %bb.a
  %.sroa.020.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.u, %middle.block ], [ %.sroa.0.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %middle.block ], [ %.sroa.3.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3921
  %i.ap = load i8, ptr %i.ao, align 1, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = icmp ult i8 %i.c, 10
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %.lr.ph33.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

.lr.ph33.i.i:                                     ; preds = %._crit_edge.i.i
  %narrow = sub nuw nsw i8 10, %i.c               ; 2 uses
  %i.as = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter16 = and i64 %i.as, 1
  %i.at = icmp eq i8 %i.c, 9
  br i1 %i.at, label %.lr.ph33.split.us.i.i.epil.preheader, label %.lr.ph33.i.i.new

.lr.ph33.i.i.new:                                 ; preds = %.lr.ph33.i.i
  %unroll_iter = and i64 %i.as, 14
  br label %.lr.ph33.split.us.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.split.us.i.i, %.lr.ph33.i.i.new
  %indvars.iv49.i.i = phi i64 [ 10, %.lr.ph33.i.i.new ], [ %indvars.iv.next50.i.i.1, %.lr.ph33.split.us.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.3.0.i14.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %.sroa.020.130.us.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.0.0.i15.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %niter = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %niter.next.1, %.lr.ph33.split.us.i.i ]
  %i.au = add nuw nsw i64 %indvars.iv49.i.i, 4294967295
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %.sroa.3.0.i14.us.i.i = add nsw i64 %i.az, %.sroa.6.131.us.i.i
  %.sroa.0.0.i15.us.i.i = add i64 %i.ax, %.sroa.020.130.us.i.i
  %i.ba = add nsw i64 %indvars.iv49.i.i, 4294967294
  %i.bb = and i64 %i.ba, 4294967294
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %.sroa.3.0.i14.us.i.i.1 = add nsw i64 %i.bf, %.sroa.3.0.i14.us.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.1 = add i64 %i.bd, %.sroa.0.0.i15.us.i.i ; 3 uses
  %indvars.iv.next50.i.i.1 = add nsw i64 %indvars.iv49.i.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i
  %lcmp.mod17.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod17.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, label %.lr.ph33.split.us.i.i.epil.preheader

.lr.ph33.split.us.i.i.epil.preheader:             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i
  %indvars.iv49.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i ], [ %indvars.iv.next50.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i8 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.bg = add nuw nsw i64 %indvars.iv49.i.i.epil.init, 4294967295
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %.sroa.3.0.i14.us.i.i.epil = add nsw i64 %i.bl, %.sroa.6.131.us.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.epil = add i64 %i.bj, %.sroa.020.130.us.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i: ; preds = %.lr.ph33.split.us.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %.sroa.020.2.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ]
  %.sroa.6.2.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 %.sroa.6.2.i.i, ptr %1, align 8
  %i.bm = icmp eq i64 %.sroa.6.2.i.i, 0
  br i1 %i.bm, label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i
  %i.bn = uitofp i64 %.sroa.020.2.i.i to double
  %i.bo = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.bp = fdiv double %i.bn, %i.bo                ; 2 uses
  %i.bq = fcmp ogt double %i.bp, f0x41D0000000000000
  %.sroa.speculated8.i.i = select i1 %i.bq, double f0x41D0000000000000, double %i.bp ; 2 uses
  %i.br = fcmp olt double %.sroa.speculated8.i.i, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.br, double 1.000000e+00, double %.sroa.speculated8.i.i
  br label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit

_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, %bb.b
  %.sroa.0.0.i.i = phi double [ %.sroa.speculated.i.i, %bb.b ], [ undef, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  %.sroa.2.0.i.i = phi i8 [ 1, %bb.b ], [ 0, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.fca.0.insert.i.i = insertvalue { double, i8 } poison, double %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { double, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.i.i, 1
  ret { double, i8 } %.fca.1.insert.i.i
}

declare noundef nonnull align 8 dereferenceable(400) ptr @_ZN4heap4base17UnsafeJsonEmitter10object_endEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #4

declare void @_ZN4heap4base17UnsafeJsonEmitter8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #4

declare void @_ZN2v88internal7Isolate18PrintWithTimestampEPKcz(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal8GCTracer34RecordTimeToIncrementalMarkingTaskENS_4base9TimeDeltaE(ptr noundef nonnull align 8 captures(none) dereferenceable(6440) %0, i64 %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8
  br label %bb.c

_ZNSt8optionalIN2v84base9TimeDeltaEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit: ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8
  %i.f = add nsw i64 %i.e, %1
  %i.g = sdiv i64 %i.f, 2
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit, %bb.b
  %.sink = phi i64 [ %i.g, %_ZNSt8optionalIN2v84base9TimeDeltaEEaSIS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS2_ES7_IS2_NSt5decayISA_E4typeEEEEESt16is_constructibleIS2_JSA_EESt13is_assignableIRS2_SA_EEERS3_E4typeEOSA_.exit ], [ %1, %bb.b ]
  store i64 %.sink, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, i8 } @_ZNK2v88internal8GCTracer35AverageTimeToIncrementalMarkingTaskEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3472
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0.copyload, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal8GCTracer26RecordEmbedderMarkingSpeedEmNS_4base9TimeDeltaE(ptr noundef nonnull align 8 captures(none) dereferenceable(6440) %0, i64 noundef %1, i64 %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4432
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4592 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = add i8 %i.c, 1
  store i8 %i.d, ptr %i.b, align 8
  %i.e = zext i8 %i.c to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e ; 2 uses
  store i64 %1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %i.g = load i8, ptr %i.b, align 8
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.b, label %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4593
  store i8 1, ptr %i.i, align 1
  br label %_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit

_ZN2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE4PushERKS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { double, i8 } @_ZNK2v88internal8GCTracer34EmbedderSpeedInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.c = load i8, ptr %i.b, align 8               ; 7 uses
  %.not24.i.i = icmp eq i8 %i.c, 0
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %min.iters.check = icmp ult i8 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i
  %2 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.e = zext i8 %i.c to i32
  %i.f = add nsw i32 %i.e, -1
  %3 = trunc nsw i64 %2 to i32
  %i.g = icmp ult i32 %i.f, %3
  %4 = icmp ugt i64 %2, 4294967295
  %5 = or i1 %i.g, %4
  br i1 %5, label %.lr.ph.split.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.d, 252                      ; 2 uses
  %i.h = and i64 %i.d, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi3 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.i = sub i64 %i.d, %index
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -48
  %wide.vec = load <4 x i64>, ptr %i.m, align 8   ; 2 uses
  %reverse = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse5 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec6 = load <4 x i64>, ptr %i.n, align 8  ; 2 uses
  %reverse8 = shufflevector <4 x i64> %wide.vec6, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse10 = shufflevector <4 x i64> %wide.vec6, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.o = add <2 x i64> %reverse5, %vec.phi        ; 2 uses
  %i.p = add <2 x i64> %reverse10, %vec.phi1      ; 2 uses
  %i.q = add <2 x i64> %reverse, %vec.phi2        ; 2 uses
  %i.r = add <2 x i64> %reverse8, %vec.phi3       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx11 = add <2 x i64> %i.r, %i.q
  %i.u = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx11) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %vector.scevcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.d, %vector.scevcheck ], [ %i.d, %.lr.ph.i.i ], [ %i.h, %middle.block ] ; 5 uses
  %.sroa.6.026.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 2 uses
  %.sroa.020.025.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %i.u, %middle.block ] ; 2 uses
  %xtraiter = and i64 %indvars.iv.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader
  %i.v = add nuw nsw i64 %indvars.iv.i.i.ph, 255
  %i.w = and i64 %i.v, 254
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %.sroa.3.0.i.us.i.i.prol = add nsw i64 %i.aa, %.sroa.6.026.us.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.prol = add i64 %i.y, %.sroa.020.025.us.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.prol.loopexit

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.3.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.0.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.6.026.us.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.020.025.us.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %i.ab = icmp eq i64 %indvars.iv.i.i.ph, 1
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.split.us.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.6.026.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.020.025.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %i.ac = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.3.0.i.us.i.i = add nsw i64 %i.ah, %.sroa.6.026.us.i.i
  %.sroa.0.0.i.us.i.i = add i64 %i.af, %.sroa.020.025.us.i.i
  %i.ai = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.sroa.3.0.i.us.i.i.1 = add nsw i64 %i.an, %.sroa.3.0.i.us.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.1 = add i64 %i.al, %.sroa.0.0.i.us.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %.not.us.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.us.i.i.1, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !50

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block, %bb.a
  %.sroa.020.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.u, %middle.block ], [ %.sroa.0.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %middle.block ], [ %.sroa.3.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4593
  %i.ap = load i8, ptr %i.ao, align 1, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = icmp ult i8 %i.c, 10
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %.lr.ph33.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

.lr.ph33.i.i:                                     ; preds = %._crit_edge.i.i
  %narrow = sub nuw nsw i8 10, %i.c               ; 2 uses
  %i.as = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter16 = and i64 %i.as, 1
  %i.at = icmp eq i8 %i.c, 9
  br i1 %i.at, label %.lr.ph33.split.us.i.i.epil.preheader, label %.lr.ph33.i.i.new

.lr.ph33.i.i.new:                                 ; preds = %.lr.ph33.i.i
  %unroll_iter = and i64 %i.as, 14
  br label %.lr.ph33.split.us.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.split.us.i.i, %.lr.ph33.i.i.new
  %indvars.iv49.i.i = phi i64 [ 10, %.lr.ph33.i.i.new ], [ %indvars.iv.next50.i.i.1, %.lr.ph33.split.us.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.3.0.i14.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %.sroa.020.130.us.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.0.0.i15.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %niter = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %niter.next.1, %.lr.ph33.split.us.i.i ]
  %i.au = add nuw nsw i64 %indvars.iv49.i.i, 4294967295
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %.sroa.3.0.i14.us.i.i = add nsw i64 %i.az, %.sroa.6.131.us.i.i
  %.sroa.0.0.i15.us.i.i = add i64 %i.ax, %.sroa.020.130.us.i.i
  %i.ba = add nsw i64 %indvars.iv49.i.i, 4294967294
  %i.bb = and i64 %i.ba, 4294967294
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %.sroa.3.0.i14.us.i.i.1 = add nsw i64 %i.bf, %.sroa.3.0.i14.us.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.1 = add i64 %i.bd, %.sroa.0.0.i15.us.i.i ; 3 uses
  %indvars.iv.next50.i.i.1 = add nsw i64 %indvars.iv49.i.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i
  %lcmp.mod17.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod17.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, label %.lr.ph33.split.us.i.i.epil.preheader

.lr.ph33.split.us.i.i.epil.preheader:             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i
  %indvars.iv49.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i ], [ %indvars.iv.next50.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i8 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.bg = add nuw nsw i64 %indvars.iv49.i.i.epil.init, 4294967295
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %.sroa.3.0.i14.us.i.i.epil = add nsw i64 %i.bl, %.sroa.6.131.us.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.epil = add i64 %i.bj, %.sroa.020.130.us.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i: ; preds = %.lr.ph33.split.us.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %.sroa.020.2.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ]
  %.sroa.6.2.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 %.sroa.6.2.i.i, ptr %1, align 8
  %i.bm = icmp eq i64 %.sroa.6.2.i.i, 0
  br i1 %i.bm, label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i
  %i.bn = uitofp i64 %.sroa.020.2.i.i to double
  %i.bo = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.bp = fdiv double %i.bn, %i.bo                ; 2 uses
  %i.bq = fcmp ogt double %i.bp, f0x41D0000000000000
  %.sroa.speculated8.i.i = select i1 %i.bq, double f0x41D0000000000000, double %i.bp ; 2 uses
  %i.br = fcmp olt double %.sroa.speculated8.i.i, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.br, double 1.000000e+00, double %.sroa.speculated8.i.i
  br label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit

_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, %bb.b
  %.sroa.0.0.i.i = phi double [ %.sroa.speculated.i.i, %bb.b ], [ undef, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  %.sroa.2.0.i.i = phi i8 [ 1, %bb.b ], [ 0, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.fca.0.insert.i.i = insertvalue { double, i8 } poison, double %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { double, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.i.i, 1
  ret { double, i8 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { double, i8 } @_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4256
  %i.c = load i8, ptr %i.b, align 8               ; 7 uses
  %.not24.i.i = icmp eq i8 %i.c, 0
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %min.iters.check = icmp ult i8 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i
  %2 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.e = zext i8 %i.c to i32
  %i.f = add nsw i32 %i.e, -1
  %3 = trunc nsw i64 %2 to i32
  %i.g = icmp ult i32 %i.f, %3
  %4 = icmp ugt i64 %2, 4294967295
  %5 = or i1 %i.g, %4
  br i1 %5, label %.lr.ph.split.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.d, 252                      ; 2 uses
  %i.h = and i64 %i.d, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi3 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.i = sub i64 %i.d, %index
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -48
  %wide.vec = load <4 x i64>, ptr %i.m, align 8   ; 2 uses
  %reverse = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse5 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec6 = load <4 x i64>, ptr %i.n, align 8  ; 2 uses
  %reverse8 = shufflevector <4 x i64> %wide.vec6, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse10 = shufflevector <4 x i64> %wide.vec6, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.o = add <2 x i64> %reverse5, %vec.phi        ; 2 uses
  %i.p = add <2 x i64> %reverse10, %vec.phi1      ; 2 uses
  %i.q = add <2 x i64> %reverse, %vec.phi2        ; 2 uses
  %i.r = add <2 x i64> %reverse8, %vec.phi3       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx11 = add <2 x i64> %i.r, %i.q
  %i.u = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx11) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %vector.scevcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.d, %vector.scevcheck ], [ %i.d, %.lr.ph.i.i ], [ %i.h, %middle.block ] ; 5 uses
  %.sroa.6.026.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 2 uses
  %.sroa.020.025.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %i.u, %middle.block ] ; 2 uses
  %xtraiter = and i64 %indvars.iv.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader
  %i.v = add nuw nsw i64 %indvars.iv.i.i.ph, 255
  %i.w = and i64 %i.v, 254
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %.sroa.3.0.i.us.i.i.prol = add nsw i64 %i.aa, %.sroa.6.026.us.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.prol = add i64 %i.y, %.sroa.020.025.us.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.prol.loopexit

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.3.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.0.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.6.026.us.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.020.025.us.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %i.ab = icmp eq i64 %indvars.iv.i.i.ph, 1
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.split.us.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.6.026.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.020.025.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %i.ac = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.3.0.i.us.i.i = add nsw i64 %i.ah, %.sroa.6.026.us.i.i
  %.sroa.0.0.i.us.i.i = add i64 %i.af, %.sroa.020.025.us.i.i
  %i.ai = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.sroa.3.0.i.us.i.i.1 = add nsw i64 %i.an, %.sroa.3.0.i.us.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.1 = add i64 %i.al, %.sroa.0.0.i.us.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %.not.us.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.us.i.i.1, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !52

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block, %bb.a
  %.sroa.020.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.u, %middle.block ], [ %.sroa.0.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %middle.block ], [ %.sroa.3.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4257
  %i.ap = load i8, ptr %i.ao, align 1, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = icmp ult i8 %i.c, 10
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %.lr.ph33.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

.lr.ph33.i.i:                                     ; preds = %._crit_edge.i.i
  %narrow = sub nuw nsw i8 10, %i.c               ; 2 uses
  %i.as = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter16 = and i64 %i.as, 1
  %i.at = icmp eq i8 %i.c, 9
  br i1 %i.at, label %.lr.ph33.split.us.i.i.epil.preheader, label %.lr.ph33.i.i.new

.lr.ph33.i.i.new:                                 ; preds = %.lr.ph33.i.i
  %unroll_iter = and i64 %i.as, 14
  br label %.lr.ph33.split.us.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.split.us.i.i, %.lr.ph33.i.i.new
  %indvars.iv49.i.i = phi i64 [ 10, %.lr.ph33.i.i.new ], [ %indvars.iv.next50.i.i.1, %.lr.ph33.split.us.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.3.0.i14.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %.sroa.020.130.us.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.0.0.i15.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %niter = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %niter.next.1, %.lr.ph33.split.us.i.i ]
  %i.au = add nuw nsw i64 %indvars.iv49.i.i, 4294967295
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %.sroa.3.0.i14.us.i.i = add nsw i64 %i.az, %.sroa.6.131.us.i.i
  %.sroa.0.0.i15.us.i.i = add i64 %i.ax, %.sroa.020.130.us.i.i
  %i.ba = add nsw i64 %indvars.iv49.i.i, 4294967294
  %i.bb = and i64 %i.ba, 4294967294
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %.sroa.3.0.i14.us.i.i.1 = add nsw i64 %i.bf, %.sroa.3.0.i14.us.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.1 = add i64 %i.bd, %.sroa.0.0.i15.us.i.i ; 3 uses
  %indvars.iv.next50.i.i.1 = add nsw i64 %indvars.iv49.i.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i
  %lcmp.mod17.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod17.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, label %.lr.ph33.split.us.i.i.epil.preheader

.lr.ph33.split.us.i.i.epil.preheader:             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i
  %indvars.iv49.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i ], [ %indvars.iv.next50.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i8 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.bg = add nuw nsw i64 %indvars.iv49.i.i.epil.init, 4294967295
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %.sroa.3.0.i14.us.i.i.epil = add nsw i64 %i.bl, %.sroa.6.131.us.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.epil = add i64 %i.bj, %.sroa.020.130.us.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i: ; preds = %.lr.ph33.split.us.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %.sroa.020.2.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ]
  %.sroa.6.2.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 %.sroa.6.2.i.i, ptr %1, align 8
  %i.bm = icmp eq i64 %.sroa.6.2.i.i, 0
  br i1 %i.bm, label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i
  %i.bn = uitofp i64 %.sroa.020.2.i.i to double
  %i.bo = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.bp = fdiv double %i.bn, %i.bo                ; 2 uses
  %i.bq = fcmp ogt double %i.bp, f0x41D0000000000000
  %.sroa.speculated8.i.i = select i1 %i.bq, double f0x41D0000000000000, double %i.bp ; 2 uses
  %i.br = fcmp olt double %.sroa.speculated8.i.i, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.br, double 1.000000e+00, double %.sroa.speculated8.i.i
  br label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit

_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, %bb.b
  %.sroa.0.0.i.i = phi double [ %.sroa.speculated.i.i, %bb.b ], [ undef, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  %.sroa.2.0.i.i = phi i8 [ 1, %bb.b ], [ 0, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.fca.0.insert.i.i = insertvalue { double, i8 } poison, double %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { double, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.i.i, 1
  ret { double, i8 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { double, i8 } @_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3928 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4088
  %i.c = load i8, ptr %i.b, align 8               ; 7 uses
  %.not24.i.i = icmp eq i8 %i.c, 0
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %min.iters.check = icmp ult i8 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i
  %2 = add nsw i64 %i.d, -1                       ; 2 uses
  %i.e = zext i8 %i.c to i32
  %i.f = add nsw i32 %i.e, -1
  %3 = trunc nsw i64 %2 to i32
  %i.g = icmp ult i32 %i.f, %3
  %4 = icmp ugt i64 %2, 4294967295
  %5 = or i1 %i.g, %4
  br i1 %5, label %.lr.ph.split.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.d, 252                      ; 2 uses
  %i.h = and i64 %i.d, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi3 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.i = sub i64 %i.d, %index
  %i.j = add nuw nsw i64 %i.i, 4294967295
  %i.k = and i64 %i.j, 4294967295
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -48
  %wide.vec = load <4 x i64>, ptr %i.m, align 8   ; 2 uses
  %reverse = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse5 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec6 = load <4 x i64>, ptr %i.n, align 8  ; 2 uses
  %reverse8 = shufflevector <4 x i64> %wide.vec6, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse10 = shufflevector <4 x i64> %wide.vec6, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.o = add <2 x i64> %reverse5, %vec.phi        ; 2 uses
  %i.p = add <2 x i64> %reverse10, %vec.phi1      ; 2 uses
  %i.q = add <2 x i64> %reverse, %vec.phi2        ; 2 uses
  %i.r = add <2 x i64> %reverse8, %vec.phi3       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.t = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx11 = add <2 x i64> %i.r, %i.q
  %i.u = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx11) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %vector.scevcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.d, %vector.scevcheck ], [ %i.d, %.lr.ph.i.i ], [ %i.h, %middle.block ] ; 5 uses
  %.sroa.6.026.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %i.t, %middle.block ] ; 2 uses
  %.sroa.020.025.us.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %i.u, %middle.block ] ; 2 uses
  %xtraiter = and i64 %indvars.iv.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader
  %i.v = add nuw nsw i64 %indvars.iv.i.i.ph, 255
  %i.w = and i64 %i.v, 254
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %.sroa.3.0.i.us.i.i.prol = add nsw i64 %i.aa, %.sroa.6.026.us.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.prol = add i64 %i.y, %.sroa.020.025.us.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.prol.loopexit

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.3.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.0.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.6.026.us.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.020.025.us.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %i.ab = icmp eq i64 %indvars.iv.i.i.ph, 1
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.split.us.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.6.026.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.020.025.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %i.ac = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %.sroa.3.0.i.us.i.i = add nsw i64 %i.ah, %.sroa.6.026.us.i.i
  %.sroa.0.0.i.us.i.i = add i64 %i.af, %.sroa.020.025.us.i.i
  %i.ai = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %.sroa.3.0.i.us.i.i.1 = add nsw i64 %i.an, %.sroa.3.0.i.us.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.1 = add i64 %i.al, %.sroa.0.0.i.us.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %.not.us.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.us.i.i.1, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !54

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block, %bb.a
  %.sroa.020.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.u, %middle.block ], [ %.sroa.0.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %middle.block ], [ %.sroa.3.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4089
  %i.ap = load i8, ptr %i.ao, align 1, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = icmp ult i8 %i.c, 10
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %.lr.ph33.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

.lr.ph33.i.i:                                     ; preds = %._crit_edge.i.i
  %narrow = sub nuw nsw i8 10, %i.c               ; 2 uses
  %i.as = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter16 = and i64 %i.as, 1
  %i.at = icmp eq i8 %i.c, 9
  br i1 %i.at, label %.lr.ph33.split.us.i.i.epil.preheader, label %.lr.ph33.i.i.new

.lr.ph33.i.i.new:                                 ; preds = %.lr.ph33.i.i
  %unroll_iter = and i64 %i.as, 14
  br label %.lr.ph33.split.us.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.split.us.i.i, %.lr.ph33.i.i.new
  %indvars.iv49.i.i = phi i64 [ 10, %.lr.ph33.i.i.new ], [ %indvars.iv.next50.i.i.1, %.lr.ph33.split.us.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.3.0.i14.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %.sroa.020.130.us.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.0.0.i15.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %niter = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %niter.next.1, %.lr.ph33.split.us.i.i ]
  %i.au = add nuw nsw i64 %indvars.iv49.i.i, 4294967295
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %.sroa.3.0.i14.us.i.i = add nsw i64 %i.az, %.sroa.6.131.us.i.i
  %.sroa.0.0.i15.us.i.i = add i64 %i.ax, %.sroa.020.130.us.i.i
  %i.ba = add nsw i64 %indvars.iv49.i.i, 4294967294
  %i.bb = and i64 %i.ba, 4294967294
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %.sroa.3.0.i14.us.i.i.1 = add nsw i64 %i.bf, %.sroa.3.0.i14.us.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.1 = add i64 %i.bd, %.sroa.0.0.i15.us.i.i ; 3 uses
  %indvars.iv.next50.i.i.1 = add nsw i64 %indvars.iv49.i.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i
  %lcmp.mod17.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod17.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, label %.lr.ph33.split.us.i.i.epil.preheader

.lr.ph33.split.us.i.i.epil.preheader:             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i
  %indvars.iv49.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i ], [ %indvars.iv.next50.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i8 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.bg = add nuw nsw i64 %indvars.iv49.i.i.epil.init, 4294967295
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %.sroa.3.0.i14.us.i.i.epil = add nsw i64 %i.bl, %.sroa.6.131.us.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.epil = add i64 %i.bj, %.sroa.020.130.us.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i: ; preds = %.lr.ph33.split.us.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %.sroa.020.2.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ]
  %.sroa.6.2.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 %.sroa.6.2.i.i, ptr %1, align 8
  %i.bm = icmp eq i64 %.sroa.6.2.i.i, 0
  br i1 %i.bm, label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i
  %i.bn = uitofp i64 %.sroa.020.2.i.i to double
  %i.bo = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.bp = fdiv double %i.bn, %i.bo                ; 2 uses
  %i.bq = fcmp ogt double %i.bp, f0x41D0000000000000
  %.sroa.speculated8.i.i = select i1 %i.bq, double f0x41D0000000000000, double %i.bp ; 2 uses
  %i.br = fcmp olt double %.sroa.speculated8.i.i, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.br, double 1.000000e+00, double %.sroa.speculated8.i.i
  br label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit

_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, %bb.b
  %.sroa.0.0.i.i = phi double [ %.sroa.speculated.i.i, %bb.b ], [ undef, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  %.sroa.2.0.i.i = phi i8 [ 1, %bb.b ], [ 0, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.fca.0.insert.i.i = insertvalue { double, i8 } poison, double %.sroa.0.0.i.i, 0
  %.fca.1.insert.i.i = insertvalue { double, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.i.i, 1
  ret { double, i8 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { double, i8 } @_ZN2v88internal8GCTracer39OldGenerationSpeedInBytesPerMillisecondEv(ptr noundef nonnull align 8 dereferenceable(6440) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %2 = alloca %"class.v8::base::TimeDelta", align 8 ; 5 uses
  %3 = alloca %"class.v8::base::TimeDelta", align 8 ; 5 uses
  %4 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1184), align 32, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4264 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.e = load i8, ptr %i.d, align 8               ; 7 uses
  %.not24.i.i = icmp eq i8 %i.e, 0
  br i1 %.not24.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.f = zext i8 %i.e to i64                      ; 7 uses
  %min.iters.check175 = icmp ult i8 %i.e, 8
  br i1 %min.iters.check175, label %.lr.ph.split.us.i.i.preheader, label %vector.scevcheck173

vector.scevcheck173:                              ; preds = %.lr.ph.i.i
  %5 = add nsw i64 %i.f, -1                       ; 2 uses
  %i.g = zext i8 %i.e to i32
  %i.h = add nsw i32 %i.g, -1
  %6 = trunc nsw i64 %5 to i32
  %i.i = icmp ult i32 %i.h, %6
  %7 = icmp ugt i64 %5, 4294967295
  %8 = or i1 %i.i, %7
  br i1 %8, label %.lr.ph.split.us.i.i.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.scevcheck173
  %n.vec178 = and i64 %i.f, 252                   ; 2 uses
  %i.j = and i64 %i.f, 3
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph176
  %index180 = phi i64 [ 0, %vector.ph176 ], [ %index.next195, %vector.body179 ] ; 2 uses
  %vec.phi181 = phi <2 x i64> [ zeroinitializer, %vector.ph176 ], [ %i.q, %vector.body179 ]
  %vec.phi182 = phi <2 x i64> [ zeroinitializer, %vector.ph176 ], [ %i.r, %vector.body179 ]
  %vec.phi183 = phi <2 x i64> [ zeroinitializer, %vector.ph176 ], [ %i.s, %vector.body179 ]
  %vec.phi184 = phi <2 x i64> [ zeroinitializer, %vector.ph176 ], [ %i.t, %vector.body179 ]
  %i.k = sub i64 %i.f, %index180
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -48
  %wide.vec185 = load <4 x i64>, ptr %i.o, align 8 ; 2 uses
  %reverse187 = shufflevector <4 x i64> %wide.vec185, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse189 = shufflevector <4 x i64> %wide.vec185, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec190 = load <4 x i64>, ptr %i.p, align 8 ; 2 uses
  %reverse192 = shufflevector <4 x i64> %wide.vec190, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse194 = shufflevector <4 x i64> %wide.vec190, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.q = add <2 x i64> %reverse189, %vec.phi181   ; 2 uses
  %i.r = add <2 x i64> %reverse194, %vec.phi182   ; 2 uses
  %i.s = add <2 x i64> %reverse187, %vec.phi183   ; 2 uses
  %i.t = add <2 x i64> %reverse192, %vec.phi184   ; 2 uses
  %index.next195 = add nuw i64 %index180, 4       ; 2 uses
  %i.u = icmp eq i64 %index.next195, %n.vec178
  br i1 %i.u, label %middle.block196, label %vector.body179, !llvm.loop !55

middle.block196:                                  ; preds = %vector.body179
  %bin.rdx197 = add <2 x i64> %i.r, %i.q
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx197) ; 2 uses
  %bin.rdx198 = add <2 x i64> %i.t, %i.s
  %i.w = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx198) ; 2 uses
  %cmp.n199 = icmp eq i64 %n.vec178, %i.f
  br i1 %cmp.n199, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i.preheader

.lr.ph.split.us.i.i.preheader:                    ; preds = %vector.scevcheck173, %.lr.ph.i.i, %middle.block196
  %indvars.iv.i.i.ph = phi i64 [ %i.f, %vector.scevcheck173 ], [ %i.f, %.lr.ph.i.i ], [ %i.j, %middle.block196 ] ; 5 uses
  %.sroa.6.026.us.i.i.ph = phi i64 [ 0, %vector.scevcheck173 ], [ 0, %.lr.ph.i.i ], [ %i.v, %middle.block196 ] ; 2 uses
  %.sroa.020.025.us.i.i.ph = phi i64 [ 0, %vector.scevcheck173 ], [ 0, %.lr.ph.i.i ], [ %i.w, %middle.block196 ] ; 2 uses
  %xtraiter241 = and i64 %indvars.iv.i.i.ph, 1
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph.split.us.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.prol

.lr.ph.split.us.i.i.prol:                         ; preds = %.lr.ph.split.us.i.i.preheader
  %i.x = add nuw nsw i64 %indvars.iv.i.i.ph, 255
  %i.y = and i64 %i.x, 254
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %.sroa.3.0.i.us.i.i.prol = add nsw i64 %i.ac, %.sroa.6.026.us.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.prol = add i64 %i.aa, %.sroa.020.025.us.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.prol.loopexit

.lr.ph.split.us.i.i.prol.loopexit:                ; preds = %.lr.ph.split.us.i.i.prol, %.lr.ph.split.us.i.i.preheader
  %.sroa.3.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.0.0.i.us.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.6.026.us.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %.sroa.020.025.us.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.ph, %.lr.ph.split.us.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.prol, %.lr.ph.split.us.i.i.prol ]
  %i.ad = icmp eq i64 %indvars.iv.i.i.ph, 1
  br i1 %i.ad, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.split.us.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.6.026.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ], [ %.sroa.020.025.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ]
  %i.ae = add nuw nsw i64 %indvars.iv.i.i, 4294967295
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %.sroa.3.0.i.us.i.i = add nsw i64 %i.aj, %.sroa.6.026.us.i.i
  %.sroa.0.0.i.us.i.i = add i64 %i.ah, %.sroa.020.025.us.i.i
  %i.ak = add nsw i64 %indvars.iv.i.i, 4294967294
  %i.al = and i64 %i.ak, 4294967295
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.al ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %.sroa.3.0.i.us.i.i.1 = add nsw i64 %i.ap, %.sroa.3.0.i.us.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.1 = add i64 %i.an, %.sroa.0.0.i.us.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %.not.us.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 0
  br i1 %.not.us.i.i.1, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !56

._crit_edge.i.i:                                  ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i, %middle.block196, %bb.b
  %.sroa.020.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %middle.block196 ], [ %.sroa.0.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %middle.block196 ], [ %.sroa.3.0.i.us.i.i.lcssa.unr, %.lr.ph.split.us.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.1, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4425
  %i.ar = load i8, ptr %i.aq, align 1, !range !5, !noundef !6
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = icmp ult i8 %i.e, 10
  %or.cond.i.i = and i1 %i.at, %i.as
  br i1 %or.cond.i.i, label %.lr.ph33.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

.lr.ph33.i.i:                                     ; preds = %._crit_edge.i.i
  %narrow252 = sub nuw nsw i8 10, %i.e            ; 2 uses
  %i.au = zext nneg i8 %narrow252 to i64          ; 2 uses
  %xtraiter243 = and i64 %i.au, 1
  %i.av = icmp eq i8 %i.e, 9
  br i1 %i.av, label %.lr.ph33.split.us.i.i.epil.preheader, label %.lr.ph33.i.i.new

.lr.ph33.i.i.new:                                 ; preds = %.lr.ph33.i.i
  %unroll_iter248 = and i64 %i.au, 14
  br label %.lr.ph33.split.us.i.i

.lr.ph33.split.us.i.i:                            ; preds = %.lr.ph33.split.us.i.i, %.lr.ph33.i.i.new
  %indvars.iv49.i.i = phi i64 [ 10, %.lr.ph33.i.i.new ], [ %indvars.iv.next50.i.i.1, %.lr.ph33.split.us.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.3.0.i14.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %.sroa.020.130.us.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i.new ], [ %.sroa.0.0.i15.us.i.i.1, %.lr.ph33.split.us.i.i ]
  %niter249 = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %niter249.next.1, %.lr.ph33.split.us.i.i ]
  %i.aw = add nuw nsw i64 %indvars.iv49.i.i, 4294967295
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %.sroa.3.0.i14.us.i.i = add nsw i64 %i.bb, %.sroa.6.131.us.i.i
  %.sroa.0.0.i15.us.i.i = add i64 %i.az, %.sroa.020.130.us.i.i
  %i.bc = add nsw i64 %indvars.iv49.i.i, 4294967294
  %i.bd = and i64 %i.bc, 4294967294
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %.sroa.3.0.i14.us.i.i.1 = add nsw i64 %i.bh, %.sroa.3.0.i14.us.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.1 = add i64 %i.bf, %.sroa.0.0.i15.us.i.i ; 3 uses
  %indvars.iv.next50.i.i.1 = add nsw i64 %indvars.iv49.i.i, -2 ; 2 uses
  %niter249.next.1 = add i64 %niter249, 2         ; 2 uses
  %niter249.ncmp.1.not = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, label %.lr.ph33.split.us.i.i.epil.preheader

.lr.ph33.split.us.i.i.epil.preheader:             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i
  %indvars.iv49.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i ], [ %indvars.iv.next50.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i, %.lr.ph33.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod247 = trunc i8 %narrow252 to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.bi = add nuw nsw i64 %indvars.iv49.i.i.epil.init, 4294967295
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %.sroa.3.0.i14.us.i.i.epil = add nsw i64 %i.bn, %.sroa.6.131.us.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.epil = add i64 %i.bl, %.sroa.020.130.us.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i: ; preds = %.lr.ph33.split.us.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %.sroa.020.2.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.0.0.i15.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ]
  %.sroa.6.2.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i, %._crit_edge.i.i ], [ %.sroa.3.0.i14.us.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.epil, %.lr.ph33.split.us.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 %.sroa.6.2.i.i, ptr %4, align 8
  %i.bo = icmp eq i64 %.sroa.6.2.i.i, 0
  br i1 %i.bo, label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i
  %i.bp = uitofp i64 %.sroa.020.2.i.i to double
  %i.bq = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.br = fdiv double %i.bp, %i.bq                ; 2 uses
  %i.bs = fcmp ogt double %i.br, f0x41D0000000000000
  %.sroa.speculated8.i.i = select i1 %i.bs, double f0x41D0000000000000, double %i.br ; 2 uses
  %i.bt = fcmp olt double %.sroa.speculated8.i.i, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.bt, double 1.000000e+00, double %.sroa.speculated8.i.i
  br label %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit

_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i, %bb.c
  %.sroa.0.0.i.i = phi double [ %.sroa.speculated.i.i, %bb.c ], [ undef, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  %.sroa.2.0.i.i = phi i8 [ 1, %bb.c ], [ 0, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3704 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 3712 ; 5 uses
  %i.bw = load i8, ptr %i.bv, align 8, !range !5, !noundef !6
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.011.0.pre = load double, ptr %i.bu, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 14 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4256 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8             ; 7 uses
  %.not24.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not24.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.cb = zext i8 %i.ca to i64                    ; 7 uses
  %min.iters.check = icmp ult i8 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i
  %9 = add nsw i64 %i.cb, -1                      ; 2 uses
  %i.cc = zext i8 %i.ca to i32
  %i.cd = add nsw i32 %i.cc, -1
  %10 = trunc nsw i64 %9 to i32
  %i.ce = icmp ult i32 %i.cd, %10
  %11 = icmp ugt i64 %9, 4294967295
  %12 = or i1 %i.ce, %11
  br i1 %12, label %.lr.ph.split.us.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cb, 252                     ; 2 uses
  %i.cf = and i64 %i.cb, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi101 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %vec.phi102 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi103 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cp, %vector.body ]
  %i.cg = sub i64 %i.cb, %index
  %i.ch = add nuw nsw i64 %i.cg, 4294967295
  %i.ci = and i64 %i.ch, 4294967295
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -48
  %wide.vec = load <4 x i64>, ptr %i.ck, align 8  ; 2 uses
  %reverse = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse105 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec106 = load <4 x i64>, ptr %i.cl, align 8 ; 2 uses
  %reverse108 = shufflevector <4 x i64> %wide.vec106, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse110 = shufflevector <4 x i64> %wide.vec106, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.cm = add <2 x i64> %reverse105, %vec.phi     ; 2 uses
  %i.cn = add <2 x i64> %reverse110, %vec.phi101  ; 2 uses
  %i.co = add <2 x i64> %reverse, %vec.phi102     ; 2 uses
  %i.cp = add <2 x i64> %reverse108, %vec.phi103  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cn, %i.cm
  %i.cr = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx111 = add <2 x i64> %i.cp, %i.co
  %i.cs = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx111) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cb
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i.preheader

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %vector.scevcheck, %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ %i.cb, %vector.scevcheck ], [ %i.cb, %.lr.ph.i.i.i ], [ %i.cf, %middle.block ] ; 5 uses
  %.sroa.6.026.us.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i ], [ %i.cr, %middle.block ] ; 2 uses
  %.sroa.020.025.us.i.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i.i ], [ %i.cs, %middle.block ] ; 2 uses
  %xtraiter = and i64 %indvars.iv.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.prol

.lr.ph.split.us.i.i.i.prol:                       ; preds = %.lr.ph.split.us.i.i.i.preheader
  %i.ct = add nuw nsw i64 %indvars.iv.i.i.i.ph, 255
  %i.cu = and i64 %i.ct, 254
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  %.sroa.3.0.i.us.i.i.i.prol = add nsw i64 %i.cy, %.sroa.6.026.us.i.i.i.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.i.prol = add i64 %i.cw, %.sroa.020.025.us.i.i.i.ph ; 2 uses
  %indvars.iv.next.i.i.i.prol = add nsw i64 %indvars.iv.i.i.i.ph, -1
  br label %.lr.ph.split.us.i.i.i.prol.loopexit

.lr.ph.split.us.i.i.i.prol.loopexit:              ; preds = %.lr.ph.split.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.preheader
  %.sroa.3.0.i.us.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.0.0.i.us.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.6.026.us.i.i.i.unr = phi i64 [ %.sroa.6.026.us.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.3.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %.sroa.020.025.us.i.i.i.unr = phi i64 [ %.sroa.020.025.us.i.i.i.ph, %.lr.ph.split.us.i.i.i.preheader ], [ %.sroa.0.0.i.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.prol ]
  %i.cz = icmp eq i64 %indvars.iv.i.i.i.ph, 1
  br i1 %i.cz, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i.i = phi i64 [ %.sroa.3.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %.sroa.6.026.us.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ]
  %.sroa.020.025.us.i.i.i = phi i64 [ %.sroa.0.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ], [ %.sroa.020.025.us.i.i.i.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ]
  %i.da = add nuw nsw i64 %indvars.iv.i.i.i, 4294967295
  %i.db = and i64 %i.da, 4294967295
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i64, ptr %i.de, align 8
  %.sroa.3.0.i.us.i.i.i = add nsw i64 %i.df, %.sroa.6.026.us.i.i.i
  %.sroa.0.0.i.us.i.i.i = add i64 %i.dd, %.sroa.020.025.us.i.i.i
  %i.dg = add nsw i64 %indvars.iv.i.i.i, 4294967294
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.dh ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load i64, ptr %i.dk, align 8
  %.sroa.3.0.i.us.i.i.i.1 = add nsw i64 %i.dl, %.sroa.3.0.i.us.i.i.i ; 2 uses
  %.sroa.0.0.i.us.i.i.i.1 = add i64 %i.dj, %.sroa.0.0.i.us.i.i.i ; 2 uses
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 2 uses
  %.not.us.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 0
  br i1 %.not.us.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !58

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i.prol.loopexit, %.lr.ph.split.us.i.i.i, %middle.block, %bb.f
  %.sroa.020.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %i.cs, %middle.block ], [ %.sroa.0.0.i.us.i.i.i.lcssa.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ] ; 3 uses
  %.sroa.6.0.lcssa.i.i.i = phi i64 [ 0, %bb.f ], [ %i.cr, %middle.block ], [ %.sroa.3.0.i.us.i.i.i.lcssa.unr, %.lr.ph.split.us.i.i.i.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.i.1, %.lr.ph.split.us.i.i.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4257 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !range !5, !noundef !6
  %i.do = trunc nuw i8 %i.dn to i1
  %i.dp = icmp ult i8 %i.ca, 10
  %or.cond.i.i.i = and i1 %i.dp, %i.do
  br i1 %or.cond.i.i.i, label %.lr.ph33.i.i.i, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i

.lr.ph33.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %narrow = sub nuw nsw i8 10, %i.ca              ; 2 uses
  %i.dq = zext nneg i8 %narrow to i64             ; 2 uses
  %xtraiter218 = and i64 %i.dq, 1
  %i.dr = icmp eq i8 %i.ca, 9
  br i1 %i.dr, label %.lr.ph33.split.us.i.i.i.epil.preheader, label %.lr.ph33.i.i.i.new

.lr.ph33.i.i.i.new:                               ; preds = %.lr.ph33.i.i.i
  %unroll_iter = and i64 %i.dq, 14
  br label %.lr.ph33.split.us.i.i.i

.lr.ph33.split.us.i.i.i:                          ; preds = %.lr.ph33.split.us.i.i.i, %.lr.ph33.i.i.i.new
  %indvars.iv49.i.i.i = phi i64 [ 10, %.lr.ph33.i.i.i.new ], [ %indvars.iv.next50.i.i.i.1, %.lr.ph33.split.us.i.i.i ] ; 3 uses
  %.sroa.6.131.us.i.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %.lr.ph33.i.i.i.new ], [ %.sroa.3.0.i14.us.i.i.i.1, %.lr.ph33.split.us.i.i.i ]
  %.sroa.020.130.us.i.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %.lr.ph33.i.i.i.new ], [ %.sroa.0.0.i15.us.i.i.i.1, %.lr.ph33.split.us.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph33.i.i.i.new ], [ %niter.next.1, %.lr.ph33.split.us.i.i.i ]
  %i.ds = add nuw nsw i64 %indvars.iv49.i.i.i, 4294967295
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.dt ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i64, ptr %i.dw, align 8
  %.sroa.3.0.i14.us.i.i.i = add nsw i64 %i.dx, %.sroa.6.131.us.i.i.i
  %.sroa.0.0.i15.us.i.i.i = add i64 %i.dv, %.sroa.020.130.us.i.i.i
  %i.dy = add nsw i64 %indvars.iv49.i.i.i, 4294967294
  %i.dz = and i64 %i.dy, 4294967294
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.dz ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8
  %.sroa.3.0.i14.us.i.i.i.1 = add nsw i64 %i.ed, %.sroa.3.0.i14.us.i.i.i ; 3 uses
  %.sroa.0.0.i15.us.i.i.i.1 = add i64 %i.eb, %.sroa.0.0.i15.us.i.i.i ; 3 uses
  %indvars.iv.next50.i.i.i.1 = add nsw i64 %indvars.iv49.i.i.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i.i, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i.i
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i, label %.lr.ph33.split.us.i.i.i.epil.preheader

.lr.ph33.split.us.i.i.i.epil.preheader:           ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, %.lr.ph33.i.i.i
  %indvars.iv49.i.i.i.epil.init = phi i64 [ 10, %.lr.ph33.i.i.i ], [ %indvars.iv.next50.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.i.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %.lr.ph33.i.i.i ], [ %.sroa.3.0.i14.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.i.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %.lr.ph33.i.i.i ], [ %.sroa.0.0.i15.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod222 = trunc i8 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.ee = add nuw nsw i64 %indvars.iv49.i.i.i.epil.init, 4294967295
  %i.ef = and i64 %i.ee, 4294967295
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.ef ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load i64, ptr %i.ei, align 8
  %.sroa.3.0.i14.us.i.i.i.epil = add nsw i64 %i.ej, %.sroa.6.131.us.i.i.i.epil.init
  %.sroa.0.0.i15.us.i.i.i.epil = add i64 %i.eh, %.sroa.020.130.us.i.i.i.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i: ; preds = %.lr.ph33.split.us.i.i.i.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa, %._crit_edge.i.i.i
  %.sroa.020.2.i.i.i = phi i64 [ %.sroa.020.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.0.0.i15.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.i.epil, %.lr.ph33.split.us.i.i.i.epil.preheader ]
  %.sroa.6.2.i.i.i = phi i64 [ %.sroa.6.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.sroa.3.0.i14.us.i.i.i.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.i.epil, %.lr.ph33.split.us.i.i.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 %.sroa.6.2.i.i.i, ptr %3, align 8
  %i.ek = icmp eq i64 %.sroa.6.2.i.i.i, 0
  br i1 %i.ek, label %bb.g, label %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit.thread

_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit.thread: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i
  %i.el = uitofp i64 %.sroa.020.2.i.i.i to double
  %i.em = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %i.en = fdiv double %i.el, %i.em                ; 2 uses
  %i.eo = fcmp ogt double %i.en, f0x41D0000000000000
  %.sroa.speculated8.i.i.i = select i1 %i.eo, double f0x41D0000000000000, double %i.en ; 2 uses
  %i.ep = fcmp olt double %.sroa.speculated8.i.i.i, 1.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.ep, double 1.000000e+00, double %.sroa.speculated8.i.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  store double %.sroa.speculated.i.i.i, ptr %i.bu, align 8
  store i8 1, ptr %i.bv, align 8
  br label %bb.m

bb.g:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  store i8 0, ptr %i.bv, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.er = load double, ptr %i.eq, align 8         ; 2 uses
  %i.es = fcmp une double %i.er, 0.000000e+00
  br i1 %i.es, label %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = uitofp i64 %i.ex to double
  %i.ez = tail call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %i.et) #19
  %i.fa = fdiv double %i.ey, %i.ez
  br label %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit

_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.0.i = phi double [ %i.fa, %bb.i ], [ %i.er, %bb.g ], [ 1.310720e+05, %bb.h ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 3928 ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4088
  %i.fd = load i8, ptr %i.fc, align 8             ; 7 uses
  %.not24.i.i.i22 = icmp eq i8 %i.fd, 0
  br i1 %.not24.i.i.i22, label %._crit_edge.i.i.i32, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit
  %i.fe = zext i8 %i.fd to i64                    ; 7 uses
  %min.iters.check115 = icmp ult i8 %i.fd, 8
  br i1 %min.iters.check115, label %.lr.ph.split.us.i.i.i24.preheader, label %vector.scevcheck113

vector.scevcheck113:                              ; preds = %.lr.ph.i.i.i23
  %13 = add nsw i64 %i.fe, -1                     ; 2 uses
  %i.ff = zext i8 %i.fd to i32
  %i.fg = add nsw i32 %i.ff, -1
  %14 = trunc nsw i64 %13 to i32
  %i.fh = icmp ult i32 %i.fg, %14
  %15 = icmp ugt i64 %13, 4294967295
  %16 = or i1 %i.fh, %15
  br i1 %16, label %.lr.ph.split.us.i.i.i24.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %vector.scevcheck113
  %n.vec118 = and i64 %i.fe, 252                  ; 2 uses
  %i.fi = and i64 %i.fe, 3
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph116
  %index120 = phi i64 [ 0, %vector.ph116 ], [ %index.next135, %vector.body119 ] ; 2 uses
  %vec.phi121 = phi <2 x i64> [ zeroinitializer, %vector.ph116 ], [ %i.fp, %vector.body119 ]
  %vec.phi122 = phi <2 x i64> [ zeroinitializer, %vector.ph116 ], [ %i.fq, %vector.body119 ]
  %vec.phi123 = phi <2 x i64> [ zeroinitializer, %vector.ph116 ], [ %i.fr, %vector.body119 ]
  %vec.phi124 = phi <2 x i64> [ zeroinitializer, %vector.ph116 ], [ %i.fs, %vector.body119 ]
  %i.fj = sub i64 %i.fe, %index120
  %i.fk = add nuw nsw i64 %i.fj, 4294967295
  %i.fl = and i64 %i.fk, 4294967295
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -16
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -48
  %wide.vec125 = load <4 x i64>, ptr %i.fn, align 8 ; 2 uses
  %reverse127 = shufflevector <4 x i64> %wide.vec125, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse129 = shufflevector <4 x i64> %wide.vec125, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec130 = load <4 x i64>, ptr %i.fo, align 8 ; 2 uses
  %reverse132 = shufflevector <4 x i64> %wide.vec130, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse134 = shufflevector <4 x i64> %wide.vec130, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.fp = add <2 x i64> %reverse129, %vec.phi121  ; 2 uses
  %i.fq = add <2 x i64> %reverse134, %vec.phi122  ; 2 uses
  %i.fr = add <2 x i64> %reverse127, %vec.phi123  ; 2 uses
  %i.fs = add <2 x i64> %reverse132, %vec.phi124  ; 2 uses
  %index.next135 = add nuw i64 %index120, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next135, %n.vec118
  br i1 %i.ft, label %middle.block136, label %vector.body119, !llvm.loop !59

middle.block136:                                  ; preds = %vector.body119
  %bin.rdx137 = add <2 x i64> %i.fq, %i.fp
  %i.fu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx137) ; 2 uses
  %bin.rdx138 = add <2 x i64> %i.fs, %i.fr
  %i.fv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx138) ; 2 uses
  %cmp.n139 = icmp eq i64 %n.vec118, %i.fe
  br i1 %cmp.n139, label %._crit_edge.i.i.i32, label %.lr.ph.split.us.i.i.i24.preheader

.lr.ph.split.us.i.i.i24.preheader:                ; preds = %vector.scevcheck113, %.lr.ph.i.i.i23, %middle.block136
  %indvars.iv.i.i.i25.ph = phi i64 [ %i.fe, %vector.scevcheck113 ], [ %i.fe, %.lr.ph.i.i.i23 ], [ %i.fi, %middle.block136 ] ; 5 uses
  %.sroa.6.026.us.i.i.i26.ph = phi i64 [ 0, %vector.scevcheck113 ], [ 0, %.lr.ph.i.i.i23 ], [ %i.fu, %middle.block136 ] ; 2 uses
  %.sroa.020.025.us.i.i.i27.ph = phi i64 [ 0, %vector.scevcheck113 ], [ 0, %.lr.ph.i.i.i23 ], [ %i.fv, %middle.block136 ] ; 2 uses
  %xtraiter223 = and i64 %indvars.iv.i.i.i25.ph, 1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.split.us.i.i.i24.prol.loopexit, label %.lr.ph.split.us.i.i.i24.prol

.lr.ph.split.us.i.i.i24.prol:                     ; preds = %.lr.ph.split.us.i.i.i24.preheader
  %i.fw = add nuw nsw i64 %indvars.iv.i.i.i25.ph, 255
  %i.fx = and i64 %i.fw, 254
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fx ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load i64, ptr %i.ga, align 8
  %.sroa.3.0.i.us.i.i.i28.prol = add nsw i64 %i.gb, %.sroa.6.026.us.i.i.i26.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.i29.prol = add i64 %i.fz, %.sroa.020.025.us.i.i.i27.ph ; 2 uses
  %indvars.iv.next.i.i.i30.prol = add nsw i64 %indvars.iv.i.i.i25.ph, -1
  br label %.lr.ph.split.us.i.i.i24.prol.loopexit

.lr.ph.split.us.i.i.i24.prol.loopexit:            ; preds = %.lr.ph.split.us.i.i.i24.prol, %.lr.ph.split.us.i.i.i24.preheader
  %.sroa.3.0.i.us.i.i.i28.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i24.preheader ], [ %.sroa.3.0.i.us.i.i.i28.prol, %.lr.ph.split.us.i.i.i24.prol ]
  %.sroa.0.0.i.us.i.i.i29.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i24.preheader ], [ %.sroa.0.0.i.us.i.i.i29.prol, %.lr.ph.split.us.i.i.i24.prol ]
  %indvars.iv.i.i.i25.unr = phi i64 [ %indvars.iv.i.i.i25.ph, %.lr.ph.split.us.i.i.i24.preheader ], [ %indvars.iv.next.i.i.i30.prol, %.lr.ph.split.us.i.i.i24.prol ]
  %.sroa.6.026.us.i.i.i26.unr = phi i64 [ %.sroa.6.026.us.i.i.i26.ph, %.lr.ph.split.us.i.i.i24.preheader ], [ %.sroa.3.0.i.us.i.i.i28.prol, %.lr.ph.split.us.i.i.i24.prol ]
  %.sroa.020.025.us.i.i.i27.unr = phi i64 [ %.sroa.020.025.us.i.i.i27.ph, %.lr.ph.split.us.i.i.i24.preheader ], [ %.sroa.0.0.i.us.i.i.i29.prol, %.lr.ph.split.us.i.i.i24.prol ]
  %i.gc = icmp eq i64 %indvars.iv.i.i.i25.ph, 1
  br i1 %i.gc, label %._crit_edge.i.i.i32, label %.lr.ph.split.us.i.i.i24

.lr.ph.split.us.i.i.i24:                          ; preds = %.lr.ph.split.us.i.i.i24.prol.loopexit, %.lr.ph.split.us.i.i.i24
  %indvars.iv.i.i.i25 = phi i64 [ %indvars.iv.next.i.i.i30.1, %.lr.ph.split.us.i.i.i24 ], [ %indvars.iv.i.i.i25.unr, %.lr.ph.split.us.i.i.i24.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i.i26 = phi i64 [ %.sroa.3.0.i.us.i.i.i28.1, %.lr.ph.split.us.i.i.i24 ], [ %.sroa.6.026.us.i.i.i26.unr, %.lr.ph.split.us.i.i.i24.prol.loopexit ]
  %.sroa.020.025.us.i.i.i27 = phi i64 [ %.sroa.0.0.i.us.i.i.i29.1, %.lr.ph.split.us.i.i.i24 ], [ %.sroa.020.025.us.i.i.i27.unr, %.lr.ph.split.us.i.i.i24.prol.loopexit ]
  %i.gd = add nuw nsw i64 %indvars.iv.i.i.i25, 4294967295
  %i.ge = and i64 %i.gd, 4294967295
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.ge ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8
  %.sroa.3.0.i.us.i.i.i28 = add nsw i64 %i.gi, %.sroa.6.026.us.i.i.i26
  %.sroa.0.0.i.us.i.i.i29 = add i64 %i.gg, %.sroa.020.025.us.i.i.i27
  %i.gj = add nsw i64 %indvars.iv.i.i.i25, 4294967294
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.gk ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = load i64, ptr %i.gn, align 8
  %.sroa.3.0.i.us.i.i.i28.1 = add nsw i64 %i.go, %.sroa.3.0.i.us.i.i.i28 ; 2 uses
  %.sroa.0.0.i.us.i.i.i29.1 = add i64 %i.gm, %.sroa.0.0.i.us.i.i.i29 ; 2 uses
  %indvars.iv.next.i.i.i30.1 = add nsw i64 %indvars.iv.i.i.i25, -2 ; 2 uses
  %.not.us.i.i.i31.1 = icmp eq i64 %indvars.iv.next.i.i.i30.1, 0
  br i1 %.not.us.i.i.i31.1, label %._crit_edge.i.i.i32, label %.lr.ph.split.us.i.i.i24, !llvm.loop !60

._crit_edge.i.i.i32:                              ; preds = %.lr.ph.split.us.i.i.i24.prol.loopexit, %.lr.ph.split.us.i.i.i24, %middle.block136, %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit
  %.sroa.020.0.lcssa.i.i.i33 = phi i64 [ 0, %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit ], [ %i.fv, %middle.block136 ], [ %.sroa.0.0.i.us.i.i.i29.lcssa.unr, %.lr.ph.split.us.i.i.i24.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.i29.1, %.lr.ph.split.us.i.i.i24 ] ; 3 uses
  %.sroa.6.0.lcssa.i.i.i34 = phi i64 [ 0, %_ZNK2v88internal8GCTracer44IncrementalMarkingSpeedInBytesPerMillisecondEv.exit ], [ %i.fu, %middle.block136 ], [ %.sroa.3.0.i.us.i.i.i28.lcssa.unr, %.lr.ph.split.us.i.i.i24.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.i28.1, %.lr.ph.split.us.i.i.i24 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 4089
  %i.gq = load i8, ptr %i.gp, align 1, !range !5, !noundef !6
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = icmp ult i8 %i.fd, 10
  %or.cond.i.i.i35 = and i1 %i.gs, %i.gr
  br i1 %or.cond.i.i.i35, label %.lr.ph33.i.i.i45, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36

.lr.ph33.i.i.i45:                                 ; preds = %._crit_edge.i.i.i32
  %narrow250 = sub nuw nsw i8 10, %i.fd           ; 2 uses
  %i.gt = zext nneg i8 %narrow250 to i64          ; 2 uses
  %xtraiter225 = and i64 %i.gt, 1
  %i.gu = icmp eq i8 %i.fd, 9
  br i1 %i.gu, label %.lr.ph33.split.us.i.i.i46.epil.preheader, label %.lr.ph33.i.i.i45.new

.lr.ph33.i.i.i45.new:                             ; preds = %.lr.ph33.i.i.i45
  %unroll_iter230 = and i64 %i.gt, 14
  br label %.lr.ph33.split.us.i.i.i46

.lr.ph33.split.us.i.i.i46:                        ; preds = %.lr.ph33.split.us.i.i.i46, %.lr.ph33.i.i.i45.new
  %indvars.iv49.i.i.i47 = phi i64 [ 10, %.lr.ph33.i.i.i45.new ], [ %indvars.iv.next50.i.i.i52.1, %.lr.ph33.split.us.i.i.i46 ] ; 3 uses
  %.sroa.6.131.us.i.i.i48 = phi i64 [ %.sroa.6.0.lcssa.i.i.i34, %.lr.ph33.i.i.i45.new ], [ %.sroa.3.0.i14.us.i.i.i50.1, %.lr.ph33.split.us.i.i.i46 ]
  %.sroa.020.130.us.i.i.i49 = phi i64 [ %.sroa.020.0.lcssa.i.i.i33, %.lr.ph33.i.i.i45.new ], [ %.sroa.0.0.i15.us.i.i.i51.1, %.lr.ph33.split.us.i.i.i46 ]
  %niter231 = phi i64 [ 0, %.lr.ph33.i.i.i45.new ], [ %niter231.next.1, %.lr.ph33.split.us.i.i.i46 ]
  %i.gv = add nuw nsw i64 %indvars.iv49.i.i.i47, 4294967295
  %i.gw = and i64 %i.gv, 4294967295
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.gw ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ha = load i64, ptr %i.gz, align 8
  %.sroa.3.0.i14.us.i.i.i50 = add nsw i64 %i.ha, %.sroa.6.131.us.i.i.i48
  %.sroa.0.0.i15.us.i.i.i51 = add i64 %i.gy, %.sroa.020.130.us.i.i.i49
  %i.hb = add nsw i64 %indvars.iv49.i.i.i47, 4294967294
  %i.hc = and i64 %i.hb, 4294967294
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hg = load i64, ptr %i.hf, align 8
  %.sroa.3.0.i14.us.i.i.i50.1 = add nsw i64 %i.hg, %.sroa.3.0.i14.us.i.i.i50 ; 3 uses
  %.sroa.0.0.i15.us.i.i.i51.1 = add i64 %i.he, %.sroa.0.0.i15.us.i.i.i51 ; 3 uses
  %indvars.iv.next50.i.i.i52.1 = add nsw i64 %indvars.iv49.i.i.i47, -2 ; 2 uses
  %niter231.next.1 = add i64 %niter231, 2         ; 2 uses
  %niter231.ncmp.1.not = icmp eq i64 %niter231.next.1, %unroll_iter230
  br i1 %niter231.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i.i46, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i.i46
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36, label %.lr.ph33.split.us.i.i.i46.epil.preheader

.lr.ph33.split.us.i.i.i46.epil.preheader:         ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa, %.lr.ph33.i.i.i45
  %indvars.iv49.i.i.i47.epil.init = phi i64 [ 10, %.lr.ph33.i.i.i45 ], [ %indvars.iv.next50.i.i.i52.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.i48.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i.i34, %.lr.ph33.i.i.i45 ], [ %.sroa.3.0.i14.us.i.i.i50.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.i49.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i.i33, %.lr.ph33.i.i.i45 ], [ %.sroa.0.0.i15.us.i.i.i51.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa ]
  %lcmp.mod229 = trunc i8 %narrow250 to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.hh = add nuw nsw i64 %indvars.iv49.i.i.i47.epil.init, 4294967295
  %i.hi = and i64 %i.hh, 4294967295
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.hi ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = load i64, ptr %i.hl, align 8
  %.sroa.3.0.i14.us.i.i.i50.epil = add nsw i64 %i.hm, %.sroa.6.131.us.i.i.i48.epil.init
  %.sroa.0.0.i15.us.i.i.i51.epil = add i64 %i.hk, %.sroa.020.130.us.i.i.i49.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36: ; preds = %.lr.ph33.split.us.i.i.i46.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa, %._crit_edge.i.i.i32
  %.sroa.020.2.i.i.i37 = phi i64 [ %.sroa.020.0.lcssa.i.i.i33, %._crit_edge.i.i.i32 ], [ %.sroa.0.0.i15.us.i.i.i51.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.i51.epil, %.lr.ph33.split.us.i.i.i46.epil.preheader ]
  %.sroa.6.2.i.i.i38 = phi i64 [ %.sroa.6.0.lcssa.i.i.i34, %._crit_edge.i.i.i32 ], [ %.sroa.3.0.i14.us.i.i.i50.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.i50.epil, %.lr.ph33.split.us.i.i.i46.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 %.sroa.6.2.i.i.i38, ptr %2, align 8
  %.not = icmp eq i64 %.sroa.6.2.i.i.i38, 0
  br i1 %.not, label %_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit.thread, label %_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit

_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit.thread: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.j

_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36
  %i.hn = uitofp i64 %.sroa.020.2.i.i.i37 to double
  %i.ho = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %i.hp = fdiv double %i.hn, %i.ho                ; 2 uses
  %i.hq = fcmp ogt double %i.hp, f0x41D0000000000000
  %.sroa.speculated8.i.i.i39 = select i1 %i.hq, double f0x41D0000000000000, double %i.hp ; 2 uses
  %i.hr = fcmp olt double %.sroa.speculated8.i.i.i39, 1.000000e+00
  %.sroa.speculated.i.i.i40 = select i1 %i.hr, double 1.000000e+00, double %.sroa.speculated8.i.i.i39 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.hs = fcmp olt double %.0.i, 5.000000e-01
  %i.ht = fcmp olt double %.sroa.speculated.i.i.i40, 5.000000e-01
  %or.cond = or i1 %i.hs, %i.ht
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit.thread, %_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit
  %i.hu = load i8, ptr %i.bz, align 8             ; 7 uses
  %.not24.i.i.i54 = icmp eq i8 %i.hu, 0
  br i1 %.not24.i.i.i54, label %._crit_edge.i.i.i64, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %bb.j
  %i.hv = zext i8 %i.hu to i64                    ; 7 uses
  %min.iters.check145 = icmp ult i8 %i.hu, 8
  br i1 %min.iters.check145, label %.lr.ph.split.us.i.i.i56.preheader, label %vector.scevcheck143

vector.scevcheck143:                              ; preds = %.lr.ph.i.i.i55
  %17 = add nsw i64 %i.hv, -1                     ; 2 uses
  %i.hw = zext i8 %i.hu to i32
  %i.hx = add nsw i32 %i.hw, -1
  %18 = trunc nsw i64 %17 to i32
  %i.hy = icmp ult i32 %i.hx, %18
  %19 = icmp ugt i64 %17, 4294967295
  %20 = or i1 %i.hy, %19
  br i1 %20, label %.lr.ph.split.us.i.i.i56.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %vector.scevcheck143
  %n.vec148 = and i64 %i.hv, 252                  ; 2 uses
  %i.hz = and i64 %i.hv, 3
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next165, %vector.body149 ] ; 2 uses
  %vec.phi151 = phi <2 x i64> [ zeroinitializer, %vector.ph146 ], [ %i.ig, %vector.body149 ]
  %vec.phi152 = phi <2 x i64> [ zeroinitializer, %vector.ph146 ], [ %i.ih, %vector.body149 ]
  %vec.phi153 = phi <2 x i64> [ zeroinitializer, %vector.ph146 ], [ %i.ii, %vector.body149 ]
  %vec.phi154 = phi <2 x i64> [ zeroinitializer, %vector.ph146 ], [ %i.ij, %vector.body149 ]
  %i.ia = sub i64 %i.hv, %index150
  %i.ib = add nuw nsw i64 %i.ia, 4294967295
  %i.ic = and i64 %i.ib, 4294967295
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -16
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 -48
  %wide.vec155 = load <4 x i64>, ptr %i.ie, align 8 ; 2 uses
  %reverse157 = shufflevector <4 x i64> %wide.vec155, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse159 = shufflevector <4 x i64> %wide.vec155, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %wide.vec160 = load <4 x i64>, ptr %i.if, align 8 ; 2 uses
  %reverse162 = shufflevector <4 x i64> %wide.vec160, <4 x i64> poison, <2 x i32> <i32 2, i32 0>
  %reverse164 = shufflevector <4 x i64> %wide.vec160, <4 x i64> poison, <2 x i32> <i32 3, i32 1>
  %i.ig = add <2 x i64> %reverse159, %vec.phi151  ; 2 uses
  %i.ih = add <2 x i64> %reverse164, %vec.phi152  ; 2 uses
  %i.ii = add <2 x i64> %reverse157, %vec.phi153  ; 2 uses
  %i.ij = add <2 x i64> %reverse162, %vec.phi154  ; 2 uses
  %index.next165 = add nuw i64 %index150, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next165, %n.vec148
  br i1 %i.ik, label %middle.block166, label %vector.body149, !llvm.loop !61

middle.block166:                                  ; preds = %vector.body149
  %bin.rdx167 = add <2 x i64> %i.ih, %i.ig
  %i.il = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx167) ; 2 uses
  %bin.rdx168 = add <2 x i64> %i.ij, %i.ii
  %i.im = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx168) ; 2 uses
  %cmp.n169 = icmp eq i64 %n.vec148, %i.hv
  br i1 %cmp.n169, label %._crit_edge.i.i.i64, label %.lr.ph.split.us.i.i.i56.preheader

.lr.ph.split.us.i.i.i56.preheader:                ; preds = %vector.scevcheck143, %.lr.ph.i.i.i55, %middle.block166
  %indvars.iv.i.i.i57.ph = phi i64 [ %i.hv, %vector.scevcheck143 ], [ %i.hv, %.lr.ph.i.i.i55 ], [ %i.hz, %middle.block166 ] ; 5 uses
  %.sroa.6.026.us.i.i.i58.ph = phi i64 [ 0, %vector.scevcheck143 ], [ 0, %.lr.ph.i.i.i55 ], [ %i.il, %middle.block166 ] ; 2 uses
  %.sroa.020.025.us.i.i.i59.ph = phi i64 [ 0, %vector.scevcheck143 ], [ 0, %.lr.ph.i.i.i55 ], [ %i.im, %middle.block166 ] ; 2 uses
  %xtraiter232 = and i64 %indvars.iv.i.i.i57.ph, 1
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.split.us.i.i.i56.prol.loopexit, label %.lr.ph.split.us.i.i.i56.prol

.lr.ph.split.us.i.i.i56.prol:                     ; preds = %.lr.ph.split.us.i.i.i56.preheader
  %i.in = add nuw nsw i64 %indvars.iv.i.i.i57.ph, 255
  %i.io = and i64 %i.in, 254
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.io ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.is = load i64, ptr %i.ir, align 8
  %.sroa.3.0.i.us.i.i.i60.prol = add nsw i64 %i.is, %.sroa.6.026.us.i.i.i58.ph ; 2 uses
  %.sroa.0.0.i.us.i.i.i61.prol = add i64 %i.iq, %.sroa.020.025.us.i.i.i59.ph ; 2 uses
  %indvars.iv.next.i.i.i62.prol = add nsw i64 %indvars.iv.i.i.i57.ph, -1
  br label %.lr.ph.split.us.i.i.i56.prol.loopexit

.lr.ph.split.us.i.i.i56.prol.loopexit:            ; preds = %.lr.ph.split.us.i.i.i56.prol, %.lr.ph.split.us.i.i.i56.preheader
  %.sroa.3.0.i.us.i.i.i60.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i56.preheader ], [ %.sroa.3.0.i.us.i.i.i60.prol, %.lr.ph.split.us.i.i.i56.prol ]
  %.sroa.0.0.i.us.i.i.i61.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.i.i.i56.preheader ], [ %.sroa.0.0.i.us.i.i.i61.prol, %.lr.ph.split.us.i.i.i56.prol ]
  %indvars.iv.i.i.i57.unr = phi i64 [ %indvars.iv.i.i.i57.ph, %.lr.ph.split.us.i.i.i56.preheader ], [ %indvars.iv.next.i.i.i62.prol, %.lr.ph.split.us.i.i.i56.prol ]
  %.sroa.6.026.us.i.i.i58.unr = phi i64 [ %.sroa.6.026.us.i.i.i58.ph, %.lr.ph.split.us.i.i.i56.preheader ], [ %.sroa.3.0.i.us.i.i.i60.prol, %.lr.ph.split.us.i.i.i56.prol ]
  %.sroa.020.025.us.i.i.i59.unr = phi i64 [ %.sroa.020.025.us.i.i.i59.ph, %.lr.ph.split.us.i.i.i56.preheader ], [ %.sroa.0.0.i.us.i.i.i61.prol, %.lr.ph.split.us.i.i.i56.prol ]
  %i.it = icmp eq i64 %indvars.iv.i.i.i57.ph, 1
  br i1 %i.it, label %._crit_edge.i.i.i64, label %.lr.ph.split.us.i.i.i56

.lr.ph.split.us.i.i.i56:                          ; preds = %.lr.ph.split.us.i.i.i56.prol.loopexit, %.lr.ph.split.us.i.i.i56
  %indvars.iv.i.i.i57 = phi i64 [ %indvars.iv.next.i.i.i62.1, %.lr.ph.split.us.i.i.i56 ], [ %indvars.iv.i.i.i57.unr, %.lr.ph.split.us.i.i.i56.prol.loopexit ] ; 3 uses
  %.sroa.6.026.us.i.i.i58 = phi i64 [ %.sroa.3.0.i.us.i.i.i60.1, %.lr.ph.split.us.i.i.i56 ], [ %.sroa.6.026.us.i.i.i58.unr, %.lr.ph.split.us.i.i.i56.prol.loopexit ]
  %.sroa.020.025.us.i.i.i59 = phi i64 [ %.sroa.0.0.i.us.i.i.i61.1, %.lr.ph.split.us.i.i.i56 ], [ %.sroa.020.025.us.i.i.i59.unr, %.lr.ph.split.us.i.i.i56.prol.loopexit ]
  %i.iu = add nuw nsw i64 %indvars.iv.i.i.i57, 4294967295
  %i.iv = and i64 %i.iu, 4294967295
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.iv ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iz = load i64, ptr %i.iy, align 8
  %.sroa.3.0.i.us.i.i.i60 = add nsw i64 %i.iz, %.sroa.6.026.us.i.i.i58
  %.sroa.0.0.i.us.i.i.i61 = add i64 %i.ix, %.sroa.020.025.us.i.i.i59
  %i.ja = add nsw i64 %indvars.iv.i.i.i57, 4294967294
  %i.jb = and i64 %i.ja, 4294967295
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.jb ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jf = load i64, ptr %i.je, align 8
  %.sroa.3.0.i.us.i.i.i60.1 = add nsw i64 %i.jf, %.sroa.3.0.i.us.i.i.i60 ; 2 uses
  %.sroa.0.0.i.us.i.i.i61.1 = add i64 %i.jd, %.sroa.0.0.i.us.i.i.i61 ; 2 uses
  %indvars.iv.next.i.i.i62.1 = add nsw i64 %indvars.iv.i.i.i57, -2 ; 2 uses
  %.not.us.i.i.i63.1 = icmp eq i64 %indvars.iv.next.i.i.i62.1, 0
  br i1 %.not.us.i.i.i63.1, label %._crit_edge.i.i.i64, label %.lr.ph.split.us.i.i.i56, !llvm.loop !62

._crit_edge.i.i.i64:                              ; preds = %.lr.ph.split.us.i.i.i56.prol.loopexit, %.lr.ph.split.us.i.i.i56, %middle.block166, %bb.j
  %.sroa.020.0.lcssa.i.i.i65 = phi i64 [ 0, %bb.j ], [ %i.im, %middle.block166 ], [ %.sroa.0.0.i.us.i.i.i61.lcssa.unr, %.lr.ph.split.us.i.i.i56.prol.loopexit ], [ %.sroa.0.0.i.us.i.i.i61.1, %.lr.ph.split.us.i.i.i56 ] ; 3 uses
  %.sroa.6.0.lcssa.i.i.i66 = phi i64 [ 0, %bb.j ], [ %i.il, %middle.block166 ], [ %.sroa.3.0.i.us.i.i.i60.lcssa.unr, %.lr.ph.split.us.i.i.i56.prol.loopexit ], [ %.sroa.3.0.i.us.i.i.i60.1, %.lr.ph.split.us.i.i.i56 ] ; 3 uses
  %i.jg = load i8, ptr %i.dm, align 1, !range !5, !noundef !6
  %i.jh = trunc nuw i8 %i.jg to i1
  %i.ji = icmp ult i8 %i.hu, 10
  %or.cond.i.i.i67 = and i1 %i.ji, %i.jh
  br i1 %or.cond.i.i.i67, label %.lr.ph33.i.i.i77, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68

.lr.ph33.i.i.i77:                                 ; preds = %._crit_edge.i.i.i64
  %narrow251 = sub nuw nsw i8 10, %i.hu           ; 2 uses
  %i.jj = zext nneg i8 %narrow251 to i64          ; 2 uses
  %xtraiter234 = and i64 %i.jj, 1
  %i.jk = icmp eq i8 %i.hu, 9
  br i1 %i.jk, label %.lr.ph33.split.us.i.i.i78.epil.preheader, label %.lr.ph33.i.i.i77.new

.lr.ph33.i.i.i77.new:                             ; preds = %.lr.ph33.i.i.i77
  %unroll_iter239 = and i64 %i.jj, 14
  br label %.lr.ph33.split.us.i.i.i78

.lr.ph33.split.us.i.i.i78:                        ; preds = %.lr.ph33.split.us.i.i.i78, %.lr.ph33.i.i.i77.new
  %indvars.iv49.i.i.i79 = phi i64 [ 10, %.lr.ph33.i.i.i77.new ], [ %indvars.iv.next50.i.i.i84.1, %.lr.ph33.split.us.i.i.i78 ] ; 3 uses
  %.sroa.6.131.us.i.i.i80 = phi i64 [ %.sroa.6.0.lcssa.i.i.i66, %.lr.ph33.i.i.i77.new ], [ %.sroa.3.0.i14.us.i.i.i82.1, %.lr.ph33.split.us.i.i.i78 ]
  %.sroa.020.130.us.i.i.i81 = phi i64 [ %.sroa.020.0.lcssa.i.i.i65, %.lr.ph33.i.i.i77.new ], [ %.sroa.0.0.i15.us.i.i.i83.1, %.lr.ph33.split.us.i.i.i78 ]
  %niter240 = phi i64 [ 0, %.lr.ph33.i.i.i77.new ], [ %niter240.next.1, %.lr.ph33.split.us.i.i.i78 ]
  %i.jl = add nuw nsw i64 %indvars.iv49.i.i.i79, 4294967295
  %i.jm = and i64 %i.jl, 4294967295
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.jm ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load i64, ptr %i.jp, align 8
  %.sroa.3.0.i14.us.i.i.i82 = add nsw i64 %i.jq, %.sroa.6.131.us.i.i.i80
  %.sroa.0.0.i15.us.i.i.i83 = add i64 %i.jo, %.sroa.020.130.us.i.i.i81
  %i.jr = add nsw i64 %indvars.iv49.i.i.i79, 4294967294
  %i.js = and i64 %i.jr, 4294967294
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.js ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = load i64, ptr %i.jv, align 8
  %.sroa.3.0.i14.us.i.i.i82.1 = add nsw i64 %i.jw, %.sroa.3.0.i14.us.i.i.i82 ; 3 uses
  %.sroa.0.0.i15.us.i.i.i83.1 = add i64 %i.ju, %.sroa.0.0.i15.us.i.i.i83 ; 3 uses
  %indvars.iv.next50.i.i.i84.1 = add nsw i64 %indvars.iv49.i.i.i79, -2 ; 2 uses
  %niter240.next.1 = add i64 %niter240, 2         ; 2 uses
  %niter240.ncmp.1.not = icmp eq i64 %niter240.next.1, %unroll_iter239
  br i1 %niter240.ncmp.1.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa, label %.lr.ph33.split.us.i.i.i78, !llvm.loop !18

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa: ; preds = %.lr.ph33.split.us.i.i.i78
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68, label %.lr.ph33.split.us.i.i.i78.epil.preheader

.lr.ph33.split.us.i.i.i78.epil.preheader:         ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa, %.lr.ph33.i.i.i77
  %indvars.iv49.i.i.i79.epil.init = phi i64 [ 10, %.lr.ph33.i.i.i77 ], [ %indvars.iv.next50.i.i.i84.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa ]
  %.sroa.6.131.us.i.i.i80.epil.init = phi i64 [ %.sroa.6.0.lcssa.i.i.i66, %.lr.ph33.i.i.i77 ], [ %.sroa.3.0.i14.us.i.i.i82.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa ]
  %.sroa.020.130.us.i.i.i81.epil.init = phi i64 [ %.sroa.020.0.lcssa.i.i.i65, %.lr.ph33.i.i.i77 ], [ %.sroa.0.0.i15.us.i.i.i83.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa ]
  %lcmp.mod238 = trunc i8 %narrow251 to i1
  call void @llvm.assume(i1 %lcmp.mod238)
  %i.jx = add nuw nsw i64 %indvars.iv49.i.i.i79.epil.init, 4294967295
  %i.jy = and i64 %i.jx, 4294967295
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.jy ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kc = load i64, ptr %i.kb, align 8
  %.sroa.3.0.i14.us.i.i.i82.epil = add nsw i64 %i.kc, %.sroa.6.131.us.i.i.i80.epil.init
  %.sroa.0.0.i15.us.i.i.i83.epil = add i64 %i.ka, %.sroa.020.130.us.i.i.i81.epil.init
  br label %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68

_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68: ; preds = %.lr.ph33.split.us.i.i.i78.epil.preheader, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa, %._crit_edge.i.i.i64
  %.sroa.020.2.i.i.i69 = phi i64 [ %.sroa.020.0.lcssa.i.i.i65, %._crit_edge.i.i.i64 ], [ %.sroa.0.0.i15.us.i.i.i83.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa ], [ %.sroa.0.0.i15.us.i.i.i83.epil, %.lr.ph33.split.us.i.i.i78.epil.preheader ]
  %.sroa.6.2.i.i.i70 = phi i64 [ %.sroa.6.0.lcssa.i.i.i66, %._crit_edge.i.i.i64 ], [ %.sroa.3.0.i14.us.i.i.i82.1, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68.loopexit.unr-lcssa ], [ %.sroa.3.0.i14.us.i.i.i82.epil, %.lr.ph33.split.us.i.i.i78.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 %.sroa.6.2.i.i.i70, ptr %1, align 8
  %i.kd = icmp eq i64 %.sroa.6.2.i.i.i70, 0
  br i1 %i.kd, label %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit85, label %bb.k

bb.k:                                             ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68
  %i.ke = uitofp i64 %.sroa.020.2.i.i.i69 to double
  %i.kf = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %i.kg = fdiv double %i.ke, %i.kf                ; 2 uses
  %i.kh = fcmp ogt double %i.kg, f0x41D0000000000000
  %.sroa.speculated8.i.i.i71 = select i1 %i.kh, double f0x41D0000000000000, double %i.kg ; 2 uses
  %i.ki = fcmp olt double %.sroa.speculated8.i.i.i71, 1.000000e+00
  %.sroa.speculated.i.i.i72 = select i1 %i.ki, double 1.000000e+00, double %.sroa.speculated8.i.i.i71
  br label %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit85

_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit85: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68, %bb.k
  %.sroa.0.0.i.i.i73 = phi double [ %.sroa.speculated.i.i.i72, %bb.k ], [ undef, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68 ] ; 2 uses
  %.sroa.2.0.i.i.i74 = phi i8 [ 1, %bb.k ], [ 0, %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i68 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  store double %.sroa.0.0.i.i.i73, ptr %i.bu, align 8
  store i8 %.sroa.2.0.i.i.i74, ptr %i.bv, align 8
  br label %bb.m

bb.l:                                             ; preds = %_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit
  %i.kj = fmul double %.0.i, %.sroa.speculated.i.i.i40
  %i.kk = fadd double %.0.i, %.sroa.speculated.i.i.i40
  %i.kl = fdiv double %i.kj, %i.kk                ; 2 uses
  store double %i.kl, ptr %i.bu, align 8
  store i8 1, ptr %i.bv, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.l, %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit85, %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit.thread, %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit
  %.sroa.0.0.i.i.pn = phi double [ %.sroa.0.0.i.i, %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit ], [ %.sroa.0.0.i.i.i73, %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit85 ], [ %i.kl, %bb.l ], [ %.sroa.speculated.i.i.i, %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit.thread ], [ %.sroa.011.0.pre, %bb.e ]
  %.sroa.2.0.i.i.pn = phi i8 [ %.sroa.2.0.i.i, %_ZN2v88internal12_GLOBAL__N_119BoundedAverageSpeedERKNS_4base10RingBufferIN4heap4base16BytesAndDurationELh10EEE.exit ], [ %.sroa.2.0.i.i.i74, %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit85 ], [ 1, %bb.l ], [ 1, %_ZNK2v88internal8GCTracer37MarkCompactSpeedInBytesPerMillisecondEv.exit.thread ], [ 1, %bb.e ]
  %.fca.0.insert.i.i.pn = insertvalue { double, i8 } poison, double %.sroa.0.0.i.i.pn, 0
  %.fca.1.insert.merged = insertvalue { double, i8 } %.fca.0.insert.i.i.pn, i8 %.sroa.2.0.i.i.pn, 1
  ret { double, i8 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer54OldGenerationAllocationThroughputInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %.val = load double, ptr %i.a, align 8          ; 2 uses
  %i.b = fcmp ogt double %.val, f0x41D0000000000000
  %.sroa.speculated.i = select i1 %i.b, double f0x41D0000000000000, double %.val
  ret double %.sroa.speculated.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK2v88internal8GCTracer49EmbedderAllocationThroughputInBytesPerMillisecondEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %.val = load double, ptr %i.a, align 8          ; 2 uses
  %i.b = fcmp ogt double %.val, f0x41D0000000000000
  %.sroa.speculated.i = select i1 %i.b, double f0x41D0000000000000, double %.val
  ret double %.sroa.speculated.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8GCTracer22SurvivalEventsRecordedEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5065
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp ne i8 %i.e, 0
  %.not1 = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %.not1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8GCTracer19ResetSurvivalEventsEv(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(6440) initializes((5064, 5066)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5064
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5065
  store i8 0, ptr %i.b, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer29NotifyIncrementalMarkingStartEv(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(6440) initializes((224, 232)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.a, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8GCTracer24RecordGCPhasesHistogramsENS1_18RecordGCPhasesInfo4ModeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(6440) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %4 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %5 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %6 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %7 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %8 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %9 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %10 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %11 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = add i64 %i.b, -55464
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 58656
  %i.f = load ptr, ptr %i.e, align 8              ; 27 uses
  switch i32 %1, label %bb.y [
    i32 2, label %bb.b
    i32 1, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 280 ; 3 uses
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN2v88internal8Counters17gc_finalize_clearEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #19
  %i.l = load atomic ptr, ptr %i.h monotonic, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i

end_hunk_3
