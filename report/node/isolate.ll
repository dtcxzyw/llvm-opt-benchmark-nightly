inline.NumInlined: 8933
inline.NumDeleted: 4075
begin_hunk_0_@_ZN2v88internal7Isolate23CaptureAndSetErrorStackENS0_12DirectHandleINS0_8JSObjectEEENS0_13FrameSkipModeENS0_6HandleINS0_6ObjectEEE:bb.a
  store i64 %i.ch, ptr %4, align 8
  %i.ci = call noundef zeroext i1 @_ZNK2v88internal6Script20IsSubjectToDebuggingEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %i.ci, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.cj = call noundef i32 @_ZN2v88internal12CallSiteInfo17GetSourcePositionENS0_12DirectHandleIS1_EE(ptr nonnull %.0.i.i.i) #46
  %i.ck = call ptr @_ZN2v88internal12CallSiteInfo20GetFunctionDebugNameENS0_12DirectHandleIS1_EE(ptr nonnull %.0.i.i.i) #46
  %i.cl = load i64, ptr %.0.i.i.i, align 8
  %i.cm = add i64 %i.cl, -1
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load atomic volatile i64, ptr %i.cn monotonic, align 8
  %i.cp = add i64 %i.co, 13
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load atomic volatile i8, ptr %i.cq monotonic, align 1
  %i.cs = and i8 %i.cr, 64
  %i.ct = icmp ne i8 %i.cs, 0
  %i.cu = call ptr @_ZN2v88internal7Factory17NewStackFrameInfoENS0_12DirectHandleINS0_5UnionIJNS0_18SharedFunctionInfoENS0_6ScriptEEEEEEiNS2_INS0_6StringEEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.cg, i32 noundef %i.cj, ptr %i.ck, i1 noundef zeroext %i.ct) #46
  %i.cv = load i64, ptr %i.be, align 8
  %i.cw = add i64 %i.cv, -1                       ; 3 uses
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = add nsw i32 %.095.i, 1                  ; 3 uses
  %i.cz = load i64, ptr %i.cu, align 8            ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.db = sext i32 %.095.i to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db ; 2 uses
  store atomic volatile i64 %i.cz, ptr %i.dc monotonic, align 8
  %i.dd = trunc i64 %i.cz to i1
  br i1 %i.dd, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.de = or disjoint i64 %i.cw, 1                ; 2 uses
  %i.df = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dg = and i64 %i.cw, -262144
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load i64, ptr %i.dh, align 262144       ; 2 uses
  %i.dj = and i64 %i.di, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dj, 0
  %i.dk = and i64 %i.di, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dl = and i64 %i.cz, -262144
  %i.dm = inttoptr i64 %i.dl to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.dm, align 262144
  %i.dn = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.de, i64 noundef %i.df, i64 %i.cz) #46
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i.i.i.i.i, label %.critedge.i, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.de, i64 %i.df, i64 %i.cz) #46
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %bb.u, %bb.q, %bb.p, %bb.o
  %.2.ph.i = phi i32 [ %i.cy, %bb.v ], [ %i.cy, %bb.u ], [ %i.cy, %bb.q ], [ %.095.i, %bb.p ], [ %.095.i, %bb.o ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.do = load i64, ptr %.sroa.054.0, align 8
  %i.dp = add i64 %i.do, -1
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = ashr i64 %i.ds, 32
  %i.du = icmp slt i64 %indvars.iv.next.i, %i.dt
  %i.dv = icmp slt i32 %.2.ph.i, %i.aw
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %bb.m, label %_ZN2v88internal12_GLOBAL__N_138GetDetailedStackTraceFromCallSiteInfosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit, !llvm.loop !24

_ZN2v88internal12_GLOBAL__N_138GetDetailedStackTraceFromCallSiteInfosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit: ; preds = %_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %.critedge.i, %bb.l
  %.0.lcssa.i = phi i32 [ 0, %bb.l ], [ %.2.ph.i, %.critedge.i ], [ %.095.i, %_ZN2v88internal6HandleINS0_12CallSiteInfoEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ]
  %i.dx = call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %0, ptr %i.be, i32 noundef %.0.lcssa.i) #46
  %i.dy = call ptr @_ZN2v88internal7Factory17NewStackTraceInfoENS0_12DirectHandleINS0_10FixedArrayEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %i.dx) #46 ; 3 uses
  %i.dz = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ea = load i64, ptr %.sroa.054.0, align 8
  %i.eb = add i64 %i.ea, -1
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = lshr i64 %i.ee, 32
  %i.eg = trunc nuw i64 %i.ef to i32
  %i.eh = icmp slt i32 %i.dz, %i.eg
  br i1 %i.eh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_138GetDetailedStackTraceFromCallSiteInfosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit
  %i.ei = call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %0, ptr nonnull %.sroa.054.0, i32 noundef %i.dz) #46
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN2v88internal12_GLOBAL__N_138GetDetailedStackTraceFromCallSiteInfosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit
  %.sroa.054.1 = phi ptr [ %i.ei, %bb.w ], [ %.sroa.054.0, %_ZN2v88internal12_GLOBAL__N_138GetDetailedStackTraceFromCallSiteInfosEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEi.exit ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 63928
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = and i32 %i.ek, 4
  %.not.i40 = icmp eq i32 %i.el, 0
  br i1 %.not.i40, label %_ZN2v88internal7Isolate20OnStackTraceCapturedENS0_12DirectHandleINS0_14StackTraceInfoEEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 63920
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = load i64, ptr %i.dy, align 8
  %i.ep = add i64 %i.eo, 7
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = lshr i64 %i.er, 32
  %i.et = trunc nuw i64 %i.es to i32
  %i.eu = load ptr, ptr %i.en, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(8) %i.en, i32 noundef 6, i32 noundef %i.et, i1 noundef zeroext false) #46, !inline_history !25
  br label %_ZN2v88internal7Isolate20OnStackTraceCapturedENS0_12DirectHandleINS0_14StackTraceInfoEEE.exit

_ZN2v88internal7Isolate20OnStackTraceCapturedENS0_12DirectHandleINS0_14StackTraceInfoEEE.exit: ; preds = %bb.y, %bb.x, %.critedge
  %.sroa.051.0 = phi ptr [ %i.ax, %.critedge ], [ %i.dy, %bb.x ], [ %i.dy, %bb.y ]
  %.sroa.054.2 = phi ptr [ %.sroa.054.0, %.critedge ], [ %.sroa.054.1, %bb.x ], [ %.sroa.054.1, %bb.y ]
  %i.ex = call ptr @_ZN2v88internal7Factory17NewErrorStackDataENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverENS0_10FixedArrayEEEEEENS2_INS0_14StackTraceInfoEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %.sroa.054.2, ptr %.sroa.051.0) #46
  br label %bb.z

bb.z:                                             ; preds = %bb.j, %_ZN2v88internal7Isolate20OnStackTraceCapturedENS0_12DirectHandleINS0_14StackTraceInfoEEE.exit
  %.sroa.052.0 = phi ptr [ %i.ex, %_ZN2v88internal7Isolate20OnStackTraceCapturedENS0_12DirectHandleINS0_14StackTraceInfoEEE.exit ], [ %.sroa.054.0, %bb.j ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 7952
  %i.ez = call ptr @_ZN2v88internal6Object11SetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS4_IS1_EENS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef nonnull %0, ptr %1, ptr nonnull %i.ey, ptr %.sroa.052.0, i32 noundef 0, i64 4294967297) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.fa = load ptr, ptr %6, align 8
  %.not.i41 = icmp eq ptr %i.fa, null
  br i1 %.not.i41, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load atomic volatile i8, ptr %i.fc monotonic, align 1
  %.not1.i = icmp eq i8 %i.fd, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #46 ; 2 uses
  %i.ff = load ptr, ptr %i.fb, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = load ptr, ptr %i.fe, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.ff, ptr noundef %i.fh, i64 noundef %i.fj) #46, !inline_history !26
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.z, %bb.aa, %bb.ab
  %i.fn = icmp eq ptr %i.ez, null
  %spec.select64 = select i1 %i.fn, ptr null, ptr %1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret ptr %spec.select64
}

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7Isolate18GetStackTraceLimitEPS1_Pi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8
  %i.e = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 31
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, 2087
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZN2v88internal7Isolate14error_functionEv.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %1) #46
  br label %_ZN2v88internal7Isolate14error_functionEv.exit

_ZN2v88internal7Isolate14error_functionEv.exit:   ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.s, %bb.c ], [ %i.o, %bb.b ] ; 3 uses
  %i.t = ptrtoint ptr %.0.i.i.i to i64            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.m, ptr %.0.i.i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 7408 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %.pre.pre.i = load i64, ptr %i.w, align 8
  %i.x = add i64 %.pre.pre.i, -1
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = icmp eq i16 %i.ac, 128
  br i1 %i.ad, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %_ZN2v88internal7Isolate14error_functionEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %_ZN2v88internal7Isolate14error_functionEv.exit
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ah = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ah, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %.0.i.i.i, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.t, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 -1, i64 16, i1 false)
  %i.at = load atomic volatile i64, ptr %i.y monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = and i16 %i.aw, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ax, 32
  br i1 %.not.i21.i.i.i, label %bb.d, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.d:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 55448
  %i.bb = load i8, ptr %i.ba, align 8, !range !13
  %i.bc = trunc nuw i8 %i.bb to i1
  %not..i.i.i23.i.i.i = xor i1 %i.az, true
  %i.bd = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.bc
  br i1 %i.bd, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64088
  %i.bf = load i8, ptr %i.be, align 8, !range !13, !noundef !14
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 64080
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.d
  %.pn.i.i26.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %1, %bb.d ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bj = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bk = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.w) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bk, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.w, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.an, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #46
  %i.bl = load i32, ptr %i.ai, align 4
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bm = load ptr, ptr %i.am, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.h:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bo = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #46
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.g, %bb.h
  %.sroa.07.0.i = phi ptr [ %i.bo, %bb.h ], [ %i.bn, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.bp = load i64, ptr %.sroa.07.0.i, align 8    ; 3 uses
  %i.bq = and i64 %i.bp, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.i, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.bs = add nsw i64 %i.bp, -1
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = add i64 %i.bu, 11
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i16, ptr %i.bw monotonic, align 2
  %i.by = icmp eq i16 %i.bx, 130
  br i1 %i.by, label %bb.j, label %bb.o

bb.i:                                             ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.bz = lshr i64 %i.bp, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = sitofp i32 %i.ca to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.j:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.cc, align 8
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.i, %bb.j
  %i.cd = phi double [ %i.cb, %bb.i ], [ %.0.copyload.i.i.i.i.i, %bb.j ] ; 3 uses
  %i.ce = fcmp ult double %i.cd, f0xC1E0000000000000
  br i1 %i.ce, label %_ZN2v88internal14FastD2ICheckedEd.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit
  %i.cf = fcmp ogt double %i.cd, f0x41DFFFFFFFC00000
  br i1 %i.cf, label %_ZN2v88internal14FastD2ICheckedEd.exit.thread45, label %_ZN2v88internal14FastD2ICheckedEd.exit

_ZN2v88internal14FastD2ICheckedEd.exit:           ; preds = %bb.k
  %i.cg = fptosi double %i.cd to i32
  %.fr = freeze i32 %i.cg                         ; 2 uses
  %i.ch = icmp slt i32 %.fr, 0
  br i1 %i.ch, label %_ZN2v88internal14FastD2ICheckedEd.exit.thread, label %_ZN2v88internal14FastD2ICheckedEd.exit.thread45

_ZN2v88internal14FastD2ICheckedEd.exit.thread:    ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %_ZN2v88internal14FastD2ICheckedEd.exit
  br label %_ZN2v88internal14FastD2ICheckedEd.exit.thread45

_ZN2v88internal14FastD2ICheckedEd.exit.thread45:  ; preds = %bb.k, %_ZN2v88internal14FastD2ICheckedEd.exit, %_ZN2v88internal14FastD2ICheckedEd.exit.thread
  %i.ci = phi i32 [ 0, %_ZN2v88internal14FastD2ICheckedEd.exit.thread ], [ %.fr, %_ZN2v88internal14FastD2ICheckedEd.exit ], [ 2147483647, %bb.k ] ; 2 uses
  store i32 %i.ci, ptr %2, align 4
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1388), align 4
  %.not = icmp eq i32 %i.ci, %i.cj
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal14FastD2ICheckedEd.exit.thread45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i32 45, ptr %i.a, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 56008
  %i.cl = load atomic i32, ptr %i.ck monotonic, align 8
  %i.cm = icmp ne i32 %i.cl, 0
  %.sroa.0.0.copyload.i.i.i16 = load i64, ptr %i.d, align 8
  %i.cn = icmp eq i64 %.sroa.0.0.copyload.i.i.i16, 0
  %or.cond.i.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 63560
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.cq = load ptr, ptr %i.n, align 8
  %i.cr = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(64320) %1, i32 noundef 45) #46, !inline_history !27
  %.pre.i.i = load i32, ptr %i.cs, align 8
  %.pre17.i.i = load ptr, ptr %i.p, align 8
  %i.cv = add nsw i32 %.pre.i.i, -1
  %i.cw = icmp eq ptr %.pre17.i.i, %i.cr
  store ptr %i.cq, ptr %i.n, align 8
  store i32 %i.cv, ptr %i.cs, align 8
  br i1 %i.cw, label %_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE.exit, label %bb.n, !prof !28

bb.n:                                             ; preds = %.lr.ph.i.i
  store ptr %i.cr, ptr %i.p, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %1) #46
  br label %_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE.exit

.critedge.i.i:                                    ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 55464
  call void @_ZN2v88internal4Heap23IncrementDeferredCountsENS_4base6VectorIKNS_7Isolate17UseCounterFeatureEEE(ptr noundef nonnull align 8 dereferenceable(2992) %i.cx, ptr nonnull %i.a, i64 1) #46
  br label %_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE.exit

_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE.exit: ; preds = %bb.m, %.lr.ph.i.i, %bb.n, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE.exit, %_ZN2v88internal14FastD2ICheckedEd.exit.thread45, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZN2v88internal14FastD2ICheckedEd.exit.thread45 ], [ true, %_ZN2v88internal7Isolate10CountUsageENS_7Isolate17UseCounterFeatureE.exit ], [ false, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_123CaptureSimpleStackTraceEPNS0_7IsolateEiNS0_13FrameSkipModeENS0_6HandleINS0_6ObjectEEE(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.507", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.666", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::StackFrameIterator", align 8 ; 5 uses
  %8 = alloca %"struct.v8::internal::FrameSummaries", align 8 ; 12 uses
  %9 = alloca [2 x %"class.std::unique_ptr.1672"], align 16 ; 6 uses
  %10 = alloca [2 x %"class.std::unique_ptr.1672"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.v8::internal::wasm::WasmCodeRefScope", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::(anonymous namespace)::CallSiteBuilder", align 8 ; 24 uses
  %i.g = load atomic volatile i64, ptr @_ZZN2v88internal12_GLOBAL__N_123CaptureSimpleStackTraceEPNS0_7IsolateEiNS0_13FrameSkipModeENS0_6HandleINS0_6ObjectEEEE29trace_event_unique_atomic1412 acquire, align 8 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #46 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_128PredictExceptionCatchAtFrameERKNS1_25StackFrameSummaryIteratorE:bb.a
  %i.bl = and i32 %i.bk, 15
  %i.bm = icmp eq i32 %i.bl, 9
  br i1 %i.bm, label %_ZN2v88internal12AbstractCode4kindENS0_16PtrComprCageBaseE.exit15.thread.i, label %bb.l, !prof !107

bb.l:                                             ; preds = %_ZN2v88internal12AbstractCode4kindENS0_16PtrComprCageBaseE.exit15.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.125) #45
  unreachable

_ZN2v88internal12AbstractCode4kindENS0_16PtrComprCageBaseE.exit15.thread.i: ; preds = %_ZN2v88internal12AbstractCode4kindENS0_16PtrComprCageBaseE.exit15.i, %_ZN2v88internal12AbstractCode4kindENS0_16PtrComprCageBaseE.exit.thread.i
  %i.bn = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.bo = add i64 %i.bn, 11
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load atomic volatile i16, ptr %i.bp monotonic, align 2
  %i.br = icmp eq i16 %i.bq, 184
  br i1 %i.br, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i, label %bb.m, !prof !5

bb.m:                                             ; preds = %_ZN2v88internal12AbstractCode4kindENS0_16PtrComprCageBaseE.exit15.thread.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.111) #45
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i: ; preds = %_ZN2v88internal12AbstractCode4kindENS0_16PtrComprCageBaseE.exit15.thread.i
  %i.bs = tail call noundef i32 @_ZNK2v88internal12FrameSummary11code_offsetEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @_ZN2v88internal12HandlerTableC1ENS0_6TaggedINS0_13BytecodeArrayEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.y) #46
  %i.bt = call noundef i32 @_ZNK2v88internal12HandlerTable26LookupHandlerIndexForRangeEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.bs) #46 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit.thread63, label %_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit

_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit.thread63: ; preds = %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit

_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i
  %i.bv = call noundef i32 @_ZNK2v88internal12HandlerTable18GetRangePredictionEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.bt) #46 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %i.bw = icmp ult i32 %i.bv, 5
  br i1 %i.bw, label %switch.lookup, label %bb.n

_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit.thread61: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i
  br label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit

bb.n:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.36) #45
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.bx = tail call i64 @_ZNK2v88internal10StackFrame10LookupCodeEv(ptr noundef nonnull align 8 dereferenceable(80) %.val) #46 ; 4 uses
  %i.by = add i64 %i.bx, 51
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ca = load atomic volatile i32, ptr %i.bz monotonic, align 4
  %i.cb = and i32 %i.ca, 15
  %.not = icmp eq i32 %i.cb, 2
  br i1 %.not, label %bb.p, label %_ZN2v88internal12_GLOBAL__N_118CatchPredictionForENS0_7BuiltinE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cc = add i64 %i.bx, 79
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add i64 %i.bx, 71
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp sgt i32 %i.ce, %i.ch
  br i1 %i.ci, label %bb.q, label %_ZN2v88internal12_GLOBAL__N_118CatchPredictionForENS0_7BuiltinE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cj = load atomic volatile i32, ptr %i.bz monotonic, align 4
  %i.ck = and i32 %i.cj, 16
  %.not68 = icmp eq i32 %i.ck, 0
  br i1 %.not68, label %_ZN2v88internal12_GLOBAL__N_118CatchPredictionForENS0_7BuiltinE.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.q
  %i.cl = add i64 %i.bx, 89
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = sext i16 %i.cn to i32
  %i.cp = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_118CatchPredictionForENS0_7BuiltinE(i32 noundef %i.co)
  %i.cq = tail call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE(i32 noundef %i.cp)
  br label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit

bb.r:                                             ; preds = %bb.a
  %i.cr = tail call i64 @_ZNK2v88internal10StackFrame10LookupCodeEv(ptr noundef nonnull align 8 dereferenceable(80) %.val) #46
  %i.cs = add i64 %i.cr, 89
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load i16, ptr %i.ct, align 2
  switch i16 %i.cu, label %_ZN2v88internal12_GLOBAL__N_118CatchPredictionForENS0_7BuiltinE.exit.thread [
    i16 764, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 766, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 765, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 260, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 748, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 757, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1119, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1125, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1126, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1118, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1137, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1138, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1136, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1143, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 1141, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
    i16 371, label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit
  ]

_ZN2v88internal12_GLOBAL__N_118CatchPredictionForENS0_7BuiltinE.exit.thread: ; preds = %bb.a, %bb.c, %_ZN2v88internal14ThreadLocalTop25try_catch_handler_addressEv.exit, %bb.b, %bb.q, %bb.o, %bb.p, %bb.r
  br label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit

switch.lookup:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit
  %i.cv = zext nneg i32 %i.bv to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE, i64 %i.cv
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit

_ZN2v88internal12_GLOBAL__N_111ToCatchTypeENS0_12HandlerTable15CatchPredictionE.exit: ; preds = %switch.lookup, %bb.c, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %bb.d, %_ZN2v88internal12_GLOBAL__N_118CatchPredictionForENS0_7BuiltinE.exit.thread, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %.critedge, %_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit.thread61, %_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit.thread63
  %.2 = phi i32 [ 0, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit.thread63 ], [ 2, %bb.c ], [ %i.cq, %.critedge ], [ 3, %bb.r ], [ 0, %bb.d ], [ 3, %_ZN2v88internal12_GLOBAL__N_116PredictExceptionERKNS0_12FrameSummaryEPNS0_7IsolateE.exit.thread61 ], [ %switch.ext, %switch.lookup ], [ 3, %bb.r ], [ 3, %bb.r ], [ 0, %_ZN2v88internal12_GLOBAL__N_118CatchPredictionForENS0_7BuiltinE.exit.thread ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ], [ 3, %bb.r ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal7Isolate21ThrowIllegalOperationEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1553), align 1, !range !13, !noundef !14
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stdout, align 8
  tail call void @_ZN2v88internal7Isolate10PrintStackEP8_IO_FILENS1_14PrintStackModeE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef %i.c, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, -55464
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 6328
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.i, ptr noundef null)
  ret i64 %i.j
}

declare void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #3

declare i64 @_ZNK2v88internal12CallSiteInfo24GetScriptNameOrSourceURLEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v88internal21SerializeCallSiteInfoEPNS0_7IsolateENS0_12DirectHandleINS0_12CallSiteInfoEEEPNS0_24IncrementalStringBuilderE(ptr noundef, ptr, ptr noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN2v88internal6String7PrintOnERSo(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN2v88internal28DebuggableStackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

declare void @_ZNK2v88internal28DebuggableStackFrameIterator16GetTopValidFrameEv(ptr dead_on_unwind writable sret(%"class.v8::internal::FrameSummary") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare ptr @_ZNK2v88internal12FrameSummary6scriptEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK2v88internal12FrameSummary27AreSourcePositionsAvailableEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare noundef i32 @_ZNK2v88internal12FrameSummary14SourcePositionEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEiiNS2_INS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i32 noundef, i32 noundef, ptr) unnamed_addr #3

declare noundef i32 @_ZNK2v88internal12FrameSummary11code_offsetEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEENS2_INS0_18SharedFunctionInfoEEEi(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i32 noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v88internal12FrameSummaryD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7Isolate28ComputeLocationFromExceptionEPNS0_15MessageLocationENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr nofree noundef writeonly captures(none) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %6 = alloca %"class.v8::internal::MessageLocation", align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 272
  br i1 %i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp ugt i16 %i.m, 302
  br i1 %i.n, label %bb.b, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7960 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %.pre.pre.i = load i64, ptr %i.o, align 8
  %i.p = add i64 %.pre.pre.i, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 128
  br i1 %i.v, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.b
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.z = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.z, ptr %5, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.o, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ak = ptrtoint ptr %2 to i64                  ; 3 uses
  store i64 %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 -1, i64 16, i1 false)
  %i.am = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = and i16 %i.ap, -96
  %.not.i21.i.i.i = icmp eq i16 %i.aq, 32
  br i1 %.not.i21.i.i.i, label %bb.c, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.c:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.au = load i8, ptr %i.at, align 8, !range !13
  %i.av = trunc nuw i8 %i.au to i1
  %not..i.i.i23.i.i.i = xor i1 %i.as, true
  %i.aw = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.av
  br i1 %i.aw, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ay = load i8, ptr %i.ax, align 8, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.c
  %.pn.i.i26.i.i.i = phi ptr [ %i.bb, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.c ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bc = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bd = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.o) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bd, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.o, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.af, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #46
  %i.be = load i32, ptr %i.aa, align 4
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bf = load ptr, ptr %i.ae, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.g:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bh = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %5, i32 noundef 0) #46
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.f, %bb.g
  %.sroa.07.0.i = phi ptr [ %i.bh, %bb.g ], [ %i.bg, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.bi = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.h:                                             ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.bl = lshr i64 %i.bi, 32
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 7928 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %.pre.pre.i34 = load i64, ptr %i.bn, align 8
  %i.bo = add i64 %.pre.pre.i34, -1
  %i.bp = inttoptr i64 %i.bo to ptr               ; 3 uses
  %i.bq = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.br = add i64 %i.bq, 11
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load atomic volatile i16, ptr %i.bs monotonic, align 2
  %i.bu = icmp eq i16 %i.bt, 128
  br i1 %i.bu, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47:  ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = trunc i32 %i.bw to i1
  br i1 %i.bx, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47, %bb.h
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47
  %i.by = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i35 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i47 ]
  store i32 %i.by, ptr %4, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.bn, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %2, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %i.ak, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 -1, i64 16, i1 false)
  %i.ck = load atomic volatile i64, ptr %i.bp monotonic, align 8
  %i.cl = add i64 %i.ck, 11
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load atomic volatile i16, ptr %i.cm monotonic, align 2
  %i.co = and i16 %i.cn, -96
  %.not.i21.i.i.i37 = icmp eq i16 %i.co, 32
  br i1 %.not.i21.i.i.i37, label %bb.i, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38

bb.i:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.cs = load i8, ptr %i.cr, align 8, !range !13
  %i.ct = trunc nuw i8 %i.cs to i1
  %not..i.i.i23.i.i.i42 = xor i1 %i.cq, true
  %i.cu = select i1 %not..i.i.i23.i.i.i42, i1 true, i1 %i.ct
  br i1 %i.cu, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.cw = load i8, ptr %i.cv, align 8, !range !13, !noundef !14
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i43, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i43: ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.cz = load ptr, ptr %i.cy, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i43, %bb.i
  %.pn.i.i26.i.i.i45 = phi ptr [ %i.cz, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i43 ], [ %0, %bb.i ]
  %.in.i.i27.i.i.i46 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i45, i64 58464
  %i.da = load ptr, ptr %.in.i.i27.i.i.i46, align 8
  %i.db = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.bn) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36
  %.sroa.05.0.i22.i.i.i39 = phi ptr [ %i.db, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i44 ], [ %i.bn, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i36 ]
  store ptr %.sroa.05.0.i22.i.i.i39, ptr %i.ce, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #46
  %i.dc = load i32, ptr %i.bz, align 4
  %.not.i40 = icmp eq i32 %i.dc, 0
  br i1 %.not.i40, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38
  %i.dd = load ptr, ptr %i.cd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48

bb.m:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i38
  %i.df = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %4, i32 noundef 0) #46
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48: ; preds = %bb.l, %bb.m
  %.sroa.07.0.i41 = phi ptr [ %i.df, %bb.m ], [ %i.de, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.dg = load i64, ptr %.sroa.07.0.i41, align 8  ; 2 uses
  %i.dh = and i64 %i.dg, 1
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.n, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.n:                                             ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48
  %i.dj = lshr i64 %i.dg, 32
  %i.dk = trunc nuw i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 7944 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %.pre.pre.i49 = load i64, ptr %i.dl, align 8
  %i.dm = add i64 %.pre.pre.i49, -1
  %i.dn = inttoptr i64 %i.dm to ptr               ; 3 uses
  %i.do = load atomic volatile i64, ptr %i.dn monotonic, align 8
  %i.dp = add i64 %i.do, 11
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load atomic volatile i16, ptr %i.dq monotonic, align 2
  %i.ds = icmp eq i16 %i.dr, 128
  br i1 %i.ds, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i62, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i50

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i62:  ; preds = %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = trunc i32 %i.du to i1
  br i1 %i.dv, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i51, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i50

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i50: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i62, %bb.n
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i51

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i51: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i50, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i62
  %i.dw = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i50 ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i62 ]
  store i32 %i.dw, ptr %3, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.dl, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.ak, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i8 -1, i64 16, i1 false)
  %i.ei = load atomic volatile i64, ptr %i.dn monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = and i16 %i.el, -96
  %.not.i21.i.i.i52 = icmp eq i16 %i.em, 32
  br i1 %.not.i21.i.i.i52, label %bb.o, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i53

bb.o:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i51
  %i.en = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.eq = load i8, ptr %i.ep, align 8, !range !13
  %i.er = trunc nuw i8 %i.eq to i1
  %not..i.i.i23.i.i.i57 = xor i1 %i.eo, true
  %i.es = select i1 %not..i.i.i23.i.i.i57, i1 true, i1 %i.er
  br i1 %i.es, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i59, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.eu = load i8, ptr %i.et, align 8, !range !13, !noundef !14
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i58, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i58: ; preds = %bb.p
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ex = load ptr, ptr %i.ew, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i59

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i59: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i58, %bb.o
  %.pn.i.i26.i.i.i60 = phi ptr [ %i.ex, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i58 ], [ %0, %bb.o ]
  %.in.i.i27.i.i.i61 = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i60, i64 58464
  %i.ey = load ptr, ptr %.in.i.i27.i.i.i61, align 8
  %i.ez = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.dl) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i53

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i53: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i59, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i51
  %.sroa.05.0.i22.i.i.i54 = phi ptr [ %i.ez, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i59 ], [ %i.dl, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i51 ]
  store ptr %.sroa.05.0.i22.i.i.i54, ptr %i.ec, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #46
  %i.fa = load i32, ptr %i.dx, align 4
  %.not.i55 = icmp eq i32 %i.fa, 0
  br i1 %.not.i55, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i53
  %i.fb = load ptr, ptr %i.eb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit63

bb.s:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i53
  %i.fd = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #46
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit63

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit63: ; preds = %bb.r, %bb.s
  %.sroa.07.0.i56 = phi ptr [ %i.fd, %bb.s ], [ %i.fc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.fe = load i64, ptr %.sroa.07.0.i56, align 8  ; 3 uses
  %i.ff = trunc i64 %i.fe to i1
  br i1 %i.ff, label %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit63
  %i.fg = add nsw i64 %i.fe, -1
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load atomic volatile i64, ptr %i.fh monotonic, align 8
  %i.fj = add i64 %i.fi, 11
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = load atomic volatile i16, ptr %i.fk monotonic, align 2
  %i.fm = icmp eq i16 %i.fl, 165
  br i1 %i.fm, label %bb.t, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.t:                                             ; preds = %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = icmp eq ptr %i.fo, %i.fq
  br i1 %i.fr, label %bb.u, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.fs = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ %i.fs, %bb.u ], [ %i.fo, %bb.t ] ; 3 uses
  %i.ft = ptrtoint ptr %.0.i to i64
  %i.fu = add i64 %i.ft, 8
  %i.fv = inttoptr i64 %i.fu to ptr
  store ptr %i.fv, ptr %i.fn, align 8
  store i64 %i.fe, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEii(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull %.0.i, i32 noundef %i.bm, i32 noundef %i.dk) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit63, %bb.a, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit
  %.3 = phi i1 [ false, %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit ], [ true, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ false, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ], [ false, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit48 ], [ false, %bb.a ], [ false, %_ZN2v88internal8IsScriptENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit63 ]
  ret i1 %.3
}

declare void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEii(ptr noundef nonnull align 8 dereferenceable(32), ptr, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7Isolate35ComputeLocationFromSimpleStackTraceEPNS0_15MessageLocationENS0_12DirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 272
  br i1 %i.i, label %.critedge, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsAnyHoleENS0_6TaggedINS0_6ObjectEEE.exit
  %i.j = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp ugt i16 %i.m, 299
  br i1 %i.n, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.o = tail call { ptr, ptr } @_ZN2v88internal10ErrorUtils21GetErrorStackPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr nonnull %2) #46
  %i.p = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal16IsErrorStackDataENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.b
  %i.s = add nsw i64 %i.q, -1
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = add i64 %i.u, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2
  %i.y = add i16 %i.x, -205
  %i.z = icmp ult i16 %i.y, 13
  br i1 %i.z, label %_ZN2v88internal7Isolate19GetSimpleStackTraceENS0_12DirectHandleINS0_10JSReceiverEEE.exit, label %_ZN2v88internal16IsErrorStackDataENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal16IsErrorStackDataENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.aa = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2
  %i.ae = icmp eq i16 %i.ad, 155
  br i1 %i.ae, label %bb.c, label %_ZN2v88internal16IsErrorStackDataENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal16IsErrorStackDataENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal16IsErrorStackDataENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 864
  br label %_ZN2v88internal7Isolate19GetSimpleStackTraceENS0_12DirectHandleINS0_10JSReceiverEEE.exit

bb.c:                                             ; preds = %_ZN2v88internal16IsErrorStackDataENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ag = add i64 %i.q, 7
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZNK2v88internal14ErrorStackData16HasCallSiteInfosEv.exit.i, label %_ZNK2v88internal14ErrorStackData16HasCallSiteInfosEv.exit.thread.i

_ZNK2v88internal14ErrorStackData16HasCallSiteInfosEv.exit.i: ; preds = %bb.c
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load atomic volatile i16, ptr %i.ao monotonic, align 2
  %i.aq = add i16 %i.ap, -205
  %i.ar = icmp ult i16 %i.aq, 13
  br i1 %i.ar, label %bb.d, label %_ZNK2v88internal14ErrorStackData16HasCallSiteInfosEv.exit.thread.i

_ZNK2v88internal14ErrorStackData16HasCallSiteInfosEv.exit.thread.i: ; preds = %_ZNK2v88internal14ErrorStackData16HasCallSiteInfosEv.exit.i, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 864
  br label %_ZN2v88internal7Isolate19GetSimpleStackTraceENS0_12DirectHandleINS0_10JSReceiverEEE.exit

bb.d:                                             ; preds = %_ZNK2v88internal14ErrorStackData16HasCallSiteInfosEv.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !7
end_hunk_1
begin_hunk_2_@_ZN2v88internal7Isolate21ReportPendingMessagesEb:bb.a
  %i.ah = load i8, ptr %i.ag, align 8
  %i.ai = or i8 %i.ah, 2
  store i8 %i.ai, ptr %i.ag, align 8
  %i.aj = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %i.al, align 8 ; 2 uses
  %i.am = load i64, ptr %i.b, align 8
  %.not10.i = icmp eq i64 %.sroa.0.0.copyload.i.i8.i, %i.am
  br i1 %.not10.i, label %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = inttoptr i64 %.sroa.0.0.copyload.i.i8.i to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.an, ptr %i.ao, align 8
  br label %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit

_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  %i.ap = phi i1 [ true, %bb.j ], [ false, %bb.e ], [ true, %bb.i ], [ true, %bb.g ], [ true, %bb.h ]
  br i1 %1, label %bb.k, label %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit.thread

bb.k:                                             ; preds = %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.aq, align 8 ; 3 uses
  %i.ar = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = add i64 %i.at, -55464
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 960
  %i.ax = load i64, ptr %i.aw, align 8
  %.not82 = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.ax
  br i1 %.not82, label %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.f, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = trunc i8 %i.ba to i1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0 = phi i1 [ %i.bb, %bb.m ], [ true, %bb.l ]
  %i.bc = icmp ne i64 %.sroa.0.0.copyload.i32, %i.ar
  %or.cond = select i1 %i.bc, i1 %.0, i1 false
  br i1 %or.cond, label %bb.o, label %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 7 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq ptr %i.be, %i.bg
  br i1 %i.bk, label %bb.p, label %_ZN2v88internal6HandleINS0_15JSMessageObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_15JSMessageObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_15JSMessageObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.o, %bb.p
  %.0.i.i = phi ptr [ %i.bl, %bb.p ], [ %i.be, %bb.o ] ; 6 uses
  %i.bm = ptrtoint ptr %.0.i.i to i64
  %i.bn = add i64 %i.bm, 8
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.bd, align 8
  store i64 %.sroa.0.0.copyload.i32, ptr %.0.i.i, align 8
  %i.bp = add i64 %.sroa.0.0.copyload.i32, 39
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bt = load ptr, ptr %i.bf, align 8
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.q, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.q:                                             ; preds = %_ZN2v88internal6HandleINS0_15JSMessageObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bv = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %_ZN2v88internal6HandleINS0_15JSMessageObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.q
  %.0.i = phi ptr [ %i.bv, %bb.q ], [ %i.bs, %_ZN2v88internal6HandleINS0_15JSMessageObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.bw = ptrtoint ptr %.0.i to i64
  %i.bx = add i64 %i.bw, 8
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr %i.by, ptr %i.bd, align 8
  store i64 %i.br, ptr %.0.i, align 8
  %.sroa.0.0.copyload.i.i.i34 = load i64, ptr %i.a, align 8 ; 2 uses
  %i.bz = load i64, ptr %i.b, align 8
  %.not.i.i35 = icmp eq i64 %.sroa.0.0.copyload.i.i.i34, %i.bz
  br i1 %.not.i.i35, label %bb.r, label %_ZN2v88internal7Isolate9exceptionEv.exit.i36, !prof !7

bb.r:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.123) #45
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit.i36:     ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.ca = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.cb = load ptr, ptr %i.bf, align 8
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.s, label %_ZN2v88internal7Isolate14ExceptionScopeC2EPS1_.exit, !prof !7

bb.s:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit.i36
  %i.cd = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal7Isolate14ExceptionScopeC2EPS1_.exit

_ZN2v88internal7Isolate14ExceptionScopeC2EPS1_.exit: ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit.i36, %bb.s
  %.0.i.i.i = phi ptr [ %i.cd, %bb.s ], [ %i.ca, %_ZN2v88internal7Isolate9exceptionEv.exit.i36 ] ; 3 uses
  %i.ce = ptrtoint ptr %.0.i.i.i to i64
  %i.cf = add i64 %i.ce, 8
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.cg, ptr %i.bd, align 8
  store i64 %.sroa.0.0.copyload.i.i.i34, ptr %.0.i.i.i, align 8
  %i.ch = load i64, ptr %i.b, align 8
  store i64 %i.ch, ptr %i.a, align 8
  %i.ci = load i64, ptr %.0.i.i, align 8
  %i.cj = add i64 %i.ci, 55
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal7Isolate14ExceptionScopeC2EPS1_.exit
  tail call preserve_mostcc void @_ZN2v88internal15JSMessageObject25InitializeSourcePositionsEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef nonnull %0, ptr nonnull %.0.i.i) #46
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN2v88internal7Isolate14ExceptionScopeC2EPS1_.exit
  %i.cn = load i64, ptr %.0.i.i.i, align 8
  store i64 %i.cn, ptr %i.a, align 8
  %i.co = load i64, ptr %.0.i.i, align 8          ; 2 uses
  %i.cp = add i64 %i.co, 71
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = trunc nuw i64 %i.cs to i32
  %i.cu = add i64 %i.co, 79
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = lshr i64 %i.cw, 32
  %i.cy = trunc nuw i64 %i.cx to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @_ZN2v88internal15MessageLocationC1ENS0_6HandleINS0_6ScriptEEEii(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull %.0.i, i32 noundef %i.ct, i32 noundef %i.cy) #46
  call void @_ZN2v88internal14MessageHandler13ReportMessageEPNS0_7IsolateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_15JSMessageObjectEEE(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr nonnull %.0.i.i) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  store ptr %i.be, ptr %i.bd, align 8
  %i.cz = load i32, ptr %i.bh, align 8
  %i.da = add nsw i32 %i.cz, -1
  store i32 %i.da, ptr %i.bh, align 8
  %i.db = load ptr, ptr %i.bf, align 8
  %.not.i = icmp eq ptr %i.db, %i.bg
  br i1 %.not.i, label %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit.thread, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  store ptr %i.bg, ptr %i.bf, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit.thread

_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit.thread: ; preds = %bb.u, %bb.v, %bb.f, %bb.k, %bb.n, %_ZN2v88internal7Isolate36PropagateExceptionToExternalTryCatchENS1_20ExceptionHandlerTypeE.exit
  ret void
}

declare void @_ZN2v88internal14MessageHandler13ReportMessageEPNS0_7IsolateEPKNS0_15MessageLocationENS0_12DirectHandleINS0_15JSMessageObjectEEE(ptr noundef, ptr noundef, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7Isolate27WalkCallStackAndPromiseTreeENS0_17MaybeDirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS1_14PromiseHandlerEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::Isolate::PromiseHandler", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.515", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.666", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::(anonymous namespace)::StackFrameSummaryIterator", align 8 ; 16 uses
  %.not151 = icmp eq ptr %1, null
  br i1 %.not151, label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %6, align 8
  %i.b = call noundef i32 @_ZNK2v88internal9JSPromise6statusEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #46
  %.not = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br i1 %.not, label %bb.c, label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread131

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread131

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8016 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %.pre.pre.i = load i64, ptr %i.i, align 8
  %i.j = add i64 %.pre.pre.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 128
  br i1 %i.p, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.d
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.t = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.t, ptr %5, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ae = ptrtoint ptr %1 to i64
  store i64 %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 -1, i64 16, i1 false)
  %i.ag = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = and i16 %i.aj, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ak, 32
  br i1 %.not.i21.i.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ao = load i8, ptr %i.an, align 8, !range !13
  %i.ap = trunc nuw i8 %i.ao to i1
  %not..i.i.i23.i.i.i = xor i1 %i.am, true
  %i.aq = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ap
  br i1 %i.aq, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.as = load i8, ptr %i.ar, align 8, !range !13, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.av = load ptr, ptr %i.au, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.e
  %.pn.i.i26.i.i.i = phi ptr [ %i.av, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.e ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.aw = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ax = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.i) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ax, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.z, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #46
  %i.ay = load i32, ptr %i.u, align 4
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.az = load ptr, ptr %i.y, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.i:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bb = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %5, i32 noundef 0) #46
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.h, %bb.i
  %.sroa.07.0.i = phi ptr [ %i.bb, %bb.i ], [ %i.ba, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.bc = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.bd = trunc i64 %i.bc to i1
  br i1 %i.bd, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.be = add nsw i64 %i.bc, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i64, ptr %i.bf monotonic, align 8
  %i.bh = add i64 %i.bg, 11
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i16, ptr %i.bi monotonic, align 2
  %i.bk = icmp eq i16 %i.bj, 2115
  br i1 %i.bk, label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread131, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit
  br label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread131

_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZN2v88internal14ThreadLocalTop25try_catch_handler_addressEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i64, ptr %i.bp, align 8
  br label %_ZN2v88internal14ThreadLocalTop25try_catch_handler_addressEv.exit.i

_ZN2v88internal14ThreadLocalTop25try_catch_handler_addressEv.exit.i: ; preds = %bb.j, %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.0.i.i = phi i64 [ %i.bq, %bb.j ], [ 0, %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 3 uses
  %i.br = icmp eq i64 %i.bm, 0
  br i1 %i.br, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal14ThreadLocalTop25try_catch_handler_addressEv.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = add i64 %i.bt, -55464
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 960
  %i.bx = load i64, ptr %i.bw, align 8
  %.not.i49 = icmp eq i64 %i.bx, 0
  br i1 %.not.i49, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal14ThreadLocalTop25try_catch_handler_addressEv.exit.i
  %i.by = icmp eq i64 %.0.i.i, 0
  br i1 %i.by, label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread131, label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit41

bb.m:                                             ; preds = %bb.k
  %i.bz = icmp ne i64 %.0.i.i, 0
  %i.ca = icmp ult i64 %.0.i.i, %i.bm
  %or.cond = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond, label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit41, label %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread131

_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread131: ; preds = %bb.l, %bb.m, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.c, %bb.b
  %.028135 = phi i8 [ 1, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit ], [ 0, %bb.l ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ 0, %bb.m ]
  %.sroa.087.1134 = phi ptr [ %1, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %bb.l ], [ null, %bb.b ], [ %1, %bb.c ], [ null, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit.thread ], [ null, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @_ZN2v88internal18StackFrameIteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(164) %7, ptr noundef nonnull %0) #46
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cb, i8 0, i64 36, i1 false)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_125StackFrameSummaryIterator13InitSummariesEv(ptr noundef nonnull align 8 dereferenceable(164) %7)
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 3 uses
  %.val154 = load ptr, ptr %i.cc, align 8
  %i.cd = icmp eq ptr %.val154, null
  br i1 %i.cd, label %.thread143, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal11MaybeHandleINS0_9JSPromiseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread131
  %i.ce = icmp ne ptr %.sroa.087.1134, null       ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN2v88internal12_GLOBAL__N_125StackFrameSummaryIterator7AdvanceEv.exit
  %.129155 = phi i8 [ %.028135, %.lr.ph ], [ %.230, %_ZN2v88internal12_GLOBAL__N_125StackFrameSummaryIterator7AdvanceEv.exit ] ; 6 uses
  %i.ck = call fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_128PredictExceptionCatchAtFrameERKNS1_25StackFrameSummaryIteratorE(ptr noundef nonnull align 8 dereferenceable(164) %7)
  br i1 %i.ce, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i32 %i.ck, label %default.unreachable168 [
    i32 0, label %bb.p
    i32 4, label %bb.r
    i32 3, label %bb.y
    i32 2, label %bb.t
    i32 1, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.cl = trunc nuw i8 %.129155 to i1
  br i1 %i.cl, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.cm = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_116CallsCatchMethodERKNS1_25StackFrameSummaryIteratorE(ptr noundef nonnull align 8 dereferenceable(164) %7) ; 2 uses
  br label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.cn = trunc nuw i8 %.129155 to i1
  br i1 %i.cn, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.co = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_116CallsCatchMethodERKNS1_25StackFrameSummaryIteratorE(ptr noundef nonnull align 8 dereferenceable(164) %7) ; 2 uses
  br label %bb.y

bb.t:                                             ; preds = %bb.o
  %i.cp = trunc nuw i8 %.129155 to i1
  %i.cq = xor i1 %i.cp, true                      ; 2 uses
  br label %bb.y

bb.u:                                             ; preds = %bb.o
  %.val47 = load ptr, ptr %i.cb, align 8
  %.val48 = load i32, ptr %i.cf, align 8
  %i.cr = sext i32 %.val48 to i64
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr %.val47, i64 %i.cr ; 2 uses
  %i.ct = trunc nuw i8 %.129155 to i1
  br i1 %i.ct, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.0.0.copyload.i50 = load ptr, ptr %i.cx, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE:bb.a
bb.ag:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit
  %i.iy = load i64, ptr %.sroa.0251.0427, align 8
  %i.iz = add i64 %i.iy, 31
  %i.ja = inttoptr i64 %i.iz to ptr
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = add i64 %i.jb, 39
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = load i64, ptr %i.jd, align 8            ; 2 uses
  %i.jf = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jg = load ptr, ptr %i.i, align 8
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.ah, label %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.ah:                                            ; preds = %bb.ag
  %i.ji = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ag, %bb.ah
  %.0.i.i = phi ptr [ %i.ji, %bb.ah ], [ %i.jf, %bb.ag ] ; 2 uses
  %i.jj = ptrtoint ptr %.0.i.i to i64
  %i.jk = add i64 %i.jj, 8
  %i.jl = inttoptr i64 %i.jk to ptr
  store ptr %i.jl, ptr %i.g, align 8
  store i64 %i.je, ptr %.0.i.i, align 8
  %i.jm = add i64 %i.je, 31
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load atomic volatile i64, ptr %i.jn monotonic, align 8 ; 2 uses
  %i.jp = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.jq = load ptr, ptr %i.i, align 8
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.ai, label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141, !prof !7

bb.ai:                                            ; preds = %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.js = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141

_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141: ; preds = %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.ai
  %.0.i.i140 = phi ptr [ %i.js, %bb.ai ], [ %i.jp, %_ZN2v88internal12DirectHandleINS0_7ContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %i.jt = ptrtoint ptr %.0.i.i140 to i64
  %i.ju = add i64 %i.jt, 8
  %i.jv = inttoptr i64 %i.ju to ptr
  store ptr %i.jv, ptr %i.g, align 8
  store i64 %i.jo, ptr %.0.i.i140, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread: ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit._ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread_crit_edge, %bb.ad, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141
  %i.jw = phi i64 [ %i.jo, %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit141 ], [ %.pre, %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit._ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread_crit_edge ], [ %i.hy, %bb.ad ] ; 2 uses
  %i.jx = add i64 %i.jw, -1
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = load atomic volatile i64, ptr %i.jy monotonic, align 8
  %i.ka = add i64 %i.jz, 11
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = load atomic volatile i16, ptr %i.kb monotonic, align 2
  %i.kd = add i16 %i.kc, -2065
  %i.ke = icmp ult i16 %i.kd, 17
  br i1 %i.ke, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread
  %i.kf = add i64 %i.jw, 31
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = load atomic volatile i64, ptr %i.kg monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.kh, ptr %5, align 8
  store i8 1, ptr %i.t, align 8
  %i.ki = load ptr, ptr %i.u, align 8
  %.not.i.i159 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i159, label %bb.ak, label %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit160

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt25__throw_bad_function_callv() #45
  unreachable

_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit160: ; preds = %bb.aj
  %i.kj = load ptr, ptr %i.v, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(9) %5) #46, !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal6HandleINS0_10JSReceiverEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit143, %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit160, %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread, %bb.aa
  br i1 %.0117, label %bb.am, label %.thread403

bb.am:                                            ; preds = %bb.al
  %i.kk = load i64, ptr %.sroa.0232.0, align 8    ; 2 uses
  %i.kl = add i64 %i.kk, -1
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = load atomic volatile i64, ptr %i.km monotonic, align 8
  %i.ko = add i64 %i.kn, 11
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = load atomic volatile i16, ptr %i.kp monotonic, align 2
  %i.kr = add i16 %i.kq, -2065
  %i.ks = icmp ult i16 %i.kr, 17
  br i1 %i.ks, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.kt = add i64 %i.kk, 31
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = load atomic volatile i64, ptr %i.ku monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %i.kv, ptr %4, align 8
  store i8 1, ptr %i.w, align 8
  %i.kw = load ptr, ptr %i.u, align 8
  %.not.i.i163 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i163, label %bb.ao, label %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit164

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt25__throw_bad_function_callv() #45
  unreachable

_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit164: ; preds = %bb.an
  %i.kx = load ptr, ptr %i.v, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(9) %4) #46, !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.thread

bb.ap:                                            ; preds = %bb.y
  %i.ky = load ptr, ptr %i.v, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(9) %6) #46, !inline_history !109
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.hg, label %.thread, label %.thread403

.thread403:                                       ; preds = %bb.al, %bb.ap
  %i.kz = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE(ptr noundef %0, ptr nonnull %.sroa.0244.0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %.thread

.thread:                                          ; preds = %bb.am, %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit164, %.thread403, %bb.ap
  %i.la = phi i1 [ true, %bb.ap ], [ %i.kz, %.thread403 ], [ true, %_ZNKSt8functionIFvN2v88internal7Isolate14PromiseHandlerEEEclES3_.exit164 ], [ true, %bb.am ] ; 2 uses
  %i.lb = or i1 %.0111431, %i.la
  %i.lc = xor i1 %i.la, true
  %i.ld = or i1 %.0114430, %i.lc
  br label %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.aq:                                            ; preds = %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.le = load i64, ptr %.sroa.0251.0427, align 8
  %i.lf = add i64 %i.le, 31
  %i.lg = inttoptr i64 %i.lf to ptr
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_119TryGetWasmSuspenderEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef %0, i64 %i.lh) ; 2 uses
  %.not410 = icmp eq ptr %i.li, null
  br i1 %.not410, label %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = add i64 %i.lj, 23
  %i.ll = inttoptr i64 %i.lk to ptr
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.lo = load ptr, ptr %i.i, align 8
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.as, label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.as:                                            ; preds = %bb.ar
  %i.lq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ar, %bb.as
  %.0.i.i137 = phi ptr [ %i.lq, %bb.as ], [ %i.ln, %bb.ar ] ; 3 uses
  %i.lr = ptrtoint ptr %.0.i.i137 to i64
  %i.ls = add i64 %i.lr, 8
  %i.lt = inttoptr i64 %i.ls to ptr
  store ptr %i.lt, ptr %i.g, align 8
  store i64 %i.lm, ptr %.0.i.i137, align 8
  %i.lu = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE(ptr noundef %0, ptr nonnull %.0.i.i137, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.lv = or i1 %.0111431, %i.lu
  %i.lw = xor i1 %i.lu, true
  %i.lx = or i1 %.0114430, %i.lw
  br label %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.aq, %bb.i, %.thread
  %.2116 = phi i1 [ %i.ld, %.thread ], [ %.0114430, %bb.i ], [ %i.lx, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0114430, %bb.aq ] ; 2 uses
  %.2113 = phi i1 [ %i.lb, %.thread ], [ %.0111431, %bb.i ], [ %i.lv, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.0111431, %bb.aq ] ; 2 uses
  %i.ly = load i64, ptr %.sroa.0251.0427, align 8
  %i.lz = add i64 %i.ly, 15
  %i.ma = inttoptr i64 %i.lz to ptr
  %i.mb = load i64, ptr %i.ma, align 8            ; 3 uses
  %i.mc = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.md = load ptr, ptr %i.i, align 8
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %bb.at, label %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit, !prof !7

bb.at:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.mf = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.at
  %.0.i.i136 = phi ptr [ %i.mf, %bb.at ], [ %i.mc, %_ZNK2v88internal11MaybeHandleINS0_19WasmSuspenderObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ] ; 3 uses
  %i.mg = ptrtoint ptr %.0.i.i136 to i64
  %i.mh = add i64 %i.mg, 8
  %i.mi = inttoptr i64 %i.mh to ptr
  store ptr %i.mi, ptr %i.g, align 8
  store i64 %i.mb, ptr %.0.i.i136, align 8
  %i.mj = and i64 %i.mb, 1
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %._crit_edge, label %bb.d, !llvm.loop !112

._crit_edge:                                      ; preds = %_ZN2v88internal6HandleINS0_5UnionIJNS0_15PromiseReactionENS0_3SmiEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit
  %not..2113 = xor i1 %.2113, true
  %i.ml = select i1 %not..2113, i1 true, i1 %.2116
  br i1 %i.ml, label %._crit_edge.thread, label %.thread408

._crit_edge.thread:                               ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %._crit_edge
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8016 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %.pre.pre.i = load i64, ptr %i.mm, align 8
  %i.mn = add i64 %.pre.pre.i, -1
  %i.mo = inttoptr i64 %i.mn to ptr               ; 3 uses
  %i.mp = load atomic volatile i64, ptr %i.mo monotonic, align 8
  %i.mq = add i64 %i.mp, 11
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = load atomic volatile i16, ptr %i.mr monotonic, align 2
  %i.mt = icmp eq i16 %i.ms, 128
  br i1 %i.mt, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %._crit_edge.thread
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %i.mv = load i32, ptr %i.mu, align 4
  %i.mw = trunc i32 %i.mv to i1
  br i1 %i.mw, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %._crit_edge.thread
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.mx = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.mx, ptr %3, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.my, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.na, align 4
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.mm, ptr %i.nd, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ni = ptrtoint ptr %1 to i64
  store i64 %i.ni, ptr %i.nh, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, i8 -1, i64 16, i1 false)
  %i.nk = load atomic volatile i64, ptr %i.mo monotonic, align 8
  %i.nl = add i64 %i.nk, 11
  %i.nm = inttoptr i64 %i.nl to ptr
  %i.nn = load atomic volatile i16, ptr %i.nm monotonic, align 2
  %i.no = and i16 %i.nn, -96
  %.not.i21.i.i.i = icmp eq i16 %i.no, 32
  br i1 %.not.i21.i.i.i, label %bb.au, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.au:                                            ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.np = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.nq = trunc nuw i8 %i.np to i1
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ns = load i8, ptr %i.nr, align 8, !range !13
  %i.nt = trunc nuw i8 %i.ns to i1
  %not..i.i.i23.i.i.i = xor i1 %i.nq, true
  %i.nu = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.nt
  br i1 %i.nu, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.nw = load i8, ptr %i.nv, align 8, !range !13, !noundef !14
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.av
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.nz = load ptr, ptr %i.ny, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.au
  %.pn.i.i26.i.i.i = phi ptr [ %i.nz, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.au ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.oa = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ob = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.mm) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ob, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.mm, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.nd, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #46
  %i.oc = load i32, ptr %i.my, align 4
  %.not.i = icmp eq i32 %i.oc, 0
  br i1 %.not.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.od = load ptr, ptr %i.nc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.ay:                                            ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.of = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %3, i32 noundef 0) #46
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.ax, %bb.ay
  %.sroa.07.0.i = phi ptr [ %i.of, %bb.ay ], [ %i.oe, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.og = load i64, ptr %.sroa.07.0.i, align 8    ; 2 uses
  %i.oh = trunc i64 %i.og to i1
  br i1 %i.oh, label %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit, label %.thread408

_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.oi = add nsw i64 %i.og, -1
  %i.oj = inttoptr i64 %i.oi to ptr
  %i.ok = load atomic volatile i64, ptr %i.oj monotonic, align 8
  %i.ol = add i64 %i.ok, 11
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = load atomic volatile i16, ptr %i.om monotonic, align 2
  %i.oo = icmp eq i16 %i.on, 2115
  br i1 %i.oo, label %bb.az, label %.thread408

bb.az:                                            ; preds = %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit
  %i.op = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_123WalkPromiseTreeInternalEPNS0_7IsolateENS0_12DirectHandleINS0_9JSPromiseEEERKSt8functionIFvNS2_14PromiseHandlerEEE(ptr noundef %0, ptr nonnull %.sroa.07.0.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %.thread408

.thread408:                                       ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit, %bb.az, %._crit_edge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %i.op, %bb.az ], [ true, %._crit_edge ], [ false, %_ZN2v88internal11IsJSPromiseENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7Isolate41SetCaptureStackTraceForUncaughtExceptionsEbiNS_10StackTrace17StackTraceOptionsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64320) initializes((58792, 58793), (58796, 58804)) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 58792
  store i8 %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 58796
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 58800
  store i32 %3, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal7Isolate47get_capture_stack_trace_for_uncaught_exceptionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64320) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 58792
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7Isolate35SetAbortOnUncaughtExceptionCallbackEPFbPNS_7IsolateEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64320) initializes((63944, 63952)) %0, ptr noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63944
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate26InstallConditionalFeaturesENS0_12DirectHandleINS0_13NativeContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.537", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %2, align 8
  %i.b = call i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 5 uses
  %i.i = ptrtoint ptr %.0.i.i to i64
  %i.j = add i64 %i.i, 8
  %i.k = inttoptr i64 %i.j to ptr
  store ptr %i.k, ptr %i.c, align 8
  store i64 %i.b, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.l = load i64, ptr %.0.i.i, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 15
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 134217728
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread36, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7344 ; 2 uses
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 28), align 4, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 59704
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread36, label %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit

_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit: ; preds = %bb.d
  %i.y = call noundef zeroext i1 %i.x(ptr nonnull %1) #46, !inline_history !113
  br i1 %i.y, label %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread, label %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread36

_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread: ; preds = %bb.c, %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit
  %i.z = call i16 @_ZN2v88internal8JSObject20HasRealNamedPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE(ptr noundef nonnull %0, ptr nonnull %.0.i.i, ptr nonnull %i.t) #46
  %i.aa = and i16 %i.z, 257
  %.not38 = icmp eq i16 %i.aa, 1
  br i1 %.not38, label %bb.e, label %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread36

bb.e:                                             ; preds = %_ZN2v88internal7Isolate37IsSharedArrayBufferConstructorEnabledENS0_12DirectHandleINS0_13NativeContextEEE.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i.i.i9 = load i64, ptr %i.ab, align 8
  %i.ac = add i64 %.sroa.0.0.copyload.i.i.i9, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 31
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, 1647
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i64, ptr %i.aj monotonic, align 8
  %i.al = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.e, align 8
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZN2v88internal7Isolate23shared_array_buffer_funEv.exit, !prof !7
end_hunk_3
begin_hunk_4_@_ZN2v88internal7Isolate38RunHostImportModuleDynamicallyCallbackENS0_17MaybeDirectHandleINS0_6ScriptEEENS0_6HandleINS0_6ObjectEEENS_17ModuleImportPhaseENS2_IS6_EE:bb.a
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit82:       ; preds = %bb.u
  %i.dc = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dd = load ptr, ptr %i.j, align 8
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %bb.w, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63, !prof !7

bb.w:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit82
  %i.df = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63: ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit82, %bb.w
  %.0.i.i62 = phi ptr [ %i.df, %bb.w ], [ %i.dc, %_ZN2v88internal7Isolate9exceptionEv.exit82 ] ; 3 uses
  %i.dg = ptrtoint ptr %.0.i.i62 to i64
  %i.dh = add i64 %i.dg, 8
  %i.di = inttoptr i64 %i.dh to ptr
  store ptr %i.di, ptr %i.h, align 8
  store i64 %i.cy, ptr %.0.i.i62, align 8
  %i.dj = load i64, ptr %i.da, align 8
  store i64 %i.dj, ptr %i.cv, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not.i83 = icmp eq ptr %i.dl, null
  br i1 %.not.i83, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit84, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63
  tail call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.dl) #46
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit84

_ZN2v88internal7Isolate15clear_exceptionEv.exit84: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit63, %bb.x
  %i.dm = tail call ptr @_ZN2v87Promise8Resolver3NewENS_5LocalINS_7ContextEEE(ptr nonnull %.0.i.i.i66) #46 ; 3 uses
  %.not.i85 = icmp eq ptr %i.dm, null
  br i1 %.not.i85, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal7Isolate15clear_exceptionEv.exit84
  %i.dn = tail call i16 @_ZN2v87Promise8Resolver6RejectENS_5LocalINS_7ContextEEENS2_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.dm, ptr nonnull %.0.i.i.i66, ptr nonnull %.0.i.i62) #46
  %i.do = trunc i16 %i.dn to i1
  br i1 %i.do, label %bb.z, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit

bb.z:                                             ; preds = %bb.y
  %i.dp = tail call ptr @_ZN2v87Promise8Resolver10GetPromiseEv(ptr noundef nonnull align 1 dereferenceable(1) %i.dm) #46
  br label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit

bb.aa:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread155
  %i.dq = icmp eq ptr %1, null
  br i1 %i.dq, label %bb.ab, label %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.ae

_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit: ; preds = %bb.aa
  %i.dt = load i64, ptr %1, align 8
  %i.du = add i64 %i.dt, 135
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dy = load ptr, ptr %i.j, align 8
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.ac, label %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.ac:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit
  %i.ea = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit, %bb.ac
  %.0.i.i.i = phi ptr [ %i.ea, %bb.ac ], [ %i.dx, %_ZNK2v88internal11MaybeHandleINS0_6ScriptEE5CheckEv.exit ] ; 3 uses
  %i.eb = ptrtoint ptr %.0.i.i.i to i64
  %i.ec = add i64 %i.eb, 8
  %i.ed = inttoptr i64 %i.ec to ptr
  store ptr %i.ed, ptr %i.h, align 8
  store i64 %i.dw, ptr %.0.i.i.i, align 8
  %i.ee = load i64, ptr %1, align 8
  %i.ef = add i64 %i.ee, 15
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ej = load ptr, ptr %i.j, align 8
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %bb.ad, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65, !prof !7

bb.ad:                                            ; preds = %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.el = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65: ; preds = %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.ad
  %.0.i.i64 = phi ptr [ %i.el, %bb.ad ], [ %i.ei, %_ZN2v88internal12DirectHandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.em = ptrtoint ptr %.0.i.i64 to i64
  %i.en = add i64 %i.em, 8
  %i.eo = inttoptr i64 %i.en to ptr
  store ptr %i.eo, ptr %i.h, align 8
  store i64 %i.eh, ptr %.0.i.i64, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65, %bb.ab
  %.sroa.0110.0 = phi ptr [ %i.ds, %bb.ab ], [ %.0.i.i64, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65 ] ; 3 uses
  %.sroa.0111.0 = phi ptr [ %i.dr, %bb.ab ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit65 ] ; 3 uses
  switch i32 %3, label %bb.an [
    i32 1, label %bb.af
    i32 0, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 59168
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not58 = icmp eq ptr %i.eq, null
  br i1 %.not58, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.er = tail call ptr %i.eq(ptr nonnull %.0.i.i.i66, ptr nonnull %.sroa.0111.0, ptr nonnull %.sroa.0110.0, ptr nonnull %.sroa.07.0.i153157, i32 noundef 1, ptr nonnull %i.cu) #46 ; 2 uses
  %.not163 = icmp eq ptr %i.er, null
  br i1 %.not163, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 59160
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call ptr %i.et(ptr nonnull %.0.i.i.i66, ptr nonnull %.sroa.0111.0, ptr nonnull %.sroa.0110.0, ptr nonnull %.sroa.07.0.i153157, ptr nonnull %i.cu) #46 ; 2 uses
  %.not164 = icmp eq ptr %i.eu, null
  br i1 %.not164, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.ao

bb.ai:                                            ; preds = %bb.ae
  %i.ev = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 14), align 2, !range !13, !noundef !14
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ak, label %bb.aj, !prof !5

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.73) #45
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 59168
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ey, null
  br i1 %.not, label %bb.al, label %bb.am, !prof !7

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #45
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ez = tail call ptr %i.ey(ptr nonnull %.0.i.i.i66, ptr nonnull %.sroa.0111.0, ptr nonnull %.sroa.0110.0, ptr nonnull %.sroa.07.0.i153157, i32 noundef 0, ptr nonnull %i.cu) #46 ; 2 uses
  %.not162 = icmp eq ptr %i.ez, null
  br i1 %.not162, label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.ao

bb.an:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.36) #45
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.ag, %bb.ah
  %.sroa.0116.0 = phi ptr [ %i.eu, %bb.ah ], [ %i.er, %bb.ag ], [ %i.ez, %bb.am ]
  br label %_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_118NewRejectedPromiseEPNS0_7IsolateENS_5LocalINS_7ContextEEENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %bb.n, %_ZN2v88internal7Isolate15clear_exceptionEv.exit, %bb.s, %bb.t, %bb.ao, %bb.ag, %bb.ah, %bb.am, %bb.z, %bb.y, %_ZN2v88internal7Isolate15clear_exceptionEv.exit84, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.l, %bb.k, %_ZN2v88internal7Isolate14error_functionEv.exit70, %bb.g, %bb.f, %_ZN2v88internal7Isolate14error_functionEv.exit
  %.sroa.0128.3 = phi ptr [ null, %bb.k ], [ null, %bb.f ], [ null, %_ZN2v88internal7Isolate14error_functionEv.exit ], [ %i.aq, %bb.g ], [ null, %_ZN2v88internal7Isolate14error_functionEv.exit70 ], [ %i.bo, %bb.l ], [ null, %bb.s ], [ null, %bb.n ], [ null, %_ZN2v88internal7Isolate15clear_exceptionEv.exit ], [ %i.ct, %bb.t ], [ null, %bb.y ], [ null, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ null, %_ZN2v88internal7Isolate15clear_exceptionEv.exit84 ], [ %i.dp, %bb.z ], [ %.sroa.0116.0, %bb.ao ], [ null, %bb.ag ], [ null, %bb.ah ], [ null, %bb.am ]
  ret ptr %.sroa.0128.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal7Isolate31GetImportAttributesFromArgumentENS0_17MaybeDirectHandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %.not188 = icmp eq ptr %1, null
  br i1 %.not188, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %i.c = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10624
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.b, %i.g
  br i1 %i.h, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.b to i1
  br i1 %i.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55: ; preds = %bb.c
  %i.j = add nsw i64 %i.b, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp ugt i16 %i.o, 299
  br i1 %i.p, label %bb.d, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55.thread: ; preds = %bb.c, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55
  %i.q = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 116, ptr null, i64 0) #46
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.r, ptr noundef null) ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.d:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit55
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7800 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %.pre.pre.i = load i64, ptr %i.t, align 8
  %i.u = add i64 %.pre.pre.i, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 128
  br i1 %i.aa, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.d
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.ae = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.ae, ptr %4, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr null, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ap = ptrtoint ptr %1 to i64
  store i64 %i.ap, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 -1, i64 16, i1 false)
  %i.ar = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.as = add i64 %i.ar, 11
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i16, ptr %i.at monotonic, align 2
  %i.av = and i16 %i.au, -96
  %.not.i21.i.i.i = icmp eq i16 %i.av, 32
  br i1 %.not.i21.i.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.az = load i8, ptr %i.ay, align 8, !range !13
  %i.ba = trunc nuw i8 %i.az to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ax, true
  %i.bb = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ba
  br i1 %i.bb, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.bd = load i8, ptr %i.bc, align 8, !range !13, !noundef !14
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.e
  %.pn.i.i26.i.i.i = phi ptr [ %i.bg, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.e ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.bh = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.bi = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.t) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.bi, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.t, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.ak, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %4) #46
  %i.bj = load i32, ptr %i.af, align 4
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread, label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bk = load ptr, ptr %i.aj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 648
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %.critedge

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.bm = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %4, i1 noundef zeroext false) #46 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %.not189 = icmp eq ptr %i.bm, null
  br i1 %.not189, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread
  %.sroa.07.0.i172 = phi ptr [ %i.bl, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit.thread ], [ %i.bm, %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit ] ; 4 uses
  %i.bn = load i64, ptr %.sroa.07.0.i172, align 8 ; 3 uses
  %i.bo = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 10624
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = icmp eq i64 %i.bn, %i.bs
  br i1 %i.bt, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bu = trunc i64 %i.bn to i1
  br i1 %i.bu, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.h
  %i.bv = add nsw i64 %i.bn, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.by = add i64 %i.bx, 11
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load atomic volatile i16, ptr %i.bz monotonic, align 2
  %i.cb = icmp ugt i16 %i.ca, 299
  br i1 %i.cb, label %bb.i, label %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.h, %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cc = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 109, ptr null, i64 0) #46
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cd, ptr noundef null) ; 0 uses
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.i:                                             ; preds = %_ZN2v88internal12IsJSReceiverENS0_6TaggedINS0_6ObjectEEE.exit
  %i.cf = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef nonnull %0, ptr nonnull %.sroa.07.0.i172, i32 noundef 0, i32 noundef 18, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #46 ; 4 uses
  %.not190 = icmp eq ptr %i.cf, null
  br i1 %.not190, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8
  %sh.diff = lshr i64 %i.ck, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.cl = and i32 %tr.sh.diff, -2
  %i.cm = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.cl, i8 noundef zeroext 0, i8 0) #46 ; 4 uses
  %i.cn = load i64, ptr %i.cf, align 8
  %i.co = add i64 %i.cn, -1
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = lshr i64 %i.cr, 32
  %i.ct = trunc nuw i64 %i.cs to i32
  %.not193 = icmp sgt i32 %i.ct, 0
  br i1 %.not193, label %.lr.ph, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

.lr.ph:                                           ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.cx = phi ptr [ %i.cp, %.lr.ph ], [ %i.fh, %bb.x ]
  %.047195 = phi i1 [ false, %.lr.ph ], [ %i.du, %bb.x ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = load atomic volatile i64, ptr %i.cz monotonic, align 8
  %i.db = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dc = load ptr, ptr %i.cv, align 8
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.l, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.de = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.k, %bb.l
  %.0.i = phi ptr [ %i.de, %bb.l ], [ %i.db, %bb.k ] ; 4 uses
  %i.df = ptrtoint ptr %.0.i to i64
  %i.dg = add i64 %i.df, 8
  %i.dh = inttoptr i64 %i.dg to ptr
  store ptr %i.dh, ptr %i.cu, align 8
  store i64 %i.da, ptr %.0.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN2v88internal11PropertyKeyC2INS0_12DirectHandleEQsr3stdE16is_convertible_vIT_INS0_4NameEENS3_IS5_EEEEEPNS0_7IsolateES6_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0, ptr nonnull %.0.i)
  %i.di = load ptr, ptr %3, align 8
  %i.dj = load i64, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %0, ptr nonnull %.sroa.07.0.i172, ptr %i.di, i64 noundef %i.dj, ptr nonnull %.sroa.07.0.i172, i32 noundef 3)
  %i.dk = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %2, i1 noundef zeroext false) #46 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not191 = icmp eq ptr %i.dk, null
  br i1 %.not191, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = trunc i64 %i.dl to i1
  br i1 %i.dm, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.m
  %i.dn = add nsw i64 %i.dl, -1
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8
  %i.dq = add i64 %i.dp, 11
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load atomic volatile i16, ptr %i.dr monotonic, align 2
  %.fr = freeze i16 %i.ds
  %i.dt = icmp ugt i16 %.fr, 127
  %spec.select = select i1 %i.dt, i1 true, i1 %.047195
  br label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %bb.m
  %i.du = phi i1 [ true, %bb.m ], [ %spec.select, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ] ; 2 uses
  %i.dv = load i64, ptr %i.cm, align 8
  %i.dw = add i64 %i.dv, -1                       ; 3 uses
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load i64, ptr %.0.i, align 8            ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ea = shl i32 %indvars.iv.tr, 1
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eb ; 2 uses
  store atomic volatile i64 %i.dy, ptr %i.ec monotonic, align 8
  %i.ed = trunc i64 %i.dy to i1
  br i1 %i.ed, label %bb.n, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

end_hunk_4
begin_hunk_5_@_ZN2v88internal7Isolate32OnTerminationDuringRunMicrotasksEv:bb.a

_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i25 = phi ptr [ %i.ax, %bb.f ], [ %i.au, %bb.e ] ; 3 uses
  %i.ay = ptrtoint ptr %.0.i.i25 to i64
  %i.az = add i64 %i.ay, 8
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %i.g, align 8
  store i64 %i.at, ptr %.0.i.i25, align 8
  %.pre = add i64 %i.at, -1
  %.pre114 = inttoptr i64 %.pre to ptr
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.pre-phi115 = phi ptr [ %.pre114, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ], [ %i.al, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %.sroa.054.0 = phi ptr [ %.0.i.i25, %_ZN2v88internal6HandleINS0_5UnionIJNS0_10JSReceiverENS0_9UndefinedEEEEEC2ENS0_6TaggedIS5_EEPNS0_7IsolateE.exit ], [ %.0.i.i, %_ZN2v88internal6HandleINS0_10HeapObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 2 uses
  %i.bb = load atomic volatile i64, ptr %.pre-phi115 monotonic, align 8
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i16, ptr %i.bd monotonic, align 2
  %i.bf = icmp eq i16 %i.be, 2115
  br i1 %i.bf, label %bb.h, label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 63928 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = and i32 %i.bh, 2
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 59152
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(i32 noundef 3, ptr nonnull %.sroa.054.0, ptr nonnull %i.p) #46, !inline_history !280
  %.pre.i = load i32, ptr %i.bg, align 8
  br label %_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i

_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.bl = phi i32 [ %i.bh, %bb.h ], [ %.pre.i, %bb.i ]
  %i.bm = and i32 %i.bl, 4
  %.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i, label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i
  %i.bn = load i64, ptr %.sroa.054.0, align 8
  %i.bo = add i64 %i.bn, 31
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = and i64 %i.bq, 9223371968135299072
  %.not16.i = icmp eq i64 %i.br, 0
  br i1 %.not16.i, label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit, label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit.sink.split

bb.k:                                             ; preds = %_ZN2v88internal6HandleINS0_9MicrotaskEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bs = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.bt = add i64 %i.bs, 11
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i16, ptr %i.bu monotonic, align 2
  %i.bw = icmp eq i16 %i.bv, 136
  br i1 %i.bw, label %bb.l, label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit

bb.l:                                             ; preds = %bb.k
  %i.bx = add i64 %i.r, 23
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cb = load ptr, ptr %i.i, align 8
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.m, label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.cd = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i24 = phi ptr [ %i.cd, %bb.m ], [ %i.ca, %bb.l ] ; 4 uses
  %i.ce = ptrtoint ptr %.0.i.i24 to i64
  %i.cf = add i64 %i.ce, 8
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.cg, ptr %i.g, align 8
  store i64 %i.bz, ptr %.0.i.i24, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 63928 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %i.cj = and i32 %i.ci, 2
  %.not.i.i33 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i33, label %_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i35, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 59152
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(i32 noundef 3, ptr nonnull %.0.i.i24, ptr nonnull %i.p) #46, !inline_history !280
  %.pre.i34 = load i32, ptr %i.ch, align 8
  br label %_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i35

_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i35: ; preds = %bb.n, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cm = phi i32 [ %i.ci, %_ZN2v88internal6HandleINS0_9JSPromiseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %.pre.i34, %bb.n ]
  %i.cn = and i32 %i.cm, 4
  %.not.i36 = icmp eq i32 %i.cn, 0
  br i1 %.not.i36, label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i35
  %i.co = load i64, ptr %.0.i.i24, align 8
  %i.cp = add i64 %i.co, 31
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = and i64 %i.cr, 9223371968135299072
  %.not16.i37 = icmp eq i64 %i.cs, 0
  br i1 %.not16.i37, label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit, label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit.sink.split

_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit.sink.split: ; preds = %bb.o, %bb.j
  %.sink126 = phi i64 [ %i.bq, %bb.j ], [ %i.cr, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 63920
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %sum.shift.i.i38 = lshr i64 %.sink126, 36
  %i.cv = trunc nuw nsw i64 %sum.shift.i.i38 to i32
  %i.cw = and i32 %i.cv, 134217727
  %i.cx = load ptr, ptr %i.cu, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i32 noundef 5, i32 noundef %i.cw, i1 noundef zeroext false) #46
  br label %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit

_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit: ; preds = %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit.sink.split, %bb.o, %_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i35, %bb.g, %_ZN2v88internal7Isolate14RunPromiseHookENS_15PromiseHookTypeENS0_12DirectHandleINS0_9JSPromiseEEENS3_INS0_6ObjectEEE.exit.i, %bb.j, %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN2v88internal7Isolate32SetTerminationOnExternalTryCatchEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 40 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8
  %i.df = and i8 %i.de, -3
  store i8 %i.df, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load ptr, ptr %i.da, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.di, ptr %i.dk, align 8
  br label %_ZN2v88internal7Isolate32SetTerminationOnExternalTryCatchEv.exit

_ZN2v88internal7Isolate32SetTerminationOnExternalTryCatchEv.exit: ; preds = %_ZN2v88internal7Isolate14OnPromiseAfterENS0_12DirectHandleINS0_9JSPromiseEEE.exit, %bb.p
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7Isolate24SetPromiseRejectCallbackEPFvNS_20PromiseRejectMessageEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64320) initializes((59832, 59840)) %0, ptr noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59832
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate19ReportPromiseRejectENS0_12DirectHandleINS0_9JSPromiseEEENS2_INS0_6ObjectEEENS_18PromiseRejectEventE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64320) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::PromiseRejectMessage", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59832
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8
  tail call void %i.b(ptr noundef nonnull byval(%"class.v8::PromiseRejectMessage") align 8 %4) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal7Isolate21SetUseCounterCallbackEPFvPNS_7IsolateENS2_17UseCounterFeatureEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64320) initializes((63560, 63568)) %0, ptr noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63560
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate10CountUsageENS_4base6VectorIKNS_7Isolate17UseCounterFeatureEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56008
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8
  %i.e = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 63560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8
  %.idx = shl nuw nsw i64 %2, 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not715 = icmp eq i64 %2, 0
  br i1 %.not715, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  store i32 %i.m, ptr %i.l, align 8
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load i32, ptr %i.l, align 8
  %.pre17 = load ptr, ptr %i.j, align 8
  %i.p = add nsw i32 %.pre, -1
  %i.q = icmp eq ptr %.pre17, %i.k
  store ptr %i.i, ptr %i.h, align 8
  store i32 %i.p, ptr %i.l, align 8
  br i1 %i.q, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %._crit_edge
  store ptr %i.k, ptr %i.j, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.016 = phi ptr [ %i.t, %.lr.ph ], [ %1, %bb.c ] ; 2 uses
  %i.r = load i32, ptr %.016, align 4
  %i.s = load ptr, ptr %i.f, align 8
  tail call void %i.s(ptr noundef nonnull %0, i32 noundef %i.r) #46
  %i.t = getelementptr inbounds nuw i8, ptr %.016, i64 4 ; 2 uses
  %.not7 = icmp eq ptr %i.t, %i.o
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.critedge:                                        ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 55464
  tail call void @_ZN2v88internal4Heap23IncrementDeferredCountsENS_4base6VectorIKNS_7Isolate17UseCounterFeatureEEE(ptr noundef nonnull align 8 dereferenceable(2992) %i.u, ptr %1, i64 %2) #46
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %._crit_edge.thread, %._crit_edge, %bb.d, %bb.b, %.critedge
  ret void
}

declare void @_ZN2v88internal4Heap23IncrementDeferredCountsENS_4base6VectorIKNS_7Isolate17UseCounterFeatureEEE(ptr noundef nonnull align 8 dereferenceable(2992), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal7Isolate15GetNextScriptIdEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.b = tail call noundef i32 @_ZN2v88internal4Heap12NextScriptIdEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.a) #46
  ret i32 %i.b
}

declare noundef i32 @_ZN2v88internal4Heap12NextScriptIdEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN2v84base2OS19GetCurrentProcessIdEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate18AddDetachedContextENS0_12DirectHandleINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9664
  %i.i = tail call ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull %0, ptr nonnull %i.h, i32 0, ptr %1, i64 0) #46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 55464
  %i.k = load i64, ptr %i.i, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = add i64 %i.l, -55464
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 9664
  store i64 %i.k, ptr %i.o, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.p = load i32, ptr %i.e, align 8
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @_ZN2v88internal13WeakArrayList8AddToEndEPNS0_7IsolateENS0_6HandleIS1_EENS0_23MaybeObjectDirectHandleENS0_6TaggedINS0_3SmiEEE(ptr noundef, ptr, i32, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Isolate28CheckDetachedContextsAfterGCEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9664 ; 10 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 15
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = lshr i64 %i.l, 32                        ; 3 uses
  %i.n = trunc nuw i64 %i.m to i32                ; 8 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load i64, ptr %i.h, align 8
  %.pre129 = add i64 %.pre, 15
  %.pre130 = inttoptr i64 %.pre129 to ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi131 = phi ptr [ %.pre130, %._crit_edge.loopexit ], [ %i.k, %.preheader ]
  %.028.lcssa = phi i32 [ %.1, %._crit_edge.loopexit ], [ 0, %.preheader ] ; 4 uses
  %i.q = sext i32 %.028.lcssa to i64              ; 3 uses
  %i.r = shl nsw i64 %i.q, 32
  store atomic volatile i64 %i.r, ptr %.pre-phi131 monotonic, align 8
  %i.s = icmp slt i32 %.028.lcssa, %i.n
  br i1 %i.s, label %.lr.ph114.preheader, label %._crit_edge115

.lr.ph114.preheader:                              ; preds = %._crit_edge
  %i.t = sub i32 %i.n, %.028.lcssa
  %i.u = freeze i32 %i.t                          ; 2 uses
  %i.v = add i32 %i.u, -1
  %xtraiter = and i32 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph114.prol.loopexit, label %.lr.ph114.prol

.lr.ph114.prol:                                   ; preds = %.lr.ph114.preheader, %.lr.ph114.prol
  %indvars.iv122.prol = phi i64 [ %indvars.iv.next123.prol, %.lr.ph114.prol ], [ %i.q, %.lr.ph114.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph114.prol ], [ 0, %.lr.ph114.preheader ]
  %i.w = load i64, ptr %i.h, align 8
  %i.x = shl nsw i64 %indvars.iv122.prol, 3
  %i.y = add nsw i64 %i.x, 23
  %i.z = add i64 %i.y, %i.w
  %i.aa = inttoptr i64 %i.z to ptr
  store atomic volatile i64 0, ptr %i.aa monotonic, align 8
  %indvars.iv.next123.prol = add nsw i64 %indvars.iv122.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph114.prol.loopexit, label %.lr.ph114.prol, !llvm.loop !281

.lr.ph114.prol.loopexit:                          ; preds = %.lr.ph114.prol, %.lr.ph114.preheader
  %indvars.iv122.unr = phi i64 [ %i.q, %.lr.ph114.preheader ], [ %indvars.iv.next123.prol, %.lr.ph114.prol ]
  %i.ab = icmp ult i32 %i.v, 3
  br i1 %i.ab, label %._crit_edge115, label %.lr.ph114

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %.028111 = phi i32 [ %.1, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.ac = load i64, ptr %i.h, align 8             ; 6 uses
  %i.ad = shl i64 %indvars.iv, 3                  ; 2 uses
  %i.ae = add nuw i64 %i.ad, 23
  %i.af = add i64 %i.ac, %i.ae
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8 ; 5 uses
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 3
  br i1 %i.aj, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ak = add nuw nsw i64 %i.ad, 31
  %i.al = add i64 %i.ak, %i.ac
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8 ; 2 uses
  %i.ao = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.ao, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = shl i32 %.028111, 3                     ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = add nsw i64 %i.ar, 23
  %i.at = add i64 %i.as, %i.ac                    ; 3 uses
  %i.au = inttoptr i64 %i.at to ptr
  store atomic volatile i64 %i.ah, ptr %i.au monotonic, align 8
  %i.av = trunc i64 %i.ah to i1
  br i1 %i.av, label %bb.c, label %_ZN2v88internal13WeakArrayList3SetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.aw = and i64 %i.ah, -3                       ; 2 uses
  %i.ax = and i64 %i.ac, -262144
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 262144       ; 2 uses
  %i.ba = and i64 %i.az, 32
  %.not.i.i.i.i = icmp eq i64 %i.ba, 0
  %i.bb = and i64 %i.az, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not38.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bc = and i64 %i.ah, -262144
end_hunk_5
begin_hunk_6_@_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE:bb.a
bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.bb, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #46, !inline_history !336
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bn = load ptr, ptr %i.bb, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #46, !inline_history !336
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.m, %bb.n
  %.0.i21 = phi ptr [ %i.bm, %bb.m ], [ %i.bq, %bb.n ]
  %i.br = sext i32 %.0 to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %.0.i21, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i22
  br i1 %i.l, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.o
  %.01013.i.i24 = phi ptr [ %i.bx, %bb.o ], [ %i.bs, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i25 = phi ptr [ %i.by, %bb.o ], [ %.sroa.039.0141, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bu = load i16, ptr %.01013.i.i24, align 2
  %i.bv = load i8, ptr %.01112.i.i25, align 1
  %i.bw = zext i8 %i.bv to i16
  %.not.i.i26 = icmp eq i16 %i.bu, %i.bw
  br i1 %.not.i.i26, label %bb.o, label %.thread134

bb.o:                                             ; preds = %.lr.ph.i.i23
  %i.bx = getelementptr inbounds nuw i8, ptr %.01013.i.i24, i64 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01112.i.i25, i64 1
  %.not16.i.i28 = icmp ult ptr %i.bx, %i.bt
  br i1 %.not16.i.i28, label %.lr.ph.i.i23, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !334

bb.p:                                             ; preds = %bb.b, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add nsw i32 %.0, %i.cc
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.q:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.36) #45
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.p
  %.1 = phi i32 [ %i.cd, %bb.p ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.j, %bb.i
  %.0.i = phi ptr [ %i.au, %bb.i ], [ %i.ay, %bb.j ]
  %i.cg = sext i32 %.0 to i64
  %i.ch = getelementptr inbounds i8, ptr %.0.i, i64 %i.cg
  %bcmp.i.i19 = call i32 @bcmp(ptr %i.ch, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %i.ci = icmp eq i32 %bcmp.i.i19, 0
  br i1 %i.ci, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.o, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.d, %bb.f, %bb.c, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.039.0141, i64 %.sroa.speculated
  %i.ck = sub i64 %.sroa.6.0142, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %.thread134, label %bb.r

bb.r:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  store i32 0, ptr %i.a, align 4
  %i.cl = load i32, ptr %i.d, align 8
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.thread134, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit33

_ZN2v88internal18ConsStringIterator4NextEPi.exit33: ; preds = %bb.r
  %i.cn = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #46 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.thread134, label %.lr.ph, !llvm.loop !337

.thread134:                                       ; preds = %bb.r, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.c, %bb.f, %.lr.ph.i.i23, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ false, %.lr.ph.i.i23 ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ false, %.lr.ph.i.i ], [ true, %bb.r ], [ false, %bb.f ], [ false, %bb.c ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret i1 %.116
}

declare void @_ZN2v88internal18ConsStringIterator10InitializeENS0_6TaggedINS0_10ConsStringEEEi(ptr noundef nonnull align 8 dereferenceable(276), i64, i32 noundef) local_unnamed_addr #3

declare i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes21IsRegisterOperandTypeENS1_11OperandTypeE(i8 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes25IsRegisterListOperandTypeENS1_11OperandTypeE(i8 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator23GetRegisterCountOperandEi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_119TryGetWasmSuspenderEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = add i16 %i.f, -2065
  %i.h = icmp ult i16 %i.g, 17
  br i1 %i.h, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 10688
  %i.k = add i64 %1, 23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i32, ptr %i.l monotonic, align 4
  %i.n = lshr i32 %i.m, 8
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = zext nneg i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = icmp ugt i64 %i.r, -281474976710657
  br i1 %i.s, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.112) #45
  unreachable

_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load atomic i64, ptr %i.t monotonic, align 8
  %i.v = lshr i64 %i.u, 16
  %i.w = or i64 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 58992
  %i.y = tail call i64 @_ZN2v88internal8Builtins4codeENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i32 noundef 704) #46
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit
  %i.aa = add i64 %1, 31
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 15
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZNK2v88internal18SharedFunctionInfo17HasWasmResumeDataEv.exit, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

_ZNK2v88internal18SharedFunctionInfo17HasWasmResumeDataEv.exit: ; preds = %bb.d
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 295
  br i1 %i.an, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

bb.e:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo17HasWasmResumeDataEv.exit
  %i.ao = load atomic volatile i64, ptr %i.ae acquire, align 8
  %i.ap = add i64 %i.ao, 7
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i64, ptr %i.aq acquire, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.ax, %bb.f ], [ %i.at, %bb.e ] ; 3 uses
  %i.ay = ptrtoint ptr %.0.i.i to i64
  %i.az = add i64 %i.ay, 8
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %i.as, align 8
  store i64 %i.ar, ptr %.0.i.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread

_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit.thread: ; preds = %bb.d, %_ZNK2v88internal18SharedFunctionInfo17HasWasmResumeDataEv.exit, %bb.a, %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit, %bb.g
  %.sroa.019.1 = phi ptr [ %.0.i.i, %bb.g ], [ null, %bb.a ], [ null, %_ZN2v88internal12_GLOBAL__N_117IsBuiltinFunctionEPNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEENS0_7BuiltinE.exit ], [ null, %_ZNK2v88internal18SharedFunctionInfo17HasWasmResumeDataEv.exit ], [ null, %bb.d ]
  ret ptr %.sroa.019.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_127ReceiverIsForwardingHandlerEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull %0, ptr %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8008 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %.pre.pre.i = load i64, ptr %i.a, align 8
  %i.b = add i64 %.pre.pre.i, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 128
  br i1 %i.h, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.l = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.l, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ac, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !13, !noundef !14
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ag = load i8, ptr %i.af, align 8, !range !13
  %i.ah = trunc nuw i8 %i.ag to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ae, true
  %i.ai = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ak = load i8, ptr %i.aj, align 8, !range !13, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #49
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.an = load ptr, ptr %i.am, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.an, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ao = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.ap = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.a) #46
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.ap, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.a, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.r, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %2) #46
  %i.aq = load i32, ptr %i.m, align 4
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.at = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %2, i32 noundef 0) #46
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.at, %bb.f ], [ %i.as, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.au = load i64, ptr %.sroa.07.0.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp ne i64 %i.au, %i.aw
  ret i1 %i.ax
}

declare i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v823ExternalMemoryAccounterD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #12

declare i64 @_ZN2v84base5Stack13GetStackStartEv() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v88internal4wasm11StackMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #12

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #36

declare void @_ZN2v88internal14ThreadLocalTop5ClearEv(ptr noundef nonnull align 8 dereferenceable(232)) local_unnamed_addr #3

declare void @_ZN2v88internal19AccountingAllocatorC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal26TracingAccountingAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(488) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2v88internal26TracingAccountingAllocatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #48
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKN2v88internal4ZoneES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i.i.i, align 8      ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #48
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKN2v88internal4ZoneES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !338

_ZNSt10_HashtableIPKN2v88internal4ZoneES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = shl i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.w, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt13unordered_setIPKN2v88internal4ZoneESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKN2v88internal4ZoneES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = shl i64 %i.aa, 3
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #48
  br label %_ZNSt13unordered_setIPKN2v88internal4ZoneESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev.exit

_ZNSt13unordered_setIPKN2v88internal4ZoneESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN2v88internal4ZoneES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #46
  tail call void @_ZN2v88internal19AccountingAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal26TracingAccountingAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(488) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal26TracingAccountingAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(488) %0) #46
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 488) #48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal26TracingAccountingAllocator21TraceZoneCreationImplEPKNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store ptr %i.c, ptr %2, align 8
  %i.d = call { ptr, i8 } @_ZNSt10_HashtableIPKN2v88internal4ZoneES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = atomicrmw add ptr %i.e, i64 1 seq_cst, align 8 ; 0 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal26TracingAccountingAllocator24TraceZoneDestructionImplEPKNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8
end_hunk_6
