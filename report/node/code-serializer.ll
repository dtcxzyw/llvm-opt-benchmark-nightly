Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/code-serializer?download=true
inline.NumInlined: 2045
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2v88internal14CodeSerializer9SerializeEPNS0_7IsolateENS0_6HandleINS0_18SharedFunctionInfoEEE:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i8 noundef signext 88, ptr noundef nonnull %.033, ptr noundef nonnull @.str.1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #18, !inline_history !0
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not.i44 = icmp eq ptr %i.as, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.i
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #18, !inline_history !1
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.aw = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i44.1 = icmp eq ptr %i.aw, null
  br i1 %.not.i44.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #18, !inline_history !1
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.033, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.1, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.aq, ptr %i.bc, align 8
  store ptr %i.ba, ptr %5, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.h
  %i.bd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1590), align 2, !range !55, !noundef !56
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = call i64 @_ZN2v84base9TimeTicks3NowEv() #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.078.0 = phi i64 [ %i.bf, %bb.k ], [ 0, %bb.j ]
  %i.bg = load i64, ptr %1, align 8
  %i.bh = add i64 %i.bg, 39
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load atomic volatile i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 6 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.m, label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.bp = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.l, %bb.m
  %.0.i.i = phi ptr [ %i.bp, %bb.m ], [ %i.bl, %bb.l ] ; 7 uses
  %i.bq = ptrtoint ptr %.0.i.i to i64
  %i.br = add i64 %i.bq, 8
  %i.bs = inttoptr i64 %i.br to ptr
  store ptr %i.bs, ptr %i.bk, align 8
  store i64 %i.bj, ptr %.0.i.i, align 8
  %i.bt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1442), align 2, !range !55, !noundef !56
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.2) #18
  %i.bv = load i64, ptr %.0.i.i, align 8
  %i.bw = add i64 %i.bv, 15
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal10ShortPrintENS0_6TaggedINS0_6ObjectEEEP8_IO_FILE(i64 %i.by, ptr noundef %i.bz) #18
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.3) #18
  %.pre = load i64, ptr %.0.i.i, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ca = phi i64 [ %.pre, %bb.n ], [ %i.bj, %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i64 %i.ca, ptr %6, align 8
  %i.cb = call noundef zeroext i1 @_ZN2v88internal6Script17ContainsAsmModuleEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.cb, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %.0.i.i, align 8
  %i.cd = add i64 %i.cc, 7
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.ch = load ptr, ptr %i.bm, align 8
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !54

bb.q:                                             ; preds = %bb.p
  %i.cj = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.p, %bb.q
  %.0.i.i41 = phi ptr [ %i.cj, %bb.q ], [ %i.cg, %bb.p ] ; 4 uses
  %i.ck = ptrtoint ptr %.0.i.i41 to i64
  %i.cl = add i64 %i.ck, 8
  %i.cm = inttoptr i64 %i.cl to ptr
  store ptr %i.cm, ptr %i.bk, align 8
  store i64 %i.cf, ptr %.0.i.i41, align 8
  %i.cn = load i64, ptr %.0.i.i, align 8
  %i.co = add i64 %i.cn, 71
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load i64, ptr %i.cp, align 8            ; 3 uses
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %_ZNK2v88internal6Script10is_wrappedEv.exit, label %_ZNK2v88internal6Script10is_wrappedEv.exit.thread

_ZNK2v88internal6Script10is_wrappedEv.exit:       ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cs = add nsw i64 %i.cq, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = load atomic volatile i64, ptr %i.ct monotonic, align 8
  %i.cv = add i64 %i.cu, 11
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load atomic volatile i16, ptr %i.cw monotonic, align 2
  %i.cy = add i16 %i.cx, -205
  %i.cz = icmp ult i16 %i.cy, 13
  br i1 %i.cz, label %bb.r, label %_ZNK2v88internal6Script10is_wrappedEv.exit.thread

bb.r:                                             ; preds = %_ZNK2v88internal6Script10is_wrappedEv.exit
  %i.da = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.db = load ptr, ptr %i.bm, align 8
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.s, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !54

bb.s:                                             ; preds = %bb.r
  %i.dd = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.r, %bb.s
  %.0.i.i42 = phi ptr [ %i.dd, %bb.s ], [ %i.da, %bb.r ] ; 2 uses
  %i.de = ptrtoint ptr %.0.i.i42 to i64
  %i.df = add i64 %i.de, 8
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr %i.dg, ptr %i.bk, align 8
  store i64 %i.cq, ptr %.0.i.i42, align 8
  br label %_ZNK2v88internal6Script10is_wrappedEv.exit.thread

_ZNK2v88internal6Script10is_wrappedEv.exit.thread: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZNK2v88internal6Script10is_wrappedEv.exit
  %.sroa.065.0 = phi i32 [ 536870912, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ 0, %_ZNK2v88internal6Script10is_wrappedEv.exit ], [ 0, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  %i.dh = load ptr, ptr %i.bk, align 8
  %i.di = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.dm = load i64, ptr %.0.i.i, align 8
  %i.dn = add i64 %i.dm, 103
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i64, ptr %i.do monotonic, align 8
  %i.dq = load i64, ptr %.0.i.i41, align 8
  %i.dr = add i64 %i.dq, -1
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, -1610612737
  %sh.diff = lshr i64 %i.dp, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.dw = and i32 %tr.sh.diff, 1073741824
  %i.dx = or disjoint i32 %i.dw, %.sroa.065.0
  %i.dy = or disjoint i32 %i.dx, %i.dv
  call void @_ZN2v88internal10SerializerC2EPNS0_7IsolateENS_4base5FlagsINS0_8Snapshot14SerializerFlagEiiEE(ptr noundef nonnull align 8 dereferenceable(604) %7, ptr noundef nonnull %0, i32 0) #18
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88internal14CodeSerializerE, i64 16), ptr %7, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 600
  store i32 %i.dy, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.eb = load i64, ptr %.0.i.i41, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 256 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8            ; 2 uses
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 8
  %i.ef = shl i32 %i.ed, 2
  %i.eg = or disjoint i32 %i.ef, 1
  %i.eh = call noundef ptr @_ZN2v88internal15IdentityMapBase11InsertEntryEm(ptr noundef nonnull align 8 dereferenceable(132) %i.ea, i64 noundef %i.eb) #18
  store i32 %i.eg, ptr %i.eh, align 4
  %i.ei = ptrtoint ptr %1 to i64
  %i.ej = load ptr, ptr %7, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(604) %7, i32 noundef 10, ptr noundef null, i64 %i.ei) #18, !inline_history !68
  call void @_ZN2v88internal10Serializer24SerializeDeferredObjectsEv(ptr noundef nonnull align 8 dereferenceable(604) %7) #18
  call void @_ZN2v88internal10Serializer3PadEi(ptr noundef nonnull align 8 dereferenceable(604) %7, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN2v88internal18SerializedCodeDataC2EPKSt6vectorIhSaIhEEPKNS0_14CodeSerializerE(ptr noundef nonnull align 8 dereferenceable(21) %2, ptr noundef nonnull %i.em, ptr noundef nonnull align 8 dereferenceable(604) %7)
  %i.en = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = load i32, ptr %i.eq, align 8
  call void @_ZN2v88internal17AlignedCachedDataC2EPKhi(ptr noundef nonnull align 8 dereferenceable(20) %i.en, ptr noundef %i.ep, i32 noundef %i.er)
  %9 = load i8, ptr %i.en, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.es = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1590), align 2, !range !55, !noundef !56
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK2v88internal6Script10is_wrappedEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.eu = call i64 @_ZN2v84base9TimeTicks3NowEv() #18
  %i.ev = sub nsw i64 %i.eu, %.sroa.078.0
  store i64 %i.ev, ptr %8, align 8
  %i.ew = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ey = load i32, ptr %i.ex, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.4, i32 noundef %i.ey, double noundef %i.ew) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK2v88internal6Script10is_wrappedEv.exit.thread
  %i.ez = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.fd = load i32, ptr %i.fc, align 8
  call void @_ZN2v814ScriptCompiler10CachedDataC1EPKhiNS1_12BufferPolicyE(ptr noundef nonnull align 8 dereferenceable(20) %i.ez, ptr noundef %i.fb, i32 noundef %i.fd, i32 noundef 1) #18
  %10 = and i8 %9, -2
  store i8 %10, ptr %i.en, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 24) #20
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88internal14CodeSerializerE, i64 16), ptr %7, align 8
  call void @_ZN2v88internal10Serializer16OutputStatisticsEPKc(ptr noundef nonnull align 8 dereferenceable(604) %7, ptr noundef nonnull @.str.20) #18, !inline_history !57
  call void @_ZN2v88internal10SerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(604) %7) #18, !inline_history !57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  store ptr %i.dh, ptr %i.bk, align 8
  %i.fe = load i32, ptr %i.dj, align 8
  %i.ff = add nsw i32 %i.fe, -1
  store i32 %i.ff, ptr %i.dj, align 8
  %i.fg = load ptr, ptr %i.bm, align 8
  %.not.i = icmp eq ptr %i.fg, %i.di
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.v, !prof !58

bb.v:                                             ; preds = %bb.u
  store ptr %i.di, ptr %i.bm, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #18
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.u, %bb.v, %bb.o
  %.0 = phi ptr [ null, %bb.o ], [ %i.ez, %bb.v ], [ %i.ez, %bb.u ]
  %i.fh = load ptr, ptr %5, align 8
  %.not.i51 = icmp eq ptr %i.fh, null
  br i1 %.not.i51, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load atomic volatile i8, ptr %i.fj monotonic, align 1
  %.not1.i = icmp eq i8 %i.fk, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fl = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #18 ; 2 uses
  %i.fm = load ptr, ptr %i.fi, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = load ptr, ptr %i.fl, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef %i.fm, ptr noundef %i.fo, i64 noundef %i.fq) #18, !inline_history !2
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.fu = load ptr, ptr %i.k, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load atomic ptr, ptr %i.fv seq_cst, align 8
  %.not.i52 = icmp eq ptr %i.fw, null
  br i1 %.not.i52, label %_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  call void @_ZN2v88internal25NestedTimedHistogramScope12StopInternalEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i

_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i: ; preds = %bb.y, %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit
  %i.fx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1836), align 4, !range !55, !noundef !56
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.z, label %_ZN2v88internal25NestedTimedHistogramScopeD2Ev.exit, !prof !54

bb.z:                                             ; preds = %_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i
  %i.fz = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8624
  %i.ge = load ptr, ptr %i.gd, align 8
  call preserve_mostcc void @_ZN2v88internal12V8FileLogger23CallEventLoggerInternalEPNS0_7IsolateEPKcNS_14LogEventStatusEb(ptr noundef %i.ge, ptr noundef %i.ga, i32 noundef 1, i1 noundef zeroext true)
  br label %_ZN2v88internal25NestedTimedHistogramScopeD2Ev.exit

_ZN2v88internal25NestedTimedHistogramScopeD2Ev.exit: ; preds = %_ZN2v88internal25NestedTimedHistogramScope4StopEv.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %.0
}

declare noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() local_unnamed_addr #2

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN2v88internal10ShortPrintENS0_6TaggedINS0_6ObjectEEEP8_IO_FILE(i64, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6Script17ContainsAsmModuleEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN2v88internal18SerializedCodeData10SourceHashENS0_12DirectHandleINS0_6StringEEENS2_INS0_10FixedArrayEEENS_19ScriptOriginOptionsE(ptr nofree readonly captures(none) %0, ptr nofree readnone captures(address_is_null) %1, i32 %2) local_unnamed_addr #3 align 2 !guid !69 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq ptr %1, null
  %i.f = and i32 %i.e, -1610612737
  %i.g = select i1 %.not, i32 0, i32 536870912
  %i.h = shl i32 %2, 27
  %i.i = and i32 %i.h, 1073741824
  %i.j = or disjoint i32 %i.i, %i.g
  %i.k = or disjoint i32 %i.j, %i.f
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noalias noundef nonnull ptr @_ZN2v88internal14CodeSerializer27SerializeSharedFunctionInfoENS0_6HandleINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 8 dereferenceable(604) %0, ptr %1) local_unnamed_addr #0 align 2 !guid !70 {
_ZN2v88internal14SerializedDataD2Ev.exit:
  %2 = alloca %"class.v8::internal::SerializedCodeData", align 8 ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 10, ptr noundef null, i64 %i.a) #18
  tail call void @_ZN2v88internal10Serializer24SerializeDeferredObjectsEv(ptr noundef nonnull align 8 dereferenceable(600) %0) #18
  tail call void @_ZN2v88internal10Serializer3PadEi(ptr noundef nonnull align 8 dereferenceable(600) %0, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN2v88internal18SerializedCodeDataC2EPKSt6vectorIhSaIhEEPKNS0_14CodeSerializerE(ptr noundef nonnull align 8 dereferenceable(21) %2, ptr noundef nonnull %i.e, ptr noundef nonnull %0)
  %i.f = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 8
  call void @_ZN2v88internal17AlignedCachedDataC2EPKhi(ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr noundef %i.h, i32 noundef %i.j)
  %i.k = load i8, ptr %i.f, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.f
}

declare noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN2v814ScriptCompiler10CachedDataC1EPKhiNS1_12BufferPolicyE(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14CodeSerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(604) %0) unnamed_addr #0 comdat align 2 !guid !71 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2v88internal14CodeSerializerE, i64 16), ptr %0, align 8
  tail call void @_ZN2v88internal10Serializer16OutputStatisticsEPKc(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull @.str.20) #18
  tail call void @_ZN2v88internal10SerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(600) %0) #18
  ret void
}

declare void @_ZN2v88internal10Serializer24SerializeDeferredObjectsEv(ptr noundef nonnull align 8 dereferenceable(600)) local_unnamed_addr #2

declare void @_ZN2v88internal10Serializer3PadEi(ptr noundef nonnull align 8 dereferenceable(600), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noalias noundef nonnull ptr @_ZN2v88internal18SerializedCodeData13GetScriptDataEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(21) initializes((20, 21)) %0) local_unnamed_addr #0 align 2 !guid !72 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  tail call void @_ZN2v88internal17AlignedCachedDataC2EPKhi(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef %i.c, i32 noundef %i.e)
  %i.f = load i8, ptr %i.a, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.h, align 4
  store ptr null, ptr %i.b, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14CodeSerializer19SerializeObjectImplENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(604) %0, ptr %1, i32 noundef %2) unnamed_addr #0 align 2 !guid !73 {
bb.a:
  %3 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %4 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %6 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %7 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %8 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %9 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %10 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  %11 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.535", align 8 ; 4 uses
  %12 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %16 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %17 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %18 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.575", align 8 ; 4 uses
  %19 = alloca %"class.v8::internal::ReadOnlyRoots", align 8 ; 4 uses
  %20 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.575", align 8 ; 4 uses
  %21 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.575", align 8 ; 4 uses
  %22 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.575", align 8 ; 4 uses
  %23 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.575", align 8 ; 4 uses
  %24 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.546", align 8 ; 5 uses
  %25 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.546", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 648
  %i.d = load i64, ptr %1, align 8                ; 5 uses
end_hunk_0
