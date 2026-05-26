inline.NumInlined: 1616
inline.NumDeleted: 784
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE:bb.a
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i69 = load i64, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %i.ab = icmp ugt i64 %.sroa.0.0.copyload.i.i.i69, -844424930131969
  br i1 %i.ab, label %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit, label %thread-pre-split

_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i69, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i32, ptr %i.ad, align 4
  %.mask.i.i.i.i.i.i.i = and i32 %i.ae, -16777216
  %i.af = icmp eq i32 %.mask.i.i.i.i.i.i.i, 1291845632
  br i1 %i.af, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %i.ah = tail call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ag, ptr %.0.i.i.i.i.i.i) #10 ; 2 uses
  %i.ai = extractvalue { i32, i64 } %i.ah, 0
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { i32, i64 } %i.ah, 1      ; 2 uses
  store i64 %i.ak, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !95
  br label %bb.g

thread-pre-split:                                 ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.pr = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.f
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pr, %thread-pre-split ], [ %i.ak, %bb.f ] ; 2 uses
  %i.al = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.al, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.g
  %i.am = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add i32 %i.ao, -436207616
  %i.aq = icmp ult i32 %i.ap, 855638016
  %spec.select.i = select i1 %i.aq, ptr %.0.i.i.i.i.i.i, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.g, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.g ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.ar = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !95 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, -844424930131969
  %i.at = and i64 %i.ar, 281474976710655
  %i.au = icmp ne i64 %i.at, 0
  %i.av = and i1 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %.sroa.042.0.copyload = load ptr, ptr %i.o, align 8
  %i.ax = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %i.aw, i32 287, ptr %.sroa.042.0.copyload, i32 0, ptr noundef null) #10 ; 2 uses
  %i.ay = extractvalue { i32, i64 } %i.ax, 0
  %i.az = extractvalue { i32, i64 } %i.ax, 1      ; 3 uses
  %i.ba = icmp eq i32 %i.ay, 0
  br i1 %i.ba, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.i, !prof !58

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 192 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !32 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = icmp ult ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.j, label %bb.k, !prof !41

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !32
  store i64 %i.az, ptr %i.bf, align 8, !tbaa !12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bd, i64 %i.az) #10 ; 2 uses
  %.sroa.0.0.copyload.i.i72.pr = load i64, ptr %i.bk, align 8, !tbaa !12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.j, %bb.k
  %.sroa.0.0.copyload.i.i72 = phi i64 [ %i.az, %bb.j ], [ %.sroa.0.0.copyload.i.i72.pr, %bb.k ] ; 2 uses
  %.0.i.i.i.i.i.i71 = phi ptr [ %i.bf, %bb.j ], [ %i.bk, %bb.k ]
  %i.bl = icmp ugt i64 %.sroa.0.0.copyload.i.i72, -844424930131969
  br i1 %i.bl, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bm = and i64 %.sroa.0.0.copyload.i.i72, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, -1140850688
  %i.bq = icmp ult i32 %i.bp, 150994944
  %spec.select.i74 = select i1 %i.bq, ptr %.0.i.i.i.i.i.i71, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i73 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i74, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.br = load i64, ptr %.sroa.0.0.i73, align 8, !tbaa !95 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, -844424930131969
  %i.bt = and i64 %i.br, 281474976710655
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = and i1 %i.bs, %i.bu
  br i1 %i.bv, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !95 ; 2 uses
  %.mask.i = and i64 %i.bx, -281474976710656
  %i.by = icmp eq i64 %.mask.i, -844424930131968
  %.pre175 = load ptr, ptr %0, align 8, !tbaa !88 ; 2 uses
  br i1 %i.by, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %.pre175, ptr nonnull %i.bw) #10
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = or i64 %i.ca, -844424930131968          ; 2 uses
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !94
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !95
  %.pre = load ptr, ptr %0, align 8, !tbaa !88
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload.i.i.i75 = phi i64 [ %i.cb, %bb.m ], [ %i.bx, %bb.l ]
  %i.cd = phi ptr [ %.pre, %bb.m ], [ %.pre175, %bb.l ]
  %.sroa.038.0.copyload = load ptr, ptr %i.o, align 8
  %i.ce = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i73, ptr noundef nonnull align 8 dereferenceable(9816) %i.cd, ptr %.sroa.038.0.copyload, i64 %.sroa.0.0.copyload.i.i.i75, i1 noundef zeroext false) #10 ; 2 uses
  %i.cf = extractvalue { i32, i64 } %i.ce, 0
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.o, !prof !58

bb.o:                                             ; preds = %bb.n
  %i.ch = extractvalue { i32, i64 } %i.ce, 1
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !94
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !95
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit, %bb.o, %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !42 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !95 ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, -844424930131969
  %i.cn = and i64 %i.cl, 281474976710655
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = and i1 %i.cm, %i.co
  br i1 %i.cp, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.critedge
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !42  ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !95 ; 2 uses
  %.mask.i77 = and i64 %i.cr, -281474976710656
  %i.cs = icmp eq i64 %.mask.i77, -844424930131968
  %.pre179 = load ptr, ptr %0, align 8, !tbaa !88 ; 2 uses
  br i1 %i.cs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %.pre179, ptr nonnull %i.cq) #10
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = or i64 %i.cu, -844424930131968          ; 2 uses
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !94
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !95
  %.sroa.034.0.copyload.pre = load ptr, ptr %i.cj, align 8
  %.pre178 = load ptr, ptr %0, align 8, !tbaa !88
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.copyload.i.i.i78 = phi i64 [ %i.cv, %bb.q ], [ %i.cr, %bb.p ]
  %i.cx = phi ptr [ %.pre178, %bb.q ], [ %.pre179, %bb.p ]
  %.sroa.034.0.copyload = phi ptr [ %.sroa.034.0.copyload.pre, %bb.q ], [ %i.ck, %bb.p ]
  %i.cy = load i64, ptr %i.j, align 8, !tbaa !94
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load ptr, ptr %i.o, align 8, !tbaa !42
  %.sroa.0.0.copyload.i.i.i79 = load i64, ptr %i.da, align 8, !tbaa !12
  %i.db = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr %.sroa.034.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %i.cx, ptr %i.cz, i64 %.sroa.0.0.copyload.i.i.i78, i64 %.sroa.0.0.copyload.i.i.i79, i1 noundef zeroext false) #10 ; 2 uses
  %i.dc = extractvalue { i32, i64 } %i.db, 0
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.s, !prof !58

bb.s:                                             ; preds = %bb.r
  %i.de = extractvalue { i32, i64 } %i.db, 1
  %i.df = load ptr, ptr %i.o, align 8, !tbaa !94
  store i64 %i.de, ptr %i.df, align 8, !tbaa !95
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge
  %i.dg = load ptr, ptr %i.o, align 8, !tbaa !42  ; 5 uses
  %.sroa.0.0.copyload.i.i.i81 = load i64, ptr %i.dg, align 8, !tbaa !12 ; 2 uses
  %i.dh = icmp ugt i64 %.sroa.0.0.copyload.i.i.i81, -844424930131969
  br i1 %i.dh, label %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit: ; preds = %bb.t
  %i.di = and i64 %.sroa.0.0.copyload.i.i.i81, 281474976710655
  %i.dj = inttoptr i64 %i.di to ptr               ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %.mask.i.i.i.i.i.i.i82 = and i32 %i.dk, -16777216
  switch i32 %.mask.i.i.i.i.i.i.i82, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread [
    i32 939524096, label %bb.u
    i32 922746880, label %bb.w
    i32 905969664, label %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit
    i32 1124073472, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit
  ]

bb.u:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit
  %i.dl = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %i.dm = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.dl, ptr nonnull %i.dg) #10 ; 2 uses
  %i.dn = extractvalue { i32, i64 } %i.dm, 0
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.v, !prof !58

bb.v:                                             ; preds = %bb.u
  %i.dp = extractvalue { i32, i64 } %i.dm, 1
  %i.dq = load ptr, ptr %i.o, align 8, !tbaa !94
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !95
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

bb.w:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit
  %i.dr = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %i.ds = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.dr, ptr nonnull %i.dg) #10 ; 2 uses
  %.not = icmp eq ptr %i.ds, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.x, !prof !58

bb.x:                                             ; preds = %bb.w
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = or i64 %i.dt, -844424930131968
  %i.dv = load ptr, ptr %i.o, align 8, !tbaa !94
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !95
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !177, !range !180, !noundef !67
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = or disjoint i64 %i.dy, -1407374883553280
  store i64 %i.dz, ptr %i.dg, align 8, !tbaa !95
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit
  %i.ea = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %.sroa.0.0.copyload.i.i.i89 = load i32, ptr %i.eb, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i89, 0
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = zext i32 %.sroa.0.0.copyload.i.i.i89 to i64
  %i.ee = add i64 %i.ed, %i.ec
  %i.ef = or i64 %i.ee, -562949953421312
  %i.eg = select i1 %.not.i.i.i.i.i, i64 -562949953421312, i64 %i.ef
  store i64 %i.eg, ptr %i.dg, align 8, !tbaa !95
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread

_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit, %bb.t, %bb.x, %bb.v, %_ZN6hermes2vm10dyn_vmcastINS0_9JSBooleanEEEPT_NS0_11HermesValueE.exit, %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit
  %i.eh = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8            ; 8 uses
  %.mask.i90 = and i64 %i.ei, -140737488355328
  %i.ej = bitcast i64 %i.ei to double
  switch i64 %.mask.i90, label %bb.ac [
    i64 -1548112371908608, label %bb.y
    i64 -1407374883553280, label %bb.z
  ]

bb.y:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %i.ek = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 9240
  %i.em = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.el, ptr noundef nonnull align 8 dereferenceable(9816) %i.ek, i32 19) #10
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.en) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.z:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %i.eo = trunc i64 %i.ei to i1
  %i.ep = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 9240 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.es = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.eq, ptr noundef nonnull align 8 dereferenceable(9816) %i.ep, i32 36) #10
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.er) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ab:                                            ; preds = %bb.z
  %i.et = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.eq, ptr noundef nonnull align 8 dereferenceable(9816) %i.ep, i32 37) #10
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.er) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ac:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8JSBigIntEEEPT_NS0_11HermesValueE.exit.thread
  %.mask.i92 = and i64 %i.ei, -281474976710656
  %i.eu = icmp eq i64 %.mask.i92, -844424930131968
  br i1 %i.eu, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.ev = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %i.ew = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %i.ev, ptr nonnull %i.eh) #10 ; 2 uses
  %i.ex = extractvalue { ptr, i64 } %i.ew, 0      ; 4 uses
  %i.ey = extractvalue { ptr, i64 } %i.ew, 1      ; 4 uses
  %.sroa.3.8.extract.trunc.i = trunc i64 %i.ey to i32 ; 3 uses
  %.sroa.7.8.extract.shift.i = lshr i64 %i.ey, 32 ; 2 uses
  %i.ez = icmp slt i32 %.sroa.3.8.extract.trunc.i, 0
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %i.ez, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.fb = and i32 %.sroa.3.8.extract.trunc.i, 1073741824
  %.not.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ex, align 8, !tbaa !12
  %i.fc = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.fd = inttoptr i64 %i.fc to ptr               ; 5 uses
  %i.fe = load i32, ptr %i.fd, align 4            ; 2 uses
  %i.ff = icmp ugt i32 %i.fe, 150994943
  br i1 %i.ff, label %bb.ag, label %bb.ah, !prof !58

bb.ag:                                            ; preds = %bb.af
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !123
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ah:                                            ; preds = %bb.af
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.fe, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.ak [
    i32 134217728, label %bb.ai
    i32 67108864, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.ak:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.fk, align 8, !tbaa !12
  %i.fl = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !123
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.ae
  %.0.i.sink.i.i = phi ptr [ %i.ex, %bb.ae ], [ %i.fh, %bb.ag ], [ %i.fi, %bb.ai ], [ %i.fj, %bb.aj ], [ %i.fo, %bb.ak ]
  %i.fp = and i64 %i.ey, 1073741823
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.fp
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.fa, ptr %i.fq, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.al:                                            ; preds = %bb.ad
  %.not.i1.i = icmp samesign ult i32 %.sroa.3.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.ex, align 8, !tbaa !12
  %i.fr = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.fs = inttoptr i64 %i.fr to ptr               ; 5 uses
  %i.ft = load i32, ptr %i.fs, align 4            ; 2 uses
  %i.fu = icmp ugt i32 %i.ft, 150994943
  br i1 %i.fu, label %bb.an, label %bb.ao, !prof !58

bb.an:                                            ; preds = %bb.am
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !59
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ao:                                            ; preds = %bb.am
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ft, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.ar [
    i32 117440512, label %bb.ap
    i32 50331648, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ar:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.fz, align 8, !tbaa !12
  %i.ga = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !59
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.al
  %.0.i.sink.i4.i = phi ptr [ %i.ex, %bb.al ], [ %i.fw, %bb.an ], [ %i.fx, %bb.ap ], [ %i.fy, %bb.aq ], [ %i.gd, %bb.ar ]
  %i.ge = and i64 %i.ey, 1073741823
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.ge
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.fa, ptr %i.gf, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.as:                                            ; preds = %bb.ac
  %i.gg = icmp ult i64 %i.ei, -1970324836974592
  br i1 %i.gg, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gh = tail call double @llvm.fabs.f64(double %i.ej)
  %i.gi = fcmp ueq double %i.gh, +inf
  br i1 %i.gi, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  %i.gk = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.gj, ptr nonnull %i.eh) #10
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.av:                                            ; preds = %bb.at
  tail call fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14appendToOutputENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 19)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.aw:                                            ; preds = %bb.as
  %i.gm = icmp samesign ugt i64 %i.ei, -844424930131969
  br i1 %i.gm, label %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95: ; preds = %bb.aw
  %i.gn = and i64 %i.ei, 281474976710655
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = load i32, ptr %i.go, align 4            ; 2 uses
  %.mask.i.i.i.i.i.i.i94 = and i32 %i.gp, -16777216
  %i.gq = icmp eq i32 %.mask.i.i.i.i.i.i.i94, 1291845632
  br i1 %i.gq, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95
  %i.gr = load ptr, ptr %0, align 8, !tbaa !88, !nonnull !67, !align !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.gs, align 8, !tbaa !98
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 37, ptr %i.gt, align 8, !tbaa !101
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.gu, align 8, !tbaa !102
  store ptr @.str.7, ptr %2, align 8, !tbaa !103
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.gv, align 8, !tbaa !104
  %i.gw = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.gr, ptr noundef nonnull align 8 dereferenceable(48) %2) #10
  %i.gx = and i32 %i.gw, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_15BigIntPrimitiveEEEbNS0_11HermesValueE.exit95
  %i.gy = add i32 %i.gp, -1140850688
  %or.cond = icmp ult i32 %i.gy, -704643072
  br i1 %or.cond, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, label %bb.ax
end_hunk_0
