Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeE:bb.a
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !78

bb.n:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %60, i32 noundef %spec.select)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.o:                                             ; preds = %.lr.ph
  %i.cq = zext i32 %i.co to i64
  %i.cr = load ptr, ptr %60, align 8, !tbaa !43
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cq
  store i32 %spec.select, ptr %i.cs, align 1
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !76
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cf, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.n, %bb.o
  %i.cv = add i32 %.08021498, 1                   ; 2 uses
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !198 ; 2 uses
  %.not = icmp eq i32 %i.cv, %i.cw
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1723

bb.p:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0741.0.copyload = load i16, ptr %53, align 8, !tbaa !214
  %.sroa.2743.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #36
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !352
  store i64 %i.da, ptr %61, align 8, !tbaa !352
  %i.db = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 68
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !351
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !396
  %.sroa.0738.0.copyload = load ptr, ptr %54, align 8, !tbaa !74
  %.sroa.2739.0.copyload = load i32, ptr %i.al, align 8, !tbaa !198
  store ptr %.pre1549, ptr %62, align 8, !tbaa !573
  %i.de = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.df = load i32, ptr %i.cf, align 8, !tbaa !76
  %i.dg = zext i32 %i.df to i64
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !574
  %i.dh = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cx, i16 %.sroa.0741.0.copyload, ptr %.sroa.2743.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %61, ptr %.sroa.0738.0.copyload, i32 %.sroa.2739.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55, ptr noundef nonnull byval(%"class.llvm::ArrayRef.292") align 8 %62) #36 ; 2 uses
  %.fca.0.extract734 = extractvalue { ptr, i32 } %i.dh, 0
  %.fca.1.extract735 = extractvalue { ptr, i32 } %i.dh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #36
  %i.di = load ptr, ptr %60, align 8, !tbaa !43   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ce
  br i1 %i.dj, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.di) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #36
  br label %.critedge854

.critedge846:                                     ; preds = %._crit_edge
  %i.dk = icmp eq ptr %.pre1549, %i.ce
  br i1 %i.dk, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit896, label %bb.r

bb.r:                                             ; preds = %.critedge846
  call void @free(ptr noundef %.pre1549) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit896

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit896:         ; preds = %bb.m, %.critedge846, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #36
  %.pre1550 = load ptr, ptr %i.c, align 8, !tbaa !779
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit896, %bb.l
  %i.dl = phi ptr [ %.pre1550, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit896 ], [ %1, %bb.l ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !212 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.dn, align 8, !tbaa !214 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !216
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %38, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !571 ; 3 uses
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.s
  %i.dr = add i16 %.sroa.0.0.copyload.i.i.i, -163
  %spec.select.i.i.i.i.i = icmp ult i16 %i.dr, 53
  br i1 %spec.select.i.i.i.i.i, label %bb.t, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i:     ; preds = %bb.s
  %i.ds = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %38) #37
  br i1 %i.ds, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, %.split.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.38) #39
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i: ; preds = %.split.i.i.i
  %i.dt = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.du = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !379
  %i.dx = zext i16 %i.dw to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i

bb.u:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i
  %i.dy = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %38) #37
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i:  ; preds = %bb.u, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i
  %i.dz = phi i32 [ %i.dx, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i ], [ %i.dy, %bb.u ] ; 7 uses
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.eb = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  store ptr %i.eb, ptr %39, align 8, !tbaa !43
  %i.ec = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 5 uses
  store i32 0, ptr %i.ec, align 8, !tbaa !76
  %i.ed = getelementptr inbounds nuw i8, ptr %39, i64 12
  store i32 16, ptr %i.ed, align 4, !tbaa !77
  %.idx.i.i = shl nuw nsw i64 %i.ea, 2
  %i.ee = icmp ugt i32 %i.dz, 16
  br i1 %i.ee, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i: ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %39, ptr noundef nonnull %i.eb, i64 noundef %i.ea, i64 noundef 4) #36
  %.pre8.pre.i.i.i = load i32, ptr %i.ec, align 8, !tbaa !76
  %i.ef = zext i32 %.pre8.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %39, align 8, !tbaa !43
  br label %bb.v

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i: ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i
  %.not.i.i.i47.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i47.i, label %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i
  %i.eg = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ %i.eb, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %.pre8.i5.i.i = phi i64 [ %i.ef, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.thread.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.pre8.i5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr align 4 %i.dq, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.ec, align 8, !tbaa !76
  br label %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit.i

_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit.i: ; preds = %bb.v, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i
  %i.ei = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.v ]
  %i.ej = add i32 %i.ei, %i.dz                    ; 8 uses
  store i32 %i.ej, ptr %i.ec, align 8, !tbaa !76
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !204 ; 5 uses
  %.sroa.098.0.copyload.i = load ptr, ptr %i.el, align 8, !tbaa !74 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !198 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %.sroa.0111.0.copyload.i = load ptr, ptr %i.em, align 8, !tbaa !74 ; 2 uses
  %.sroa.7115.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %.sroa.7115.0.copyload.i = load i32, ptr %.sroa.7115.0..sroa_idx.i, align 8, !tbaa !198 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 52
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 4 ; 2 uses
  %.not23.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not23.i.i, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit.i, %bb.y
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.y ], [ 0, %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit.i ] ; 4 uses
  %.01524.i.i = phi i32 [ %.1.i.i, %bb.y ], [ -1, %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !198 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, -1
  %i.eq = icmp slt i32 %i.eo, %i.dz
  %or.cond.i.i = and i1 %i.ep, %i.eq
  br i1 %or.cond.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i
  %.not20.i.i = icmp eq i32 %.01524.i.i, -1
  %i.er = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br i1 %.not20.i.i, label %bb.y, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.thread.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.es = trunc i64 %indvars.iv.i.i to i32
  %i.et = add i32 %i.dz, %i.es
  %.not19.i.i = icmp eq i32 %i.eo, %i.et
  br i1 %.not19.i.i, label %bb.y, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.thread.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i.i = phi i32 [ %.01524.i.i, %bb.x ], [ %i.er, %bb.w ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i902 = icmp eq i64 %indvars.iv.next.i.i, %i.ea
  br i1 %.not.i.i902, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i, label %.lr.ph.i.i, !llvm.loop !1724

_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i: ; preds = %bb.y
  %i.eu = icmp eq i32 %.1.i.i, -1
  br i1 %i.eu, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.thread.i, label %_ZN4llvm14SDPatternMatch11m_InsertEltINS0_11Value_matchENS0_10Value_bindIS2_EENS0_17SpecificInt_matchEEENS0_16TernaryOpc_matchIT_T0_T1_Lb0ELb0EEERKS7_RKS8_RKS9_.exit.i

_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.thread.i: ; preds = %bb.x, %bb.w, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i, %_ZN4llvm11SmallVectorIiLj16EEC2IivEENS_8ArrayRefIT_EE.exit.i
  %i.ev = load ptr, ptr %39, align 8, !tbaa !43   ; 12 uses
  %i.ew = zext i32 %i.ej to i64                   ; 3 uses
  %.not17.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not17.i.i, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.thread.i, label %.lr.ph.i49.preheader.i

.lr.ph.i49.preheader.i:                           ; preds = %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.thread.i
  %i.ex = sub i32 0, %i.ej                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.ej, 4
  br i1 %min.iters.check, label %.lr.ph.i49.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i49.preheader.i
  %n.vec = and i64 %i.ew, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1699 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat1700 = shufflevector <4 x i32> %broadcast.splatinsert1699, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue1706, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue1706 ] ; 5 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %wide.load.a = load <4 x i32>, ptr %i.ey, align 4, !tbaa !198 ; 3 uses
  %i.ez = icmp sgt <4 x i32> %wide.load.a, splat (i32 -1) ; 4 uses
  %i.fa = icmp slt <4 x i32> %wide.load.a, %broadcast.splat1700
  %i.fb = select <4 x i1> %i.fa, <4 x i32> %broadcast.splat1700, <4 x i32> %broadcast.splat
  %i.fc = add <4 x i32> %i.fb, %wide.load.a       ; 4 uses
  %i.fd = extractelement <4 x i1> %i.ez, i64 0
  br i1 %i.fd, label %pred.store.if.a, label %pred.store.continue.a

pred.store.if.a:                                  ; preds = %vector.body
  %i.fe = extractelement <4 x i32> %i.fc, i64 0
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !198
  br label %pred.store.continue.a

pred.store.continue.a:                            ; preds = %pred.store.if.a, %vector.body
  %i.ff = extractelement <4 x i1> %i.ez, i64 1
  br i1 %i.ff, label %pred.store.if1701, label %pred.store.continue1702

pred.store.if1701:                                ; preds = %pred.store.continue.a
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = extractelement <4 x i32> %i.fc, i64 1
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !198
  br label %pred.store.continue1702

pred.store.continue1702:                          ; preds = %pred.store.if1701, %pred.store.continue.a
  %i.fj = extractelement <4 x i1> %i.ez, i64 2
  br i1 %i.fj, label %pred.store.if1703, label %pred.store.continue1704

pred.store.if1703:                                ; preds = %pred.store.continue1702
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = extractelement <4 x i32> %i.fc, i64 2
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !198
  br label %pred.store.continue1704

pred.store.continue1704:                          ; preds = %pred.store.if1703, %pred.store.continue1702
  %i.fn = extractelement <4 x i1> %i.ez, i64 3
  br i1 %i.fn, label %pred.store.if1705, label %pred.store.continue1706

pred.store.if1705:                                ; preds = %pred.store.continue1704
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = extractelement <4 x i32> %i.fc, i64 3
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !198
  br label %pred.store.continue1706

pred.store.continue1706:                          ; preds = %pred.store.if1705, %pred.store.continue1704
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1725

middle.block:                                     ; preds = %pred.store.continue1706
  %cmp.n = icmp eq i64 %n.vec, %i.ew
  br i1 %cmp.n, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i, label %.lr.ph.i49.i.preheader

.lr.ph.i49.i.preheader:                           ; preds = %.lr.ph.i49.preheader.i, %middle.block
  %indvars.iv.i50.i.ph = phi i64 [ 0, %.lr.ph.i49.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %.lr.ph.i49.i.preheader, %bb.z
  %indvars.iv.i50.i = phi i64 [ %indvars.iv.next.i51.i, %bb.z ], [ %indvars.iv.i50.i.ph, %.lr.ph.i49.i.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i50.i ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !198 ; 3 uses
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %bb.z, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.i49.i
  %i.fv = icmp slt i32 %i.ft, %i.ej
  %.sink.p.i.i = select i1 %i.fv, i32 %i.ej, i32 %i.ex
  %.sink.i.i = add i32 %.sink.p.i.i, %i.ft
  store i32 %.sink.i.i, ptr %i.fs, align 4, !tbaa !198
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i.i, %.lr.ph.i49.i
  %indvars.iv.next.i51.i = add nuw nsw i64 %indvars.iv.i50.i, 1 ; 2 uses
  %.not.i52.i = icmp eq i64 %indvars.iv.next.i51.i, %i.ew
  br i1 %.not.i52.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i, label %.lr.ph.i49.i, !llvm.loop !1726

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i: ; preds = %bb.z, %middle.block
  %.pre139.i = load i32, ptr %i.ec, align 8, !tbaa !76 ; 4 uses
  %i.fw = zext i32 %.pre139.i to i64
  %.not23.i53.i = icmp eq i32 %.pre139.i, 0
  br i1 %.not23.i53.i, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.thread.i, label %.lr.ph.i55.i

.lr.ph.i55.i:                                     ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i, %bb.ac
  %indvars.iv.i56.i = phi i64 [ %indvars.iv.next.i62.i, %bb.ac ], [ 0, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i ] ; 4 uses
  %.01524.i57.i = phi i32 [ %.1.i61.i, %bb.ac ], [ -1, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.i ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i56.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !198 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, -1
  %i.ga = icmp slt i32 %i.fy, %.pre139.i
  %or.cond.i58.i = and i1 %i.fz, %i.ga
  br i1 %or.cond.i58.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i55.i
  %.not20.i64.i = icmp eq i32 %.01524.i57.i, -1
  %i.gb = trunc nuw nsw i64 %indvars.iv.i56.i to i32
  br i1 %.not20.i64.i, label %bb.ac, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.thread.i

bb.ab:                                            ; preds = %.lr.ph.i55.i
  %i.gc = trunc i64 %indvars.iv.i56.i to i32
  %i.gd = add i32 %.pre139.i, %i.gc
  %.not19.i59.i = icmp eq i32 %i.fy, %i.gd
  br i1 %.not19.i59.i, label %bb.ac, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.thread.i

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i61.i = phi i32 [ %.01524.i57.i, %bb.ab ], [ %i.gb, %bb.aa ] ; 3 uses
  %indvars.iv.next.i62.i = add nuw nsw i64 %indvars.iv.i56.i, 1 ; 2 uses
  %.not.i63.i = icmp eq i64 %indvars.iv.next.i62.i, %i.fw
  br i1 %.not.i63.i, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i, label %.lr.ph.i55.i, !llvm.loop !1724

_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i: ; preds = %bb.ac
  %i.ge = icmp eq i32 %.1.i61.i, -1
  br i1 %i.ge, label %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.thread.i, label %_ZN4llvm14SDPatternMatch11m_InsertEltINS0_11Value_matchENS0_10Value_bindIS2_EENS0_17SpecificInt_matchEEENS0_16TernaryOpc_matchIT_T0_T1_Lb0ELb0EEERKS7_RKS8_RKS9_.exit.i

_ZN4llvm14SDPatternMatch11m_InsertEltINS0_11Value_matchENS0_10Value_bindIS2_EENS0_17SpecificInt_matchEEENS0_16TernaryOpc_matchIT_T0_T1_Lb0ELb0EEERKS7_RKS8_RKS9_.exit.i: ; preds = %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i
  %.sroa.10.0.i = phi i32 [ %.sroa.10.0.copyload.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i ], [ %.sroa.7115.0.copyload.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i ] ; 3 uses
  %.sroa.098.0.i = phi ptr [ %.sroa.098.0.copyload.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i ], [ %.sroa.0111.0.copyload.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i ] ; 5 uses
  %.sroa.0111.0.i = phi ptr [ %.sroa.0111.0.copyload.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i ], [ %.sroa.098.0.copyload.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i ] ; 2 uses
  %.sroa.7115.0.i = phi i32 [ %.sroa.7115.0.copyload.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i ], [ %.sroa.10.0.copyload.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i ] ; 2 uses
  %.sroa.0126.0.i = phi ptr [ %i.dq, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i ], [ %i.ev, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i ]
  %.0.i = phi i32 [ %.1.i.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit.i ], [ %.1.i61.i, %_ZL45getShuffleMaskIndexOfOneElementFromOp0IntoOp1N4llvm8ArrayRefIiEE.exit65.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #36
  store ptr null, ptr %40, align 8, !tbaa !193
  %i.gf = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store i32 0, ptr %i.gf, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #36
  %i.gg = sext i32 %.0.i to i64                   ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0.i, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !198
  %i.gj = sext i32 %i.gi to i64
  store i32 163, ptr %41, align 8, !tbaa !781, !alias.scope !1746
  %i.gk = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr null, ptr %i.gk, align 8, !tbaa !74
  %.sroa.491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i32 0, ptr %.sroa.491.0..sroa_idx.i, align 8, !tbaa !198
  %i.gl = getelementptr inbounds nuw i8, ptr %41, i64 24
  store ptr %40, ptr %i.gl, align 8, !tbaa !413
  %.sroa.4.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %41, i64 32
  store ptr null, ptr %.sroa.4.0..sroa_idx87.i, align 8, !tbaa !74
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %41, i64 40
  store i32 0, ptr %.sroa.588.0..sroa_idx.i, align 8, !tbaa !198
  %i.gm = getelementptr inbounds nuw i8, ptr %41, i64 48 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %41, i64 56 ; 2 uses
  store i32 64, ptr %i.gn, align 8, !tbaa !405, !alias.scope !1746
  store i64 %i.gj, ptr %i.gm, align 8, !tbaa !75, !alias.scope !1746
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %i.go = call noundef zeroext i1 @_ZN4llvm14SDPatternMatch16TernaryOpc_matchINS0_11Value_matchENS0_10Value_bindIS2_EENS0_17SpecificInt_matchELb0ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(64) %41, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr %.sroa.098.0.i, i32 %.sroa.10.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  %i.gp = load i32, ptr %i.gn, align 8, !tbaa !405
  %i.gq = icmp ugt i32 %i.gp, 64
  br i1 %i.gq, label %bb.ad, label %_ZN4llvm14SDPatternMatch17SpecificInt_matchD2Ev.exit.i

bb.ad:                                            ; preds = %_ZN4llvm14SDPatternMatch11m_InsertEltINS0_11Value_matchENS0_10Value_bindIS2_EENS0_17SpecificInt_matchEEENS0_16TernaryOpc_matchIT_T0_T1_Lb0ELb0EEERKS7_RKS8_RKS9_.exit.i
  %i.gr = load ptr, ptr %i.gm, align 8, !tbaa !75 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %_ZN4llvm14SDPatternMatch17SpecificInt_matchD2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.gr) #38
  br label %_ZN4llvm14SDPatternMatch17SpecificInt_matchD2Ev.exit.i

_ZN4llvm14SDPatternMatch17SpecificInt_matchD2Ev.exit.i: ; preds = %bb.ae, %bb.ad, %_ZN4llvm14SDPatternMatch11m_InsertEltINS0_11Value_matchENS0_10Value_bindIS2_EENS0_17SpecificInt_matchEEENS0_16TernaryOpc_matchIT_T0_T1_Lb0ELb0EEERKS7_RKS8_RKS9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #36
  br i1 %i.go, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4llvm14SDPatternMatch17SpecificInt_matchD2Ev.exit.i
  %i.gt = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #36
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dl, i64 72 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !352
  store i64 %i.gv, ptr %42, align 8, !tbaa !352
  %i.gw = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dl, i64 68 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !351
  store i32 %i.gy, ptr %i.gw, align 8, !tbaa !396
  %i.gz = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.gt, i64 noundef %i.gg, ptr noundef nonnull align 8 dereferenceable(12) %42, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract18.i = extractvalue { ptr, i32 } %i.gz, 0
  %.fca.1.extract19.i = extractvalue { ptr, i32 } %i.gz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  %i.ha = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #36
  %i.hb = load i64, ptr %i.gu, align 8, !tbaa !352
  store i64 %i.hb, ptr %43, align 8, !tbaa !352
  %i.hc = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.hd = load i32, ptr %i.gx, align 4, !tbaa !351
  store i32 %i.hd, ptr %i.hc, align 8, !tbaa !396
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !212
  %i.hg = zext i32 %.sroa.10.0.i to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hg ; 2 uses
  %.sroa.0.0.copyload.i.i66.i = load i16, ptr %i.hh, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i67.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.sroa.21.0.copyload.i.i68.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i67.i, align 8, !tbaa !216
  store ptr %.sroa.0111.0.i, ptr %44, align 8, !tbaa !74
  %.sroa.7115.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i32 %.sroa.7115.0.i, ptr %.sroa.7115.0..sroa_idx116.i, align 8, !tbaa !198
  %.sroa.8.0..sroa_idx122.i = getelementptr inbounds nuw i8, ptr %44, i64 12
  store i32 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx122.i, align 4
  store ptr %.fca.0.extract18.i, ptr %45, align 8, !tbaa !74
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i32 %.fca.1.extract19.i, ptr %.sroa.423.0..sroa_idx.i, align 8, !tbaa !198
  %i.hi = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ha, i32 noundef 163, ptr noundef nonnull align 8 dereferenceable(12) %43, i16 %.sroa.0.0.copyload.i.i66.i, ptr %.sroa.21.0.copyload.i.i68.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %44, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45) #36 ; 2 uses
  %.fca.0.extract12.i = extractvalue { ptr, i32 } %i.hi, 0
  %.fca.1.extract13.i = extractvalue { ptr, i32 } %i.hi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #36
  br label %.critedge.i

bb.ag:                                            ; preds = %_ZN4llvm14SDPatternMatch17SpecificInt_matchD2Ev.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i, i64 48 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !212
  %i.hl = zext i32 %.sroa.10.0.i to i64           ; 2 uses
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.hl ; 2 uses
  %.sroa.0.0.copyload.i.i69.i = load i16, ptr %i.hm, align 8, !tbaa !214 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i70.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %.sroa.21.0.copyload.i.i71.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i70.i, align 8, !tbaa !216
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.hn, align 8, !tbaa !347 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 33
  %.val46.i = load i8, ptr %i.ho, align 1, !tbaa !324, !range !52, !noundef !53
  %i.hp = trunc nuw i8 %.val46.i to i1
  %.not.i.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i69.i, 1
  %i.hq = icmp eq ptr %.sroa.21.0.copyload.i.i71.i, null
  %.not4.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.hq, i1 false ; 2 uses
  br i1 %i.hp, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not4.i.i.i.i.i, label %_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i69.i, 0
  br i1 %.not.i.i.i.i.i, label %.critedge.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i.i: ; preds = %bb.ai
  %i.hr = getelementptr inbounds nuw i8, ptr %.val.i, i64 112
  %i.hs = zext i16 %.sroa.0.0.copyload.i.i69.i to i64 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !398
  %.not.i.i.i74.not.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i74.not.i, label %.critedge.i, label %_ZN12_GLOBAL__N_111DAGCombiner12hasOperationEjN4llvm3EVTE.exit.i

bb.aj:                                            ; preds = %bb.ag
  br i1 %.not4.i.i.i.i.i, label %.split.i900, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i16.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i69.i, 0
  br i1 %.not.i16.i.i.i, label %.critedge.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeE:bb.a
  %i.alh = load i32, ptr %i.b, align 4, !tbaa !198 ; 2 uses
  %i.ali = sdiv i32 %i.alh, 2                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #36
  %i.alj = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 4 uses
  store ptr %i.alj, ptr %84, align 8, !tbaa !43
  %i.alk = getelementptr inbounds nuw i8, ptr %84, i64 8 ; 3 uses
  store i32 0, ptr %i.alk, align 8, !tbaa !76
  %i.all = getelementptr inbounds nuw i8, ptr %84, i64 12
  store i32 8, ptr %i.all, align 4, !tbaa !77
  %.not8341500 = icmp eq i32 %i.alh, 0
  br i1 %.not8341500, label %._crit_edge1504, label %.lr.ph1503

._crit_edge1504.loopexit:                         ; preds = %.lr.ph1503
  %.pre1557 = load ptr, ptr %84, align 8, !tbaa !43
  %.pre1558 = load i32, ptr %i.alk, align 8, !tbaa !76
  %i.alm = zext i32 %.pre1558 to i64
  br label %._crit_edge1504

._crit_edge1504:                                  ; preds = %._crit_edge1504.loopexit, %bb.fg
  %i.aln = phi i64 [ %i.alm, %._crit_edge1504.loopexit ], [ 0, %bb.fg ]
  %i.alo = phi ptr [ %.pre1557, %._crit_edge1504.loopexit ], [ %i.alj, %bb.fg ]
  %i.alp = load ptr, ptr %i.aiv, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0501.0.copyload = load i16, ptr %53, align 8, !tbaa !214
  %.sroa.2503.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !216
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !45
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 600
  %i.als = load ptr, ptr %i.alr, align 8
  %i.alt = call noundef zeroext i1 %i.als(ptr noundef nonnull align 8 dereferenceable(518435) %i.alp, ptr %i.alo, i64 %i.aln, i16 %.sroa.0501.0.copyload, ptr %.sroa.2503.0.copyload) #36
  br i1 %i.alt, label %bb.fh, label %.critedge859

.lr.ph1503:                                       ; preds = %bb.fg, %.lr.ph1503
  %.08101501 = phi i32 [ %i.amb, %.lr.ph1503 ], [ 0, %bb.fg ] ; 2 uses
  %i.alu = load ptr, ptr %i.c, align 8, !tbaa !779
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 88
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !571
  %i.alx = zext i32 %.08101501 to i64
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.alw, i64 %i.alx
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !198 ; 2 uses
  %.not842 = icmp slt i32 %i.alz, %i.ali
  %i.ama = select i1 %.not842, i32 0, i32 %i.ali
  %spec.select857 = sub nsw i32 %i.alz, %i.ama
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %84, i32 noundef %spec.select857)
  %i.amb = add i32 %.08101501, 1                  ; 2 uses
  %i.amc = load i32, ptr %i.b, align 4, !tbaa !198
  %.not834 = icmp eq i32 %i.amb, %i.amc
  br i1 %.not834, label %._crit_edge1504.loopexit, label %.lr.ph1503, !llvm.loop !1735

bb.fh:                                            ; preds = %._crit_edge1504
  %i.amd = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.ame = load ptr, ptr %54, align 8, !tbaa !193
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 40
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !204 ; 2 uses
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !193
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 8
  %i.amj = load i32, ptr %i.ami, align 8, !tbaa !211
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amh, i64 48
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !212
  %i.amm = zext i32 %i.amj to i64
  %i.amn = getelementptr inbounds nuw [16 x i8], ptr %i.aml, i64 %i.amm ; 2 uses
  %.sroa.0.0.copyload.i.i1035 = load i16, ptr %i.amn, align 8, !tbaa !214
  %.sroa.21.0..sroa_idx.i.i1036 = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %.sroa.21.0.copyload.i.i1037 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1036, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.amo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.amd, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.0.0.copyload.i.i1035, ptr %.sroa.21.0.copyload.i.i1037) #36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %.fca.0.extract492 = extractvalue { ptr, i32 } %i.amo, 0
  %.fca.1.extract493 = extractvalue { ptr, i32 } %i.amo, 1
  %i.amp = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #36
  %i.amq = load ptr, ptr %i.a, align 8, !tbaa !74 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 72
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !352
  store i64 %i.ams, ptr %85, align 8, !tbaa !352
  %i.amt = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amq, i64 68
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !351
  store i32 %i.amv, ptr %i.amt, align 8, !tbaa !396
  %.sroa.0487.0.copyload = load i16, ptr %53, align 8, !tbaa !214
  %.sroa.2489.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !216
  %i.amw = load ptr, ptr %54, align 8, !tbaa !193
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 40
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !204
  store ptr %.fca.0.extract492, ptr %86, align 8, !tbaa !74
  %.sroa.4499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i32 %.fca.1.extract493, ptr %.sroa.4499.0..sroa_idx, align 8, !tbaa !198
  %i.amz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.amp, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %85, i16 %.sroa.0487.0.copyload, ptr %.sroa.2489.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.amy, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %86) #36 ; 2 uses
  %.fca.0.extract483 = extractvalue { ptr, i32 } %i.amz, 0
  %.fca.1.extract484 = extractvalue { ptr, i32 } %i.amz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #36
  %i.ana = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0480.0.copyload = load i16, ptr %53, align 8, !tbaa !214
  %.sroa.2482.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #36
  %i.anb = load ptr, ptr %i.a, align 8, !tbaa !74 ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 72
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !352
  store i64 %i.and, ptr %87, align 8, !tbaa !352
  %i.ane = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.anb, i64 68
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !351
  store i32 %i.ang, ptr %i.ane, align 8, !tbaa !396
  %i.anh = load ptr, ptr %84, align 8, !tbaa !43
  store ptr %i.anh, ptr %88, align 8, !tbaa !573
  %i.ani = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.anj = load i32, ptr %i.alk, align 8, !tbaa !76
  %i.ank = zext i32 %i.anj to i64
  store i64 %i.ank, ptr %i.ani, align 8, !tbaa !574
  %i.anl = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ana, i16 %.sroa.0480.0.copyload, ptr %.sroa.2482.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %87, ptr %.fca.0.extract483, i32 %.fca.1.extract484, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %55, ptr noundef nonnull byval(%"class.llvm::ArrayRef.292") align 8 %88) #36 ; 2 uses
  %.fca.0.extract473 = extractvalue { ptr, i32 } %i.anl, 0
  %.fca.1.extract474 = extractvalue { ptr, i32 } %i.anl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #36
  %i.anm = load ptr, ptr %84, align 8, !tbaa !43  ; 2 uses
  %i.ann = icmp eq ptr %i.anm, %i.alj
  br i1 %i.ann, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1040, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @free(ptr noundef %i.anm) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1040

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1040:        ; preds = %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #36
  br label %.critedge854

.critedge859:                                     ; preds = %._crit_edge1504
  %i.ano = load ptr, ptr %84, align 8, !tbaa !43  ; 2 uses
  %i.anp = icmp eq ptr %i.ano, %i.alj
  br i1 %i.anp, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1041, label %bb.fj

bb.fj:                                            ; preds = %.critedge859
  call void @free(ptr noundef %i.ano) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1041

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1041:        ; preds = %.critedge859, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #36
  br label %.critedge23.thread1676

.critedge23.thread1676:                           ; preds = %bb.ez, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1041, %bb.ff, %bb.fe, %.critedge23.thread, %.critedge23
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.anr = load i32, ptr %i.anq, align 8, !tbaa !321 ; 2 uses
  %i.ans = icmp slt i32 %i.anr, 2
  br i1 %i.ans, label %bb.fk, label %thread-pre-split

bb.fk:                                            ; preds = %.critedge23.thread1676
  %i.ant = load ptr, ptr %i.aiv, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0470.0.copyload = load i16, ptr %53, align 8, !tbaa !214 ; 2 uses
  %.not.i1042 = icmp eq i16 %.sroa.0470.0.copyload, 0
  br i1 %.not.i1042, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1089.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.fk
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 112
  %i.anv = zext i16 %.sroa.0470.0.copyload to i64 ; 2 uses
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.anv
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !398
  %.not1459 = icmp eq ptr %i.anx, null
  br i1 %.not1459, label %thread-pre-split.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.any = getelementptr inbounds nuw [537 x i8], ptr %i.ant, i64 %i.anv
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 6350
  %i.aoa = load i8, ptr %i.anz, align 1, !tbaa !400
  %i.aob = and i8 %i.aoa, -5
  %spec.select.i1046 = icmp eq i8 %i.aob, 0
  br i1 %spec.select.i1046, label %bb.fl, label %thread-pre-split.thread

bb.fl:                                            ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #36
  store ptr %0, ptr %89, align 8, !tbaa !783
  %i.aoc = getelementptr inbounds nuw i8, ptr %89, i64 8
  store ptr %i.b, ptr %i.aoc, align 8, !tbaa !455
  %i.aod = getelementptr inbounds nuw i8, ptr %89, i64 16
  store ptr %i.a, ptr %i.aod, align 8, !tbaa !784
  %i.aoe = load ptr, ptr %i.c, align 8, !tbaa !779
  %i.aof = call { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %i.aoe) ; 2 uses
  %i.aog = extractvalue { ptr, i64 } %i.aof, 0    ; 2 uses
  %i.aoh = extractvalue { ptr, i64 } %i.aof, 1    ; 2 uses
  %i.aoi = load ptr, ptr %55, align 8, !tbaa !193 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  %i.aok = load i32, ptr %i.aoj, align 8, !tbaa !72
  %i.aol = icmp eq i32 %i.aok, 165
  br i1 %i.aol, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %.sroa.0462.0.copyload = load ptr, ptr %54, align 8, !tbaa !74
  %.sroa.2463.0.copyload = load i32, ptr %i.al, align 8, !tbaa !198
  %i.aom = call fastcc { ptr, i32 } @"_ZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEENK3$_0clENS1_7SDValueES5_NS1_8ArrayRefIiEE"(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr %.sroa.0462.0.copyload, i32 %.sroa.2463.0.copyload, ptr nonnull %i.aoi, ptr %i.aog, i64 %i.aoh) ; 2 uses
  %.fca.0.extract455 = extractvalue { ptr, i32 } %i.aom, 0 ; 2 uses
  %.not1460 = icmp eq ptr %.fca.0.extract455, null
  br i1 %.not1460, label %bb.fn, label %.critedge861

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.aon = load ptr, ptr %54, align 8, !tbaa !193
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 24
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !72
  %i.aoq = icmp eq i32 %i.aop, 165
  br i1 %i.aoq, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #36
  call void @_ZN4llvm11SmallVectorIiLj12EEC2IivEENS_8ArrayRefIT_EE(ptr noundef nonnull align 8 dereferenceable(64) %90, ptr %i.aog, i64 %i.aoh)
  %i.aor = load ptr, ptr %90, align 8, !tbaa !43  ; 6 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %90, i64 8 ; 2 uses
  %i.aot = load i32, ptr %i.aos, align 8, !tbaa !76 ; 7 uses
  %i.aou = zext i32 %i.aot to i64                 ; 3 uses
  %.not17.i = icmp eq i32 %i.aot, 0
  br i1 %.not17.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i1048.preheader

.lr.ph.i1048.preheader:                           ; preds = %bb.fo
  %i.aov = sub i32 0, %i.aot                      ; 2 uses
  %min.iters.check1708 = icmp ult i32 %i.aot, 4
  br i1 %min.iters.check1708, label %.lr.ph.i1048.preheader1758, label %vector.ph1709

vector.ph1709:                                    ; preds = %.lr.ph.i1048.preheader
  %n.vec1710 = and i64 %i.aou, 4294967292         ; 3 uses
  %broadcast.splatinsert1711 = insertelement <4 x i32> poison, i32 %i.aov, i64 0
  %broadcast.splat1712 = shufflevector <4 x i32> %broadcast.splatinsert1711, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1713 = insertelement <4 x i32> poison, i32 %i.aot, i64 0
  %broadcast.splat1714 = shufflevector <4 x i32> %broadcast.splatinsert1713, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1715

vector.body1715:                                  ; preds = %pred.store.continue1725, %vector.ph1709
  %index1716 = phi i64 [ 0, %vector.ph1709 ], [ %index.next1726, %pred.store.continue1725 ] ; 5 uses
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %index1716 ; 2 uses
  %wide.load1717 = load <4 x i32>, ptr %i.aow, align 4, !tbaa !198 ; 3 uses
  %i.aox = icmp sgt <4 x i32> %wide.load1717, splat (i32 -1) ; 4 uses
  %i.aoy = icmp slt <4 x i32> %wide.load1717, %broadcast.splat1714
  %i.aoz = select <4 x i1> %i.aoy, <4 x i32> %broadcast.splat1714, <4 x i32> %broadcast.splat1712
  %i.apa = add <4 x i32> %i.aoz, %wide.load1717   ; 4 uses
  %i.apb = extractelement <4 x i1> %i.aox, i64 0
  br i1 %i.apb, label %pred.store.if1718, label %pred.store.continue1719

pred.store.if1718:                                ; preds = %vector.body1715
  %i.apc = extractelement <4 x i32> %i.apa, i64 0
  store i32 %i.apc, ptr %i.aow, align 4, !tbaa !198
  br label %pred.store.continue1719

pred.store.continue1719:                          ; preds = %pred.store.if1718, %vector.body1715
  %i.apd = extractelement <4 x i1> %i.aox, i64 1
  br i1 %i.apd, label %pred.store.if1720, label %pred.store.continue1721

pred.store.if1720:                                ; preds = %pred.store.continue1719
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %index1716
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 4
  %i.apg = extractelement <4 x i32> %i.apa, i64 1
  store i32 %i.apg, ptr %i.apf, align 4, !tbaa !198
  br label %pred.store.continue1721

pred.store.continue1721:                          ; preds = %pred.store.if1720, %pred.store.continue1719
  %i.aph = extractelement <4 x i1> %i.aox, i64 2
  br i1 %i.aph, label %pred.store.if1722, label %pred.store.continue1723

pred.store.if1722:                                ; preds = %pred.store.continue1721
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %index1716
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  %i.apk = extractelement <4 x i32> %i.apa, i64 2
  store i32 %i.apk, ptr %i.apj, align 4, !tbaa !198
  br label %pred.store.continue1723

pred.store.continue1723:                          ; preds = %pred.store.if1722, %pred.store.continue1721
  %i.apl = extractelement <4 x i1> %i.aox, i64 3
  br i1 %i.apl, label %pred.store.if1724, label %pred.store.continue1725

pred.store.if1724:                                ; preds = %pred.store.continue1723
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %index1716
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 12
  %i.apo = extractelement <4 x i32> %i.apa, i64 3
  store i32 %i.apo, ptr %i.apn, align 4, !tbaa !198
  br label %pred.store.continue1725

pred.store.continue1725:                          ; preds = %pred.store.if1724, %pred.store.continue1723
  %index.next1726 = add nuw i64 %index1716, 4     ; 2 uses
  %i.app = icmp eq i64 %index.next1726, %n.vec1710
  br i1 %i.app, label %middle.block1727, label %vector.body1715, !llvm.loop !1736

middle.block1727:                                 ; preds = %pred.store.continue1725
  %cmp.n1728 = icmp eq i64 %n.vec1710, %i.aou
  br i1 %cmp.n1728, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, label %.lr.ph.i1048.preheader1758

.lr.ph.i1048.preheader1758:                       ; preds = %.lr.ph.i1048.preheader, %middle.block1727
  %indvars.iv.i1049.ph = phi i64 [ 0, %.lr.ph.i1048.preheader ], [ %n.vec1710, %middle.block1727 ]
  br label %.lr.ph.i1048

.lr.ph.i1048:                                     ; preds = %.lr.ph.i1048.preheader1758, %bb.fp
  %indvars.iv.i1049 = phi i64 [ %indvars.iv.next.i1050, %bb.fp ], [ %indvars.iv.i1049.ph, %.lr.ph.i1048.preheader1758 ] ; 2 uses
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.i1049 ; 2 uses
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !198 ; 3 uses
  %i.aps = icmp slt i32 %i.apr, 0
  br i1 %i.aps, label %bb.fp, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i1048
  %i.apt = icmp slt i32 %i.apr, %i.aot
  %.sink.p.i = select i1 %i.apt, i32 %i.aot, i32 %i.aov
  %.sink.i = add i32 %.sink.p.i, %i.apr
  store i32 %.sink.i, ptr %i.apq, align 4, !tbaa !198
  br label %bb.fp

bb.fp:                                            ; preds = %.sink.split.i, %.lr.ph.i1048
  %indvars.iv.next.i1050 = add nuw nsw i64 %indvars.iv.i1049, 1 ; 2 uses
  %.not.i1051 = icmp eq i64 %indvars.iv.next.i1050, %i.aou
  br i1 %.not.i1051, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, label %.lr.ph.i1048, !llvm.loop !1737

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit: ; preds = %bb.fp, %middle.block1727
  %.pre1559 = load i32, ptr %i.aos, align 8, !tbaa !76
  %i.apu = zext i32 %.pre1559 to i64
  br label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit: ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, %bb.fo
  %i.apv = phi i64 [ %i.apu, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit ], [ 0, %bb.fo ]
  %.sroa.0450.0.copyload = load ptr, ptr %55, align 8, !tbaa !74
  %.sroa.2451.0.copyload = load i32, ptr %i.an, align 8, !tbaa !198
  %.sroa.0447.0.copyload = load ptr, ptr %54, align 8, !tbaa !74
  %i.apw = call fastcc { ptr, i32 } @"_ZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEENK3$_0clENS1_7SDValueES5_NS1_8ArrayRefIiEE"(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr %.sroa.0450.0.copyload, i32 %.sroa.2451.0.copyload, ptr %.sroa.0447.0.copyload, ptr %i.aor, i64 %i.apv) ; 2 uses
  %.fca.0.extract443 = extractvalue { ptr, i32 } %i.apw, 0 ; 2 uses
  %.not1461 = icmp eq ptr %.fca.0.extract443, null
  %i.apx = load ptr, ptr %90, align 8, !tbaa !43  ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.apz = icmp eq ptr %i.apx, %i.apy
  br i1 %i.apz, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.fq

bb.fq:                                            ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit
  call void @free(ptr noundef %i.apx) #36
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #36
  br i1 %.not1461, label %bb.fr, label %.critedge861

bb.fr:                                            ; preds = %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #36
  %.pr.pre = load i32, ptr %i.anq, align 8, !tbaa !321
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.fr, %.critedge23.thread1676
  %i.aqa = phi i32 [ %i.anr, %.critedge23.thread1676 ], [ %.pr.pre, %bb.fr ]
  %i.aqb = icmp slt i32 %i.aqa, 3
  br i1 %i.aqb, label %thread-pre-split.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1089.thread

thread-pre-split.thread:                          ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %thread-pre-split
  %.sroa.0440.0.copyload.pr = load i16, ptr %53, align 8, !tbaa !214 ; 2 uses
  %.not.i1053 = icmp eq i16 %.sroa.0440.0.copyload.pr, 0
  br i1 %.not.i1053, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1089.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1054

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1054: ; preds = %thread-pre-split.thread
  %i.aqc = load ptr, ptr %i.aiv, align 8, !tbaa !347, !nonnull !53, !align !197
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 112
  %i.aqe = zext i16 %.sroa.0440.0.copyload.pr to i64
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aqd, i64 %i.aqe
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !398
  %.not1462 = icmp eq ptr %i.aqg, null
  br i1 %.not1462, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1054.thread.thread, label %bb.fs

bb.fs:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1054
  %i.aqh = load ptr, ptr %i.c, align 8, !tbaa !779
  %i.aqi = call { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %i.aqh)
  %i.aqj = extractvalue { ptr, i64 } %i.aqi, 0    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #36
  %i.aqk = load i32, ptr %i.b, align 4, !tbaa !198
  %i.aql = zext i32 %i.aqk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  store i32 -1, ptr %i.e, align 4, !tbaa !198
  call void @_ZN4llvm11SmallVectorIiLj16EEC2EmRKi(ptr noundef nonnull align 8 dereferenceable(80) %91, i64 noundef %i.aql, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #36
  %i.aqm = load i32, ptr %i.b, align 4, !tbaa !198 ; 4 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 5 uses
  store i32 %i.aqm, ptr %i.aqn, align 8, !tbaa !405, !alias.scope !1747
  %i.aqo = icmp ult i32 %i.aqm, 65
  br i1 %i.aqo, label %_ZN4llvm5APInt7getZeroEj.exit.thread, label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit.thread:             ; preds = %bb.fs
  store i64 0, ptr %92, align 8, !tbaa !75, !alias.scope !1747
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #36
  %i.aqp = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 2 uses
  store i32 %i.aqm, ptr %i.aqp, align 8, !tbaa !405, !alias.scope !1748
  br label %bb.ft

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.fs
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %92, i64 noundef 0, i1 noundef zeroext false) #36
  %.pre1561 = load i32, ptr %i.b, align 4, !tbaa !198 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #36
  %i.aqq = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 3 uses
  store i32 %.pre1561, ptr %i.aqq, align 8, !tbaa !405, !alias.scope !1748
  %i.aqr = icmp ult i32 %.pre1561, 65
  br i1 %i.aqr, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %_ZN4llvm5APInt7getZeroEj.exit.thread, %_ZN4llvm5APInt7getZeroEj.exit
  %i.aqs = phi ptr [ %i.aqp, %_ZN4llvm5APInt7getZeroEj.exit.thread ], [ %i.aqq, %_ZN4llvm5APInt7getZeroEj.exit ]
  %i.aqt = phi i32 [ %i.aqm, %_ZN4llvm5APInt7getZeroEj.exit.thread ], [ %.pre1561, %_ZN4llvm5APInt7getZeroEj.exit ]
  store i64 0, ptr %93, align 8, !tbaa !75, !alias.scope !1748
  br label %_ZN4llvm5APInt7getZeroEj.exit1057

bb.fu:                                            ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %93, i64 noundef 0, i1 noundef zeroext false) #36
  %.pre1562 = load i32, ptr %i.b, align 4, !tbaa !198
  br label %_ZN4llvm5APInt7getZeroEj.exit1057

_ZN4llvm5APInt7getZeroEj.exit1057:                ; preds = %bb.ft, %bb.fu
  %i.aqu = phi ptr [ %i.aqs, %bb.ft ], [ %i.aqq, %bb.fu ] ; 5 uses
  %i.aqv = phi i32 [ %i.aqt, %bb.ft ], [ %.pre1562, %bb.fu ] ; 2 uses
  %.not8351505 = icmp eq i32 %i.aqv, 0
  br i1 %.not8351505, label %.critedge1531, label %.lr.ph1508

.lr.ph1508:                                       ; preds = %_ZN4llvm5APInt7getZeroEj.exit1057
  %i.aqw = load ptr, ptr %91, align 8
  br label %bb.fv

._crit_edge1509:                                  ; preds = %_ZN4llvm5APInt6setBitEj.exit
  br i1 %.1813, label %.critedge1531, label %bb.ga

bb.fv:                                            ; preds = %.lr.ph1508, %_ZN4llvm5APInt6setBitEj.exit
  %i.aqx = phi i32 [ %i.aqv, %.lr.ph1508 ], [ %i.asa, %_ZN4llvm5APInt6setBitEj.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph1508 ], [ %indvars.iv.next, %_ZN4llvm5APInt6setBitEj.exit ] ; 5 uses
  %.08121507 = phi i1 [ true, %.lr.ph1508 ], [ %.1813, %_ZN4llvm5APInt6setBitEj.exit ] ; 2 uses
  %.08141506 = phi i32 [ 0, %.lr.ph1508 ], [ %i.asb, %_ZN4llvm5APInt6setBitEj.exit ] ; 2 uses
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.aqj, i64 %indvars.iv
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !198 ; 5 uses
  %i.ara = icmp slt i32 %i.aqz, 0
  br i1 %i.ara, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.arb = zext nneg i32 %i.aqz to i64
  %i.arc = icmp eq i64 %indvars.iv, %i.arb        ; 3 uses
  %i.ard = select i1 %i.arc, i32 0, i32 %i.aqx
  %i.are = trunc nuw nsw i64 %indvars.iv to i32
  %i.arf = add i32 %i.ard, %i.are
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.aqw, i64 %indvars.iv
  store i32 %i.arf, ptr %i.arg, align 4, !tbaa !198
  %i.arh = load i32, ptr %i.b, align 4            ; 6 uses
  %i.ari = add i32 %i.arh, %.08141506
  %i.arj = icmp eq i32 %i.aqz, %i.ari
  %narrow = select i1 %i.arc, i1 true, i1 %i.arj
  %i.ark = select i1 %narrow, i1 %.08121507, i1 false ; 3 uses
  br i1 %i.arc, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.arl = icmp slt i32 %i.aqz, %i.arh            ; 2 uses
  %. = select i1 %i.arl, ptr %92, ptr %93         ; 3 uses
  %i.arm = urem i32 %i.aqz, %i.arh                ; 2 uses
  %i.arn = and i32 %i.arm, 63
  %i.aro = zext nneg i32 %i.arn to i64
  %i.arp = shl nuw i64 1, %i.aro                  ; 2 uses
  %.val = load i32, ptr %i.aqn, align 8
  %.val1463 = load i32, ptr %i.aqu, align 8
  %i.arq = select i1 %i.arl, i32 %.val, i32 %.val1463
  %i.arr = icmp ult i32 %i.arq, 65
  br i1 %i.arr, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.ars = load i64, ptr %., align 8, !tbaa !75
  %i.art = or i64 %i.ars, %i.arp
  store i64 %i.art, ptr %., align 8, !tbaa !75
  br label %_ZN4llvm5APInt6setBitEj.exit

bb.fz:                                            ; preds = %bb.fx
  %i.aru = load ptr, ptr %., align 8, !tbaa !75
  %i.arv = lshr i32 %i.arm, 6
  %i.arw = zext nneg i32 %i.arv to i64
  %i.arx = getelementptr inbounds nuw [8 x i8], ptr %i.aru, i64 %i.arw ; 2 uses
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !367
  %i.arz = or i64 %i.ary, %i.arp
  store i64 %i.arz, ptr %i.arx, align 8, !tbaa !367
  br label %_ZN4llvm5APInt6setBitEj.exit

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %bb.fz, %bb.fy, %bb.fw, %bb.fv
  %i.asa = phi i32 [ %i.aqx, %bb.fv ], [ %i.arh, %bb.fw ], [ %i.arh, %bb.fy ], [ %i.arh, %bb.fz ] ; 2 uses
  %.1813 = phi i1 [ %.08121507, %bb.fv ], [ %i.ark, %bb.fw ], [ %i.ark, %bb.fy ], [ %i.ark, %bb.fz ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.asb = add nuw nsw i32 %.08141506, 1
  %i.asc = zext i32 %i.asa to i64
  %.not835 = icmp eq i64 %indvars.iv.next, %i.asc
  br i1 %.not835, label %._crit_edge1509, label %bb.fv, !llvm.loop !1742
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeE:bb.a
  %.sroa.2.0.copyload.i.i1163 = load i8, ptr %.sroa.2.0..sroa_idx.i.i1162, align 8
  %.fca.0.insert.i.i1164 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i1161, 0
  %.fca.1.insert.i.i1165 = insertvalue { i64, i8 } %.fca.0.insert.i.i1164, i8 %.sroa.2.0.copyload.i.i1163, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1167

bb.ig:                                            ; preds = %bb.ie
  %i.bcj = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %108) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1167

_ZNK4llvm3EVT13getSizeInBitsEv.exit1167:          ; preds = %bb.if, %bb.ig
  %.pn.i1166 = phi { i64, i8 } [ %.fca.1.insert.i.i1165, %bb.if ], [ %i.bcj, %bb.ig ] ; 2 uses
  %.fca.0.extract256 = extractvalue { i64, i8 } %.pn.i1166, 0
  %.fca.1.extract257 = extractvalue { i64, i8 } %.pn.i1166, 1
  %i.bck = trunc nuw i8 %.fca.1.extract257 to i1
  br i1 %i.bck, label %bb.ih, label %_ZNK4llvm8TypeSizecvmEv.exit1168

bb.ih:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1167
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1168:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1167
  br i1 %.not.i1133, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1168
  %i.bcl = zext i16 %i.bay to i64
  %i.bcm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bcl ; 2 uses
  %i.bcn = getelementptr i8, ptr %i.bcm, i64 -16
  %.sroa.0.0.copyload.i.i1170 = load i64, ptr %i.bcn, align 16
  %.sroa.2.0..sroa_idx.i.i1171 = getelementptr i8, ptr %i.bcm, i64 -8
  %.sroa.2.0.copyload.i.i1172 = load i8, ptr %.sroa.2.0..sroa_idx.i.i1171, align 8
  %.fca.0.insert.i.i1173 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i1170, 0
  %.fca.1.insert.i.i1174 = insertvalue { i64, i8 } %.fca.0.insert.i.i1173, i8 %.sroa.2.0.copyload.i.i1172, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1176

bb.ij:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1168
  %i.bco = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %110) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1176

_ZNK4llvm3EVT13getSizeInBitsEv.exit1176:          ; preds = %bb.ii, %bb.ij
  %.pn.i1175 = phi { i64, i8 } [ %.fca.1.insert.i.i1174, %bb.ii ], [ %i.bco, %bb.ij ] ; 2 uses
  %.fca.1.extract253 = extractvalue { i64, i8 } %.pn.i1175, 1
  %i.bcp = trunc nuw i8 %.fca.1.extract253 to i1
  br i1 %i.bcp, label %bb.ik, label %_ZNK4llvm8TypeSizecvmEv.exit1177

bb.ik:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1176
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1177:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1176
  %.fca.0.extract252 = extractvalue { i64, i8 } %.pn.i1175, 0
  %i.bcq = udiv i64 %.fca.0.extract256, %.fca.0.extract252
  %i.bcr = trunc i64 %i.bcq to i32
  br i1 %.not.i1142, label %bb.im, label %bb.il

bb.il:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1177
  %i.bcs = zext i16 %i.bbt to i64
  %i.bct = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bcs ; 2 uses
  %i.bcu = getelementptr i8, ptr %i.bct, i64 -16
  %.sroa.0.0.copyload.i.i1179 = load i64, ptr %i.bcu, align 16
  %.sroa.2.0..sroa_idx.i.i1180 = getelementptr i8, ptr %i.bct, i64 -8
  %.sroa.2.0.copyload.i.i1181 = load i8, ptr %.sroa.2.0..sroa_idx.i.i1180, align 8
  %.fca.0.insert.i.i1182 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i1179, 0
  %.fca.1.insert.i.i1183 = insertvalue { i64, i8 } %.fca.0.insert.i.i1182, i8 %.sroa.2.0.copyload.i.i1181, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1185

bb.im:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1177
  %i.bcv = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %106) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1185

_ZNK4llvm3EVT13getSizeInBitsEv.exit1185:          ; preds = %bb.il, %bb.im
  %.pn.i1184 = phi { i64, i8 } [ %.fca.1.insert.i.i1183, %bb.il ], [ %i.bcv, %bb.im ] ; 2 uses
  %.fca.0.extract247 = extractvalue { i64, i8 } %.pn.i1184, 0
  %.fca.1.extract248 = extractvalue { i64, i8 } %.pn.i1184, 1
  %i.bcw = trunc nuw i8 %.fca.1.extract248 to i1
  br i1 %i.bcw, label %bb.in, label %_ZNK4llvm8TypeSizecvmEv.exit1186

bb.in:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1185
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1186:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1185
  br i1 %.not.i1133, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1186
  %i.bcx = zext i16 %i.bay to i64
  %i.bcy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bcx ; 2 uses
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 -16
  %.sroa.0.0.copyload.i.i1188 = load i64, ptr %i.bcz, align 16
  %.sroa.2.0..sroa_idx.i.i1189 = getelementptr i8, ptr %i.bcy, i64 -8
  %.sroa.2.0.copyload.i.i1190 = load i8, ptr %.sroa.2.0..sroa_idx.i.i1189, align 8
  %.fca.0.insert.i.i1191 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i1188, 0
  %.fca.1.insert.i.i1192 = insertvalue { i64, i8 } %.fca.0.insert.i.i1191, i8 %.sroa.2.0.copyload.i.i1190, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1194

bb.ip:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1186
  %i.bda = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %110) #37
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit1194

_ZNK4llvm3EVT13getSizeInBitsEv.exit1194:          ; preds = %bb.io, %bb.ip
  %.pn.i1193 = phi { i64, i8 } [ %.fca.1.insert.i.i1192, %bb.io ], [ %i.bda, %bb.ip ] ; 2 uses
  %.fca.1.extract244 = extractvalue { i64, i8 } %.pn.i1193, 1
  %i.bdb = trunc nuw i8 %.fca.1.extract244 to i1
  br i1 %i.bdb, label %bb.iq, label %_ZNK4llvm8TypeSizecvmEv.exit1195

bb.iq:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1194
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.40) #39
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1195:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit1194
  %.fca.0.extract243 = extractvalue { i64, i8 } %.pn.i1193, 0
  %i.bdc = udiv i64 %.fca.0.extract247, %.fca.0.extract243
  %i.bdd = trunc i64 %i.bdc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #36
  %i.bde = getelementptr inbounds nuw i8, ptr %111, i64 16 ; 3 uses
  store ptr %i.bde, ptr %111, align 8, !tbaa !43
  %i.bdf = getelementptr inbounds nuw i8, ptr %111, i64 8
  store i32 0, ptr %i.bdf, align 8, !tbaa !76
  %i.bdg = getelementptr inbounds nuw i8, ptr %111, i64 12
  store i32 8, ptr %i.bdg, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #36
  %i.bdh = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 3 uses
  store ptr %i.bdh, ptr %112, align 8, !tbaa !43
  %i.bdi = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 2 uses
  store i32 0, ptr %i.bdi, align 8, !tbaa !76
  %i.bdj = getelementptr inbounds nuw i8, ptr %112, i64 12
  store i32 8, ptr %i.bdj, align 4, !tbaa !77
  %i.bdk = call { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %.fca.0.extract283) ; 2 uses
  %i.bdl = extractvalue { ptr, i64 } %i.bdk, 0
  %i.bdm = extractvalue { ptr, i64 } %i.bdk, 1
  call void @_ZN4llvm21narrowShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef %i.bcr, ptr %i.bdl, i64 %i.bdm, ptr noundef nonnull align 8 dereferenceable(16) %111) #36
  %i.bdn = load ptr, ptr %i.c, align 8, !tbaa !779
  %i.bdo = call { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bdn) ; 2 uses
  %i.bdp = extractvalue { ptr, i64 } %i.bdo, 0
  %i.bdq = extractvalue { ptr, i64 } %i.bdo, 1
  call void @_ZN4llvm21narrowShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef %i.bdd, ptr %i.bdp, i64 %i.bdq, ptr noundef nonnull align 8 dereferenceable(16) %112) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #36
  %i.bdr = getelementptr inbounds nuw i8, ptr %113, i64 16 ; 4 uses
  store ptr %i.bdr, ptr %113, align 8, !tbaa !43
  %i.bds = getelementptr inbounds nuw i8, ptr %113, i64 8 ; 5 uses
  store i32 0, ptr %i.bds, align 8, !tbaa !76
  %i.bdt = getelementptr inbounds nuw i8, ptr %113, i64 12
  store i32 8, ptr %i.bdt, align 4, !tbaa !77
  %i.bdu = load ptr, ptr %112, align 8, !tbaa !43 ; 2 uses
  %i.bdv = load i32, ptr %i.bdi, align 8, !tbaa !76 ; 2 uses
  %i.bdw = zext i32 %i.bdv to i64
  %.idx = shl nuw nsw i64 %i.bdw, 2
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdu, i64 %.idx
  %.not8381516 = icmp eq i32 %i.bdv, 0
  br i1 %.not8381516, label %._crit_edge1519, label %.lr.ph1518

._crit_edge1519.loopexit:                         ; preds = %bb.is
  %.pre1564 = load ptr, ptr %113, align 8, !tbaa !43
  %.pre1565 = load i32, ptr %i.bds, align 8, !tbaa !76
  %i.bdy = zext i32 %.pre1565 to i64
  br label %._crit_edge1519

._crit_edge1519:                                  ; preds = %._crit_edge1519.loopexit, %_ZNK4llvm8TypeSizecvmEv.exit1195
  %i.bdz = phi i64 [ %i.bdy, %._crit_edge1519.loopexit ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit1195 ]
  %i.bea = phi ptr [ %.pre1564, %._crit_edge1519.loopexit ], [ %i.bdr, %_ZNK4llvm8TypeSizecvmEv.exit1195 ]
  %i.beb = getelementptr inbounds nuw i8, ptr %.fca.0.extract283, i64 40
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !204 ; 5 uses
  %.sroa.01298.0.copyload = load ptr, ptr %i.bec, align 8, !tbaa !74 ; 2 uses
  %.sroa.91300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bec, i64 8
  %.sroa.91300.0.copyload = load i32, ptr %.sroa.91300.0..sroa_idx, align 8, !tbaa !198 ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 40
  %.sroa.01286.0.copyload = load ptr, ptr %i.bed, align 8, !tbaa !74 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bec, i64 48
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !198 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bec, i64 52
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4
  %i.bee = load ptr, ptr %i.aiv, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0225.0.copyload = load i16, ptr %109, align 8, !tbaa !214
  %.sroa.2227.0.copyload = load ptr, ptr %.sroa.2279.0..sroa_idx, align 8, !tbaa !216
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !45
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 600
  %i.beh = load ptr, ptr %i.beg, align 8
  %i.bei = call noundef zeroext i1 %i.beh(ptr noundef nonnull align 8 dereferenceable(518435) %i.bee, ptr %i.bea, i64 %i.bdz, i16 %.sroa.0225.0.copyload, ptr %.sroa.2227.0.copyload) #36
  br i1 %i.bei, label %.critedge873, label %bb.it

.lr.ph1518:                                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1195, %bb.is
  %.08161517 = phi ptr [ %i.beq, %bb.is ], [ %i.bdu, %_ZNK4llvm8TypeSizecvmEv.exit1195 ] ; 2 uses
  %i.bej = load i32, ptr %.08161517, align 4, !tbaa !198 ; 2 uses
  %i.bek = icmp slt i32 %i.bej, 0
  br i1 %i.bek, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %.lr.ph1518
  %i.bel = zext nneg i32 %i.bej to i64
  %i.bem = load ptr, ptr %111, align 8, !tbaa !43
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %i.bem, i64 %i.bel
  %i.beo = load i32, ptr %i.ben, align 4, !tbaa !198
  br label %bb.is

bb.is:                                            ; preds = %.lr.ph1518, %bb.ir
  %i.bep = phi i32 [ %i.beo, %bb.ir ], [ -1, %.lr.ph1518 ]
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %113, i32 noundef %i.bep)
  %i.beq = getelementptr inbounds nuw i8, ptr %.08161517, i64 4 ; 2 uses
  %.not838 = icmp eq ptr %i.beq, %i.bdx
  br i1 %.not838, label %._crit_edge1519.loopexit, label %.lr.ph1518

bb.it:                                            ; preds = %._crit_edge1519
  %i.ber = load ptr, ptr %113, align 8, !tbaa !43 ; 6 uses
  %i.bes = load i32, ptr %i.bds, align 8, !tbaa !76 ; 7 uses
  %i.bet = zext i32 %i.bes to i64                 ; 3 uses
  %.not17.i1196 = icmp eq i32 %i.bes, 0
  br i1 %.not17.i1196, label %.loopexit, label %.lr.ph.i1198.preheader

.lr.ph.i1198.preheader:                           ; preds = %bb.it
  %i.beu = sub i32 0, %i.bes                      ; 2 uses
  %min.iters.check1731 = icmp ult i32 %i.bes, 4
  br i1 %min.iters.check1731, label %.lr.ph.i1198.preheader1756, label %vector.ph1732

vector.ph1732:                                    ; preds = %.lr.ph.i1198.preheader
  %n.vec1733 = and i64 %i.bet, 4294967292         ; 3 uses
  %broadcast.splatinsert1734 = insertelement <4 x i32> poison, i32 %i.beu, i64 0
  %broadcast.splat1735 = shufflevector <4 x i32> %broadcast.splatinsert1734, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1736 = insertelement <4 x i32> poison, i32 %i.bes, i64 0
  %broadcast.splat1737 = shufflevector <4 x i32> %broadcast.splatinsert1736, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1738

vector.body1738:                                  ; preds = %pred.store.continue1748, %vector.ph1732
  %index1739 = phi i64 [ 0, %vector.ph1732 ], [ %index.next1749, %pred.store.continue1748 ] ; 5 uses
  %i.bev = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %index1739 ; 2 uses
  %wide.load1740 = load <4 x i32>, ptr %i.bev, align 4, !tbaa !198 ; 3 uses
  %i.bew = icmp sgt <4 x i32> %wide.load1740, splat (i32 -1) ; 4 uses
  %i.bex = icmp slt <4 x i32> %wide.load1740, %broadcast.splat1737
  %i.bey = select <4 x i1> %i.bex, <4 x i32> %broadcast.splat1737, <4 x i32> %broadcast.splat1735
  %i.bez = add <4 x i32> %i.bey, %wide.load1740   ; 4 uses
  %i.bfa = extractelement <4 x i1> %i.bew, i64 0
  br i1 %i.bfa, label %pred.store.if1741, label %pred.store.continue1742

pred.store.if1741:                                ; preds = %vector.body1738
  %i.bfb = extractelement <4 x i32> %i.bez, i64 0
  store i32 %i.bfb, ptr %i.bev, align 4, !tbaa !198
  br label %pred.store.continue1742

pred.store.continue1742:                          ; preds = %pred.store.if1741, %vector.body1738
  %i.bfc = extractelement <4 x i1> %i.bew, i64 1
  br i1 %i.bfc, label %pred.store.if1743, label %pred.store.continue1744

pred.store.if1743:                                ; preds = %pred.store.continue1742
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %index1739
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfd, i64 4
  %i.bff = extractelement <4 x i32> %i.bez, i64 1
  store i32 %i.bff, ptr %i.bfe, align 4, !tbaa !198
  br label %pred.store.continue1744

pred.store.continue1744:                          ; preds = %pred.store.if1743, %pred.store.continue1742
  %i.bfg = extractelement <4 x i1> %i.bew, i64 2
  br i1 %i.bfg, label %pred.store.if1745, label %pred.store.continue1746

pred.store.if1745:                                ; preds = %pred.store.continue1744
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %index1739
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 8
  %i.bfj = extractelement <4 x i32> %i.bez, i64 2
  store i32 %i.bfj, ptr %i.bfi, align 4, !tbaa !198
  br label %pred.store.continue1746

pred.store.continue1746:                          ; preds = %pred.store.if1745, %pred.store.continue1744
  %i.bfk = extractelement <4 x i1> %i.bew, i64 3
  br i1 %i.bfk, label %pred.store.if1747, label %pred.store.continue1748

pred.store.if1747:                                ; preds = %pred.store.continue1746
  %i.bfl = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %index1739
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 12
  %i.bfn = extractelement <4 x i32> %i.bez, i64 3
  store i32 %i.bfn, ptr %i.bfm, align 4, !tbaa !198
  br label %pred.store.continue1748

pred.store.continue1748:                          ; preds = %pred.store.if1747, %pred.store.continue1746
  %index.next1749 = add nuw i64 %index1739, 4     ; 2 uses
  %i.bfo = icmp eq i64 %index.next1749, %n.vec1733
  br i1 %i.bfo, label %middle.block1750, label %vector.body1738, !llvm.loop !1744

middle.block1750:                                 ; preds = %pred.store.continue1748
  %cmp.n1751 = icmp eq i64 %n.vec1733, %i.bet
  br i1 %cmp.n1751, label %.loopexit.loopexit, label %.lr.ph.i1198.preheader1756

.lr.ph.i1198.preheader1756:                       ; preds = %.lr.ph.i1198.preheader, %middle.block1750
  %indvars.iv.i1199.ph = phi i64 [ 0, %.lr.ph.i1198.preheader ], [ %n.vec1733, %middle.block1750 ]
  br label %.lr.ph.i1198

.lr.ph.i1198:                                     ; preds = %.lr.ph.i1198.preheader1756, %bb.iu
  %indvars.iv.i1199 = phi i64 [ %indvars.iv.next.i1203, %bb.iu ], [ %indvars.iv.i1199.ph, %.lr.ph.i1198.preheader1756 ] ; 2 uses
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %i.ber, i64 %indvars.iv.i1199 ; 2 uses
  %i.bfq = load i32, ptr %i.bfp, align 4, !tbaa !198 ; 3 uses
  %i.bfr = icmp slt i32 %i.bfq, 0
  br i1 %i.bfr, label %bb.iu, label %.sink.split.i1200

.sink.split.i1200:                                ; preds = %.lr.ph.i1198
  %i.bfs = icmp slt i32 %i.bfq, %i.bes
  %.sink.p.i1201 = select i1 %i.bfs, i32 %i.bes, i32 %i.beu
  %.sink.i1202 = add i32 %.sink.p.i1201, %i.bfq
  store i32 %.sink.i1202, ptr %i.bfp, align 4, !tbaa !198
  br label %bb.iu

bb.iu:                                            ; preds = %.sink.split.i1200, %.lr.ph.i1198
  %indvars.iv.next.i1203 = add nuw nsw i64 %indvars.iv.i1199, 1 ; 2 uses
  %.not.i1204 = icmp eq i64 %indvars.iv.next.i1203, %i.bet
  br i1 %.not.i1204, label %.loopexit.loopexit, label %.lr.ph.i1198, !llvm.loop !1745

.loopexit.loopexit:                               ; preds = %bb.iu, %middle.block1750
  %.pre1566 = load i32, ptr %i.bds, align 8, !tbaa !76
  %i.bft = zext i32 %.pre1566 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.it
  %i.bfu = phi i64 [ %i.bft, %.loopexit.loopexit ], [ 0, %bb.it ]
  %i.bfv = load ptr, ptr %i.aiv, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0222.0.copyload = load i16, ptr %109, align 8, !tbaa !214
  %.sroa.2224.0.copyload = load ptr, ptr %.sroa.2279.0..sroa_idx, align 8, !tbaa !216
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !45
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 600
  %i.bfy = load ptr, ptr %i.bfx, align 8
  %i.bfz = call noundef zeroext i1 %i.bfy(ptr noundef nonnull align 8 dereferenceable(518435) %i.bfv, ptr %i.ber, i64 %i.bfu, i16 %.sroa.0222.0.copyload, ptr %.sroa.2224.0.copyload) #36
  br i1 %i.bfz, label %.critedge873, label %.critedge869

.critedge873:                                     ; preds = %._crit_edge1519, %.loopexit
  %.sroa.01286.01440 = phi ptr [ %.sroa.01298.0.copyload, %.loopexit ], [ %.sroa.01286.0.copyload, %._crit_edge1519 ]
  %.sroa.9.01439 = phi i32 [ %.sroa.91300.0.copyload, %.loopexit ], [ %.sroa.9.0.copyload, %._crit_edge1519 ]
  %.sroa.01298.01438 = phi ptr [ %.sroa.01286.0.copyload, %.loopexit ], [ %.sroa.01298.0.copyload, %._crit_edge1519 ]
  %.sroa.91300.01437 = phi i32 [ %.sroa.9.0.copyload, %.loopexit ], [ %.sroa.91300.0.copyload, %._crit_edge1519 ]
  %i.bga = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0216.0.copyload = load i16, ptr %109, align 8, !tbaa !214
  %.sroa.2218.0.copyload = load ptr, ptr %.sroa.2279.0..sroa_idx, align 8, !tbaa !216
  %i.bgb = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bga, i16 %.sroa.0216.0.copyload, ptr %.sroa.2218.0.copyload, ptr %.sroa.01298.01438, i32 %.sroa.91300.01437) #36 ; 2 uses
  %.fca.0.extract209 = extractvalue { ptr, i32 } %i.bgb, 0
  %.fca.1.extract210 = extractvalue { ptr, i32 } %i.bgb, 1
  %i.bgc = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.0203.0.copyload = load i16, ptr %109, align 8, !tbaa !214
  %.sroa.2205.0.copyload = load ptr, ptr %.sroa.2279.0..sroa_idx, align 8, !tbaa !216
  %i.bgd = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bgc, i16 %.sroa.0203.0.copyload, ptr %.sroa.2205.0.copyload, ptr %.sroa.01286.01440, i32 %.sroa.9.01439) #36 ; 2 uses
  %.fca.0.extract196 = extractvalue { ptr, i32 } %i.bgd, 0
  %.fca.1.extract197 = extractvalue { ptr, i32 } %i.bgd, 1
  %i.bge = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0193.0.copyload = load i16, ptr %53, align 8, !tbaa !214
  %.sroa.2195.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !216
  %.sroa.0188.0.copyload = load i16, ptr %109, align 8, !tbaa !214
  %.sroa.2190.0.copyload = load ptr, ptr %.sroa.2279.0..sroa_idx, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #36
  %i.bgf = load ptr, ptr %i.a, align 8, !tbaa !74 ; 2 uses
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 72
  %i.bgh = load i64, ptr %i.bgg, align 8, !tbaa !352
  store i64 %i.bgh, ptr %114, align 8, !tbaa !352
  %i.bgi = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgf, i64 68
  %i.bgk = load i32, ptr %i.bgj, align 4, !tbaa !351
  store i32 %i.bgk, ptr %i.bgi, align 8, !tbaa !396
  store ptr %.fca.0.extract196, ptr %115, align 8, !tbaa !74
  %.sroa.9.0..sroa_idx1290 = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i32 %.fca.1.extract197, ptr %.sroa.9.0..sroa_idx1290, align 8, !tbaa !198
  %.sroa.11.0..sroa_idx1296 = getelementptr inbounds nuw i8, ptr %115, i64 12
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx1296, align 4
  %i.bgl = load ptr, ptr %113, align 8, !tbaa !43
  store ptr %i.bgl, ptr %116, align 8, !tbaa !573
  %i.bgm = getelementptr inbounds nuw i8, ptr %116, i64 8
  %i.bgn = load i32, ptr %i.bds, align 8, !tbaa !76
  %i.bgo = zext i32 %i.bgn to i64
  store i64 %i.bgo, ptr %i.bgm, align 8, !tbaa !574
  %i.bgp = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bge, i16 %.sroa.0188.0.copyload, ptr %.sroa.2190.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %114, ptr %.fca.0.extract209, i32 %.fca.1.extract210, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %115, ptr noundef nonnull byval(%"class.llvm::ArrayRef.292") align 8 %116) #36 ; 2 uses
  %.fca.0.extract181 = extractvalue { ptr, i32 } %i.bgp, 0
  %.fca.1.extract182 = extractvalue { ptr, i32 } %i.bgp, 1
  %i.bgq = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bge, i16 %.sroa.0193.0.copyload, ptr %.sroa.2195.0.copyload, ptr %.fca.0.extract181, i32 %.fca.1.extract182) #36 ; 2 uses
  %.fca.0.extract177 = extractvalue { ptr, i32 } %i.bgq, 0
  %.fca.1.extract178 = extractvalue { ptr, i32 } %i.bgq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #36
  %i.bgr = load ptr, ptr %113, align 8, !tbaa !43 ; 2 uses
  %i.bgs = icmp eq ptr %i.bgr, %i.bdr
  br i1 %i.bgs, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1207, label %bb.iv

bb.iv:                                            ; preds = %.critedge873
  call void @free(ptr noundef %i.bgr) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1207

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1207:        ; preds = %.critedge873, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #36
  %i.bgt = load ptr, ptr %112, align 8, !tbaa !43 ; 2 uses
  %i.bgu = icmp eq ptr %i.bgt, %i.bdh
  br i1 %i.bgu, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1208, label %bb.iw

bb.iw:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1207
  call void @free(ptr noundef %i.bgt) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1208

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1208:        ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1207, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #36
  %i.bgv = load ptr, ptr %111, align 8, !tbaa !43 ; 2 uses
  %i.bgw = icmp eq ptr %i.bgv, %i.bde
  br i1 %i.bgw, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1209, label %bb.ix

bb.ix:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1208
  call void @free(ptr noundef %i.bgv) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1209

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1209:        ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1208, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #36
  br label %.critedge854

.critedge869:                                     ; preds = %.loopexit
  %i.bgx = load ptr, ptr %113, align 8, !tbaa !43 ; 2 uses
  %i.bgy = icmp eq ptr %i.bgx, %i.bdr
  br i1 %i.bgy, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1210, label %bb.iy

bb.iy:                                            ; preds = %.critedge869
  call void @free(ptr noundef %i.bgx) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1210

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1210:        ; preds = %.critedge869, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #36
  %i.bgz = load ptr, ptr %112, align 8, !tbaa !43 ; 2 uses
  %i.bha = icmp eq ptr %i.bgz, %i.bdh
  br i1 %i.bha, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1211, label %bb.iz

bb.iz:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1210
  call void @free(ptr noundef %i.bgz) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1211

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1211:        ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1210, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #36
  %i.bhb = load ptr, ptr %111, align 8, !tbaa !43 ; 2 uses
  %i.bhc = icmp eq ptr %i.bhb, %i.bde
  br i1 %i.bhc, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1212, label %bb.ja

bb.ja:                                            ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1211
  call void @free(ptr noundef %i.bhb) #36
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1212

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1212:        ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1211, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #36
  br label %.critedge871

.critedge871:                                     ; preds = %bb.hp, %_ZNK4llvm8TypeSizecvmEv.exit1141, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1123, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit1212, %_ZNK4llvm8TypeSizecvmEv.exit1159
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #36
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit1101.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit1101.thread:    ; preds = %.lr.ph.i.i1092, %.lr.ph.i.i1107, %bb.hn, %bb.hl, %bb.hh, %.critedge871, %_ZNK4llvm7SDValue9hasOneUseEv.exit1116, %bb.hm, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1104, %bb.hk, %bb.hj, %_ZNK4llvm7SDValue9hasOneUseEv.exit1101, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1089.thread
  %i.bhd = load ptr, ptr %i.c, align 8, !tbaa !779
  %i.bhe = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.bhf = load ptr, ptr %i.aiv, align 8, !tbaa !347, !nonnull !53, !align !197
  %i.bhg = load i8, ptr %i.aix, align 1, !tbaa !324, !range !52, !noundef !53
  %i.bhh = trunc nuw i8 %i.bhg to i1
  %i.bhi = call fastcc { ptr, i32 } @_ZL23combineShuffleOfBitcastPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEb(ptr noundef %i.bhd, ptr noundef nonnull align 8 dereferenceable(920) %i.bhe, ptr noundef nonnull align 8 dereferenceable(518435) %i.bhf, i1 noundef zeroext %i.bhh) ; 2 uses
  %.fca.0.extract173 = extractvalue { ptr, i32 } %i.bhi, 0 ; 2 uses
  %.fca.1.extract174 = extractvalue { ptr, i32 } %i.bhi, 1
  %.not1471 = icmp eq ptr %.fca.0.extract173, null
  br i1 %.not1471, label %bb.jb, label %.critedge854

bb.jb:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit1101.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #36
  %i.bhj = load i32, ptr %i.b, align 4, !tbaa !198
  store i32 %i.bhj, ptr %117, align 8, !tbaa !786
  %i.bhk = getelementptr inbounds nuw i8, ptr %117, i64 8
  store ptr %53, ptr %i.bhk, align 8, !tbaa !604
  %i.bhl = load i32, ptr %i.anq, align 8, !tbaa !321
  %i.bhm = icmp slt i32 %i.bhl, 3
  br i1 %i.bhm, label %bb.jc, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1214.thread

bb.jc:                                            ; preds = %bb.jb
  %.sroa.0170.0.copyload = load i16, ptr %53, align 8, !tbaa !214 ; 2 uses
  %.not.i1213 = icmp eq i16 %.sroa.0170.0.copyload, 0
  br i1 %.not.i1213, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1214.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit1214

end_hunk_2
begin_hunk_3_@"_ZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEENK3$_1clEbPNS1_19ShuffleVectorSDNodeES6_NS1_7SDValueERKNS1_14TargetLoweringERS7_SB_RNS1_15SmallVectorImplIiEE":bb.a
  %i.cu = load i32, ptr %i.v, align 4, !tbaa !77
  %.not.i101 = icmp ult i32 %i.ct, %i.cu
  br i1 %.not.i101, label %bb.ag, label %bb.af, !prof !78

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef -1)
  br label %bb.ap

bb.ag:                                            ; preds = %bb.ae
  %i.cv = zext i32 %i.ct to i64
  %i.cw = load ptr, ptr %9, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cv
  store i32 -1, ptr %i.cx, align 1
  %i.cy = load i32, ptr %i.q, align 8, !tbaa !76
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.q, align 8, !tbaa !76
  br label %bb.ap

bb.ah:                                            ; preds = %bb.ad
  %i.da = icmp slt i32 %i.cr, %i.w
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0116.0, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !204
  %.idx194 = select i1 %i.da, i64 0, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx194 ; 2 uses
  %.sroa.0112.0.copyload = load ptr, ptr %i.dd, align 8, !tbaa !74 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !198 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0112.0.copyload, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !72
  %i.dg = add i32 %i.df, -53
  %spec.select.i.i103 = icmp ult i32 %i.dg, 2
  br i1 %spec.select.i.i103, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load i32, ptr %i.q, align 8, !tbaa !76  ; 2 uses
  %i.di = load i32, ptr %i.v, align 4, !tbaa !77
  %.not.i104 = icmp ult i32 %i.dh, %i.di
  br i1 %.not.i104, label %bb.ak, label %bb.aj, !prof !78

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef -1)
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  %i.dj = zext i32 %i.dh to i64
  %i.dk = load ptr, ptr %9, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  store i32 -1, ptr %i.dl, align 1
  %i.dm = load i32, ptr %i.q, align 8, !tbaa !76
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.q, align 8, !tbaa !76
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.do = urem i32 %i.cr, %i.w                    ; 2 uses
  %i.dp = icmp eq ptr %.sroa.0112.0.copyload, %i.bn
  %i.dq = icmp eq i32 %.sroa.6.0.copyload, %i.bp
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.do)
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.ds = icmp eq ptr %.sroa.0112.0.copyload, %i.bz
  %i.dt = icmp eq i32 %.sroa.6.0.copyload, %i.cb
  %i.du = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %i.du, label %bb.ao, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread138

bb.ao:                                            ; preds = %bb.an
  %i.dv = add i32 %i.do, %i.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.dv)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.h, %bb.g, %bb.ab, %bb.m, %bb.r, %bb.w, %bb.l, %bb.q, %bb.v, %bb.aa, %bb.ak, %bb.ag, %bb.af, %bb.am, %bb.ao, %bb.aj
  %i.dw = add i32 %.073143, 1                     ; 2 uses
  %i.dx = load i32, ptr %0, align 8, !tbaa !786   ; 2 uses
  %.not = icmp eq i32 %i.dw, %i.dx
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, label %bb.e, !llvm.loop !2851

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.ap
  %.val92.pre = load i32, ptr %i.q, align 8, !tbaa !76 ; 3 uses
  %.val = load ptr, ptr %9, align 8, !tbaa !43    ; 5 uses
  %i.dy = zext i32 %.val92.pre to i64             ; 3 uses
  %.idx1.i = shl nuw nsw i64 %i.dy, 2             ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx1.i
  %i.ea = lshr i64 %i.dy, 2                       ; 2 uses
  %.not.i106 = icmp eq i64 %i.ea, 0
  br i1 %.not.i106, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.eb = and i64 %.idx1.i, 17179869168
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.eb
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.at, %.lr.ph.preheader.i.i.i.i.i
  %.044.i.i.i.i.i = phi i64 [ %i.ek, %bb.at ], [ %i.ea, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i.i = phi ptr [ %i.ej, %bb.at ], [ %.val, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i.i = load i32, ptr %.02943.i.i.i.i.i, align 4, !tbaa !198
  %i.ec = icmp sgt i32 %.029.val32.i.i.i.i.i, -1
  br i1 %i.ec, label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit", label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 4
  %.val31.i.i.i.i.i = load i32, ptr %i.ed, align 4, !tbaa !198
  %i.ee = icmp sgt i32 %.val31.i.i.i.i.i, -1
  br i1 %i.ee, label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  %.val30.i.i.i.i.i = load i32, ptr %i.ef, align 4, !tbaa !198
  %i.eg = icmp sgt i32 %.val30.i.i.i.i.i, -1
  br i1 %i.eg, label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit185", label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eh = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 12
  %.val.i.i.i.i.i = load i32, ptr %i.eh, align 4, !tbaa !198
  %i.ei = icmp sgt i32 %.val.i.i.i.i.i, -1
  br i1 %i.ei, label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit187", label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ej = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 16
  %i.ek = add nsw i64 %.044.i.i.i.i.i, -1
  %i.el = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.el, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !2852

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.at
  %i.em = and i32 %.val92.pre, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.pre-phi50.i.i.i.i.i = phi i32 [ %i.em, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val92.pre, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ] ; 5 uses
  switch i32 %.pre-phi50.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread138 [
    i32 3, label %bb.au
    i32 2, label %bb.aw
    i32 1, label %bb.ay
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !198
  %i.en = icmp sgt i32 %.029.val.i.i.i.i.i, -1
  br i1 %i.en, label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.eo, %bb.av ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !198
  %i.ep = icmp sgt i32 %.1.val.i.i.i.i.i, -1
  br i1 %i.ep, label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.eq, %bb.ax ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !198
  %i.er = icmp sgt i32 %.2.val.i.i.i.i.i, -1
  br i1 %i.er, label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit", label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread138

"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.aq
  %i.es = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 4
  br label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit185": ; preds = %bb.ar
  %i.et = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit187": ; preds = %bb.as
  %i.eu = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 12
  br label %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit185", %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit187", %bb.au, %bb.aw, %bb.ay
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.aw ], [ %.029.lcssa.i.i.i.i.i, %bb.au ], [ %.2.i.i.i.i.i, %bb.ay ], [ %i.eu, %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit187" ], [ %i.et, %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit185" ], [ %i.es, %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ev = icmp eq ptr %i.dz, %.028.i.i.i.i.i
  br i1 %i.ev, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread138, label %bb.az

bb.az:                                            ; preds = %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit"
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !2855, !nonnull !53, !align !197 ; 2 uses
  %.sroa.04.0.copyload = load i16, ptr %i.ex, align 8, !tbaa !214
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !216
  %i.ey = load ptr, ptr %6, align 8, !tbaa !45
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 600
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call noundef zeroext i1 %i.fa(ptr noundef nonnull align 8 dereferenceable(518435) %6, ptr %.val, i64 %i.dy, i16 %.sroa.04.0.copyload, ptr %.sroa.26.0.copyload) #36
  br i1 %i.fb, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread138, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !tbaa.struct !217
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.fc = load ptr, ptr %9, align 8, !tbaa !43    ; 6 uses
  %i.fd = load i32, ptr %i.q, align 8, !tbaa !76  ; 7 uses
  %i.fe = zext i32 %i.fd to i64                   ; 3 uses
  %.not17.i = icmp eq i32 %i.fd, 0
  br i1 %.not17.i, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ba
  %i.ff = sub i32 0, %i.fd                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.fd, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader207, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.fe, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue206, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue206 ] ; 5 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index ; 2 uses
  %wide.load.a = load <4 x i32>, ptr %i.fg, align 4, !tbaa !198 ; 3 uses
  %i.fh = icmp sgt <4 x i32> %wide.load.a, splat (i32 -1) ; 4 uses
  %i.fi = icmp slt <4 x i32> %wide.load.a, %broadcast.splat200
  %i.fj = select <4 x i1> %i.fi, <4 x i32> %broadcast.splat200, <4 x i32> %broadcast.splat
  %i.fk = add <4 x i32> %i.fj, %wide.load.a       ; 4 uses
  %i.fl = extractelement <4 x i1> %i.fh, i64 0
  br i1 %i.fl, label %pred.store.if.a, label %pred.store.continue.a

pred.store.if.a:                                  ; preds = %vector.body
  %i.fm = extractelement <4 x i32> %i.fk, i64 0
  store i32 %i.fm, ptr %i.fg, align 4, !tbaa !198
  br label %pred.store.continue.a

pred.store.continue.a:                            ; preds = %pred.store.if.a, %vector.body
  %i.fn = extractelement <4 x i1> %i.fh, i64 1
  br i1 %i.fn, label %pred.store.if201, label %pred.store.continue202

pred.store.if201:                                 ; preds = %pred.store.continue.a
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = extractelement <4 x i32> %i.fk, i64 1
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !198
  br label %pred.store.continue202

pred.store.continue202:                           ; preds = %pred.store.if201, %pred.store.continue.a
  %i.fr = extractelement <4 x i1> %i.fh, i64 2
  br i1 %i.fr, label %pred.store.if203, label %pred.store.continue204

pred.store.if203:                                 ; preds = %pred.store.continue202
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = extractelement <4 x i32> %i.fk, i64 2
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !198
  br label %pred.store.continue204

pred.store.continue204:                           ; preds = %pred.store.if203, %pred.store.continue202
  %i.fv = extractelement <4 x i1> %i.fh, i64 3
  br i1 %i.fv, label %pred.store.if205, label %pred.store.continue206

pred.store.if205:                                 ; preds = %pred.store.continue204
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = extractelement <4 x i32> %i.fk, i64 3
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !198
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.if205, %pred.store.continue204
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !2853

middle.block:                                     ; preds = %pred.store.continue206
  %cmp.n = icmp eq i64 %n.vec, %i.fe
  br i1 %cmp.n, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, label %.lr.ph.i.preheader207

.lr.ph.i.preheader207:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader207, %bb.bb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bb ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader207 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.i ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !198 ; 3 uses
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %bb.bb, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i
  %i.gd = icmp slt i32 %i.gb, %i.fd
  %.sink.p.i = select i1 %i.gd, i32 %i.fd, i32 %i.ff
  %.sink.i = add i32 %.sink.p.i, %i.gb
  store i32 %.sink.i, ptr %i.ga, align 4, !tbaa !198
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split.i, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i107 = icmp eq i64 %indvars.iv.next.i, %i.fe
  br i1 %.not.i107, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !2854

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit: ; preds = %bb.bb, %middle.block
  %.pre = load i32, ptr %i.q, align 8, !tbaa !76
  %i.ge = zext i32 %.pre to i64
  br label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit: ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit, %bb.ba
  %i.gf = phi i64 [ %i.ge, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.loopexit ], [ 0, %bb.ba ]
  %i.gg = load ptr, ptr %i.ew, align 8, !tbaa !2855, !nonnull !53, !align !197 ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %i.gg, align 8, !tbaa !214
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !216
  %i.gh = load ptr, ptr %6, align 8, !tbaa !45
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 600
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = call noundef zeroext i1 %i.gj(ptr noundef nonnull align 8 dereferenceable(518435) %6, ptr %i.fc, i64 %i.gf, i16 %.sroa.0.0.copyload, ptr %.sroa.23.0.copyload) #36
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread138

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.thread138: ; preds = %bb.ac, %bb.an, %bb.d, %bb.ay, %._crit_edge.i.i.i.i.i, %bb.az, %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit", %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit
  %.4 = phi i1 [ true, %._crit_edge.i.i.i.i.i ], [ false, %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit ], [ true, %"_ZN4llvm6all_ofIRNS_15SmallVectorImplIiEEZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEENK3$_1clEbPNS_19ShuffleVectorSDNodeESA_NS_7SDValueERKNS_14TargetLoweringERSB_SF_S3_EUliE_EEbOT_T0_.exit" ], [ %i.gk, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %bb.d ], [ false, %bb.an ], [ false, %bb.ac ]
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4llvm6all_ofIRNS_11SmallVectorIiLj4EEEZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPNS_6SDNodeEE3$_2EEbOT_T0_"(ptr nofree readonly captures(address) %.0.val, i32 %.8.val) unnamed_addr #13 {
bb.a:
  %i.a = zext i32 %.8.val to i64                  ; 2 uses
  %.idx1 = shl nuw nsw i64 %i.a, 2                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx1 ; 2 uses
  %i.c = lshr i64 %i.a, 2                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.d = and i64 %.idx1, 17179869168
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.val, i64 %i.d
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.044.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ %i.c, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02943.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %.0.val, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i = load i32, ptr %.02943.i.i.i.i, align 4, !tbaa !198
  %i.e = icmp sgt i32 %.029.val32.i.i.i.i, -1
  br i1 %i.e, label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 4
  %.val31.i.i.i.i = load i32, ptr %i.f, align 4, !tbaa !198
  %i.g = icmp sgt i32 %.val31.i.i.i.i, -1
  br i1 %i.g, label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 8
  %.val30.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !198
  %i.i = icmp sgt i32 %.val30.i.i.i.i, -1
  br i1 %i.i, label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit14", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 12
  %.val.i.i.i.i = load i32, ptr %i.j, align 4, !tbaa !198
  %i.k = icmp sgt i32 %.val.i.i.i.i, -1
  br i1 %i.k, label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit16", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 16
  %i.m = add nsw i64 %.044.i.i.i.i, -1
  %i.n = icmp sgt i64 %.044.i.i.i.i, 1
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !2856

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %i.o = and i32 %.8.val, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi50.i.i.i.i = phi i32 [ %i.o, %._crit_edge.loopexit.i.i.i.i ], [ %.8.val, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.0.val, %bb.a ] ; 5 uses
  switch i32 %.pre-phi50.i.i.i.i, label %bb.k [
    i32 3, label %bb.f
    i32 2, label %bb.h
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i, align 4, !tbaa !198
  %i.p = icmp sgt i32 %.029.val.i.i.i.i, -1
  br i1 %i.p, label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.q, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i32, ptr %.1.i.i.i.i, align 4, !tbaa !198
  %i.r = icmp sgt i32 %.1.val.i.i.i.i, -1
  br i1 %i.r, label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.s, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i32, ptr %.2.i.i.i.i, align 4, !tbaa !198
  %i.t = icmp sgt i32 %.2.val.i.i.i.i, -1
  br i1 %i.t, label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  br label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit"

"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 4
  br label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit"

"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit14": ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit"

"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit16": ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i, i64 12
  br label %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit"

"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit14", %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit16", %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.h ], [ %i.b, %bb.k ], [ %.2.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.f ], [ %i.w, %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit16" ], [ %i.u, %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit" ], [ %i.v, %"_ZSt6all_ofIPiZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEE3$_2EbT_S7_T0_.exit.loopexit.split.loop.exit14" ], [ %.02943.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.x = icmp eq ptr %i.b, %.028.i.i.i.i
  ret i1 %i.x
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_111DAGCombiner19visitVECTOR_SHUFFLEEPN4llvm6SDNodeEENK3$_3clERNS1_7SDValueES6_RNS1_15SmallVectorImplIiEEbb"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !789
  %.in13.v = select i1 %4, i64 16, i64 24
  %.in13 = getelementptr inbounds nuw i8, ptr %0, i64 %.in13.v
  %i.c = load ptr, ptr %.in13, align 8, !tbaa !413, !nonnull !53, !align !197 ; 2 uses
  %.sroa.027.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.629.0.copyload = load i32, ptr %.sroa.629.0..sroa_idx, align 8, !tbaa !198
  %.in14.v = select i1 %4, i64 32, i64 40
  %.in14 = getelementptr inbounds nuw i8, ptr %0, i64 %.in14.v
  %i.d = load ptr, ptr %.in14, align 8, !tbaa !413, !nonnull !53, !align !197 ; 2 uses
  %.sroa.020.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !198
  %.sroa.027.0 = select i1 %5, ptr %.sroa.020.0.copyload, ptr %.sroa.027.0.copyload ; 6 uses
  %.sroa.6.0 = select i1 %5, i32 %.sroa.629.0.copyload, i32 %.sroa.6.0.copyload
  %.sroa.020.0 = select i1 %5, ptr %.sroa.027.0.copyload, ptr %.sroa.020.0.copyload
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !72
  %i.g = icmp ne i32 %i.f, 171
  %.not41 = icmp eq ptr %.sroa.027.0, null
  %.not = or i1 %.not41, %i.g
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.in.idx = select i1 %5, i64 0, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.idx
  %i.h = load ptr, ptr %.in, align 8, !tbaa !413, !nonnull !53, !align !197
  %.sroa.035.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.i = tail call noundef zeroext i1 @_ZNK4llvm6SDNode12isOnlyUserOfEPKS0_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.035.0.copyload, ptr noundef nonnull %.sroa.027.0) #36
  br i1 %i.i, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2859, !nonnull !53, !align !197
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2860, !nonnull !53, !align !197
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !779
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_3
begin_hunk_4_@_ZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEb:bb.a
  %.not.i.i117 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i117, label %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_2clERiii.exit.i", label %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_2clERiii.exit.i.thread"

"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_2clERiii.exit.i": ; preds = %bb.t, %.lr.ph.i116
  %i.dz = getelementptr inbounds nuw i8, ptr %.02.i, i64 4 ; 2 uses
  %.not.i118 = icmp eq ptr %i.dz, %i.dj
  br i1 %.not.i118, label %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit", label %.lr.ph.i116

"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_2clERiii.exit.i.thread": ; preds = %bb.t
  store i32 -2, ptr %.02.i, align 4, !tbaa !198
  %i.ea = getelementptr inbounds nuw i8, ptr %.02.i, i64 4 ; 2 uses
  %.not.i118246 = icmp eq ptr %i.ea, %i.dj
  br i1 %.not.i118246, label %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread248", label %.lr.ph.i116.outer

"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit": ; preds = %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_2clERiii.exit.i"
  br i1 %.0.ph, label %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread248", label %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread"

bb.u:                                             ; preds = %.lr.ph, %_ZN4llvm5APIntD2Ev.exit120
  %.sroa.0148.0.idx200 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0148.0.add, %_ZN4llvm5APIntD2Ev.exit120 ] ; 3 uses
  %.sroa.12.0198 = phi ptr [ %i.cs, %.lr.ph ], [ %i.ei, %_ZN4llvm5APIntD2Ev.exit120 ] ; 3 uses
  %.sroa.0148.0.ptr201 = getelementptr inbounds nuw i8, ptr %10, i64 %.sroa.0148.0.idx200 ; 3 uses
  %.sroa.7.0.ptr = getelementptr inbounds nuw i8, ptr %8, i64 %.sroa.0148.0.idx200
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %.sroa.051.0.copyload = load ptr, ptr %.sroa.12.0198, align 8, !tbaa !74
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12.0198, i64 8
  %.sroa.252.0.copyload = load i32, ptr %.sroa.252.0..sroa_idx, align 8, !tbaa !198
  call void @_ZNK4llvm12SelectionDAG30computeVectorKnownZeroElementsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %11, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.051.0.copyload, i32 %.sroa.252.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.0.ptr, i32 noundef 0) #36
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0148.0.ptr201, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !405
  %i.ed = icmp ult i32 %i.ec, 65
  br i1 %i.ed, label %_ZN4llvm5APIntD2Ev.exit120, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = load ptr, ptr %.sroa.0148.0.ptr201, align 8, !tbaa !75 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN4llvm5APIntD2Ev.exit120, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ee) #38
  br label %_ZN4llvm5APIntD2Ev.exit120

_ZN4llvm5APIntD2Ev.exit120:                       ; preds = %bb.w, %bb.v, %bb.u
  %i.eg = load i64, ptr %11, align 8
  store i64 %i.eg, ptr %.sroa.0148.0.ptr201, align 8
  %i.eh = load i32, ptr %i.cx, align 8, !tbaa !405
  store i32 %i.eh, ptr %i.eb, align 8, !tbaa !405
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.12.0198, i64 40 ; 2 uses
  %.sroa.0148.0.add = add nuw nsw i64 %.sroa.0148.0.idx200, 16 ; 2 uses
  %i.ej = icmp ne ptr %i.ei, %i.cw
  %i.ek = icmp ne i64 %.sroa.0148.0.add, 32
  %or.cond187 = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond187, label %bb.u, label %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPKNS_5SDUseEPNS_5APIntES7_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_RS6_SC_EElPSD_SD_EneERKS8_.exit.thread.loopexit

"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread248": ; preds = %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_2clERiii.exit.i.thread", %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.el, ptr %12, align 8, !tbaa !43
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.em, align 8, !tbaa !76
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 16, ptr %i.en, align 4, !tbaa !77
  %i.eo = load i32, ptr %i.be, align 8, !tbaa !76
  %i.ep = zext i32 %i.eo to i64
  call void @_ZN4llvm28getShuffleMaskWithWidestEltsENS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(ptr %.val101.val, i64 %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %12) #36
  %i.eq = load i32, ptr %i.be, align 8, !tbaa !76
  %i.er = load i32, ptr %i.em, align 8, !tbaa !76 ; 5 uses
  %i.es = udiv i32 %i.eq, %i.er
  %i.et = mul i32 %i.es, %i.ac                    ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !491 ; 2 uses
  %i.ew = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.et)
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %.split.i.i121, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

.split.i.i121:                                    ; preds = %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread248"
  %i.ey = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.et, i1 true) ; 2 uses
  %i.ez = icmp samesign ult i32 %i.ey, 10
  br i1 %i.ez, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i:              ; preds = %.split.i.i121
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.ey to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  %i.fa = insertvalue { i16, ptr } poison, i16 %switch.offset.i.i, 0
  %i.fb = insertvalue { i16, ptr } %i.fa, ptr null, 1
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i:       ; preds = %.split.i.i121, %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread248"
  %i.fc = call { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i32 noundef %i.et) #36
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit

_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.fc, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i ], [ %i.fb, %_ZN4llvm3MVT12getIntegerVTEj.exit.i ] ; 2 uses
  %i.fd = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.fe = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.fd, i32 noundef %i.er) ; 2 uses
  %.not.i122 = icmp eq i16 %i.fe, 0
  br i1 %.not.i122, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit
  %i.ff = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.fg = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i16 %i.fd, ptr %i.ff, i32 noundef %i.er, i1 noundef zeroext false) #36 ; 2 uses
  %i.fh = extractvalue { i16, ptr } %i.fg, 0      ; 2 uses
  %i.fi = extractvalue { i16, ptr } %i.fg, 1      ; 2 uses
  %.not.i125 = icmp eq i16 %i.fh, 0
  br i1 %.not.i125, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit
  %.sroa.0.0.i178 = phi i16 [ %i.fh, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %i.fe, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit ] ; 3 uses
  %.sroa.3.0.i176 = phi ptr [ %i.fi, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ null, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.fk = zext i16 %.sroa.0.0.i178 to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !398
  %.not194 = icmp eq ptr %i.fm, null
  br i1 %.not194, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %.sroa.3.0.i177184 = phi ptr [ %.sroa.3.0.i176, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ %i.fi, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ] ; 2 uses
  %.sroa.0.0.i179182 = phi i16 [ %.sroa.0.0.i178, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ] ; 2 uses
  %.sroa.037.0.copyload = load i16, ptr %6, align 8, !tbaa !214 ; 2 uses
  %.not.i126 = icmp eq i16 %.sroa.037.0.copyload, 0
  br i1 %.not.i126, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit127

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit127: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.fo = zext i16 %.sroa.037.0.copyload to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !398
  %.not195 = icmp eq ptr %i.fq, null
  br i1 %.not195, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, label %bb.ac

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit127, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread
  %.sroa.3.0.i177185 = phi ptr [ %.sroa.3.0.i177184, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit127 ], [ %.sroa.3.0.i176, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ %.sroa.3.0.i177184, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread ] ; 3 uses
  %.sroa.0.0.i179183 = phi i16 [ %.sroa.0.0.i179182, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit127 ], [ %.sroa.0.0.i178, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ %.sroa.0.0.i179182, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fu = load ptr, ptr %i.cr, align 8, !tbaa !204 ; 2 uses
  %.sroa.028.0.copyload = load ptr, ptr %i.fu, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i64 0, ptr %14, align 8
  store i32 %i.er, ptr %14, align 8, !tbaa !198
  store ptr %12, ptr %.sroa.4139.0..sroa_idx, align 8, !tbaa !1003
  store ptr @"_ZNSt17_Function_handlerIFbjEZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_3E9_M_invokeERKSt9_Any_dataOj", ptr %i.fs, align 8, !tbaa !998
  store ptr @"_ZNSt17_Function_handlerIFbjEZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.fr, align 8, !tbaa !47
  call fastcc void @_ZL36canCombineShuffleToExtendVectorInregjN4llvm3EVTESt8functionIFbjEERNS_12SelectionDAGERKNS_14TargetLoweringEbb(ptr dead_on_unwind noalias writable align 8 %13, i32 noundef 239, i16 %.sroa.0.0.i179183, ptr %.sroa.3.0.i177185, ptr nofree noundef align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(518435) %2, i1 noundef zeroext %3)
  %i.fv = load ptr, ptr %i.fr, align 8, !tbaa !47 ; 2 uses
  %.not.i130 = icmp eq ptr %i.fv, null
  br i1 %.not.i130, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit
  %i.fw = call noundef zeroext i1 %i.fv(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3) #36, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit, %bb.x
  %i.fx = load i8, ptr %i.ft, align 8, !tbaa !528, !range !52, !noundef !53
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.1, %_ZNSt14_Function_baseD2Ev.exit
  %.sroa.028.0.copyload.lcssa = phi ptr [ %.sroa.028.0.copyload, %_ZNSt14_Function_baseD2Ev.exit ], [ %.sroa.028.0.copyload.1, %_ZNSt14_Function_baseD2Ev.exit.1 ]
  %.sroa.4.0.copyload.lcssa = phi i32 [ %.sroa.4.0.copyload, %_ZNSt14_Function_baseD2Ev.exit ], [ %.sroa.4.0.copyload.1, %_ZNSt14_Function_baseD2Ev.exit.1 ]
  %.sroa.022.0.copyload = load i16, ptr %6, align 8, !tbaa !214
  %.sroa.224.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !352
  store i64 %i.ga, ptr %15, align 8, !tbaa !352
  %i.gb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !351
  store i32 %i.gd, ptr %i.gb, align 8, !tbaa !396
  %.sroa.017.0.copyload = load i16, ptr %13, align 8, !tbaa !214
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !216
  %i.ge = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.0.0.i179183, ptr %.sroa.3.0.i177185, ptr %.sroa.028.0.copyload.lcssa, i32 %.sroa.4.0.copyload.lcssa) #36 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.ge, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.ge, 1
  store ptr %.fca.0.extract8, ptr %16, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.211.0..sroa_idx, align 8
  %i.gf = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 239, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 %.sroa.017.0.copyload, ptr %.sroa.219.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #36 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.gf, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.gf, 1
  %i.gg = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i16 %.sroa.022.0.copyload, ptr %.sroa.224.0.copyload, ptr %.fca.0.extract4, i32 %.fca.1.extract5) #36 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.gg, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.gg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %.sink.split

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.gh = load ptr, ptr %i.cr, align 8, !tbaa !204 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %.sroa.028.0.copyload.1 = load ptr, ptr %i.gi, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %.sroa.4.0.copyload.1 = load i32, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !198
  %i.gj = load ptr, ptr %12, align 8, !tbaa !43   ; 5 uses
  %i.gk = load i32, ptr %i.em, align 8, !tbaa !76 ; 7 uses
  %i.gl = zext i32 %i.gk to i64                   ; 3 uses
  %.not17.i.1 = icmp eq i32 %i.gk, 0
  br i1 %.not17.i.1, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.1, label %.lr.ph.i128.preheader.1

.lr.ph.i128.preheader.1:                          ; preds = %bb.z
  %i.gm = sub i32 0, %i.gk                        ; 2 uses
  %min.iters.check = icmp ult i32 %i.gk, 4
  br i1 %min.iters.check, label %.lr.ph.i128.1.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i128.preheader.1
  %n.vec = and i64 %i.gl, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <4 x i32> poison, i32 %i.gk, i64 0
  %broadcast.splat255 = shufflevector <4 x i32> %broadcast.splatinsert254, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue261, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue261 ] ; 5 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index ; 2 uses
  %wide.load.a = load <4 x i32>, ptr %i.gn, align 4, !tbaa !198 ; 3 uses
  %i.go = icmp sgt <4 x i32> %wide.load.a, splat (i32 -1) ; 4 uses
  %i.gp = icmp slt <4 x i32> %wide.load.a, %broadcast.splat255
  %i.gq = select <4 x i1> %i.gp, <4 x i32> %broadcast.splat255, <4 x i32> %broadcast.splat
  %i.gr = add <4 x i32> %i.gq, %wide.load.a       ; 4 uses
  %i.gs = extractelement <4 x i1> %i.go, i64 0
  br i1 %i.gs, label %pred.store.if.a, label %pred.store.continue.a

pred.store.if.a:                                  ; preds = %vector.body
  %i.gt = extractelement <4 x i32> %i.gr, i64 0
  store i32 %i.gt, ptr %i.gn, align 4, !tbaa !198
  br label %pred.store.continue.a

pred.store.continue.a:                            ; preds = %pred.store.if.a, %vector.body
  %i.gu = extractelement <4 x i1> %i.go, i64 1
  br i1 %i.gu, label %pred.store.if256, label %pred.store.continue257

pred.store.if256:                                 ; preds = %pred.store.continue.a
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gx = extractelement <4 x i32> %i.gr, i64 1
  store i32 %i.gx, ptr %i.gw, align 4, !tbaa !198
  br label %pred.store.continue257

pred.store.continue257:                           ; preds = %pred.store.if256, %pred.store.continue.a
  %i.gy = extractelement <4 x i1> %i.go, i64 2
  br i1 %i.gy, label %pred.store.if258, label %pred.store.continue259

pred.store.if258:                                 ; preds = %pred.store.continue257
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = extractelement <4 x i32> %i.gr, i64 2
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !198
  br label %pred.store.continue259

pred.store.continue259:                           ; preds = %pred.store.if258, %pred.store.continue257
  %i.hc = extractelement <4 x i1> %i.go, i64 3
  br i1 %i.hc, label %pred.store.if260, label %pred.store.continue261

pred.store.if260:                                 ; preds = %pred.store.continue259
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.hf = extractelement <4 x i32> %i.gr, i64 3
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !198
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %pred.store.if260, %pred.store.continue259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !2864

middle.block:                                     ; preds = %pred.store.continue261
  %cmp.n = icmp eq i64 %n.vec, %i.gl
  br i1 %cmp.n, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.1, label %.lr.ph.i128.1.preheader

.lr.ph.i128.1.preheader:                          ; preds = %.lr.ph.i128.preheader.1, %middle.block
  %indvars.iv.i.1.ph = phi i64 [ 0, %.lr.ph.i128.preheader.1 ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i128.1

.lr.ph.i128.1:                                    ; preds = %.lr.ph.i128.1.preheader, %bb.aa
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %bb.aa ], [ %indvars.iv.i.1.ph, %.lr.ph.i128.1.preheader ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i.1 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !198 ; 3 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.aa, label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %.lr.ph.i128.1
  %i.hk = icmp slt i32 %i.hi, %i.gk
  %.sink.p.i.1 = select i1 %i.hk, i32 %i.gk, i32 %i.gm
  %.sink.i.1 = add i32 %.sink.p.i.1, %i.hi
  store i32 %.sink.i.1, ptr %i.hh, align 4, !tbaa !198
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i.1, %.lr.ph.i128.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %.not.i129.1 = icmp eq i64 %indvars.iv.next.i.1, %i.gl
  br i1 %.not.i129.1, label %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.1, label %.lr.ph.i128.1, !llvm.loop !2865

_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.1: ; preds = %bb.aa, %middle.block, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i64 0, ptr %14, align 8
  store i32 %i.er, ptr %14, align 8, !tbaa !198
  store ptr %12, ptr %.sroa.4139.0..sroa_idx, align 8, !tbaa !1003
  store ptr @"_ZNSt17_Function_handlerIFbjEZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_3E9_M_invokeERKSt9_Any_dataOj", ptr %i.fs, align 8, !tbaa !998
  store ptr @"_ZNSt17_Function_handlerIFbjEZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS1_12SelectionDAGERKNS1_14TargetLoweringEbE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.fr, align 8, !tbaa !47
  call fastcc void @_ZL36canCombineShuffleToExtendVectorInregjN4llvm3EVTESt8functionIFbjEERNS_12SelectionDAGERKNS_14TargetLoweringEbb(ptr dead_on_unwind noalias writable align 8 %13, i32 noundef 239, i16 %.sroa.0.0.i179183, ptr %.sroa.3.0.i177185, ptr nofree noundef align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(518435) %2, i1 noundef zeroext %3)
  %i.hl = load ptr, ptr %i.fr, align 8, !tbaa !47 ; 2 uses
  %.not.i130.1 = icmp eq ptr %i.hl, null
  br i1 %.not.i130.1, label %_ZNSt14_Function_baseD2Ev.exit.1, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.1
  %i.hm = call noundef zeroext i1 %i.hl(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3) #36, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.1

_ZNSt14_Function_baseD2Ev.exit.1:                 ; preds = %bb.ab, %_ZN4llvm19ShuffleVectorSDNode11commuteMaskENS_15MutableArrayRefIiEE.exit.1
  %i.hn = load i8, ptr %i.ft, align 8, !tbaa !528, !range !52, !noundef !53
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.y, label %.sink.split

.sink.split:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit.1, %bb.y
  %.sroa.10.1.ph = phi i32 [ %.fca.1.extract, %bb.y ], [ 0, %_ZNSt14_Function_baseD2Ev.exit.1 ]
  %.sroa.0169.1.ph = phi ptr [ %.fca.0.extract, %bb.y ], [ null, %_ZNSt14_Function_baseD2Ev.exit.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit127
  %.sroa.10.1 = phi i32 [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit127 ], [ %.sroa.10.1.ph, %.sink.split ]
  %.sroa.0169.1 = phi ptr [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit127 ], [ %.sroa.0169.1.ph, %.sink.split ]
  %i.hp = load ptr, ptr %12, align 8, !tbaa !43   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.el
  br i1 %i.hq, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef %i.hp) #36
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  %.pre210 = load i32, ptr %i.cq, align 8, !tbaa !405
  br label %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread"

"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread": ; preds = %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPKNS_5SDUseEPNS_5APIntES7_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_RS6_SC_EElPSD_SD_EneERKS8_.exit.thread, %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit", %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit
  %i.hr = phi i32 [ %.pre210, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ %.pre211, %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit" ], [ %.pre211, %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPKNS_5SDUseEPNS_5APIntES7_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_RS6_SC_EElPSD_SD_EneERKS8_.exit.thread ]
  %.sroa.10.2 = phi i32 [ %.sroa.10.1, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ 0, %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit" ], [ 0, %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPKNS_5SDUseEPNS_5APIntES7_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_RS6_SC_EElPSD_SD_EneERKS8_.exit.thread ]
  %.sroa.0169.2 = phi ptr [ %.sroa.0169.1, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ null, %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit" ], [ null, %_ZNK4llvm20iterator_facade_baseINS_6detail12zip_shortestIJPKNS_5SDUseEPNS_5APIntES7_EEESt26bidirectional_iterator_tagSt5tupleIJRS4_RS6_SC_EElPSD_SD_EneERKS8_.exit.thread ]
  %i.hs = icmp ugt i32 %i.hr, 64
  br i1 %i.hs, label %bb.ae, label %_ZN4llvm5APIntD2Ev.exit.i

bb.ae:                                            ; preds = %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread"
  %i.ht = load ptr, ptr %.ptr.1.i112, align 8, !tbaa !75 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.ht) #38
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.af, %bb.ae, %"_ZZL37combineShuffleToZeroExtendVectorInRegPN4llvm19ShuffleVectorSDNodeERNS_12SelectionDAGERKNS_14TargetLoweringEbENK3$_0clIZL37combineShuffleToZeroExtendVectorInRegS1_S3_S6_bE3$_2EEDaT_.exit.thread"
  %i.hv = load i32, ptr %i.cp, align 8, !tbaa !405
  %i.hw = icmp ugt i32 %i.hv, 64
  br i1 %i.hw, label %bb.ag, label %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit

bb.ag:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.hx = load ptr, ptr %10, align 8, !tbaa !75   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.hx) #38
  br label %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit

_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit:          ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.hz = load i32, ptr %i.bn, align 8, !tbaa !405
  %i.ia = icmp ugt i32 %i.hz, 64
  br i1 %i.ia, label %bb.ai, label %_ZN4llvm5APIntD2Ev.exit.i131

bb.ai:                                            ; preds = %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit
  %i.ib = load ptr, ptr %.ptr.1.i, align 8, !tbaa !75 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %_ZN4llvm5APIntD2Ev.exit.i131, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.ib) #38
  br label %_ZN4llvm5APIntD2Ev.exit.i131

_ZN4llvm5APIntD2Ev.exit.i131:                     ; preds = %bb.aj, %bb.ai, %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit
  %i.id = load i32, ptr %i.bm, align 8, !tbaa !405
  %i.ie = icmp ugt i32 %i.id, 64
  br i1 %i.ie, label %bb.ak, label %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit132

bb.ak:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i131
  %i.if = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit132, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.if) #38
  br label %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit132

_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit132:       ; preds = %_ZN4llvm5APIntD2Ev.exit.i131, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.ih = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.bd
  br i1 %i.ii, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit133, label %bb.am

bb.am:                                            ; preds = %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit132
  call void @free(ptr noundef %i.ih) #36
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit133

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit133:        ; preds = %_ZNSt5arrayIN4llvm5APIntELm2EED2Ev.exit132, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit133
  %.sroa.10.3 = phi i32 [ %.sroa.10.2, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit133 ], [ 0, %_ZNK4llvm3EVT9isIntegerEv.exit ]
  %.sroa.0169.3 = phi ptr [ %.sroa.0169.2, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit133 ], [ null, %_ZNK4llvm3EVT9isIntegerEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0169.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.10.3, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm14SDPatternMatch16TernaryOpc_matchINS0_11Value_matchENS0_10Value_bindIS2_EENS0_17SpecificInt_matchELb0ELb0EE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2, i32 %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !781
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72
  %i.d = icmp eq i32 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %_ZN4llvm14SDPatternMatch10Value_bindINS0_11Value_matchEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204  ; 5 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !74 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit, label %.split

.split:                                           ; preds = %bb.b
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !198
  %i.i = icmp eq ptr %i.h, %.sroa.04.0.copyload
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, %.sroa.25.0.copyload
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %bb.c, label %_ZN4llvm14SDPatternMatch10Value_bindINS0_11Value_matchEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread

_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit: ; preds = %bb.b
  %.not = icmp eq ptr %.sroa.04.0.copyload, null
  br i1 %.not, label %_ZN4llvm14SDPatternMatch10Value_bindINS0_11Value_matchEE5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.thread, label %bb.c

bb.c:                                             ; preds = %.split, %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.01.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !74 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !198 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !193  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4llvm14SDPatternMatch11Value_match5matchINS0_17BasicMatchContextEEEbRKT_NS_7SDValueE.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.c
end_hunk_4
