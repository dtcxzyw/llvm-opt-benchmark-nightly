Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelDAGToDAG?download=true
inline.NumInlined: 8224
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel11createTupleEN4llvm8ArrayRefINS1_7SDValueEEEPKjS6_:bb.a
  br i1 %.not.i24, label %bb.j, label %bb.i, !prof !314

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit23
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %.fca.0.extract, i32 %.fca.1.extract)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit26

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit23
  %i.av = zext i32 %i.at to i64
  %i.aw = load ptr, ptr %6, align 8, !tbaa !238
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  store ptr %.fca.0.extract, ptr %i.ax, align 1
  %.sroa.32.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.32.0..sroa_idx.i25, align 1
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !239
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.h, align 8, !tbaa !239
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit26

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit26: ; preds = %bb.i, %bb.j
  %i.ba = add i32 %.036, 1                        ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ugt i64 %2, %i.bb
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !900

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %bb.b
  %.sroa.035.0 = phi ptr [ %.sroa.035.0.copyload, %bb.b ], [ %i.ac, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ]
  %.sroa.3.0 = phi i32 [ %.sroa.3.0.copyload, %bb.b ], [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.035.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel24SelectAddrModeIndexedSVEILln8ELl7EEEbPN4llvm6SDNodeENS2_7SDValueERS5_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.e = tail call fastcc { i16, ptr } @_ZL16getMemVTFromNodeRN4llvm11LLVMContextEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1) ; 2 uses
  %i.f = extractvalue { i16, ptr } %i.e, 0        ; 3 uses
  store i16 %i.f, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = extractvalue { i16, ptr } %i.e, 1        ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !339
  %i.l = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.k) #22 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !528
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !467  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !223  ; 2 uses
  %i.s = icmp eq i32 %i.r, 16
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load i32, ptr %i.t, align 8, !tbaa !337  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !542
  %i.y = add i32 %i.x, %i.u
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !543
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !546
  switch i8 %i.ad, label %.critedge [
    i8 4, label %bb.c
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !338 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i16 %i.aj(ptr noundef nonnull align 8 dereferenceable(518435) %i.ag, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.al = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.ae, i32 noundef %i.u, i16 %i.ak, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.fca.0.extract44, ptr %3, align 8, !tbaa !313
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !102
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !234
  store i64 %i.ao, ptr %6, align 8, !tbaa !234
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !235
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !237
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.am, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract34, ptr %4, align 8, !tbaa !313
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.442.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i16 %i.f, 0                 ; 2 uses
  %i.at = icmp ne ptr %i.h, null
  %.not4.i.not106 = select i1 %.not.i.i, i1 true, i1 %i.at
  %.not = icmp eq i32 %i.r, 59
  %or.cond104 = and i1 %.not, %.not4.i.not106
  br i1 %or.cond104, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !229 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.086.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !313 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !223
  switch i32 %i.ay, label %.critedge [
    i32 396, label %bb.f
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !229
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !232
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !318 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !320 ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 65
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !321
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = sub nuw nsw i32 64, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl i64 %i.bi, %i.bl
  %i.bn = ashr exact i64 %i.bm, %i.bl
  %.0.i.i.i.i = select i1 %i.bj, i64 0, i64 %i.bn
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !321
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !318 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !320 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 65
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !321
  %i.bx = icmp eq i32 %i.bu, 0
  %i.by = sub nuw nsw i32 64, %i.bu
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = shl i64 %i.bw, %i.bz
  %i.cb = ashr exact i64 %i.ca, %i.bz
  %.0.i.i.i.i82 = select i1 %i.bx, i64 0, i64 %i.cb
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !321
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83: ; preds = %bb.i, %bb.j
  %.0.i.i.i81 = phi i64 [ %.0.i.i.i.i82, %bb.i ], [ %i.cd, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !99 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 876
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !547
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 880
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !548 ; 2 uses
  %i.ck = icmp ne i32 %i.ch, %i.cj
  %i.cl = lshr i32 %i.cj, 7                       ; 2 uses
  %.not77107 = icmp eq i32 %i.cl, 0
  %.not77 = or i1 %i.ck, %.not77107
  br i1 %.not77, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = srem i64 %.0.i.i.i81, %i.cm
  %i.co = sdiv i64 %.0.i.i.i81, %i.cm
  %.not78 = icmp eq i64 %i.cn, 0
  br i1 %.not78, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, label %.critedge

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.k, %bb.h, %bb.g
  %.272 = phi i64 [ %i.bp, %bb.h ], [ %.0.i.i.i.i, %bb.g ], [ %i.co, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cp = zext i16 %i.f to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.ct = extractvalue { i64, i8 } %i.cs, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.l, %bb.m
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.l ], [ %i.ct, %bb.m ]
  %i.cu = sdiv i64 %.pn.i, 8                      ; 2 uses
  %i.cv = srem i64 %.272, %i.cu
  %i.cw = sdiv i64 %.272, %i.cu                   ; 2 uses
  %.not79 = icmp eq i64 %i.cv, 0
  %i.cx = add i64 %i.cw, 8
  %or.cond = icmp ult i64 %i.cx, 16
  %or.cond1 = select i1 %.not79, i1 %or.cond, i1 false
  br i1 %or.cond1, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !333
  %i.cy = load ptr, ptr %3, align 8, !tbaa !232   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !223
  %i.db = icmp eq i32 %i.da, 16
  br i1 %i.db, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !337 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !542
  %i.dh = add i32 %i.dg, %i.dd
  %i.di = zext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !543
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 21
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !546
  switch i8 %i.dm, label %bb.q [
    i8 4, label %bb.p
    i8 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !338 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i16 %i.ds(ptr noundef nonnull align 8 dereferenceable(518435) %i.dp, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.dn, i32 noundef %i.dd, i16 %i.dt, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.du, 1
  store ptr %.fca.0.extract6, ptr %3, align 8, !tbaa !313
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !102
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !234
  store i64 %i.dx, ptr %7, align 8, !tbaa !234
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !235
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !237
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83, %bb.q, %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %bb.e, %bb.b, %bb.d, %bb.c
  %.6 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83 ], [ true, %bb.q ], [ false, %bb.k ], [ false, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeEN4llvm7SDValueEjRS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, i32 noundef range(i32 0, 5) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca [1 x %"class.llvm::SDValue"], align 16 ; 4 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !223
  %.not = icmp eq i32 %i.b, 59
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.046.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !313 ; 4 uses
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.0.0.extract.trunc = trunc i64 %i.g to i32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  store ptr %.sroa.046.0.copyload, ptr %4, align 8, !tbaa !313
  %.sroa.8.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.8.sroa.0.0.extract.trunc, ptr %.sroa.8.0..sroa_idx51, align 8, !tbaa !102
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !223
  switch i32 %i.i, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 198, label %bb.h
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.d, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !318  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !320  ; 3 uses
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.p = load i64, ptr %i.l, align 8, !tbaa !321
  %i.q = icmp eq i32 %i.n, 0
  %i.r = sub nuw nsw i32 64, %i.n
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = shl i64 %i.p, %i.s
  %i.u = ashr exact i64 %i.t, %i.s
  %.0.i.i.i.i = select i1 %i.q, i64 0, i64 %i.u
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !321
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.e, %bb.f
  %.0.i.i.i37 = phi i64 [ %.0.i.i.i.i, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.x = shl nuw nsw i32 1, %2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add nsw i64 %i.y, -1
  %i.aa = and i64 %.0.i.i.i37, %i.z
  %.not34 = icmp eq i64 %i.aa, 0
  br i1 %.not34, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !234
  store i64 %i.ac, ptr %5, align 8, !tbaa !234
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !235
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !237
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !211
  %i.ai = zext nneg i32 %2 to i64
  %i.aj = ashr i64 %.0.i.i.i37, %i.ai
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ah, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ak, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !333
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !211
  store ptr %6, ptr %7, align 8, !tbaa !311
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.am, align 8, !tbaa !312
  %i.an = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.al, i32 noundef 1131, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7) #22
  store ptr %i.an, ptr %4, align 8, !tbaa !313
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.aq, align 8, !tbaa !313 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !223
  switch i32 %i.as, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39: ; preds = %bb.h, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !318 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !320
  %i.ay = icmp ult i32 %i.ax, 65
  %i.az = load ptr, ptr %i.av, align 8
  %spec.select.i.i.i = select i1 %i.ay, ptr %i.av, ptr %i.az
  %.0.i.i.i40 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !321
  %i.ba = zext nneg i32 %2 to i64
  %i.bb = icmp eq i64 %.0.i.i.i40, %i.ba
end_hunk_0
begin_hunk_1_@_ZN4llvm9MemSDNode7classofEPKNS_6SDNodeE:bb.a
    i32 372, label %bb.c
    i32 373, label %bb.c
    i32 374, label %bb.c
    i32 375, label %bb.c
    i32 376, label %bb.c
    i32 377, label %bb.c
    i32 380, label %bb.c
    i32 381, label %bb.c
    i32 382, label %bb.c
    i32 383, label %bb.c
    i32 356, label %bb.c
    i32 357, label %bb.c
    i32 384, label %bb.c
    i32 385, label %bb.c
    i32 386, label %bb.c
    i32 387, label %bb.c
    i32 494, label %bb.c
    i32 491, label %bb.c
    i32 497, label %bb.c
    i32 493, label %bb.c
    i32 496, label %bb.c
    i32 492, label %bb.c
    i32 311, label %bb.c
    i32 312, label %bb.c
    i32 524, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 2
  %i.f = icmp ne i8 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

declare { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm3EVT19changeTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !244    ; 4 uses
  %.not.i = icmp eq i16 %i.a, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i16 %i.a, -19
  %spec.select.i.i = icmp ult i16 %i.b, 197
  %i.c = zext i16 %i.a to i64                     ; 3 uses
  br i1 %spec.select.i.i, label %bb.b, label %bb.f

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  br i1 %i.d, label %bb.e, label %bb.g

bb.b:                                             ; preds = %.split
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !226
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.j, align 16
  %i.k = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %.split.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.k, i1 true) ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 10
  br i1 %i.o, label %switch.lookup.i.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

switch.lookup.i.i.i:                              ; preds = %.split.i.i.i
  %switch.idx.cast.i.i.i = trunc nuw nsw i32 %i.n to i16
  %switch.offset.i.i.i = add nuw nsw i16 %switch.idx.cast.i.i.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i.i:            ; preds = %switch.lookup.i.i.i, %.split.i.i.i, %bb.b
  %.sroa.0.0.i.i.i = phi i16 [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 0, %.split.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.c
  %i.q = getelementptr i8, ptr %i.p, i64 -2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !535
  %spec.select.i.i.i.i = icmp samesign ult i16 %i.a, 163
  %.sroa.0.0.extract.trunc.i.i.i = zext i16 %i.r to i32 ; 2 uses
  br i1 %spec.select.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.s = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.t = insertvalue { i16, ptr } poison, i16 %i.s, 0
  %i.u = insertvalue { i16, ptr } %i.t, ptr null, 1
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

bb.d:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i.i
  %i.v = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i)
  %i.w = insertvalue { i16, ptr } poison, i16 %i.v, 0
  %i.x = insertvalue { i16, ptr } %i.w, ptr null, 1
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.y = tail call { i16, ptr } @_ZNK4llvm3EVT40changeExtendedVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  br label %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit

_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.y, %bb.e ], [ %i.u, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  %i.z = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.aa = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  br label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

bb.f:                                             ; preds = %.split
  %i.ab = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.c
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 16
  %i.ad = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.ae = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %.split.i.i, label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

.split.i.i:                                       ; preds = %bb.f
  %i.ag = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ad, i1 true) ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 10
  br i1 %i.ah, label %switch.lookup.i.i, label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

switch.lookup.i.i:                                ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.ag to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  br label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.ai = tail call { i16, ptr } @_ZNK4llvm3EVT27changeExtendedTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #22 ; 2 uses
  %i.aj = extractvalue { i16, ptr } %i.ai, 0
  %i.ak = extractvalue { i16, ptr } %i.ai, 1
  br label %_ZN4llvm3MVT19changeTypeToIntegerEv.exit

_ZN4llvm3MVT19changeTypeToIntegerEv.exit:         ; preds = %switch.lookup.i.i, %.split.i.i, %bb.f, %bb.g, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit
  %.sroa.4.0 = phi ptr [ %i.aa, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ], [ %i.ak, %bb.g ], [ null, %bb.f ], [ null, %.split.i.i ], [ null, %switch.lookup.i.i ]
  %.sroa.012.0 = phi i16 [ %i.z, %_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv.exit ], [ %i.aj, %bb.g ], [ 0, %bb.f ], [ 0, %.split.i.i ], [ %switch.offset.i.i, %switch.lookup.i.i ]
  %.fca.0.insert = insertvalue { i16, ptr } poison, i16 %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { i16, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i16, ptr } %.fca.1.insert
}

declare { i16, ptr } @_ZNK4llvm3EVT27changeExtendedTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare { i16, ptr } @_ZNK4llvm3EVT40changeExtendedVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_j(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, i32 noundef range(i32 0, 16) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %5, i32 noundef range(i32 1, 5) %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %9 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !223
  switch i32 %i.b, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !318  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !320  ; 3 uses
  %i.h = icmp ult i32 %i.g, 65
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.i = load i64, ptr %i.e, align 8, !tbaa !321
  %i.j = icmp eq i32 %i.g, 0
  %i.k = sub nuw nsw i32 64, %i.g
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = shl i64 %i.i, %i.l
  %i.n = ashr exact i64 %i.m, %i.l
  br i1 %i.j, label %.critedge, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !321
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i13.i = phi i64 [ %i.n, %bb.b ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = icmp slt i64 %.0.i.i.i13.i, 1
  %i.r = zext nneg i32 %3 to i64
  %.not12.i = icmp samesign ugt i64 %.0.i.i.i13.i, %i.r
  %or.cond = select i1 %i.q, i1 true, i1 %.not12.i
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i
  %.lhs.trunc88 = trunc nuw nsw i64 %.0.i.i.i13.i to i8 ; 2 uses
  %.rhs.trunc89 = trunc nuw nsw i32 %6 to i8      ; 2 uses
  %i.s = urem i8 %.lhs.trunc88, %.rhs.trunc89
  %i.t = udiv i8 %.lhs.trunc88, %.rhs.trunc89
  %i.u = icmp eq i8 %i.s, 0
  br i1 %i.u, label %"_ZZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_jENK3$_0clES2_.exit", label %.critedge

"_ZZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_jENK3$_0clES2_.exit": ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !211
  %.zext24.i = zext nneg i8 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !234
  store i64 %i.y, ptr %11, align 8, !tbaa !234
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !235
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !237
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.w, i64 noundef %.zext24.i, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ac, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %"_ZZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_jENK3$_0clES2_.exit"
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ac, 1
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !211 ; 4 uses
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !234
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.af, ptr %10, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, i16 7, ptr null, i16 1, ptr null) #22 ; 2 uses
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = extractvalue { ptr, i32 } %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.ai, ptr %8, align 16, !tbaa !313
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %.sroa.218.0..sroa_idx.i.i, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, i32 12, i16 7, ptr null) #22 ; 2 uses
  %.fca.0.extract3.i.i = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract4.i.i = extractvalue { ptr, i32 } %i.an, 1
  store ptr %.fca.0.extract3.i.i, ptr %i.am, align 16
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.fca.1.extract4.i.i, ptr %.sroa.26.0..sroa_idx.i.i, align 8
  store ptr %8, ptr %9, align 8, !tbaa !311
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 2, ptr %i.ao, align 8, !tbaa !312
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr %i.ak, i32 %i.al, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %9) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.ap, 1
  store ptr %.fca.0.extract16, ptr %4, align 8, !tbaa !313
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract17, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !102
  store ptr %.fca.0.extract.i, ptr %5, align 8, !tbaa !313
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract.i, ptr %.sroa.663.0..sroa_idx, align 8, !tbaa !102
  br label %bb.k

.critedge:                                        ; preds = %bb.b, %bb.a, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i, %bb.d, %"_ZZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_jENK3$_0clES2_.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !211
  %i.as = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ar, ptr nonnull %1, i32 %2) #22
  br i1 %i.as, label %bb.f, label %.critedge43

bb.f:                                             ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !229
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %.sroa.09.0.copyload = load ptr, ptr %i.av, align 8, !tbaa !313 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !223
  switch i32 %i.ax, label %.critedge43 [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i44
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i44
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i44: ; preds = %bb.f, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !318 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !320 ; 3 uses
  %i.bd = icmp ult i32 %i.bc, 65
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i44
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !321
  %i.bf = icmp eq i32 %i.bc, 0
  %i.bg = sub nuw nsw i32 64, %i.bc
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = shl i64 %i.be, %i.bh
  %i.bj = ashr exact i64 %i.bi, %i.bh
  br i1 %i.bf, label %.critedge43, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i45

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i44
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !321
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i45

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i45: ; preds = %bb.h, %bb.g
  %.0.i.i.i13.i46 = phi i64 [ %i.bj, %bb.g ], [ %i.bl, %bb.h ] ; 3 uses
  %i.bm = icmp slt i64 %.0.i.i.i13.i46, 1
  %i.bn = zext nneg i32 %3 to i64
  %.not12.i51 = icmp samesign ugt i64 %.0.i.i.i13.i46, %i.bn
  %or.cond94 = select i1 %i.bm, i1 true, i1 %.not12.i51
  br i1 %or.cond94, label %.critedge43, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i45
  %.lhs.trunc = trunc nuw nsw i64 %.0.i.i.i13.i46 to i8 ; 2 uses
  %.rhs.trunc = trunc nuw nsw i32 %6 to i8        ; 2 uses
  %i.bo = urem i8 %.lhs.trunc, %.rhs.trunc
  %i.bp = udiv i8 %.lhs.trunc, %.rhs.trunc
  %i.bq = icmp eq i8 %i.bo, 0
  br i1 %i.bq, label %"_ZZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_jENK3$_0clES2_.exit57", label %.critedge43

"_ZZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_jENK3$_0clES2_.exit57": ; preds = %bb.i
  %i.br = load ptr, ptr %i.aq, align 8, !tbaa !211
  %.zext24.i53 = zext nneg i8 %i.bp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !234
  store i64 %i.bt, ptr %7, align 8, !tbaa !234
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !235
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !237
  %i.bx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.br, i64 noundef %.zext24.i53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract.i55 = extractvalue { ptr, i32 } %i.bx, 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.not95 = icmp eq ptr %.fca.0.extract.i55, null
  br i1 %.not95, label %.critedge43, label %bb.j

bb.j:                                             ; preds = %"_ZZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_jENK3$_0clES2_.exit57"
  %.fca.1.extract.i56 = extractvalue { ptr, i32 } %i.bx, 1
  %i.by = load ptr, ptr %i.at, align 8, !tbaa !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.by, i64 12, i1 false), !tbaa.struct !333
  store ptr %.fca.0.extract.i55, ptr %5, align 8, !tbaa !313
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract.i56, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !102
  br label %bb.k

.critedge43:                                      ; preds = %bb.g, %bb.f, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.i45, %bb.i, %"_ZZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_jENK3$_0clES2_.exit57", %.critedge
  store ptr %1, ptr %4, align 8, !tbaa !313
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !102
  %i.bz = load ptr, ptr %i.aq, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !234
  store i64 %i.cb, ptr %12, align 8, !tbaa !234
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !235
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !237
  %i.cf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bz, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cf, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cf, 1
  store ptr %.fca.0.extract, ptr %5, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %.critedge43
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm12SelectionDAG24isBaseWithConstantOffsetENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel8ImmToRegILj331ELj0EEEbN4llvm7SDValueERS3_(ptr %.72.val, ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !223
  switch i32 %i.b, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit [
    i32 37, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !318  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !320
  %i.h = icmp ult i32 %i.g, 65
  %i.i = load ptr, ptr %i.e, align 8
  %spec.select.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.i
  %.0.i.i.i13 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !321
  %.not12 = icmp eq i64 %.0.i.i.i13, 0
  br i1 %.not12, label %bb.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %.72.val, i32 331, i16 1, ptr null) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.j, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.j, 1
  store ptr %.fca.0.extract, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.k = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL33extractPtrauthBlendDiscriminatorsN4llvm7SDValueEPNS_12SelectionDAGE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 12), (16, 28)) %0, ptr %1, i32 %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !234
  store i64 %i.b, ptr %4, align 8, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !235
  store i32 %i.e, ptr %i.c, align 8, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !223  ; 2 uses
  %i.h = icmp eq i32 %i.g, 48
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229  ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !318  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !320
  %i.q = icmp ult i32 %i.p, 65
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.r
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !321
  %i.s = icmp eq i64 %.0.i.i.i.i, 316
  br i1 %i.s, label %bb.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.033.0.copyload34 = load ptr, ptr %i.t, align 8, !tbaa !313
  %.sroa.735.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.735.0.copyload37 = load i32, ptr %.sroa.735.0..sroa_idx36, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.029.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !313 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.029.0.copyload, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !223
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.v = phi i32 [ %.pre, %bb.c ], [ %i.g, %bb.a ]
  %.sroa.029.0 = phi ptr [ %.sroa.029.0.copyload, %bb.c ], [ %1, %bb.a ]
  %.sroa.033.0 = phi ptr [ %.sroa.033.0.copyload34, %bb.c ], [ null, %bb.a ] ; 2 uses
  %.sroa.735.0 = phi i32 [ %.sroa.735.0.copyload37, %bb.c ], [ 0, %bb.a ]
  switch i32 %i.v, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.d, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !318  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !320 ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 65
  %i.ac = load ptr, ptr %i.y, align 8             ; 2 uses
  %spec.select.i.i.i = select i1 %i.ab, ptr %i.y, ptr %i.ac
  %.0.i.i.i17 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !321
  %i.ad = icmp ult i64 %.0.i.i.i17, 65536
  br i1 %i.ad, label %bb.e, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %.not = icmp eq ptr %.sroa.033.0, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 14, i16 8, ptr null) #22 ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.ae, 1
  %.pre46 = load ptr, ptr %i.w, align 8, !tbaa !318 ; 3 uses
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %.pre46, i64 32
  %.pre48 = load i32, ptr %.phi.trans.insert47, align 8, !tbaa !320
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %.pre46, i64 24
  %.pre50 = load ptr, ptr %.phi.trans.insert49, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi ptr [ %i.ac, %bb.e ], [ %.pre50, %bb.f ]
  %i.ag = phi i32 [ %i.aa, %bb.e ], [ %.pre48, %bb.f ]
  %i.ah = phi ptr [ %i.x, %bb.e ], [ %.pre46, %bb.f ]
  %.sroa.033.1 = phi ptr [ %.sroa.033.0, %bb.e ], [ %.fca.0.extract1, %bb.f ]
  %.sroa.735.1 = phi i32 [ %.sroa.735.0, %bb.e ], [ %.fca.1.extract2, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = icmp ult i32 %i.ag, 65
  %spec.select.i.i.i18 = select i1 %i.aj, ptr %i.ai, ptr %i.af
  %.0.i.i.i19 = load i64, ptr %spec.select.i.i.i18, align 8, !tbaa !321
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit, %bb.d, %bb.b, %bb.g
  %.0.i.i.i19.sink = phi i64 [ %.0.i.i.i19, %bb.g ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ]
  %.sroa.033.1.sink = phi ptr [ %.sroa.033.1, %bb.g ], [ %1, %bb.b ], [ %1, %bb.d ], [ %1, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ]
  %.sroa.735.1.sink = phi i32 [ %.sroa.735.1, %bb.g ], [ %2, %bb.b ], [ %2, %bb.d ], [ %2, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit ]
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %.0.i.i.i19.sink, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ak, 1
  store ptr %.sroa.033.1.sink, ptr %0, align 8, !tbaa !313
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.735.1.sink, ptr %.sroa.735.0..sroa_idx, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.fca.0.extract, ptr %i.al, align 8, !tbaa !313
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel8ImmToRegILj311ELj15EEEbN4llvm7SDValueERS3_:bb.a
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !318  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !320
  %i.h = icmp ult i32 %i.g, 65
  %i.i = load ptr, ptr %i.e, align 8
  %spec.select.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.i
  %.0.i.i.i12 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !321 ; 2 uses
  %i.j = icmp ult i64 %.0.i.i.i12, 16
  br i1 %i.j, label %bb.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %.0.i.i.i12 to i32
  %i.l = add nuw nsw i32 %i.k, 311
  %i.m = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %.72.val, i32 %i.l, i16 1, ptr null) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.m, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.m, 1
  store ptr %.fca.0.extract, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.n = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  ret i1 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel24SelectAddrModeIndexedSVEILln256ELl255EEEbPN4llvm6SDNodeENS2_7SDValueERS5_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.e = tail call fastcc { i16, ptr } @_ZL16getMemVTFromNodeRN4llvm11LLVMContextEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1) ; 2 uses
  %i.f = extractvalue { i16, ptr } %i.e, 0        ; 3 uses
  store i16 %i.f, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = extractvalue { i16, ptr } %i.e, 1        ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !339
  %i.l = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.k) #22 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !528
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !467  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !223  ; 2 uses
  %i.s = icmp eq i32 %i.r, 16
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load i32, ptr %i.t, align 8, !tbaa !337  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !542
  %i.y = add i32 %i.x, %i.u
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !543
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !546
  switch i8 %i.ad, label %.critedge [
    i8 4, label %bb.c
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !338 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i16 %i.aj(ptr noundef nonnull align 8 dereferenceable(518435) %i.ag, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.al = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.ae, i32 noundef %i.u, i16 %i.ak, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.fca.0.extract44, ptr %3, align 8, !tbaa !313
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !102
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !234
  store i64 %i.ao, ptr %6, align 8, !tbaa !234
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !235
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !237
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.am, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract34, ptr %4, align 8, !tbaa !313
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.442.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i16 %i.f, 0                 ; 2 uses
  %i.at = icmp ne ptr %i.h, null
  %.not4.i.not106 = select i1 %.not.i.i, i1 true, i1 %i.at
  %.not = icmp eq i32 %i.r, 59
  %or.cond104 = and i1 %.not, %.not4.i.not106
  br i1 %or.cond104, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !229 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.086.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !313 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !223
  switch i32 %i.ay, label %.critedge [
    i32 396, label %bb.f
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !229
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !232
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !318 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !320 ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 65
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !321
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = sub nuw nsw i32 64, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl i64 %i.bi, %i.bl
  %i.bn = ashr exact i64 %i.bm, %i.bl
  %.0.i.i.i.i = select i1 %i.bj, i64 0, i64 %i.bn
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !321
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !318 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !320 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 65
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !321
  %i.bx = icmp eq i32 %i.bu, 0
  %i.by = sub nuw nsw i32 64, %i.bu
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = shl i64 %i.bw, %i.bz
  %i.cb = ashr exact i64 %i.ca, %i.bz
  %.0.i.i.i.i82 = select i1 %i.bx, i64 0, i64 %i.cb
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !321
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83: ; preds = %bb.i, %bb.j
  %.0.i.i.i81 = phi i64 [ %.0.i.i.i.i82, %bb.i ], [ %i.cd, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !99 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 876
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !547
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 880
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !548 ; 2 uses
  %i.ck = icmp ne i32 %i.ch, %i.cj
  %i.cl = lshr i32 %i.cj, 7                       ; 2 uses
  %.not77107 = icmp eq i32 %i.cl, 0
  %.not77 = or i1 %i.ck, %.not77107
  br i1 %.not77, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = srem i64 %.0.i.i.i81, %i.cm
  %i.co = sdiv i64 %.0.i.i.i81, %i.cm
  %.not78 = icmp eq i64 %i.cn, 0
  br i1 %.not78, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, label %.critedge

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.k, %bb.h, %bb.g
  %.272 = phi i64 [ %i.bp, %bb.h ], [ %.0.i.i.i.i, %bb.g ], [ %i.co, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cp = zext i16 %i.f to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.ct = extractvalue { i64, i8 } %i.cs, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.l, %bb.m
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.l ], [ %i.ct, %bb.m ]
  %i.cu = sdiv i64 %.pn.i, 8                      ; 2 uses
  %i.cv = srem i64 %.272, %i.cu
  %i.cw = sdiv i64 %.272, %i.cu                   ; 2 uses
  %.not79 = icmp eq i64 %i.cv, 0
  %i.cx = add i64 %i.cw, 256
  %or.cond = icmp ult i64 %i.cx, 512
  %or.cond1 = select i1 %.not79, i1 %or.cond, i1 false
  br i1 %or.cond1, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !333
  %i.cy = load ptr, ptr %3, align 8, !tbaa !232   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !223
  %i.db = icmp eq i32 %i.da, 16
  br i1 %i.db, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !337 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !542
  %i.dh = add i32 %i.dg, %i.dd
  %i.di = zext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !543
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 21
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !546
  switch i8 %i.dm, label %bb.q [
    i8 4, label %bb.p
    i8 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !338 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i16 %i.ds(ptr noundef nonnull align 8 dereferenceable(518435) %i.dp, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.dn, i32 noundef %i.dd, i16 %i.dt, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.du, 1
  store ptr %.fca.0.extract6, ptr %3, align 8, !tbaa !313
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !102
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !234
  store i64 %i.dx, ptr %7, align 8, !tbaa !234
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !235
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !237
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83, %bb.q, %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %bb.e, %bb.b, %bb.d, %bb.c
  %.6 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83 ], [ true, %bb.q ], [ false, %bb.k ], [ false, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel25SelectAddrModeIndexedUImmILj2ELj63EEEbN4llvm7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel21SelectAddrModeIndexedEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr %1, i32 %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !232    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !223
  switch i32 %i.d, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !318  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !320  ; 3 uses
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.k = load i64, ptr %i.g, align 8, !tbaa !321
  %i.l = icmp eq i32 %i.i, 0
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl i64 %i.k, %i.n
  %i.p = ashr exact i64 %i.o, %i.n
  br i1 %i.l, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !321
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.c, %bb.d
  %.0.i.i.i25 = phi i64 [ %i.p, %bb.c ], [ %i.r, %bb.d ]
  %i.s = icmp sgt i64 %.0.i.i.i25, 63
  br i1 %i.s, label %.critedge, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

.critedge:                                        ; preds = %bb.b, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.a
  store ptr %1, ptr %3, align 8, !tbaa !313
  %.sroa.419.0..0.16.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.419.0..0.16.sroa_idx, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !234
  store i64 %i.w, ptr %5, align 8, !tbaa !234
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !235
  store i32 %i.z, ptr %i.x, align 8, !tbaa !237
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread: ; preds = %bb.c, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel29SelectNEONSplatOfSVEAddSubImmEN4llvm7SDValueERS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::optional.523", align 8 ; 9 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call fastcc void @_ZL17GetNEONSplatValueN4llvm7SDValueE(ptr dead_on_unwind noalias writable align 8 %5, ptr %1, i32 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !551, !range !327, !noundef !209
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !234
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !235
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !320  ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !320
  %i.l = icmp ult i32 %i.k, 65
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %5, align 8, !tbaa !321
  store i64 %i.m, ptr %6, align 8, !tbaa !321
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %5) #22
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !224
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.q, align 8, !tbaa !226 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !228
  store i16 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.r, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.s = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.s, 197
  br i1 %spec.select.i.i.i, label %bb.e, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.t = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel13SelectRDVLImmILin32ELi31ELi16EEEbN4llvm7SDValueERS3_:bb.a
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.s = ashr exact i64 %.0.i.i.i, 4              ; 2 uses
  %i.t = add nsw i64 %i.s, -32
  %or.cond = icmp ult i64 %i.t, -64
  br i1 %or.cond, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !234
  store i64 %i.v, ptr %2, align 8, !tbaa !234
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !235
  store i32 %i.y, ptr %i.w, align 8, !tbaa !237
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.72.val, i64 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.z, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract, ptr %1, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.e, %bb.f
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.e ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel24SelectAddrModeIndexedSVEILln32ELl31EEEbPN4llvm6SDNodeENS2_7SDValueERS5_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !308
  %i.e = tail call fastcc { i16, ptr } @_ZL16getMemVTFromNodeRN4llvm11LLVMContextEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1) ; 2 uses
  %i.f = extractvalue { i16, ptr } %i.e, 0        ; 3 uses
  store i16 %i.f, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = extractvalue { i16, ptr } %i.e, 1        ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !339
  %i.l = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.k) #22 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !528
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !467  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !223  ; 2 uses
  %i.s = icmp eq i32 %i.r, 16
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load i32, ptr %i.t, align 8, !tbaa !337  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !542
  %i.y = add i32 %i.x, %i.u
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !543
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !546
  switch i8 %i.ad, label %.critedge [
    i8 4, label %bb.c
    i8 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !338 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i16 %i.aj(ptr noundef nonnull align 8 dereferenceable(518435) %i.ag, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.al = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.ae, i32 noundef %i.u, i16 %i.ak, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.al, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.al, 1
  store ptr %.fca.0.extract44, ptr %3, align 8, !tbaa !313
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !102
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !234
  store i64 %i.ao, ptr %6, align 8, !tbaa !234
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !235
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !237
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.am, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract34, ptr %4, align 8, !tbaa !313
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.442.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i16 %i.f, 0                 ; 2 uses
  %i.at = icmp ne ptr %i.h, null
  %.not4.i.not106 = select i1 %.not.i.i, i1 true, i1 %i.at
  %.not = icmp eq i32 %i.r, 59
  %or.cond104 = and i1 %.not, %.not4.i.not106
  br i1 %or.cond104, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !229 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.086.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !313 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !223
  switch i32 %i.ay, label %.critedge [
    i32 396, label %bb.f
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !229
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !232
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !318 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !320 ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 65
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !321
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = sub nuw nsw i32 64, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl i64 %i.bi, %i.bl
  %i.bn = ashr exact i64 %i.bm, %i.bl
  %.0.i.i.i.i = select i1 %i.bj, i64 0, i64 %i.bn
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !321
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !318 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !320 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 65
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !321
  %i.bx = icmp eq i32 %i.bu, 0
  %i.by = sub nuw nsw i32 64, %i.bu
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = shl i64 %i.bw, %i.bz
  %i.cb = ashr exact i64 %i.ca, %i.bz
  %.0.i.i.i.i82 = select i1 %i.bx, i64 0, i64 %i.cb
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !321
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83: ; preds = %bb.i, %bb.j
  %.0.i.i.i81 = phi i64 [ %.0.i.i.i.i82, %bb.i ], [ %i.cd, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !99 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 876
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !547
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 880
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !548 ; 2 uses
  %i.ck = icmp ne i32 %i.ch, %i.cj
  %i.cl = lshr i32 %i.cj, 7                       ; 2 uses
  %.not77107 = icmp eq i32 %i.cl, 0
  %.not77 = or i1 %i.ck, %.not77107
  br i1 %.not77, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = srem i64 %.0.i.i.i81, %i.cm
  %i.co = sdiv i64 %.0.i.i.i81, %i.cm
  %.not78 = icmp eq i64 %i.cn, 0
  br i1 %.not78, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, label %.critedge

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.k, %bb.h, %bb.g
  %.272 = phi i64 [ %i.bp, %bb.h ], [ %.0.i.i.i.i, %bb.g ], [ %i.co, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cp = zext i16 %i.f to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.ct = extractvalue { i64, i8 } %i.cs, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.l, %bb.m
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.l ], [ %i.ct, %bb.m ]
  %i.cu = sdiv i64 %.pn.i, 8                      ; 2 uses
  %i.cv = srem i64 %.272, %i.cu
  %i.cw = sdiv i64 %.272, %i.cu                   ; 2 uses
  %.not79 = icmp eq i64 %i.cv, 0
  %i.cx = add i64 %i.cw, 32
  %or.cond = icmp ult i64 %i.cx, 64
  %or.cond1 = select i1 %.not79, i1 %or.cond, i1 false
  br i1 %or.cond1, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !333
  %i.cy = load ptr, ptr %3, align 8, !tbaa !232   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !223
  %i.db = icmp eq i32 %i.da, 16
  br i1 %i.db, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !337 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !542
  %i.dh = add i32 %i.dg, %i.dd
  %i.di = zext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !543
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 21
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !546
  switch i8 %i.dm, label %bb.q [
    i8 4, label %bb.p
    i8 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !338 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i16 %i.ds(ptr noundef nonnull align 8 dereferenceable(518435) %i.dp, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.dn, i32 noundef %i.dd, i16 %i.dt, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.du, 1
  store ptr %.fca.0.extract6, ptr %3, align 8, !tbaa !313
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !102
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !234
  store i64 %i.dx, ptr %7, align 8, !tbaa !234
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !235
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !237
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83, %bb.q, %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %bb.e, %bb.b, %bb.d, %bb.c
  %.6 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83 ], [ true, %bb.q ], [ false, %bb.k ], [ false, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel25SelectAddrModeIndexedUImmILj8ELj63EEEbN4llvm7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel21SelectAddrModeIndexedEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr %1, i32 %2, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !232    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !223
  switch i32 %i.d, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !318  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !320  ; 3 uses
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.k = load i64, ptr %i.g, align 8, !tbaa !321
  %i.l = icmp eq i32 %i.i, 0
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl i64 %i.k, %i.n
  %i.p = ashr exact i64 %i.o, %i.n
  br i1 %i.l, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !321
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.c, %bb.d
  %.0.i.i.i25 = phi i64 [ %i.p, %bb.c ], [ %i.r, %bb.d ]
  %i.s = icmp sgt i64 %.0.i.i.i25, 63
  br i1 %i.s, label %.critedge, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

.critedge:                                        ; preds = %bb.b, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.a
  store ptr %1, ptr %3, align 8, !tbaa !313
  %.sroa.419.0..0.16.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.419.0..0.16.sroa_idx, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !234
  store i64 %i.w, ptr %5, align 8, !tbaa !234
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !235
  store i32 %i.z, ptr %i.x, align 8, !tbaa !237
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !313
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread: ; preds = %bb.c, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel25SelectCmpBranchExtOperandILb1EEEbN4llvm7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !223
  %.off = add i32 %i.b, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !226
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !228
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 5
  %i.h = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not38 = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %.not38, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !333
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !234
  store i64 %i.l, ptr %4, align 8, !tbaa !234
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !235
  store i32 %i.o, ptr %i.m, align 8, !tbaa !237
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.j, i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.p, 1
  store ptr %.fca.0.extract10, ptr %3, align 8, !tbaa !313
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract11, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.q = tail call fastcc noundef i32 @_ZL20getExtendTypeForNodeN4llvm7SDValueEb(ptr nonnull %1, i1 noundef zeroext false) ; 4 uses
  %i.r = icmp eq i32 %i.q, 5
  %i.s = icmp eq i32 %i.q, 9
  %or.cond = or i1 %i.r, %i.s                     ; 2 uses
  switch i32 %i.q, label %bb.f [
    i32 9, label %bb.e
    i32 5, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
end_hunk_3
