inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cm_zlib__tr_flush_block:bb.a
  %i.o = load i16, ptr %i.n, align 8, !tbaa !28
  %.not19.3.i = icmp eq i16 %i.o, 0
  br i1 %.not19.3.i, label %bb.g, label %detect_data_type.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.q = load i16, ptr %i.p, align 4, !tbaa !28
  %.not19.4.i = icmp eq i16 %i.q, 0
  br i1 %.not19.4.i, label %bb.h, label %detect_data_type.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i16, ptr %i.r, align 8, !tbaa !28
  %.not19.5.i = icmp eq i16 %i.s, 0
  br i1 %.not19.5.i, label %bb.i, label %detect_data_type.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.u = load i16, ptr %i.t, align 4, !tbaa !28
  %.not19.6.i = icmp eq i16 %i.u, 0
  br i1 %.not19.6.i, label %bb.j, label %detect_data_type.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.w = load i16, ptr %i.v, align 4, !tbaa !28
  %.not19.14.i = icmp eq i16 %i.w, 0
  br i1 %.not19.14.i, label %bb.k, label %detect_data_type.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = load i16, ptr %i.x, align 8, !tbaa !28
  %.not19.15.i = icmp eq i16 %i.y, 0
  br i1 %.not19.15.i, label %bb.l, label %detect_data_type.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !28
  %.not19.16.i = icmp eq i16 %i.aa, 0
  br i1 %.not19.16.i, label %bb.m, label %detect_data_type.exit

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !28
  %.not19.17.i = icmp eq i16 %i.ac, 0
  br i1 %.not19.17.i, label %bb.n, label %detect_data_type.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !28
  %.not19.18.i = icmp eq i16 %i.ae, 0
  br i1 %.not19.18.i, label %bb.o, label %detect_data_type.exit

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !28
  %.not19.19.i = icmp eq i16 %i.ag, 0
  br i1 %.not19.19.i, label %bb.p, label %detect_data_type.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !28
  %.not19.20.i = icmp eq i16 %i.ai, 0
  br i1 %.not19.20.i, label %bb.q, label %detect_data_type.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !28
  %.not19.21.i = icmp eq i16 %i.ak, 0
  br i1 %.not19.21.i, label %bb.r, label %detect_data_type.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.am = load i16, ptr %i.al, align 4, !tbaa !28
  %.not19.22.i = icmp eq i16 %i.am, 0
  br i1 %.not19.22.i, label %bb.s, label %detect_data_type.exit

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !28
  %.not19.23.i = icmp eq i16 %i.ao, 0
  br i1 %.not19.23.i, label %bb.t, label %detect_data_type.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !28
  %.not19.24.i = icmp eq i16 %i.aq, 0
  br i1 %.not19.24.i, label %bb.u, label %detect_data_type.exit

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !28
  %.not19.25.i = icmp eq i16 %i.as, 0
  br i1 %.not19.25.i, label %bb.v, label %detect_data_type.exit

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.au = load i16, ptr %i.at, align 4, !tbaa !28
  %.not19.28.i = icmp eq i16 %i.au, 0
  br i1 %.not19.28.i, label %bb.w, label %detect_data_type.exit

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !28
  %.not19.29.i = icmp eq i16 %i.aw, 0
  br i1 %.not19.29.i, label %bb.x, label %detect_data_type.exit

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !28
  %.not19.30.i = icmp eq i16 %i.ay, 0
  br i1 %.not19.30.i, label %bb.y, label %detect_data_type.exit

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !28
  %.not19.31.i = icmp eq i16 %i.ba, 0
  br i1 %.not19.31.i, label %bb.z, label %detect_data_type.exit

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !28
  %.not.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i, label %bb.aa, label %detect_data_type.exit

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !28
  %.not15.i = icmp eq i16 %i.be, 0
  br i1 %.not15.i, label %bb.ab, label %detect_data_type.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !28
  %.not16.i = icmp eq i16 %i.bg, 0
  br i1 %.not16.i, label %.preheader.i, label %detect_data_type.exit

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !28
  %.not17.i.1 = icmp eq i16 %i.bj, 0
  br i1 %.not17.i.1, label %.preheader.i.2, label %detect_data_type.exit

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !28
  %.not17.i.2 = icmp eq i16 %i.bm, 0
  br i1 %.not17.i.2, label %.preheader.i.3, label %detect_data_type.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !28
  %.not17.i.3 = icmp eq i16 %i.bp, 0
  br i1 %.not17.i.3, label %bb.ac, label %detect_data_type.exit

bb.ac:                                            ; preds = %.preheader.i.3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %detect_data_type.exit, label %.preheader.i, !llvm.loop !39

.preheader.i:                                     ; preds = %bb.ab, %bb.ac
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %bb.ac ], [ 32, %bb.ab ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !28
  %.not17.i = icmp eq i16 %i.br, 0
  br i1 %.not17.i, label %.preheader.i.1, label %detect_data_type.exit

detect_data_type.exit:                            ; preds = %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %bb.ac, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.014.i = phi i32 [ 1, %bb.aa ], [ 0, %bb.d ], [ 1, %bb.z ], [ 1, %bb.ab ], [ 0, %bb.c ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 1, %.preheader.i ], [ 0, %bb.ac ], [ 1, %.preheader.i.1 ], [ 1, %.preheader.i.3 ], [ 1, %.preheader.i.2 ]
  store i32 %.014.i, ptr %i.e, align 8, !tbaa !36
  br label %bb.ad

bb.ad:                                            ; preds = %detect_data_type.exit, %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2904
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2928
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2912 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !40 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 214
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !28 ; 2 uses
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr [4 x i8], ptr %i.bu, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 6
  store i16 -1, ptr %i.cb, align 2, !tbaa !28
  %.not48.i.i = icmp slt i32 %i.bw, 0
  br i1 %.not48.i.i, label %scan_tree.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad
  %i.cc = icmp eq i16 %i.by, 0                    ; 2 uses
  %spec.select46.i.i = select i1 %i.cc, i32 3, i32 4
  %spec.select.i.i = select i1 %i.cc, i32 138, i32 7
  %i.cd = zext i16 %i.by to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2812 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2820 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.ci = add nuw i32 %i.bw, 1
  %wide.trip.count.i.i = zext i32 %i.ci to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aq, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.aq ]
  %.154.i.i = phi i32 [ %spec.select46.i.i, %.lr.ph.i.i ], [ %.2.i.i, %bb.aq ] ; 2 uses
  %.13253.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.233.i.i, %bb.aq ] ; 2 uses
  %.03452.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.135.i.i, %bb.aq ] ; 2 uses
  %.03651.i.i = phi i32 [ %i.cd, %.lr.ph.i.i ], [ %i.cm, %bb.aq ] ; 7 uses
  %.03849.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.139.i.i, %bb.aq ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !28 ; 2 uses
  %i.cm = zext i16 %i.cl to i32                   ; 2 uses
  %i.cn = add nsw i32 %.03452.i.i, 1              ; 4 uses
  %i.co = icmp slt i32 %i.cn, %.13253.i.i
  %i.cp = icmp eq i32 %.03651.i.i, %i.cm          ; 3 uses
  %or.cond.i.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.i.i, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = icmp slt i32 %i.cn, %.154.i.i
  br i1 %i.cq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = zext nneg i32 %.03651.i.i to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cr ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !28
  %i.cu = trunc i32 %i.cn to i16
  %i.cv = add i16 %i.ct, %i.cu
  store i16 %i.cv, ptr %i.cs, align 4, !tbaa !28
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %.not44.i.i = icmp eq i32 %.03651.i.i, 0
  br i1 %.not44.i.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not45.i.i = icmp eq i32 %.03651.i.i, %.03849.i.i
  br i1 %.not45.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = zext nneg i32 %.03651.i.i to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cw ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 4, !tbaa !28
  %i.cz = add i16 %i.cy, 1
  store i16 %i.cz, ptr %i.cx, align 4, !tbaa !28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.da = load i16, ptr %i.cf, align 4, !tbaa !28
  %i.db = add i16 %i.da, 1
  store i16 %i.db, ptr %i.cf, align 4, !tbaa !28
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  %i.dc = icmp slt i32 %.03452.i.i, 10
  br i1 %i.dc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dd = load i16, ptr %i.ch, align 8, !tbaa !28
  %i.de = add i16 %i.dd, 1
  store i16 %i.de, ptr %i.ch, align 8, !tbaa !28
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.df = load i16, ptr %i.cg, align 4, !tbaa !28
  %i.dg = add i16 %i.df, 1
  store i16 %i.dg, ptr %i.cg, align 4, !tbaa !28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ag
  %i.dh = icmp eq i16 %i.cl, 0
  br i1 %i.dh, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %..i.i = select i1 %i.cp, i32 6, i32 7
  %.47.i.i = select i1 %i.cp, i32 3, i32 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.ae
  %.139.i.i = phi i32 [ %.03849.i.i, %bb.ae ], [ %.03651.i.i, %bb.ao ], [ %.03651.i.i, %bb.ap ]
  %.135.i.i = phi i32 [ %i.cn, %bb.ae ], [ 0, %bb.ao ], [ 0, %bb.ap ]
  %.233.i.i = phi i32 [ %.13253.i.i, %bb.ae ], [ 138, %bb.ao ], [ %..i.i, %bb.ap ]
  %.2.i.i = phi i32 [ %.154.i.i, %bb.ae ], [ 3, %bb.ao ], [ %.47.i.i, %bb.ap ]
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %scan_tree.exit.i, label %bb.ae, !llvm.loop !41

scan_tree.exit.i:                                 ; preds = %bb.aq, %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2936 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !42 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !28 ; 2 uses
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr [4 x i8], ptr %i.di, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 6
  store i16 -1, ptr %i.dp, align 2, !tbaa !28
  %.not48.i14.i = icmp slt i32 %i.dk, 0
  br i1 %.not48.i14.i, label %scan_tree.exit36.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %scan_tree.exit.i
  %i.dq = icmp eq i16 %i.dm, 0                    ; 2 uses
  %spec.select46.i16.i = select i1 %i.dq, i32 3, i32 4
  %spec.select.i17.i = select i1 %i.dq, i32 138, i32 7
  %i.dr = zext i16 %i.dm to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2812 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2820 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.dw = add nuw i32 %i.dk, 1
  %wide.trip.count.i18.i = zext i32 %i.dw to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bd, %.lr.ph.i15.i
  %indvars.iv.i19.i = phi i64 [ 0, %.lr.ph.i15.i ], [ %indvars.iv.next.i25.i, %bb.bd ]
  %.154.i20.i = phi i32 [ %spec.select46.i16.i, %.lr.ph.i15.i ], [ %.2.i34.i, %bb.bd ] ; 2 uses
  %.13253.i21.i = phi i32 [ %spec.select.i17.i, %.lr.ph.i15.i ], [ %.233.i33.i, %bb.bd ] ; 2 uses
  %.03452.i22.i = phi i32 [ 0, %.lr.ph.i15.i ], [ %.135.i32.i, %bb.bd ] ; 2 uses
  %.03651.i23.i = phi i32 [ %i.dr, %.lr.ph.i15.i ], [ %i.ea, %bb.bd ] ; 7 uses
  %.03849.i24.i = phi i32 [ -1, %.lr.ph.i15.i ], [ %.139.i31.i, %bb.bd ] ; 2 uses
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i25.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !28 ; 2 uses
  %i.ea = zext i16 %i.dz to i32                   ; 2 uses
  %i.eb = add nsw i32 %.03452.i22.i, 1            ; 4 uses
  %i.ec = icmp slt i32 %i.eb, %.13253.i21.i
  %i.ed = icmp eq i32 %.03651.i23.i, %i.ea        ; 3 uses
  %or.cond.i26.i = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %or.cond.i26.i, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = icmp slt i32 %i.eb, %.154.i20.i
  br i1 %i.ee, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ef = zext nneg i32 %.03651.i23.i to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ef ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !28
  %i.ei = trunc i32 %i.eb to i16
  %i.ej = add i16 %i.eh, %i.ei
  store i16 %i.ej, ptr %i.eg, align 4, !tbaa !28
  br label %bb.bb

bb.au:                                            ; preds = %bb.as
  %.not44.i27.i = icmp eq i32 %.03651.i23.i, 0
  br i1 %.not44.i27.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not45.i28.i = icmp eq i32 %.03651.i23.i, %.03849.i24.i
  br i1 %.not45.i28.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ek = zext nneg i32 %.03651.i23.i to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 4, !tbaa !28
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %i.el, align 4, !tbaa !28
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eo = load i16, ptr %i.dt, align 4, !tbaa !28
  %i.ep = add i16 %i.eo, 1
  store i16 %i.ep, ptr %i.dt, align 4, !tbaa !28
  br label %bb.bb

bb.ay:                                            ; preds = %bb.au
  %i.eq = icmp slt i32 %.03452.i22.i, 10
  br i1 %i.eq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.er = load i16, ptr %i.dv, align 8, !tbaa !28
  %i.es = add i16 %i.er, 1
  store i16 %i.es, ptr %i.dv, align 8, !tbaa !28
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.et = load i16, ptr %i.du, align 4, !tbaa !28
  %i.eu = add i16 %i.et, 1
  store i16 %i.eu, ptr %i.du, align 4, !tbaa !28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax, %bb.at
  %i.ev = icmp eq i16 %i.dz, 0
  br i1 %i.ev, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %..i29.i = select i1 %i.ed, i32 6, i32 7
  %.47.i30.i = select i1 %i.ed, i32 3, i32 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ar
  %.139.i31.i = phi i32 [ %.03849.i24.i, %bb.ar ], [ %.03651.i23.i, %bb.bb ], [ %.03651.i23.i, %bb.bc ]
  %.135.i32.i = phi i32 [ %i.eb, %bb.ar ], [ 0, %bb.bb ], [ 0, %bb.bc ]
  %.233.i33.i = phi i32 [ %.13253.i21.i, %bb.ar ], [ 138, %bb.bb ], [ %..i29.i, %bb.bc ]
  %.2.i34.i = phi i32 [ %.154.i20.i, %bb.ar ], [ 3, %bb.bb ], [ %.47.i30.i, %bb.bc ]
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i18.i
  br i1 %exitcond.not.i35.i, label %scan_tree.exit36.i, label %bb.ar, !llvm.loop !41

scan_tree.exit36.i:                               ; preds = %bb.bd, %scan_tree.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !28
  %.not.i90 = icmp eq i16 %i.ey, 0
  br i1 %.not.i90, label %bb.be, label %build_bl_tree.exit

bb.be:                                            ; preds = %scan_tree.exit36.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !28
  %.not.1.i = icmp eq i16 %i.fa, 0
  br i1 %.not.1.i, label %bb.bf, label %build_bl_tree.exit

bb.bf:                                            ; preds = %bb.be
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !28
  %.not.2.i = icmp eq i16 %i.fc, 0
  br i1 %.not.2.i, label %bb.bg, label %build_bl_tree.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !28
  %.not.3.i = icmp eq i16 %i.fe, 0
  br i1 %.not.3.i, label %bb.bh, label %build_bl_tree.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !28
  %.not.4.i = icmp eq i16 %i.fg, 0
  br i1 %.not.4.i, label %bb.bi, label %build_bl_tree.exit

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !28
  %.not.5.i = icmp eq i16 %i.fi, 0
  br i1 %.not.5.i, label %bb.bj, label %build_bl_tree.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !28
  %.not.6.i = icmp eq i16 %i.fk, 0
  br i1 %.not.6.i, label %bb.bk, label %build_bl_tree.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !28
  %.not.7.i = icmp eq i16 %i.fm, 0
  br i1 %.not.7.i, label %bb.bl, label %build_bl_tree.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !28
  %.not.8.i = icmp eq i16 %i.fo, 0
  br i1 %.not.8.i, label %bb.bm, label %build_bl_tree.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !28
  %.not.9.i = icmp eq i16 %i.fq, 0
  br i1 %.not.9.i, label %bb.bn, label %build_bl_tree.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !28
  %.not.10.i = icmp eq i16 %i.fs, 0
  br i1 %.not.10.i, label %bb.bo, label %build_bl_tree.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !28
  %.not.11.i = icmp eq i16 %i.fu, 0
  br i1 %.not.11.i, label %bb.bp, label %build_bl_tree.exit

bb.bp:                                            ; preds = %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !28
  %.not.12.i = icmp eq i16 %i.fw, 0
  br i1 %.not.12.i, label %bb.bq, label %build_bl_tree.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !28
  %.not.13.i = icmp eq i16 %i.fy, 0
  br i1 %.not.13.i, label %bb.br, label %build_bl_tree.exit

bb.br:                                            ; preds = %bb.bq
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !28
  %.not.14.i = icmp eq i16 %i.ga, 0
  br i1 %.not.14.i, label %bb.bs, label %build_bl_tree.exit

bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !28
  %.not.15.i = icmp eq i16 %i.gc, 0
  %spec.select.i = select i1 %.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 10, %bb.bl ], [ 17, %bb.be ], [ %spec.select.i, %bb.bs ], [ 16, %bb.bf ], [ 8, %bb.bn ], [ 15, %bb.bg ], [ 4, %bb.br ], [ 14, %bb.bh ], [ 9, %bb.bm ], [ 13, %bb.bi ], [ 5, %bb.bq ], [ 12, %bb.bj ], [ 7, %bb.bo ], [ 11, %bb.bk ], [ 6, %bb.bp ] ; 3 uses
  %narrow.i = mul nuw nsw i32 %.0.lcssa.i, 3
  %narrow42.i = add nuw nsw i32 %narrow.i, 17
  %i.gd = zext nneg i32 %narrow42.i to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !43
  %i.gg = add i64 %i.gf, %i.gd                    ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !43
  %i.gh = add i64 %i.gg, 10
  %i.gi = lshr i64 %i.gh, 3                       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !44
end_hunk_0
