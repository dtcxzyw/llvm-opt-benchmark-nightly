inline.NumInlined: 1708
inline.NumDeleted: 787
begin_hunk_0_@_ZNK2v88internal13ScopeIterator15VisitLocalScopeERKSt8functionIFbNS0_6HandleINS0_6StringEEENS3_INS0_6ObjectEEENS1_9ScopeTypeEEENS1_4ModeES8_:bb.a
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %.not100 = icmp eq ptr %i.c, null
  br i1 %.not100, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK2v88internal13ScopeIterator11VisitLocalsERKSt8functionIFbNS0_6HandleINS0_6StringEEENS3_INS0_6ObjectEEENS1_9ScopeTypeEEENS1_4ModeES8_(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3)
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %.critedge [
    i32 0, label %bb.d
    i32 1, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i32 @_ZNK2v88internal13ScopeIterator4TypeEv(ptr noundef nonnull align 8 dereferenceable(98) %0)
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %i.j = load i16, ptr %i.i, align 4
  %i.k = and i16 %i.j, 4096
  %.not102 = icmp eq i16 %i.k, 0
  br i1 %.not102, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef zeroext i1 @_ZNK2v88internal5Scope16HasThisReferenceEv(ptr noundef nonnull align 8 dereferenceable(124) %i.h) #17
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 7568
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 648
  %i.p = tail call noundef zeroext i1 @_ZNKSt8functionIFbN2v88internal6HandleINS1_6StringEEENS2_INS1_6ObjectEEENS1_13ScopeIterator9ScopeTypeEEEclES4_S6_S8_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %i.n, ptr nonnull %i.o, i32 noundef %3)
  br i1 %i.p, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = load i8, ptr %i.t, align 8
  %i.v = icmp eq i8 %i.u, 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 126
  %i.x = load i8, ptr %i.w, align 2
  %i.y = add i8 %i.x, -11
  %i.z = icmp ult i8 %i.y, 2
  %i.aa = select i1 %i.v, i1 %i.z, i1 false
  br i1 %i.aa, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge3, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = tail call ptr @_ZN2v88internal14FrameInspector13GetExpressionEi(ptr noundef nonnull align 8 dereferenceable(62) %i.r, i32 noundef %i.af) #17
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 928
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ah, %i.ak
  br i1 %i.al, label %..critedge3_crit_edge, label %.critedge

..critedge3_crit_edge:                            ; preds = %bb.k
  %.pre = load ptr, ptr %i.q, align 8
  br label %.critedge3

.critedge3:                                       ; preds = %..critedge3_crit_edge, %bb.j
  %i.am = phi ptr [ %.pre, %..critedge3_crit_edge ], [ %i.r, %bb.j ]
  %i.an = tail call noundef ptr @_ZN2v88internal14FrameInspector16javascript_frameEv(ptr noundef nonnull align 8 dereferenceable(62) %i.am) #17
  %i.ao = load ptr, ptr %i.q, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = tail call ptr @_ZN2v88internal9Accessors20FunctionGetArgumentsEPNS0_15JavaScriptFrameEi(ptr noundef %i.an, i32 noundef %i.aq) #17
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5376
  %i.au = tail call noundef zeroext i1 @_ZNKSt8functionIFbN2v88internal6HandleINS1_6StringEEENS2_INS1_6ObjectEEENS1_13ScopeIterator9ScopeTypeEEEclES4_S6_S8_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %i.at, ptr %i.ar, i32 noundef %3) ; 0 uses
  br label %.critedge

bb.l:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add i64 %i.ax, 15
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load ptr, ptr %0, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 560 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 568
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.m, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit48, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bb) #17
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit48

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit48: ; preds = %bb.l, %bb.m
  %.0.i47 = phi ptr [ %i.bh, %bb.m ], [ %i.bd, %bb.l ] ; 3 uses
  %i.bi = ptrtoint ptr %.0.i47 to i64
  %i.bj = add i64 %i.bi, 8
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %i.bc, align 8
  store i64 %i.ba, ptr %.0.i47, align 8
  %.sroa.016.0.copyload = load ptr, ptr %i.av, align 8
  %i.bl = tail call noundef zeroext i1 @_ZNK2v88internal13ScopeIterator18VisitContextLocalsERKSt8functionIFbNS0_6HandleINS0_6StringEEENS3_INS0_6ObjectEEENS1_9ScopeTypeEEENS0_12DirectHandleINS0_9ScopeInfoEEENSD_INS0_7ContextEEES8_(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %.0.i47, ptr %.sroa.016.0.copyload, i32 noundef %3)
  %i.bm = icmp ne i32 %2, 1
  %or.cond.not = or i1 %i.bm, %i.bl
  br i1 %or.cond.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit48, %bb.c
  %i.bn = tail call noundef zeroext i1 @_ZNK2v88internal13ScopeIterator10HasContextEv(ptr noundef nonnull align 8 dereferenceable(98) %0)
  br i1 %i.bn, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = add i64 %i.bq, 15
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load i64, ptr %i.bs, align 8
  store i64 %i.bt, ptr %7, align 8
  %i.bu = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23SloppyEvalCanExtendVarsEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %i.bu, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.bv = load ptr, ptr %i.bo, align 8
  %i.bw = load i64, ptr %i.bv, align 8
  store i64 %i.bw, ptr %8, align 8
  %i.bx = call i64 @_ZNK2v88internal7Context16extension_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %i.by = icmp eq i64 %i.bx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br i1 %i.by, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.bz = load ptr, ptr %i.bo, align 8
  %i.ca = load i64, ptr %i.bz, align 8
  store i64 %i.ca, ptr %9, align 8
  %i.cb = call i64 @_ZNK2v88internal7Context16extension_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  %i.cc = load ptr, ptr %0, align 8               ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 560 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 568
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = icmp eq ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.r, label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.r:                                             ; preds = %bb.q
  %i.ci = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cc) #17
  br label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.ci, %bb.r ], [ %i.ce, %bb.q ] ; 4 uses
  %i.cj = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.ck = add i64 %i.cj, 8
  %i.cl = inttoptr i64 %i.ck to ptr
  store ptr %i.cl, ptr %i.cd, align 8
  store i64 %i.cb, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = call ptr @_ZN2v88internal14KeyAccumulator7GetKeysEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_17KeyCollectionModeENS0_14PropertyFilterENS0_17GetKeysConversionEbb(ptr noundef %i.cm, ptr nonnull %.0.i.i, i32 noundef 0, i32 noundef 18, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #17 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.s, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader, !prof !5

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader: ; preds = %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cp = load i64, ptr %i.cn, align 8
  %i.cq = add i64 %i.cp, -1
  %i.cr = inttoptr i64 %i.cq to ptr               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = lshr i64 %i.ct, 32
  %i.cv = trunc nuw i64 %i.cu to i32
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.t

bb.s:                                             ; preds = %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #20
  unreachable

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit: ; preds = %_ZNKSt8functionIFbN2v88internal6HandleINS1_6StringEEENS2_INS1_6ObjectEEENS1_13ScopeIterator9ScopeTypeEEEclES4_S6_S8_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = load i64, ptr %i.cn, align 8
  %i.dl = add i64 %i.dk, -1
  %i.dm = inttoptr i64 %i.dl to ptr               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = ashr i64 %i.do, 32
  %i.dq = icmp slt i64 %indvars.iv.next, %i.dp
  br i1 %i.dq, label %bb.t, label %.critedge, !llvm.loop !27

bb.t:                                             ; preds = %.lr.ph, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit ] ; 2 uses
  %i.dr = phi ptr [ %i.cr, %.lr.ph ], [ %i.dm, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv
  %i.du = load atomic volatile i64, ptr %i.dt monotonic, align 8 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8               ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 560 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 568
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = icmp eq ptr %i.dx, %i.dz
  br i1 %i.ea, label %bb.u, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.eb = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.dv) #17
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ %i.eb, %bb.u ], [ %i.dx, %bb.t ] ; 5 uses
  %i.ec = ptrtoint ptr %.0.i to i64
  %i.ed = add i64 %i.ec, 8
  %i.ee = inttoptr i64 %i.ed to ptr
  store ptr %i.ee, ptr %i.dw, align 8
  store i64 %i.du, ptr %.0.i, align 8
  %i.ef = load ptr, ptr %0, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.eg = add i64 %i.du, -1
  %i.eh = inttoptr i64 %i.eg to ptr               ; 3 uses
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = icmp eq i16 %i.el, 128
  br i1 %i.em, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = trunc i32 %i.eo to i1
  br i1 %i.ep, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.eq = phi i32 [ 2, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.eq, ptr %6, align 8
  store i32 0, ptr %i.cx, align 4
  store i8 0, ptr %i.cy, align 8
  store i32 0, ptr %i.cz, align 4
  store i32 0, ptr %i.da, align 8
  store ptr %i.ef, ptr %i.db, align 8
  store ptr null, ptr %i.dd, align 8
  store ptr %.0.i.i, ptr %i.de, align 8
  store ptr null, ptr %i.df, align 8
  store i64 %i.cj, ptr %i.dg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 -1, i64 16, i1 false)
  %i.er = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.es = add i64 %i.er, 11
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load atomic volatile i16, ptr %i.et monotonic, align 2
  %i.ev = and i16 %i.eu, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ev, 32
  br i1 %.not.i21.i.i.i, label %bb.v, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.v:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ew = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !18, !noundef !19
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 55448
  %i.ez = load i8, ptr %i.ey, align 8, !range !18
  %i.fa = trunc nuw i8 %i.ez to i1
  %not..i.i.i23.i.i.i = xor i1 %i.ex, true
  %i.fb = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.fa
  br i1 %i.fb, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ef, i64 64088
  %i.fd = load i8, ptr %i.fc, align 8, !range !18, !noundef !19
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ef, i64 64080
  %i.fg = load ptr, ptr %i.ff, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.v
  %.pn.i.i26.i.i.i = phi ptr [ %i.fg, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %i.ef, %bb.v ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.fh = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.fi = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 1 dereferenceable(1) %i.ef, ptr nonnull %.0.i) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.fi, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %.0.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.dc, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %6) #17
  %i.fj = load i32, ptr %i.cx, align 4
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.fk = load ptr, ptr %i.db, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 648
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.z:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.fm = call ptr @_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_14LookupIteratorENS0_16AllocationPolicyE(ptr noundef nonnull %6, i32 noundef 0) #17
  br label %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.y, %bb.z
  %.sroa.07.0.i = phi ptr [ %i.fm, %bb.z ], [ %i.fl, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0.i, ptr %4, align 8
  store ptr %.sroa.07.0.i, ptr %5, align 8
  store i32 %3, ptr %i.a, align 4
  %i.fn = load ptr, ptr %i.di, align 8
  %.not.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i, label %bb.aa, label %_ZNKSt8functionIFbN2v88internal6HandleINS1_6StringEEENS2_INS1_6ObjectEEENS1_13ScopeIterator9ScopeTypeEEEclES4_S6_S8_.exit

bb.aa:                                            ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFbN2v88internal6HandleINS1_6StringEEENS2_INS1_6ObjectEEENS1_13ScopeIterator9ScopeTypeEEEclES4_S6_S8_.exit: ; preds = %_ZN2v88internal10JSReceiver15GetDataPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit
  %i.fo = load ptr, ptr %i.dj, align 8
  %i.fp = call noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17, !inline_history !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.fp, label %.critedge, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit

.critedge:                                        ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit, %_ZNKSt8functionIFbN2v88internal6HandleINS1_6StringEEENS2_INS1_6ObjectEEENS1_13ScopeIterator9ScopeTypeEEEclES4_S6_S8_.exit, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE5CheckEv.exit.preheader, %bb.k, %bb.d, %bb.h, %bb.i, %.critedge3, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit48, %bb.c, %bb.p, %bb.o, %bb.g, %bb.b, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal13ScopeIterator16VisitModuleScopeERKSt8functionIFbNS0_6HandleINS0_6StringEEENS3_INS0_6ObjectEEENS1_9ScopeTypeEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::Handle.24", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::Handle.22", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.30", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.v8::internal::Tagged.29", align 8 ; 7 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.30", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 15
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 560 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 568
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit23, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.i) #17
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit23

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit23: ; preds = %bb.a, %bb.b
  %.0.i22 = phi ptr [ %i.o, %bb.b ], [ %i.k, %bb.a ] ; 5 uses
  %i.p = ptrtoint ptr %.0.i22 to i64
  %i.q = add i64 %i.p, 8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %i.j, align 8
  store i64 %i.h, ptr %.0.i22, align 8
  %.sroa.015.0.copyload = load ptr, ptr %i.c, align 8
  %i.s = tail call noundef zeroext i1 @_ZNK2v88internal13ScopeIterator18VisitContextLocalsERKSt8functionIFbNS0_6HandleINS0_6StringEEENS3_INS0_6ObjectEEENS1_9ScopeTypeEEENS0_12DirectHandleINS0_9ScopeInfoEEENSD_INS0_7ContextEEES8_(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %.0.i22, ptr %.sroa.015.0.copyload, i32 noundef 8)
  br i1 %i.s, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.t = load i64, ptr %.0.i22, align 8
  store i64 %i.t, ptr %4, align 8
  %i.u = call noundef i32 @_ZNK2v88internal9ScopeInfo19ModuleVariableCountEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = load i64, ptr %i.v, align 8
  store i64 %i.w, ptr %5, align 8
  %i.x = call i64 @_ZNK2v88internal7Context6moduleEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 560 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 568
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.ae = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.y) #17
  br label %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %i.af = ptrtoint ptr %.0.i.i to i64
  %i.ag = add i64 %i.af, 8
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.z, align 8
  store i64 %i.x, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ai = icmp sgt i32 %i.u, 0
  br i1 %i.ai, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.02054 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.al = load i64, ptr %.0.i22, align 8
  store i64 %i.al, ptr %7, align 8
  call void @_ZN2v88internal9ScopeInfo14ModuleVariableEiPNS0_6TaggedINS0_6StringEEEPiPNS0_12VariableModeEPNS0_18InitializationFlagEPNS0_17MaybeAssignedFlagE(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %.02054, ptr noundef nonnull %6, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.sroa.07.0.copyload = load i64, ptr %6, align 8
  %i.am = call noundef zeroext i1 @_ZN2v88internal9ScopeInfo19VariableIsSyntheticENS0_6TaggedINS0_6StringEEE(i64 %.sroa.07.0.copyload) #17
  br i1 %i.am, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %.sroa.05.0.copyload = load i64, ptr %6, align 8
  %i.an = load ptr, ptr %0, align 8               ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 560 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 568
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %bb.h, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.at = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.an) #17
end_hunk_0
begin_hunk_1_@_ZN2v88internal13ScopeIterator21SetLocalVariableValueENS0_12DirectHandleINS0_6StringEEENS2_INS0_6ObjectEEE:bb.a

bb.ab:                                            ; preds = %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #20
  unreachable

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit._ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit_crit_edge, %bb.c
  %i.ha = phi ptr [ %.pre, %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit._ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit_crit_edge ], [ %i.ae, %bb.c ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.e
  br i1 %i.hc, label %.loopexit, label %.lr.ph.split

.loopexit:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us, %bb.a, %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit.thread, %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit.thread, %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit.thread, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit49, %bb.t, %bb.u, %.thread127, %bb.k, %bb.l, %.thread, %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.x, %bb.d, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.v, %bb.m, %bb.w, %bb.y
  %i.hd = phi i1 [ false, %bb.y ], [ true, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit49 ], [ true, %bb.t ], [ true, %bb.u ], [ true, %.thread127 ], [ true, %bb.k ], [ true, %bb.l ], [ true, %.thread ], [ false, %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit.thread ], [ true, %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ true, %bb.x ], [ false, %bb.d ], [ true, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ false, %bb.v ], [ false, %bb.m ], [ false, %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit.thread ], [ false, %_ZN2v88internal6String6EqualsEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_.exit.thread ], [ false, %bb.w ], [ false, %bb.a ], [ false, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.us ], [ false, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ]
  ret i1 %i.hd
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13ScopeIterator22SetModuleVariableValueENS0_12DirectHandleINS0_6StringEEENS2_INS0_6ObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98) %0, ptr nofree readonly captures(none) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.30", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, 15
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %3, align 8
  %i.j = load i64, ptr %1, align 8
  %i.k = call noundef i32 @_ZN2v88internal9ScopeInfo11ModuleIndexENS0_6TaggedINS0_6StringEEEPNS0_12VariableModeEPNS0_18InitializationFlagEPNS0_17MaybeAssignedFlagE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.l = call noundef i32 @_ZN2v88internal26SourceTextModuleDescriptor16GetCellIndexKindEi(i32 noundef %i.k) #17
  %.not = icmp eq i32 %i.l, 1                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = load i64, ptr %i.m, align 8
  store i64 %i.n, ptr %4, align 8
  %i.o = call i64 @_ZNK2v88internal7Context6moduleEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.v = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.p) #17
  br label %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.v, %bb.c ], [ %i.r, %bb.b ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.o, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2v88internal16SourceTextModule13StoreVariableENS0_12DirectHandleIS1_EEiNS2_INS0_6ObjectEEE(ptr nonnull %.0.i.i, i32 noundef %i.k, ptr %2) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN2v88internal6HandleINS0_16SourceTextModuleEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13ScopeIterator23SetContextVariableValueENS0_12DirectHandleINS0_6StringEEENS2_INS0_6ObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98) %0, ptr nofree readonly captures(none) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.30", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, 15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %3, align 8
  %i.g = load i64, ptr %1, align 8
  %i.h = call noundef i32 @_ZN2v88internal9ScopeInfo16ContextSlotIndexENS0_6TaggedINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.g) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.i = icmp sgt i32 %i.h, -1                    ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8
  %i.j = load ptr, ptr %0, align 8
  call void @_ZN2v88internal7Context3SetENS0_12DirectHandleIS1_EEiNS2_INS0_6ObjectEEEPNS0_7IsolateE(ptr %.sroa.01.0.copyload, i32 noundef %i.h, ptr %2, ptr noundef %i.j) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13ScopeIterator24SetContextExtensionValueENS0_12DirectHandleINS0_6StringEEENS2_INS0_6ObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.30", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.d = add i64 %i.c, 15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %3, align 8
  %i.g = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23HasContextExtensionSlotEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  br i1 %i.g, label %_ZNK2v88internal7Context13has_extensionEv.exit, label %_ZNK2v88internal7Context13has_extensionEv.exit.thread

_ZNK2v88internal7Context13has_extensionEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.m

_ZNK2v88internal7Context13has_extensionEv.exit:   ; preds = %bb.a
  %i.h = add i64 %i.c, 31
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10624
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load i64, ptr %i.n, align 8
  %.not = icmp eq i64 %i.j, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal7Context13has_extensionEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %4, align 8
  %i.r = call i64 @_ZNK2v88internal7Context16extension_objectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 560 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 568
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.s) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.y, %bb.c ], [ %i.u, %bb.b ] ; 3 uses
  %i.z = ptrtoint ptr %.0.i.i to i64              ; 2 uses
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.t, align 8
  store i64 %i.r, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ac = load ptr, ptr %0, align 8               ; 6 uses
  %.pre.pre = load i64, ptr %1, align 8
  %i.ad = add i64 %.pre.pre, -1
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = icmp eq i16 %i.ai, 128
  br i1 %i.aj, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.d
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
  %i.an = phi i32 [ 1, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i ]
  store i32 %i.an, ptr %5, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ac, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %.0.i.i, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.z, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 -1, i64 16, i1 false)
  %i.az = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = and i16 %i.bc, -96
  %.not.i21.i.i = icmp eq i16 %i.bd, 32
  br i1 %.not.i21.i.i, label %bb.e, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.e:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !18, !noundef !19
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 55448
  %i.bh = load i8, ptr %i.bg, align 8, !range !18
  %i.bi = trunc nuw i8 %i.bh to i1
  %not..i.i.i23.i.i = xor i1 %i.bf, true
  %i.bj = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.bi
  br i1 %i.bj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 64088
  %i.bl = load i8, ptr %i.bk, align 8, !range !18, !noundef !19
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 64080
  %i.bo = load ptr, ptr %i.bn, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.e
  %.pn.i.i26.i.i = phi ptr [ %i.bo, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %i.ac, %bb.e ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.bp = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.bq = call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr nonnull %1) #17
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.bq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %1, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.at, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %5) #17
  %i.br = call i16 @_ZN2v88internal10JSReceiver11HasPropertyEPNS0_14LookupIteratorE(ptr noundef nonnull %5) #17 ; 2 uses
  %i.bs = trunc i16 %i.br to i1
  br i1 %i.bs, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.h, !prof !22

bb.h:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #17
  br label %_ZNKR2v85MaybeIbE8FromJustEv.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit, %bb.h
  %i.bt = and i16 %i.br, 256
  %i.bu = icmp ne i16 %i.bt, 0                    ; 2 uses
  br i1 %i.bu, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.bv = call i16 @_ZN2v88internal6Object15SetDataPropertyEPNS0_14LookupIteratorENS0_12DirectHandleIS1_EE(ptr noundef nonnull %5, ptr %2) #17 ; 2 uses
  %i.bw = trunc i16 %i.bv to i1
  br i1 %i.bw, label %_ZNK2v85MaybeIbE9ToCheckedEv.exit, label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #17
  br label %_ZNK2v85MaybeIbE9ToCheckedEv.exit

_ZNK2v85MaybeIbE9ToCheckedEv.exit:                ; preds = %bb.i, %bb.j
  %i.bx = and i16 %i.bv, 256
  %.not23 = icmp eq i16 %i.bx, 0
  br i1 %.not23, label %bb.k, label %bb.l, !prof !5

bb.k:                                             ; preds = %_ZNK2v85MaybeIbE9ToCheckedEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #20
  unreachable

bb.l:                                             ; preds = %_ZNK2v85MaybeIbE9ToCheckedEv.exit, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNK2v88internal7Context13has_extensionEv.exit.thread, %_ZNK2v88internal7Context13has_extensionEv.exit, %bb.l
  %.1 = phi i1 [ %i.bu, %bb.l ], [ false, %_ZNK2v88internal7Context13has_extensionEv.exit ], [ false, %_ZNK2v88internal7Context13has_extensionEv.exit.thread ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal13ScopeIterator22SetScriptVariableValueENS0_12DirectHandleINS0_6StringEEENS2_INS0_6ObjectEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::VariableLookupResult", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 31
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 1599
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 560 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 568
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.m) #17
  br label %_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.s, %bb.b ], [ %i.o, %bb.a ] ; 3 uses
  %i.t = ptrtoint ptr %.0.i.i to i64
  %i.u = add i64 %i.t, 8
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.n, align 8
  store i64 %i.l, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.w = add i64 %i.l, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = call noundef zeroext i1 @_ZN2v88internal18ScriptContextTable6LookupENS0_12DirectHandleINS0_6StringEEEPNS0_20VariableLookupResultE(ptr noundef nonnull align 4 dereferenceable(32) %i.x, ptr %1, ptr noundef nonnull %3) #17 ; 2 uses
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.z = load i64, ptr %.0.i.i, align 8
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i32, ptr %3, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = load ptr, ptr %0, align 8               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 568
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.an = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ah) #17
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.an, %bb.d ], [ %i.aj, %bb.c ] ; 3 uses
  %i.ao = ptrtoint ptr %.0.i to i64
  %i.ap = add i64 %i.ao, 8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.ai, align 8
  store i64 %i.ag, ptr %.0.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = load ptr, ptr %0, align 8
  call void @_ZN2v88internal7Context3SetENS0_12DirectHandleIS1_EEiNS2_INS0_6ObjectEEEPNS0_7IsolateE(ptr nonnull %.0.i, i32 noundef %i.as, ptr %2, ptr noundef %i.at) #17
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_18ScriptContextTableEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i1 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal13ScopeIterator28ClosureScopeHasThisReferenceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.d = load i16, ptr %i.c, align 4
  %i.e = and i16 %i.d, 4096
  %.not1 = icmp eq i16 %i.e, 0
  br i1 %.not1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZNK2v88internal5Scope16HasThisReferenceEv(ptr noundef nonnull align 8 dereferenceable(124) %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.f, %bb.c ]
  ret i1 %i.g
}

declare noundef zeroext i1 @_ZNK2v88internal5Scope16HasThisReferenceEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #1

end_hunk_1
