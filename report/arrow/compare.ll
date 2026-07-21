inline.NumInlined: 2996
inline.NumDeleted: 1287
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_13LargeListTypeE:bb.a

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_12ListViewTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 12 uses
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !708, !noalias !1002, !nonnull !40, !align !709 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !984, !noalias !1002
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41, !noalias !1002 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !710, !noalias !1002, !nonnull !40, !align !709 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !984, !noalias !1002
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41, !noalias !1002 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !711, !noalias !1002 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174, !noalias !1002 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i.i10, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !712, !noalias !1002
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !298, !range !39, !noalias !1002, !noundef !40
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1002
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !99
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.p
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12:   ; preds = %bb.a, %bb.b
  %.0.i.i11 = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !91, !noalias !1002 ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.0.i.i11, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !711, !noalias !1002 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !174, !noalias !1002 ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i7, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !712, !noalias !1002
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !298, !range !39, !noalias !1002, !noundef !40
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1002
  %i.al = select i1 %i.ai, ptr %i.ak, ptr null, !prof !99
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.af
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9:    ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12, %bb.c
  %.0.i.i8 = phi ptr [ %i.am, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit12 ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !92, !noalias !1002 ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %.0.i.i8, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !174, !noalias !1002 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i4, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !712, !noalias !1002
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !298, !range !39, !noalias !1002, !noundef !40
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1002
  %i.az = select i1 %i.aw, ptr %i.ay, ptr null, !prof !99
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.at
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6:    ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9, %bb.d
  %.0.i.i5 = phi ptr [ %i.ba, %bb.d ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit9 ]
  %i.bb = getelementptr inbounds [4 x i8], ptr %.0.i.i5, i64 %i.y ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !174, !noalias !1002 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i2, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !712, !noalias !1002
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !298, !range !39, !noalias !1002, !noundef !40
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1002
  %i.bl = select i1 %i.bi, ptr %i.bk, ptr null, !prof !99
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bf
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit:     ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6, %bb.e
  %.0.i.i3 = phi ptr [ %i.bm, %bb.e ], [ null, %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit6 ]
  %i.bn = getelementptr inbounds [4 x i8], ptr %.0.i.i3, i64 %i.ao ; 2 uses
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !174, !noalias !1002 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !298, !range !39, !noalias !1002, !noundef !40
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !1002 ; 2 uses
  %i.bu = icmp ne ptr %i.bt, null
  %or.cond.not = select i1 %i.br, i1 %i.bu, i1 false
  br i1 %or.cond.not, label %bb.j, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread: ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !93, !noalias !1002 ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 1
  br i1 %i.bx, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph28, %select.unfold16
  %.018.i.i27 = phi i64 [ 0, %.lr.ph28 ], [ %i.cv, %select.unfold16 ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.018.i.i27
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !1002 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.018.i.i27
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3, !noalias !1002
  %.not.i8.i = icmp eq i32 %i.ch, %i.cj
  br i1 %.not.i8.i, label %bb.h, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ck = icmp eq i32 %i.ch, 0
  br i1 %i.ck, label %select.unfold16, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1002
  %i.cl = load ptr, ptr %1, align 8, !tbaa !797, !noalias !1002, !nonnull !40, !align !709
  %i.cm = load i8, ptr %i.by, align 8, !tbaa !88, !range !39, !noalias !1002, !noundef !40
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.018.i.i27
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3, !noalias !1002
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.018.i.i27
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3, !noalias !1002
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.ch to i64
  store ptr %i.cl, ptr %3, align 8, !tbaa !86, !noalias !1002
  store i8 %i.cm, ptr %i.bz, align 8, !tbaa !88, !noalias !1002
  store ptr %i.e, ptr %i.ca, align 8, !tbaa !90, !noalias !1002
  store ptr %i.j, ptr %i.cb, align 8, !tbaa !90, !noalias !1002
  store i64 %i.cp, ptr %i.cc, align 8, !tbaa !91, !noalias !1002
  store i64 %i.cs, ptr %i.cd, align 8, !tbaa !92, !noalias !1002
  store i64 %i.ct, ptr %i.ce, align 8, !tbaa !93, !noalias !1002
  store i8 0, ptr %i.cf, align 8, !tbaa !94, !noalias !1002
  %i.cu = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %3), !noalias !1002, !inline_history !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1002
  br i1 %i.cu, label %select.unfold16, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i

select.unfold16:                                  ; preds = %bb.i, %bb.h
  %i.cv = add nuw nsw i64 %.018.i.i27, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %i.bw
  br i1 %exitcond.not, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, label %bb.g, !llvm.loop !1006

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i: ; preds = %select.unfold16, %bb.g, %bb.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread
  %.lcssa = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread ], [ 0, %bb.i ], [ 0, %bb.g ], [ 1, %select.unfold16 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.lcssa, ptr %i.cw, align 8, !tbaa !94, !noalias !1002
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1002
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !712, !noalias !1002
  %i.cz = add nsw i64 %i.cy, %i.y
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.db = load i64, ptr %i.da, align 8, !tbaa !93, !noalias !1002
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.bt, i64 noundef %i.cz, i64 noundef %i.db), !noalias !1002, !inline_history !1007
  %i.dc = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1002, !inline_history !1007 ; 2 uses
  %i.dd = extractvalue { i64, i64 } %i.dc, 1      ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.critedge.i, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %5 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.j, i64 1
  br label %bb.k

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit: ; preds = %.thread19, %bb.k
  %i.dp = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1002, !inline_history !1007 ; 2 uses
  %i.dq = extractvalue { i64, i64 } %i.dp, 1      ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.critedge.i, label %bb.k, !llvm.loop !1008

bb.k:                                             ; preds = %.lr.ph26, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit
  %i.ds = phi i64 [ %i.dd, %.lr.ph26 ], [ %i.dq, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit ] ; 2 uses
  %i.dt = phi { i64, i64 } [ %i.dc, %.lr.ph26 ], [ %i.dp, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit ]
  %i.du = extractvalue { i64, i64 } %i.dt, 0      ; 2 uses
  %i.dv = add nsw i64 %i.du, %i.ds
  %i.dw = icmp sgt i64 %i.ds, 0
  br i1 %i.dw, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit

.lr.ph:                                           ; preds = %bb.k, %.thread19
  %.018.i9.i25 = phi i64 [ %i.fn, %.thread19 ], [ %i.du, %bb.k ] ; 5 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %.018.i9.i25
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3, !noalias !1002 ; 3 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %.018.i9.i25
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3, !noalias !1002
  %.not.i11.i = icmp eq i32 %i.dy, %i.ea
  br i1 %.not.i11.i, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %i.eb = icmp eq i32 %i.dy, 0
  br i1 %i.eb, label %.thread19, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1002
  %i.ec = load ptr, ptr %1, align 8, !tbaa !797, !noalias !1002, !nonnull !40, !align !709
  %i.ed = load i8, ptr %i.df, align 8, !tbaa !88, !range !39, !noalias !1002, !noundef !40
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.018.i9.i25
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3, !noalias !1002 ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %.018.i9.i25
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3, !noalias !1002 ; 2 uses
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = sext i32 %i.dy to i64                   ; 6 uses
  store ptr %i.ec, ptr %2, align 8, !tbaa !86, !noalias !1002
  store i8 %i.ed, ptr %i.dg, align 8, !tbaa !88, !noalias !1002
  store <2 x ptr> %6, ptr %i.dh, align 8, !tbaa !90, !noalias !1002
  store i64 %i.eg, ptr %i.dj, align 8, !tbaa !91, !noalias !1002
  store i64 %i.ej, ptr %i.dk, align 8, !tbaa !92, !noalias !1002
  store i64 %i.ek, ptr %i.dl, align 8, !tbaa !93, !noalias !1002
  store i8 0, ptr %i.dm, align 8, !tbaa !94, !noalias !1002
  %i.el = icmp eq i32 %i.ef, 0
  %i.em = icmp eq i32 %i.ei, 0
  %or.cond.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.en = load i64, ptr %i.dn, align 8, !tbaa !66, !noalias !1002
  %i.eo = icmp eq i64 %i.en, %i.ek
  br i1 %i.eo, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ep = load i64, ptr %i.do, align 8, !tbaa !66, !noalias !1002
  %i.eq = icmp eq i64 %i.ep, %i.ek
  br i1 %i.eq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.er = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.e), !noalias !1002, !inline_history !1009
  %i.es = load ptr, ptr %i.di, align 8, !tbaa !710, !noalias !1002, !nonnull !40, !align !709
  %i.et = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.es), !noalias !1002, !inline_history !1009
  %.not.i = icmp eq i64 %i.er, %i.et
  br i1 %.not.i, label %._crit_edge, label %.thread22

._crit_edge:                                      ; preds = %bb.p
  %.pre = load ptr, ptr %i.dh, align 8, !tbaa !708, !noalias !1002
  %.pre33 = load i64, ptr %i.dj, align 8, !tbaa !91, !noalias !1002
  %.pre34 = load ptr, ptr %i.di, align 8, !tbaa !710, !noalias !1002
  %.pre35 = load i64, ptr %i.dk, align 8, !tbaa !92, !noalias !1002
  %.pre36 = load i64, ptr %i.dl, align 8, !tbaa !93, !noalias !1002
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o, %bb.n, %bb.m
  %i.eu = phi i64 [ %.pre36, %._crit_edge ], [ %i.ek, %bb.o ], [ %i.ek, %bb.n ], [ %i.ek, %bb.m ]
  %i.ev = phi i64 [ %.pre35, %._crit_edge ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.ej, %bb.m ]
  %i.ew = phi ptr [ %.pre34, %._crit_edge ], [ %i.j, %bb.o ], [ %i.j, %bb.n ], [ %i.j, %bb.m ] ; 2 uses
  %i.ex = phi i64 [ %.pre33, %._crit_edge ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.eg, %bb.m ]
  %i.ey = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.o ], [ %i.e, %bb.n ], [ %i.e, %bb.m ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !711, !noalias !1002
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !712, !noalias !1002
  %i.fd = add nsw i64 %i.ex, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !711, !noalias !1002
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !712, !noalias !1002
  %i.fi = add nsw i64 %i.ev, %i.fh
  %i.fj = call noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsERKSt10shared_ptrINS_6BufferEElS5_ll(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i64 noundef %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i64 noundef %i.fi, i64 noundef %i.eu), !noalias !1002, !inline_history !1009
  br i1 %i.fj, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit, label %.thread22

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit: ; preds = %bb.q
  %i.fk = load ptr, ptr %i.dh, align 8, !tbaa !708, !noalias !1002, !nonnull !40, !align !709
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !46, !noalias !1002
  %i.fm = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareWithTypeERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.fl), !noalias !1002, !inline_history !1009
  br i1 %i.fm, label %bb.r, label %.thread22

.thread22:                                        ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1002
  br label %.loopexit

bb.r:                                             ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1002
  br label %.thread19

.thread19:                                        ; preds = %bb.l, %bb.r
  %i.fn = add nsw i64 %.018.i9.i25, 1             ; 2 uses
  %i.fo = icmp slt i64 %i.fn, %i.dv
  br i1 %i.fo, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit, !llvm.loop !1006

.loopexit:                                        ; preds = %.lr.ph, %.thread22
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.fp, align 8, !tbaa !94, !noalias !1002
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit, %bb.j, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1002
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_12ListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, %.critedge.i
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !1010
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_17LargeListViewTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 12 uses
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !708, !noalias !1013, !nonnull !40, !align !709 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !984, !noalias !1013
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41, !noalias !1013 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !710, !noalias !1013, !nonnull !40, !align !709 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !984, !noalias !1013
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41, !noalias !1013 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !711, !noalias !1013 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174, !noalias !1013 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.n, null
  br i1 %.not.i.i10, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !712, !noalias !1013
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !298, !range !39, !noalias !1013, !noundef !40
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1013
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !99
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.p
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12:   ; preds = %bb.a, %bb.b
  %.0.i.i11 = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !91, !noalias !1013 ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0.i.i11, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !711, !noalias !1013 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !174, !noalias !1013 ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i7, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !712, !noalias !1013
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !298, !range !39, !noalias !1013, !noundef !40
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !1013
  %i.al = select i1 %i.ai, ptr %i.ak, ptr null, !prof !99
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.af
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9:    ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12, %bb.c
  %.0.i.i8 = phi ptr [ %i.am, %bb.c ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit12 ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !92, !noalias !1013 ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0.i.i8, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !174, !noalias !1013 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i4, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6, label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.at = load i64, ptr %i.as, align 8, !tbaa !712, !noalias !1013
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !298, !range !39, !noalias !1013, !noundef !40
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1013
  %i.az = select i1 %i.aw, ptr %i.ay, ptr null, !prof !99
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.at
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6:    ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9, %bb.d
  %.0.i.i5 = phi ptr [ %i.ba, %bb.d ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit9 ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0.i.i5, i64 %i.y ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !174, !noalias !1013 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i2, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !712, !noalias !1013
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !298, !range !39, !noalias !1013, !noundef !40
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1013
  %i.bl = select i1 %i.bi, ptr %i.bk, ptr null, !prof !99
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bf
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit:     ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6, %bb.e
  %.0.i.i3 = phi ptr [ %i.bm, %bb.e ], [ null, %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit6 ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0.i.i3, i64 %i.ao ; 2 uses
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !174, !noalias !1013 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !298, !range !39, !noalias !1013, !noundef !40
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !1013 ; 2 uses
  %i.bu = icmp ne ptr %i.bt, null
  %or.cond.not = select i1 %i.br, i1 %i.bu, i1 false
  br i1 %or.cond.not, label %bb.j, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread: ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !93, !noalias !1013 ; 2 uses
  %i.bx = icmp slt i64 %i.bw, 1
  br i1 %i.bx, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph28, %select.unfold16
  %.018.i.i27 = phi i64 [ 0, %.lr.ph28 ], [ %i.cs, %select.unfold16 ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.018.i.i27
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !228, !noalias !1013 ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.018.i.i27
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !228, !noalias !1013
  %.not.i8.i = icmp eq i64 %i.ch, %i.cj
  br i1 %.not.i8.i, label %bb.h, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ck = icmp eq i64 %i.ch, 0
  br i1 %i.ck, label %select.unfold16, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1013
  %i.cl = load ptr, ptr %1, align 8, !tbaa !797, !noalias !1013, !nonnull !40, !align !709
  %i.cm = load i8, ptr %i.by, align 8, !tbaa !88, !range !39, !noalias !1013, !noundef !40
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i27
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !228, !noalias !1013
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.018.i.i27
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !228, !noalias !1013
  store ptr %i.cl, ptr %3, align 8, !tbaa !86, !noalias !1013
  store i8 %i.cm, ptr %i.bz, align 8, !tbaa !88, !noalias !1013
  store ptr %i.e, ptr %i.ca, align 8, !tbaa !90, !noalias !1013
  store ptr %i.j, ptr %i.cb, align 8, !tbaa !90, !noalias !1013
  store i64 %i.co, ptr %i.cc, align 8, !tbaa !91, !noalias !1013
  store i64 %i.cq, ptr %i.cd, align 8, !tbaa !92, !noalias !1013
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !93, !noalias !1013
  store i8 0, ptr %i.cf, align 8, !tbaa !94, !noalias !1013
  %i.cr = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %3), !noalias !1013, !inline_history !1016
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1013
  br i1 %i.cr, label %select.unfold16, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i

select.unfold16:                                  ; preds = %bb.i, %bb.h
  %i.cs = add nuw nsw i64 %.018.i.i27, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.bw
  br i1 %exitcond.not, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, label %bb.g, !llvm.loop !1017

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i: ; preds = %select.unfold16, %bb.g, %bb.i, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread
  %.lcssa = phi i8 [ 1, %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.i.thread ], [ 0, %bb.i ], [ 0, %bb.g ], [ 1, %select.unfold16 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %.lcssa, ptr %i.ct, align 8, !tbaa !94, !noalias !1013
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1013
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !712, !noalias !1013
  %i.cw = add nsw i64 %i.cv, %i.y
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !93, !noalias !1013
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.bt, i64 noundef %i.cw, i64 noundef %i.cy), !noalias !1013, !inline_history !1018
  %i.cz = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1013, !inline_history !1018 ; 2 uses
  %i.da = extractvalue { i64, i64 } %i.cz, 1      ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.critedge.i, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %5 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.j, i64 1
  br label %bb.k

_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit: ; preds = %.thread19, %bb.k
  %i.dm = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !noalias !1013, !inline_history !1018 ; 2 uses
  %i.dn = extractvalue { i64, i64 } %i.dm, 1      ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.critedge.i, label %bb.k, !llvm.loop !1019

bb.k:                                             ; preds = %.lr.ph26, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit
  %i.dp = phi i64 [ %i.da, %.lr.ph26 ], [ %i.dn, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit ] ; 2 uses
  %i.dq = phi { i64, i64 } [ %i.cz, %.lr.ph26 ], [ %i.dm, %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit ]
  %i.dr = extractvalue { i64, i64 } %i.dq, 0      ; 2 uses
  %i.ds = add nsw i64 %i.dr, %i.dp
  %i.dt = icmp sgt i64 %i.dp, 0
  br i1 %i.dt, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit

.lr.ph:                                           ; preds = %bb.k, %.thread19
  %.018.i9.i25 = phi i64 [ %i.fh, %.thread19 ], [ %i.dr, %bb.k ] ; 5 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.018.i9.i25
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !228, !noalias !1013 ; 8 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.018.i9.i25
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !228, !noalias !1013
  %.not.i11.i = icmp eq i64 %i.dv, %i.dx
  br i1 %.not.i11.i, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  %i.dy = icmp eq i64 %i.dv, 0
  br i1 %i.dy, label %.thread19, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1013
  %i.dz = load ptr, ptr %1, align 8, !tbaa !797, !noalias !1013, !nonnull !40, !align !709
  %i.ea = load i8, ptr %i.dc, align 8, !tbaa !88, !range !39, !noalias !1013, !noundef !40
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.018.i9.i25
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !228, !noalias !1013 ; 3 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.018.i9.i25
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !228, !noalias !1013 ; 3 uses
  store ptr %i.dz, ptr %2, align 8, !tbaa !86, !noalias !1013
  store i8 %i.ea, ptr %i.dd, align 8, !tbaa !88, !noalias !1013
  store <2 x ptr> %6, ptr %i.de, align 8, !tbaa !90, !noalias !1013
  store i64 %i.ec, ptr %i.dg, align 8, !tbaa !91, !noalias !1013
  store i64 %i.ee, ptr %i.dh, align 8, !tbaa !92, !noalias !1013
  store i64 %i.dv, ptr %i.di, align 8, !tbaa !93, !noalias !1013
  store i8 0, ptr %i.dj, align 8, !tbaa !94, !noalias !1013
  %i.ef = icmp eq i64 %i.ec, 0
  %i.eg = icmp eq i64 %i.ee, 0
  %or.cond.i = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.eh = load i64, ptr %i.dk, align 8, !tbaa !66, !noalias !1013
  %i.ei = icmp eq i64 %i.dv, %i.eh
  br i1 %i.ei, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ej = load i64, ptr %i.dl, align 8, !tbaa !66, !noalias !1013
  %i.ek = icmp eq i64 %i.dv, %i.ej
  br i1 %i.ek, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.el = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.e), !noalias !1013, !inline_history !1020
  %i.em = load ptr, ptr %i.df, align 8, !tbaa !710, !noalias !1013, !nonnull !40, !align !709
  %i.en = call noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120) %i.em), !noalias !1013, !inline_history !1020
  %.not.i = icmp eq i64 %i.el, %i.en
  br i1 %.not.i, label %._crit_edge, label %.thread22

._crit_edge:                                      ; preds = %bb.p
  %.pre = load ptr, ptr %i.de, align 8, !tbaa !708, !noalias !1013
  %.pre33 = load i64, ptr %i.dg, align 8, !tbaa !91, !noalias !1013
  %.pre34 = load ptr, ptr %i.df, align 8, !tbaa !710, !noalias !1013
  %.pre35 = load i64, ptr %i.dh, align 8, !tbaa !92, !noalias !1013
  %.pre36 = load i64, ptr %i.di, align 8, !tbaa !93, !noalias !1013
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o, %bb.n, %bb.m
  %i.eo = phi i64 [ %.pre36, %._crit_edge ], [ %i.dv, %bb.o ], [ %i.dv, %bb.n ], [ %i.dv, %bb.m ]
  %i.ep = phi i64 [ %.pre35, %._crit_edge ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.ee, %bb.m ]
  %i.eq = phi ptr [ %.pre34, %._crit_edge ], [ %i.j, %bb.o ], [ %i.j, %bb.n ], [ %i.j, %bb.m ] ; 2 uses
  %i.er = phi i64 [ %.pre33, %._crit_edge ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.ec, %bb.m ]
  %i.es = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.o ], [ %i.e, %bb.n ], [ %i.e, %bb.m ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !711, !noalias !1013
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !712, !noalias !1013
  %i.ex = add nsw i64 %i.er, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !711, !noalias !1013
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !712, !noalias !1013
  %i.fc = add nsw i64 %i.ep, %i.fb
  %i.fd = call noundef zeroext i1 @_ZN5arrow8internal20OptionalBitmapEqualsERKSt10shared_ptrINS_6BufferEElS5_ll(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 noundef %i.fc, i64 noundef %i.eo), !noalias !1013, !inline_history !1020
  br i1 %i.fd, label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit, label %.thread22

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit: ; preds = %bb.q
  %i.fe = load ptr, ptr %i.de, align 8, !tbaa !708, !noalias !1013, !nonnull !40, !align !709
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !46, !noalias !1013
  %i.fg = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareWithTypeERKNS_8DataTypeE(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ff), !noalias !1013, !inline_history !1020
  br i1 %i.fg, label %bb.r, label %.thread22

.thread22:                                        ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1013
  br label %.loopexit

bb.r:                                             ; preds = %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1013
  br label %.thread19

.thread19:                                        ; preds = %bb.l, %bb.r
  %i.fh = add nsw i64 %.018.i9.i25, 1             ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.ds
  br i1 %i.fi, label %.lr.ph, label %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit, !llvm.loop !1017

.loopexit:                                        ; preds = %.lr.ph, %.thread22
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.fj, align 8, !tbaa !94, !noalias !1013
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit14.i.loopexit, %bb.j, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1013
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit

_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIZNS1_15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_EUlllE_EEvOS6_.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl15CompareListViewINS_17LargeListViewTypeEEENS_6StatusERKT_ENKUlllE_clEll.exit.i, %.critedge.i
  store ptr null, ptr %0, align 8, !tbaa !96, !alias.scope !1021
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl5VisitERKNS_17FixedSizeListTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %1, i32 %.72.val) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %3 = alloca %"class.arrow::(anonymous namespace)::RangeDataEqualsImpl", align 8 ; 11 uses
  %4 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !708, !nonnull !40, !align !709 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !984
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !710, !nonnull !40, !align !709 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !984
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !711
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !174  ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !298, !range !39, !noundef !40
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond.not = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond.not, label %bb.c, label %_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread, !prof !733

_ZNK5arrow9ArrayData9GetValuesIhEEPKT_il.exit.thread: ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.v = load ptr, ptr %1, align 8, !tbaa !797, !nonnull !40, !align !709
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !88, !range !39, !noundef !40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !712
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = sext i32 %.72.val to i64                ; 3 uses
  %i.ae = mul nsw i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !712
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = mul nsw i64 %i.aj, %i.ad
  %i.al = mul nsw i64 %i.u, %i.ad
  store ptr %i.v, ptr %2, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.x, ptr %i.am, align 8, !tbaa !88
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %i.an, align 8, !tbaa !90
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.j, ptr %i.ao, align 8, !tbaa !90
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ae, ptr %i.ap, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.ak, ptr %i.aq, align 8, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.al, ptr %i.ar, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 0, ptr %i.as, align 8, !tbaa !94
  %i.at = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl7CompareEv(ptr noundef nonnull align 8 dereferenceable(57) %2), !inline_history !1024
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = zext i1 %i.at to i8
  store i8 %i.av, ptr %i.au, align 8, !tbaa !94
  br label %_ZN5arrow12_GLOBAL__N_119RangeDataEqualsImpl14VisitValidRunsIRZNS1_5VisitERKNS_17FixedSizeListTypeEEUlllE_EEvOT_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !712
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !91
  %i.ba = add nsw i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !93
  call void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull %i.r, i64 noundef %i.ba, i64 noundef %i.bc), !inline_history !1025
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = sext i32 %.72.val to i64                ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.bn = call { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %4), !inline_history !1025 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 1      ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = extractvalue { i64, i64 } %i.bn, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.br = load ptr, ptr %1, align 8, !tbaa !797, !nonnull !40, !align !709
  %i.bs = load i8, ptr %i.bd, align 8, !tbaa !88, !range !39, !noundef !40
  %i.bt = load i64, ptr %i.ay, align 8, !tbaa !91
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !708, !nonnull !40, !align !709
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !712
  %i.bx = add i64 %i.bt, %i.bq
  %i.by = add i64 %i.bx, %i.bw
end_hunk_0
