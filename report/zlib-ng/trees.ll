Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/trees?download=true
inline.NumInlined: 68
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@zng_tr_flush_block:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.u = load i16, ptr %i.t, align 4, !tbaa !24
  %.not19.4.i = icmp eq i16 %i.u, 0
  br i1 %.not19.4.i, label %bb.j, label %detect_data_type.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load i16, ptr %i.v, align 8, !tbaa !24
  %.not19.5.i = icmp eq i16 %i.w, 0
  br i1 %.not19.5.i, label %bb.k, label %detect_data_type.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.y = load i16, ptr %i.x, align 4, !tbaa !24
  %.not19.6.i = icmp eq i16 %i.y, 0
  br i1 %.not19.6.i, label %bb.l, label %detect_data_type.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !24
  %.not19.14.i = icmp eq i16 %i.aa, 0
  br i1 %.not19.14.i, label %bb.m, label %detect_data_type.exit

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ac = load i16, ptr %i.ab, align 64, !tbaa !24
  %.not19.15.i = icmp eq i16 %i.ac, 0
  br i1 %.not19.15.i, label %bb.n, label %detect_data_type.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !24
  %.not19.16.i = icmp eq i16 %i.ae, 0
  br i1 %.not19.16.i, label %bb.o, label %detect_data_type.exit

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !24
  %.not19.17.i = icmp eq i16 %i.ag, 0
  br i1 %.not19.17.i, label %bb.p, label %detect_data_type.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !24
  %.not19.18.i = icmp eq i16 %i.ai, 0
  br i1 %.not19.18.i, label %bb.q, label %detect_data_type.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ak = load i16, ptr %i.aj, align 16, !tbaa !24
  %.not19.19.i = icmp eq i16 %i.ak, 0
  br i1 %.not19.19.i, label %bb.r, label %detect_data_type.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.am = load i16, ptr %i.al, align 4, !tbaa !24
  %.not19.20.i = icmp eq i16 %i.am, 0
  br i1 %.not19.20.i, label %bb.s, label %detect_data_type.exit

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !24
  %.not19.21.i = icmp eq i16 %i.ao, 0
  br i1 %.not19.21.i, label %bb.t, label %detect_data_type.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !24
  %.not19.22.i = icmp eq i16 %i.aq, 0
  br i1 %.not19.22.i, label %bb.u, label %detect_data_type.exit

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.as = load i16, ptr %i.ar, align 32, !tbaa !24
  %.not19.23.i = icmp eq i16 %i.as, 0
  br i1 %.not19.23.i, label %bb.v, label %detect_data_type.exit

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.au = load i16, ptr %i.at, align 4, !tbaa !24
  %.not19.24.i = icmp eq i16 %i.au, 0
  br i1 %.not19.24.i, label %bb.w, label %detect_data_type.exit

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !24
  %.not19.25.i = icmp eq i16 %i.aw, 0
  br i1 %.not19.25.i, label %bb.x, label %detect_data_type.exit

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !24
  %.not19.28.i = icmp eq i16 %i.ay, 0
  br i1 %.not19.28.i, label %bb.y, label %detect_data_type.exit

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !24
  %.not19.29.i = icmp eq i16 %i.ba, 0
  br i1 %.not19.29.i, label %bb.z, label %detect_data_type.exit

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !24
  %.not19.30.i = icmp eq i16 %i.bc, 0
  br i1 %.not19.30.i, label %bb.aa, label %detect_data_type.exit

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.be = load i16, ptr %i.bd, align 64, !tbaa !24
  %.not19.31.i = icmp eq i16 %i.be, 0
  br i1 %.not19.31.i, label %bb.ab, label %detect_data_type.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !24
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %bb.ac, label %detect_data_type.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !24
  %.not15.i = icmp eq i16 %i.bi, 0
  br i1 %.not15.i, label %bb.ad, label %detect_data_type.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !24
  %.not16.i = icmp eq i16 %i.bk, 0
  br i1 %.not16.i, label %.preheader.i, label %detect_data_type.exit

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !24
  %.not17.i.1 = icmp eq i16 %i.bn, 0
  br i1 %.not17.i.1, label %.preheader.i.2, label %detect_data_type.exit

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !24
  %.not17.i.2 = icmp eq i16 %i.bq, 0
  br i1 %.not17.i.2, label %.preheader.i.3, label %detect_data_type.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !24
  %.not17.i.3 = icmp eq i16 %i.bt, 0
  br i1 %.not17.i.3, label %bb.ae, label %detect_data_type.exit

bb.ae:                                            ; preds = %.preheader.i.3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %detect_data_type.exit, label %.preheader.i, !llvm.loop !40

.preheader.i:                                     ; preds = %bb.ad, %bb.ae
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %bb.ae ], [ 32, %bb.ad ] ; 5 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !24
  %.not17.i = icmp eq i16 %i.bv, 0
  br i1 %.not17.i, label %.preheader.i.1, label %detect_data_type.exit

detect_data_type.exit:                            ; preds = %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %bb.ae, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.014.i = phi i32 [ 1, %bb.ac ], [ 0, %bb.f ], [ 1, %bb.ab ], [ 1, %bb.ad ], [ 0, %bb.e ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %.preheader.i ], [ 0, %bb.ae ], [ 1, %.preheader.i.1 ], [ 1, %.preheader.i.3 ], [ 1, %.preheader.i.2 ]
  store i32 %.014.i, ptr %i.i, align 8, !tbaa !48
  br label %bb.af

bb.af:                                            ; preds = %detect_data_type.exit, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2976
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !49 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 262
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !24 ; 2 uses
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr [4 x i8], ptr %i.by, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 6
  store i16 -1, ptr %i.cf, align 2, !tbaa !24
  %.not47.i.i = icmp slt i32 %i.ca, 0
  br i1 %.not47.i.i, label %scan_tree.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.cg = icmp eq i16 %i.cc, 0                    ; 2 uses
  %spec.select45.i.i = select i1 %i.cg, i16 3, i16 4
  %spec.select.i.i = select i1 %i.cg, i16 138, i16 7
  %i.ch = zext i16 %i.cc to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2796 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2860 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2868 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.cm = add nuw i32 %i.ca, 1
  %wide.trip.count.i.i = zext i32 %i.cm to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.as, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.as ]
  %.153.i.i = phi i16 [ %spec.select45.i.i, %.lr.ph.i.i ], [ %.2.i.i, %bb.as ] ; 2 uses
  %.13252.i.i = phi i16 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.233.i.i, %bb.as ] ; 2 uses
  %.03451.i.i = phi i16 [ 0, %.lr.ph.i.i ], [ %.135.i.i, %bb.as ] ; 2 uses
  %.03650.i.i = phi i32 [ %i.ch, %.lr.ph.i.i ], [ %i.cq, %bb.as ] ; 7 uses
  %.03749.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.138.i.i, %bb.as ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !24 ; 2 uses
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = add nuw i16 %.03451.i.i, 1              ; 4 uses
  %i.cs = icmp ult i16 %i.cr, %.13252.i.i
  %i.ct = icmp eq i32 %.03650.i.i, %i.cq          ; 3 uses
  %or.cond.i.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond.i.i, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cu = icmp ult i16 %i.cr, %.153.i.i
  br i1 %i.cu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cv = zext nneg i32 %.03650.i.i to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !24
  %i.cy = add i16 %i.cx, %i.cr
  store i16 %i.cy, ptr %i.cw, align 4, !tbaa !24
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ah
  %.not43.i.i = icmp eq i32 %.03650.i.i, 0
  br i1 %.not43.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not44.i.i = icmp eq i32 %.03650.i.i, %.03749.i.i
  br i1 %.not44.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cz = zext nneg i32 %.03650.i.i to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cz ; 2 uses
  %i.db = load i16, ptr %i.da, align 4, !tbaa !24
  %i.dc = add i16 %i.db, 1
  store i16 %i.dc, ptr %i.da, align 4, !tbaa !24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dd = load i16, ptr %i.cj, align 4, !tbaa !24
  %i.de = add i16 %i.dd, 1
  store i16 %i.de, ptr %i.cj, align 4, !tbaa !24
  br label %bb.aq

bb.an:                                            ; preds = %bb.aj
  %i.df = icmp ult i16 %.03451.i.i, 10
  br i1 %i.df, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dg = load i16, ptr %i.cl, align 16, !tbaa !24
  %i.dh = add i16 %i.dg, 1
  store i16 %i.dh, ptr %i.cl, align 16, !tbaa !24
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.di = load i16, ptr %i.ck, align 4, !tbaa !24
  %i.dj = add i16 %i.di, 1
  store i16 %i.dj, ptr %i.ck, align 4, !tbaa !24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %bb.ai
  %i.dk = icmp eq i16 %i.cp, 0
  br i1 %i.dk, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %..i.i = select i1 %i.ct, i16 6, i16 7
  %.46.i.i = select i1 %i.ct, i16 3, i16 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ag
  %.138.i.i = phi i32 [ %.03749.i.i, %bb.ag ], [ %.03650.i.i, %bb.aq ], [ %.03650.i.i, %bb.ar ]
  %.135.i.i = phi i16 [ %i.cr, %bb.ag ], [ 0, %bb.aq ], [ 0, %bb.ar ]
  %.233.i.i = phi i16 [ %.13252.i.i, %bb.ag ], [ 138, %bb.aq ], [ %..i.i, %bb.ar ]
  %.2.i.i = phi i16 [ %.153.i.i, %bb.ag ], [ 3, %bb.aq ], [ %.46.i.i, %bb.ar ]
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %scan_tree.exit.i, label %bb.ag, !llvm.loop !41

scan_tree.exit.i:                                 ; preds = %bb.as, %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2984 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !50 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2554
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !24 ; 2 uses
  %i.dq = sext i32 %i.dn to i64
  %i.dr = getelementptr [4 x i8], ptr %i.dl, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 6
  store i16 -1, ptr %i.ds, align 2, !tbaa !24
  %.not47.i14.i = icmp slt i32 %i.dn, 0
  br i1 %.not47.i14.i, label %scan_tree.exit36.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %scan_tree.exit.i
  %i.dt = icmp eq i16 %i.dp, 0                    ; 2 uses
  %spec.select45.i16.i = select i1 %i.dt, i16 3, i16 4
  %spec.select.i17.i = select i1 %i.dt, i16 138, i16 7
  %i.du = zext i16 %i.dp to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2796 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2860 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2868 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.dz = add nuw i32 %i.dn, 1
  %wide.trip.count.i18.i = zext i32 %i.dz to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.bf, %.lr.ph.i15.i
  %indvars.iv.i19.i = phi i64 [ 0, %.lr.ph.i15.i ], [ %indvars.iv.next.i25.i, %bb.bf ]
  %.153.i20.i = phi i16 [ %spec.select45.i16.i, %.lr.ph.i15.i ], [ %.2.i34.i, %bb.bf ] ; 2 uses
  %.13252.i21.i = phi i16 [ %spec.select.i17.i, %.lr.ph.i15.i ], [ %.233.i33.i, %bb.bf ] ; 2 uses
  %.03451.i22.i = phi i16 [ 0, %.lr.ph.i15.i ], [ %.135.i32.i, %bb.bf ] ; 2 uses
  %.03650.i23.i = phi i32 [ %i.du, %.lr.ph.i15.i ], [ %i.ed, %bb.bf ] ; 7 uses
  %.03749.i24.i = phi i32 [ -1, %.lr.ph.i15.i ], [ %.138.i31.i, %bb.bf ] ; 2 uses
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next.i25.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !24 ; 2 uses
  %i.ed = zext i16 %i.ec to i32                   ; 2 uses
  %i.ee = add nuw i16 %.03451.i22.i, 1            ; 4 uses
  %i.ef = icmp ult i16 %i.ee, %.13252.i21.i
  %i.eg = icmp eq i32 %.03650.i23.i, %i.ed        ; 3 uses
  %or.cond.i26.i = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond.i26.i, label %bb.bf, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eh = icmp ult i16 %i.ee, %.153.i20.i
  br i1 %i.eh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ei = zext nneg i32 %.03650.i23.i to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ei ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !24
  %i.el = add i16 %i.ek, %i.ee
  store i16 %i.el, ptr %i.ej, align 4, !tbaa !24
  br label %bb.bd

bb.aw:                                            ; preds = %bb.au
  %.not43.i27.i = icmp eq i32 %.03650.i23.i, 0
  br i1 %.not43.i27.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not44.i28.i = icmp eq i32 %.03650.i23.i, %.03749.i24.i
  br i1 %.not44.i28.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.em = zext nneg i32 %.03650.i23.i to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.em ; 2 uses
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !24
  %i.ep = add i16 %i.eo, 1
  store i16 %i.ep, ptr %i.en, align 4, !tbaa !24
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.eq = load i16, ptr %i.dw, align 4, !tbaa !24
  %i.er = add i16 %i.eq, 1
  store i16 %i.er, ptr %i.dw, align 4, !tbaa !24
  br label %bb.bd

bb.ba:                                            ; preds = %bb.aw
  %i.es = icmp ult i16 %.03451.i22.i, 10
  br i1 %i.es, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.et = load i16, ptr %i.dy, align 16, !tbaa !24
  %i.eu = add i16 %i.et, 1
  store i16 %i.eu, ptr %i.dy, align 16, !tbaa !24
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.ev = load i16, ptr %i.dx, align 4, !tbaa !24
  %i.ew = add i16 %i.ev, 1
  store i16 %i.ew, ptr %i.dx, align 4, !tbaa !24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.av
  %i.ex = icmp eq i16 %i.ec, 0
  br i1 %i.ex, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %..i29.i = select i1 %i.eg, i16 6, i16 7
  %.46.i30.i = select i1 %i.eg, i16 3, i16 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.at
  %.138.i31.i = phi i32 [ %.03749.i24.i, %bb.at ], [ %.03650.i23.i, %bb.bd ], [ %.03650.i23.i, %bb.be ]
  %.135.i32.i = phi i16 [ %i.ee, %bb.at ], [ 0, %bb.bd ], [ 0, %bb.be ]
  %.233.i33.i = phi i16 [ %.13252.i21.i, %bb.at ], [ 138, %bb.bd ], [ %..i29.i, %bb.be ]
  %.2.i34.i = phi i16 [ %.153.i20.i, %bb.at ], [ 3, %bb.bd ], [ %.46.i30.i, %bb.be ]
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i18.i
  br i1 %exitcond.not.i35.i, label %scan_tree.exit36.i, label %bb.at, !llvm.loop !41

scan_tree.exit36.i:                               ; preds = %bb.bf, %scan_tree.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 3000
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2858
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !24
  %.not.i48 = icmp eq i16 %i.fa, 0
  br i1 %.not.i48, label %bb.bg, label %build_bl_tree.exit

bb.bg:                                            ; preds = %scan_tree.exit36.i
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !24
  %.not.1.i = icmp eq i16 %i.fc, 0
  br i1 %.not.1.i, label %bb.bh, label %build_bl_tree.exit

bb.bh:                                            ; preds = %bb.bg
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2854
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !24
  %.not.2.i = icmp eq i16 %i.fe, 0
  br i1 %.not.2.i, label %bb.bi, label %build_bl_tree.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !24
  %.not.3.i = icmp eq i16 %i.fg, 0
  br i1 %.not.3.i, label %bb.bj, label %build_bl_tree.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2850
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !24
  %.not.4.i = icmp eq i16 %i.fi, 0
  br i1 %.not.4.i, label %bb.bk, label %build_bl_tree.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !24
  %.not.5.i = icmp eq i16 %i.fk, 0
  br i1 %.not.5.i, label %bb.bl, label %build_bl_tree.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2846
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !24
  %.not.6.i = icmp eq i16 %i.fm, 0
  br i1 %.not.6.i, label %bb.bm, label %build_bl_tree.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !24
  %.not.7.i = icmp eq i16 %i.fo, 0
  br i1 %.not.7.i, label %bb.bn, label %build_bl_tree.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2842
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !24
  %.not.8.i = icmp eq i16 %i.fq, 0
  br i1 %.not.8.i, label %bb.bo, label %build_bl_tree.exit

bb.bo:                                            ; preds = %bb.bn
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !24
  %.not.9.i = icmp eq i16 %i.fs, 0
  br i1 %.not.9.i, label %bb.bp, label %build_bl_tree.exit

bb.bp:                                            ; preds = %bb.bo
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2838
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !24
  %.not.10.i = icmp eq i16 %i.fu, 0
  br i1 %.not.10.i, label %bb.bq, label %build_bl_tree.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !24
  %.not.11.i = icmp eq i16 %i.fw, 0
  br i1 %.not.11.i, label %bb.br, label %build_bl_tree.exit

bb.br:                                            ; preds = %bb.bq
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2834
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !24
  %.not.12.i = icmp eq i16 %i.fy, 0
  br i1 %.not.12.i, label %bb.bs, label %build_bl_tree.exit

bb.bs:                                            ; preds = %bb.br
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2826
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !24
  %.not.13.i = icmp eq i16 %i.ga, 0
  br i1 %.not.13.i, label %bb.bt, label %build_bl_tree.exit

bb.bt:                                            ; preds = %bb.bs
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2830
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !24
  %.not.14.i = icmp eq i16 %i.gc, 0
  br i1 %.not.14.i, label %bb.bu, label %build_bl_tree.exit

bb.bu:                                            ; preds = %bb.bt
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !24
  %.not.15.i = icmp eq i16 %i.ge, 0
  %spec.select.i = select i1 %.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 10, %bb.bn ], [ 17, %bb.bg ], [ %spec.select.i, %bb.bu ], [ 16, %bb.bh ], [ 8, %bb.bp ], [ 15, %bb.bi ], [ 4, %bb.bt ], [ 14, %bb.bj ], [ 9, %bb.bo ], [ 13, %bb.bk ], [ 5, %bb.bs ], [ 12, %bb.bl ], [ 7, %bb.bq ], [ 11, %bb.bm ], [ 6, %bb.br ] ; 4 uses
  %narrow.i = mul nuw nsw i32 %.0.lcssa.i, 3
  %narrow42.i = add nuw nsw i32 %narrow.i, 17
  %i.gf = zext nneg i32 %narrow42.i to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 5960 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !31
  %i.gi = add i64 %i.gh, %i.gf                    ; 2 uses
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !31
  %i.gj = add i64 %i.gi, 10
  %i.gk = lshr i64 %i.gj, 3                       ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.gm = load i64, ptr %i.gl, align 16, !tbaa !30
  %i.gn = add i64 %i.gm, 10
  %i.go = lshr i64 %i.gn, 3                       ; 3 uses
  %.not = icmp samesign ugt i64 %i.go, %i.gk
  br i1 %.not, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %build_bl_tree.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !51
  %i.gr = icmp eq i32 %i.gq, 4
  br i1 %i.gr, label %bb.bx, label %.thread

bb.bw:                                            ; preds = %bb.c
  %i.gs = add i32 %2, 5
end_hunk_0
begin_hunk_1_@build_tree:bb.a
  %i.gk = load i8, ptr %i.fc, align 1, !tbaa !24
  %i.gl = getelementptr inbounds i8, ptr %i.a, i64 %i.gf
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !24
  %.not56.i128 = icmp ugt i8 %i.gk, %i.gm
  br i1 %.not56.i128, label %bb.ah, label %pqdownheap.exit130.loopexit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gn = sext i32 %.04959.i120 to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gn
  store i32 %i.ge, ptr %i.go, align 4, !tbaa !32
  %.0.i125 = shl i32 %.1.i124, 1                  ; 2 uses
  %.not.i126 = icmp sgt i32 %.0.i125, %i.fh
  br i1 %.not.i126, label %pqdownheap.exit130.loopexit, label %.lr.ph.i118, !llvm.loop !54

pqdownheap.exit130.loopexit:                      ; preds = %bb.ah, %bb.ag, %bb.ae
  %.049.lcssa.i127.ph = phi i32 [ %.04959.i120, %bb.ae ], [ %.04959.i120, %bb.ag ], [ %.1.i124, %bb.ah ]
  %i.gp = sext i32 %.049.lcssa.i127.ph to i64
  br label %pqdownheap.exit130

pqdownheap.exit130:                               ; preds = %pqdownheap.exit130.loopexit, %pqdownheap.exit116
  %.049.lcssa.i127 = phi i64 [ 1, %pqdownheap.exit116 ], [ %i.gp, %pqdownheap.exit130.loopexit ]
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.049.lcssa.i127
  store i32 %i.fd, ptr %i.gq, align 4, !tbaa !32
  %i.gr = load i32, ptr %i.i, align 4, !tbaa !68  ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.q, label %bb.ai, !llvm.loop !56

bb.ai:                                            ; preds = %pqdownheap.exit130
  %i.gt = load i32, ptr %i.au, align 4, !tbaa !32
  %i.gu = load i32, ptr %i.j, align 8, !tbaa !69
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %i.j, align 8, !tbaa !69
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gw
  store i32 %i.gt, ptr %i.gx, align 4, !tbaa !32
  %i.gy = load ptr, ptr %1, align 8, !tbaa !62    ; 4 uses
  %i.gz = load i32, ptr %i.ar, align 8, !tbaa !70 ; 2 uses
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !63  ; 4 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !66 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !71
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !72 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !73 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 3024 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hi, i8 0, i64 32, i1 false), !tbaa !27
  %i.hj = load i32, ptr %i.j, align 8, !tbaa !69
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !32
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  store i16 0, ptr %i.hp, align 2, !tbaa !24
  %i.hq = load i32, ptr %i.j, align 8, !tbaa !69  ; 2 uses
  %i.hr = icmp slt i32 %i.hq, 572
  br i1 %i.hr, label %.lr.ph.i131, label %gen_bitlen.exit

.lr.ph.i131:                                      ; preds = %bb.ai
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 5960 ; 5 uses
  %.not106.i = icmp eq ptr %i.hb, null
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 5968 ; 2 uses
  %i.hu = sext i32 %i.hq to i64
  %i.hv = add nsw i64 %i.hu, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ao, %.lr.ph.i131
  %indvars.iv.i = phi i64 [ %i.hv, %.lr.ph.i131 ], [ %indvars.iv.next.i, %bb.ao ] ; 2 uses
  %.0116.i = phi i32 [ 0, %.lr.ph.i131 ], [ %spec.select107.i, %bb.ao ]
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !32 ; 4 uses
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !24
  %i.ic = zext i16 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !24
  %i.ig = zext i16 %i.if to i32                   ; 2 uses
  %i.ih = add nuw nsw i32 %i.ig, 1
  %.not104.i = icmp ule i32 %i.hh, %i.ig          ; 2 uses
  %spec.select.i = select i1 %.not104.i, i32 %i.hh, i32 %i.ih ; 3 uses
  %i.ii = zext i1 %.not104.i to i32
  %spec.select107.i = add nuw nsw i32 %.0116.i, %i.ii ; 3 uses
  %i.ij = trunc i32 %spec.select.i to i16
  store i16 %i.ij, ptr %i.ia, align 2, !tbaa !24
  %i.ik = icmp sgt i32 %i.hx, %i.gz
  br i1 %i.ik, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.il = zext nneg i32 %spec.select.i to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.il ; 2 uses
  %i.in = load i16, ptr %i.im, align 2, !tbaa !27
  %i.io = add i16 %i.in, 1
  store i16 %i.io, ptr %i.im, align 2, !tbaa !27
  %.not105.i = icmp slt i32 %i.hx, %i.hf
  br i1 %.not105.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ip = sub nsw i32 %i.hx, %i.hf
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.087.i = phi i32 [ %i.is, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  %i.it = load i16, ptr %i.hz, align 2, !tbaa !24
  %i.iu = zext i16 %i.it to i64                   ; 2 uses
  %i.iv = add i32 %.087.i, %spec.select.i
  %i.iw = zext i32 %i.iv to i64
  %i.ix = mul nuw nsw i64 %i.iu, %i.iw
  %i.iy = load i64, ptr %i.hs, align 8, !tbaa !31
  %i.iz = add i64 %i.ix, %i.iy
  store i64 %i.iz, ptr %i.hs, align 8, !tbaa !31
  br i1 %.not106.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hy
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !24
  %i.jd = zext i16 %i.jc to i32
  %i.je = add nsw i32 %.087.i, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul nuw nsw i64 %i.jf, %i.iu
  %i.jh = load i64, ptr %i.ht, align 16, !tbaa !30
  %i.ji = add i64 %i.jg, %i.jh
  store i64 %i.ji, ptr %i.ht, align 16, !tbaa !30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aj
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jj = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.jj, 573
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aj, !llvm.loop !57

._crit_edge.i:                                    ; preds = %bb.ao
  %i.jk = icmp eq i32 %spec.select107.i, 0
  br i1 %i.jk, label %gen_bitlen.exit, label %.preheader108.i

.preheader108.i:                                  ; preds = %._crit_edge.i
  %i.jl = zext i32 %i.hh to i64                   ; 2 uses
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.jl ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %.preheader108.i
  %.2.i = phi i32 [ %i.jz, %bb.ar ], [ %spec.select107.i, %.preheader108.i ] ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.290.in.i = phi i32 [ %i.hh, %bb.ap ], [ %.290.i, %bb.aq ] ; 2 uses
  %.290.i = add i32 %.290.in.i, -1                ; 2 uses
  %i.jn = zext i32 %.290.i to i64                 ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !27 ; 2 uses
  %i.jq = icmp eq i16 %i.jp, 0
  br i1 %i.jq, label %bb.aq, label %bb.ar, !llvm.loop !58

bb.ar:                                            ; preds = %bb.aq
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.jn
  %i.js = add i16 %i.jp, -1
  store i16 %i.js, ptr %i.jr, align 2, !tbaa !27
  %i.jt = zext i32 %.290.in.i to i64
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.jt ; 2 uses
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !27
  %i.jw = add i16 %i.jv, 2
  store i16 %i.jw, ptr %i.ju, align 2, !tbaa !27
  %i.jx = load i16, ptr %i.jm, align 2, !tbaa !27
  %i.jy = add i16 %i.jx, -1
  store i16 %i.jy, ptr %i.jm, align 2, !tbaa !27
  %i.jz = add nsw i32 %.2.i, -2
  %i.ka = icmp sgt i32 %.2.i, 2
  br i1 %i.ka, label %bb.ap, label %.preheader.i, !llvm.loop !59

.preheader.i:                                     ; preds = %bb.ar
  %.not125.i = icmp eq i32 %i.hh, 0
  br i1 %.not125.i, label %gen_bitlen.exit, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %.preheader.i, %.outer._crit_edge.i
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %.outer._crit_edge.i ], [ %i.jl, %.preheader.i ] ; 5 uses
  %.193126.i = phi i32 [ %.294.lcssa.i, %.outer._crit_edge.i ], [ 573, %.preheader.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %indvars.iv138.i
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !27 ; 2 uses
  %.not102121.i = icmp eq i16 %i.kc, 0
  br i1 %.not102121.i, label %.outer._crit_edge.i, label %.outer.split.lr.ph.i

.outer.split.lr.ph.i:                             ; preds = %.lr.ph128.i
  %i.kd = zext i16 %i.kc to i32
  %i.ke = trunc i64 %indvars.iv138.i to i16
  %i.kf = sext i32 %.193126.i to i64
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %.091.ph123.i = phi i32 [ %i.kd, %.outer.split.lr.ph.i ], [ %i.la, %.outer.i ]
  %.294.ph122.i = phi i64 [ %i.kf, %.outer.split.lr.ph.i ], [ %indvars.iv.next136.i, %.outer.i ]
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.outer.split.i
  %indvars.iv135.i = phi i64 [ %.294.ph122.i, %.outer.split.i ], [ %indvars.iv.next136.i, %bb.as ]
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, -1 ; 4 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next136.i
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !32 ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, %i.gz
  br i1 %i.ki, label %bb.as, label %bb.at, !llvm.loop !60

bb.at:                                            ; preds = %bb.as
  %i.kj = sext i32 %i.kh to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2 ; 3 uses
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !24
  %i.kn = zext i16 %i.km to i64
  %.not103.i = icmp eq i64 %indvars.iv138.i, %i.kn
  br i1 %.not103.i, label %.outer.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ko = load i16, ptr %i.kk, align 2, !tbaa !24
  %i.kp = zext i16 %i.ko to i64
  %i.kq = mul i64 %indvars.iv138.i, %i.kp
  %i.kr = and i64 %i.kq, 4294967295
  %i.ks = load i64, ptr %i.hs, align 8, !tbaa !31
  %i.kt = add i64 %i.kr, %i.ks                    ; 2 uses
  store i64 %i.kt, ptr %i.hs, align 8, !tbaa !31
  %i.ku = load i16, ptr %i.kl, align 2, !tbaa !24
  %i.kv = zext i16 %i.ku to i64
  %i.kw = load i16, ptr %i.kk, align 2, !tbaa !24
  %i.kx = zext i16 %i.kw to i64
  %i.ky = mul nuw nsw i64 %i.kx, %i.kv
  %i.kz = sub i64 %i.kt, %i.ky
  store i64 %i.kz, ptr %i.hs, align 8, !tbaa !31
  store i16 %i.ke, ptr %i.kl, align 2, !tbaa !24
  br label %.outer.i

.outer.i:                                         ; preds = %bb.au, %bb.at
  %i.la = add nsw i32 %.091.ph123.i, -1           ; 2 uses
  %.not102.i = icmp eq i32 %i.la, 0
  br i1 %.not102.i, label %.outer._crit_edge.loopexit.i, label %.outer.split.i, !llvm.loop !60

.outer._crit_edge.loopexit.i:                     ; preds = %.outer.i
  %i.lb = trunc nsw i64 %indvars.iv.next136.i to i32
  br label %.outer._crit_edge.i

.outer._crit_edge.i:                              ; preds = %.outer._crit_edge.loopexit.i, %.lr.ph128.i
  %.294.lcssa.i = phi i32 [ %.193126.i, %.lr.ph128.i ], [ %i.lb, %.outer._crit_edge.loopexit.i ]
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, -1 ; 2 uses
  %i.lc = and i64 %indvars.iv.next139.i, 4294967295
  %.not.i132 = icmp eq i64 %i.lc, 0
  br i1 %.not.i132, label %gen_bitlen.exit, label %.lr.ph128.i, !llvm.loop !61

gen_bitlen.exit:                                  ; preds = %.outer._crit_edge.i, %bb.ai, %._crit_edge.i, %.preheader.i
  tail call void @gen_codes(ptr noundef %i.c, i32 noundef %.2.lcssa, ptr noundef nonnull %i.hi)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @compress_block(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %i.b = load i32, ptr %i.a, align 64, !tbaa !26  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5944
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %.not = icmp eq i32 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 6016 ; 4 uses
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = load i32, ptr %.phi.trans.insert, align 64, !tbaa !23
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %0, i64 6008
  %.pre29 = load i64, ptr %.phi.trans.insert28, align 8, !tbaa !22
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6008 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 12 uses
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %zng_emit_lit.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %zng_emit_lit.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !27   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24    ; 3 uses
  %i.n = zext i8 %i.m to i32
  %i.o = icmp eq i16 %i.k, 0
  br i1 %i.o, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %.phi.trans.insert, align 64, !tbaa !23 ; 6 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.r = zext i8 %i.m to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !24
  %i.u = zext i16 %i.t to i64                     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !24
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = add i32 %i.p, %i.x                       ; 3 uses
  %i.z = or i32 %i.y, %i.p
  %or.cond.i = icmp ult i32 %i.z, 64
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = zext nneg i32 %i.p to i64
  %i.ab = shl i64 %i.u, %i.aa
  %i.ac = or i64 %i.ab, %i.q
  br label %zng_emit_lit.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp ugt i32 %i.p, 63
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.af = load i32, ptr %i.i, align 4, !tbaa !29
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  store i64 %i.q, ptr %i.ah, align 1, !tbaa !24
  %i.ai = load i32, ptr %i.i, align 4, !tbaa !29
  %i.aj = add i32 %i.ai, 8
  store i32 %i.aj, ptr %i.i, align 4, !tbaa !29
  br label %zng_emit_lit.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = zext nneg i32 %i.p to i64
  %i.al = shl i64 %i.u, %i.ak
  %i.am = or i64 %i.al, %i.q
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !29
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  store i64 %i.am, ptr %i.aq, align 1, !tbaa !24
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !29
  %i.as = add i32 %i.ar, 8
  store i32 %i.as, ptr %i.i, align 4, !tbaa !29
  %i.at = sub nuw nsw i32 64, %i.p
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %i.u, %i.au
  %i.aw = add nsw i32 %i.y, -64
  br label %zng_emit_lit.exit

bb.h:                                             ; preds = %bb.b
  %i.ax = zext i16 %i.k to i32
  %i.ay = load i32, ptr %.phi.trans.insert, align 64, !tbaa !23 ; 6 uses
  %i.az = load i64, ptr %i.g, align 8, !tbaa !22  ; 3 uses
  %i.ba = zext i8 %i.m to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @zng_length_code, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24  ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1028
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !24
  %i.bh = zext i16 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1030
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !24 ; 2 uses
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = add i8 %i.bc, -28
  %.not.i = icmp ult i8 %i.bl, -20
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @extra_lbits, i64 %i.bd
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @base_length, i64 %i.bd
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %i.bq = sub i32 %i.n, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = zext nneg i16 %i.bj to i64
  %i.bt = shl i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %i.bh
  %i.bv = add i32 %i.bn, %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.067.i = phi i64 [ %i.bu, %bb.i ], [ %i.bh, %bb.h ]
  %.066.i = phi i32 [ %i.bv, %bb.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bw = add nsw i32 %i.ax, -1                   ; 3 uses
  %i.bx = icmp ult i16 %i.k, 257
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @zng_dist_code, i64 %i.by
  %i.ca = lshr i32 %i.bw, 7
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @zng_dist_code, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 256
  %.in.in.i = select i1 %i.bx, ptr %i.bz, ptr %i.cd
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !24 ; 2 uses
  %i.ce = zext i8 %.in.i to i64                   ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !24
  %i.ch = zext i16 %i.cg to i64
  %i.ci = zext nneg i32 %.066.i to i64
  %i.cj = shl i64 %i.ch, %i.ci
  %i.ck = or i64 %i.cj, %.067.i                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !24
  %i.cn = zext i16 %i.cm to i32
  %i.co = add i32 %.066.i, %i.cn                  ; 3 uses
  %.not76.i = icmp ult i8 %.in.i, 4
  br i1 %.not76.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @extra_dbits, i64 %i.ce
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !32
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @base_dist, i64 %i.ce
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = sub i32 %i.bw, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %i.cv = zext nneg i32 %i.co to i64
  %i.cw = shl i64 %i.cu, %i.cv
  %i.cx = or i64 %i.cw, %i.ck
  %i.cy = add i32 %i.cq, %i.co
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.168.i = phi i64 [ %i.cx, %bb.k ], [ %i.ck, %bb.j ] ; 4 uses
  %.1.i = phi i32 [ %i.cy, %bb.k ], [ %i.co, %bb.j ] ; 2 uses
  %i.cz = add i32 %.1.i, %i.ay                    ; 3 uses
  %i.da = or i32 %i.cz, %i.ay
  %or.cond.i23 = icmp ult i32 %i.da, 64
  br i1 %or.cond.i23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = zext nneg i32 %i.ay to i64
  %i.dc = shl i64 %.168.i, %i.db
  %i.dd = or i64 %i.dc, %i.az
  br label %zng_emit_lit.exit

bb.n:                                             ; preds = %bb.l
  %i.de = icmp ugt i32 %i.ay, 63
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.dg = load i32, ptr %i.i, align 4, !tbaa !29
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh
  store i64 %i.az, ptr %i.di, align 1, !tbaa !24
  %i.dj = load i32, ptr %i.i, align 4, !tbaa !29
  %i.dk = add i32 %i.dj, 8
  store i32 %i.dk, ptr %i.i, align 4, !tbaa !29
  br label %zng_emit_lit.exit

bb.p:                                             ; preds = %bb.n
  %i.dl = zext nneg i32 %i.ay to i64
  %i.dm = shl i64 %.168.i, %i.dl
  %i.dn = or i64 %i.dm, %i.az
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.dp = load i32, ptr %i.i, align 4, !tbaa !29
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dq
  store i64 %i.dn, ptr %i.dr, align 1, !tbaa !24
  %i.ds = load i32, ptr %i.i, align 4, !tbaa !29
  %i.dt = add i32 %i.ds, 8
  store i32 %i.dt, ptr %i.i, align 4, !tbaa !29
  %i.du = sub nuw nsw i32 64, %i.ay
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = lshr i64 %.168.i, %i.dv
  %i.dx = add i32 %i.cz, -64
  br label %zng_emit_lit.exit

zng_emit_lit.exit:                                ; preds = %bb.p, %bb.o, %bb.m, %bb.g, %bb.f, %bb.d
  %storemerge34 = phi i32 [ %i.aw, %bb.g ], [ %i.y, %bb.d ], [ %i.x, %bb.f ], [ %i.cz, %bb.m ], [ %.1.i, %bb.o ], [ %i.dx, %bb.p ] ; 2 uses
  %storemerge = phi i64 [ %i.av, %bb.g ], [ %i.ac, %bb.d ], [ %i.u, %bb.f ], [ %i.dd, %bb.m ], [ %.168.i, %bb.o ], [ %i.dw, %bb.p ] ; 2 uses
  store i32 %storemerge34, ptr %.phi.trans.insert, align 64, !tbaa !23
  store i64 %storemerge, ptr %i.g, align 8, !tbaa !22
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !74

.loopexit:                                        ; preds = %zng_emit_lit.exit, %..loopexit_crit_edge
  %i.dy = phi i64 [ %.pre29, %..loopexit_crit_edge ], [ %storemerge, %zng_emit_lit.exit ] ; 3 uses
  %i.dz = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %storemerge34, %zng_emit_lit.exit ] ; 6 uses
  %i.ea = getelementptr i8, ptr %1, i64 1024
  %.val = load i16, ptr %i.ea, align 2, !tbaa !24
  %i.eb = getelementptr i8, ptr %1, i64 1026
  %.val22 = load i16, ptr %i.eb, align 2, !tbaa !24
  %i.ec = zext i16 %.val to i64                   ; 4 uses
  %i.ed = zext i16 %.val22 to i32                 ; 2 uses
  %i.ee = add i32 %i.dz, %i.ed                    ; 3 uses
  %i.ef = or i32 %i.ee, %i.dz
  %or.cond.i25 = icmp ult i32 %i.ef, 64
  br i1 %or.cond.i25, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.eg = zext nneg i32 %i.dz to i64
  %i.eh = shl i64 %i.ec, %i.eg
  %i.ei = or i64 %i.eh, %i.dy
  br label %zng_emit_end_block.exit

bb.r:                                             ; preds = %.loopexit
  %i.ej = icmp ugt i32 %i.dz, 63
  br i1 %i.ej, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !28
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !29
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eo
  store i64 %i.dy, ptr %i.ep, align 1, !tbaa !24
  %i.eq = load i32, ptr %i.em, align 4, !tbaa !29
  %i.er = add i32 %i.eq, 8
  store i32 %i.er, ptr %i.em, align 4, !tbaa !29
  br label %zng_emit_end_block.exit

bb.t:                                             ; preds = %bb.r
  %i.es = zext nneg i32 %i.dz to i64
  %i.et = shl i64 %i.ec, %i.es
  %i.eu = or i64 %i.et, %i.dy
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !28
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !29
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ez
  store i64 %i.eu, ptr %i.fa, align 1, !tbaa !24
  %i.fb = load i32, ptr %i.ex, align 4, !tbaa !29
  %i.fc = add i32 %i.fb, 8
  store i32 %i.fc, ptr %i.ex, align 4, !tbaa !29
  %i.fd = sub nuw nsw i32 64, %i.dz
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = lshr i64 %i.ec, %i.fe
  %i.fg = add nsw i32 %i.ee, -64
  br label %zng_emit_end_block.exit

zng_emit_end_block.exit:                          ; preds = %bb.q, %bb.s, %bb.t
  %.029.i = phi i32 [ %i.ee, %bb.q ], [ %i.ed, %bb.s ], [ %i.fg, %bb.t ]
  %.0.i26 = phi i64 [ %i.ei, %bb.q ], [ %i.ec, %bb.s ], [ %i.ff, %bb.t ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 6008
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 6016
  store i32 %.029.i, ptr %i.fi, align 64, !tbaa !23
  store i64 %.0.i26, ptr %i.fh, align 8, !tbaa !22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @send_tree(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6016 ; 2 uses
  %i.b = load i32, ptr %i.a, align 64, !tbaa !23  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6008 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not275 = icmp slt i32 %2, 0
  br i1 %.not275, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !24   ; 2 uses
  %i.g = icmp eq i16 %i.f, 0                      ; 2 uses
  %spec.select272 = select i1 %i.g, i32 3, i32 4
  %spec.select = select i1 %i.g, i32 138, i32 7
  %i.h = zext i16 %i.f to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2796 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 48 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2860
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2862
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2870
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2866
  %i.r = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aw ]
  %.0283 = phi i64 [ %i.d, %.lr.ph ], [ %.12, %bb.aw ] ; 12 uses
  %.0229282 = phi i32 [ %i.b, %.lr.ph ], [ %.12241, %bb.aw ] ; 21 uses
  %.1243281 = phi i32 [ %spec.select272, %.lr.ph ], [ %.2244, %bb.aw ] ; 2 uses
  %.1246280 = phi i32 [ %spec.select, %.lr.ph ], [ %.2247, %bb.aw ] ; 2 uses
  %.0248279 = phi i32 [ 0, %.lr.ph ], [ %.3251, %bb.aw ] ; 7 uses
  %.0252278 = phi i32 [ %i.h, %.lr.ph ], [ %i.v, %bb.aw ] ; 7 uses
  %.0253277 = phi i32 [ -1, %.lr.ph ], [ %.1254, %bb.aw ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !24   ; 2 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = add nsw i32 %.0248279, 1                 ; 5 uses
  %i.x = icmp slt i32 %i.w, %.1246280
  %i.y = icmp eq i32 %.0252278, %i.v              ; 3 uses
  %or.cond273 = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond273, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = icmp slt i32 %i.w, %.1243281
  br i1 %i.z, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.c
  %i.aa = zext nneg i32 %.0252278 to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.i
  %.1249 = phi i32 [ %i.bg, %bb.i ], [ %i.w, %.preheader ]
  %.1230 = phi i32 [ %.2231, %bb.i ], [ %.0229282, %.preheader ] ; 6 uses
  %.1 = phi i64 [ %.2, %bb.i ], [ %.0283, %.preheader ] ; 3 uses
  %i.ad = load i16, ptr %i.ab, align 4, !tbaa !24
  %i.ae = zext i16 %i.ad to i64                   ; 4 uses
  %i.af = load i16, ptr %i.ac, align 2, !tbaa !24
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = add i32 %.1230, %i.ag                   ; 3 uses
  %i.ai = or i32 %i.ah, %.1230
  %or.cond = icmp ult i32 %i.ai, 64
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = zext nneg i32 %.1230 to i64
  %i.ak = shl i64 %i.ae, %i.aj
  %i.al = or i64 %i.ak, %.1
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.am = icmp ugt i32 %.1230, 63
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ao = load i32, ptr %i.k, align 4, !tbaa !29
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  store i64 %.1, ptr %i.aq, align 1, !tbaa !24
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !29
  %i.as = add i32 %i.ar, 8
  store i32 %i.as, ptr %i.k, align 4, !tbaa !29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = zext nneg i32 %.1230 to i64
  %i.au = shl i64 %i.ae, %i.at
  %i.av = or i64 %i.au, %.1
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !29
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  store i64 %i.av, ptr %i.az, align 1, !tbaa !24
  %i.ba = load i32, ptr %i.k, align 4, !tbaa !29
  %i.bb = add i32 %i.ba, 8
  store i32 %i.bb, ptr %i.k, align 4, !tbaa !29
  %i.bc = sub nuw nsw i32 64, %.1230
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %i.ae, %i.bd
  %i.bf = add nsw i32 %i.ah, -64
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.2231 = phi i32 [ %i.ah, %bb.e ], [ %i.ag, %bb.g ], [ %i.bf, %bb.h ] ; 2 uses
  %.2 = phi i64 [ %i.al, %bb.e ], [ %i.ae, %bb.g ], [ %i.be, %bb.h ] ; 2 uses
  %i.bg = add nsw i32 %.1249, -1                  ; 2 uses
  %.not271 = icmp eq i32 %i.bg, 0
  br i1 %.not271, label %.loopexit, label %bb.d, !llvm.loop !77

bb.j:                                             ; preds = %bb.c
  %.not269 = icmp eq i32 %.0252278, 0
  br i1 %.not269, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not270 = icmp eq i32 %.0252278, %.0253277
  br i1 %.not270, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = zext nneg i32 %.0252278 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bh ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !24
  %i.bk = zext i16 %i.bj to i64                   ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !24
  %i.bn = zext i16 %i.bm to i32                   ; 2 uses
  %i.bo = add i32 %.0229282, %i.bn                ; 3 uses
  %i.bp = or i32 %i.bo, %.0229282
  %or.cond3 = icmp ult i32 %i.bp, 64
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = zext nneg i32 %.0229282 to i64
  %i.br = shl i64 %i.bk, %i.bq
  %i.bs = or i64 %i.br, %.0283
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bt = icmp ugt i32 %.0229282, 63
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.bv = load i32, ptr %i.k, align 4, !tbaa !29
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  store i64 %.0283, ptr %i.bx, align 1, !tbaa !24
  %i.by = load i32, ptr %i.k, align 4, !tbaa !29
  %i.bz = add i32 %i.by, 8
  store i32 %i.bz, ptr %i.k, align 4, !tbaa !29
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ca = zext nneg i32 %.0229282 to i64
  %i.cb = shl i64 %i.bk, %i.ca
  %i.cc = or i64 %i.cb, %.0283
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ce = load i32, ptr %i.k, align 4, !tbaa !29
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  store i64 %i.cc, ptr %i.cg, align 1, !tbaa !24
  %i.ch = load i32, ptr %i.k, align 4, !tbaa !29
  %i.ci = add i32 %i.ch, 8
  store i32 %i.ci, ptr %i.k, align 4, !tbaa !29
  %i.cj = sub nuw nsw i32 64, %.0229282
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 %i.bk, %i.ck
  %i.cm = add nsw i32 %i.bo, -64
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.k
  %.2250 = phi i32 [ %i.w, %bb.k ], [ %.0248279, %bb.o ], [ %.0248279, %bb.p ], [ %.0248279, %bb.m ]
  %.4233 = phi i32 [ %.0229282, %bb.k ], [ %i.bn, %bb.o ], [ %i.cm, %bb.p ], [ %i.bo, %bb.m ] ; 6 uses
  %.4 = phi i64 [ %.0283, %bb.k ], [ %i.bk, %bb.o ], [ %i.cl, %bb.p ], [ %i.bs, %bb.m ] ; 3 uses
  %i.cn = load i16, ptr %i.l, align 4, !tbaa !24
  %i.co = zext i16 %i.cn to i64                   ; 4 uses
  %i.cp = load i16, ptr %i.m, align 2, !tbaa !24
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = add i32 %.4233, %i.cq                   ; 3 uses
  %i.cs = or i32 %i.cr, %.4233
  %or.cond5 = icmp ult i32 %i.cs, 64
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = zext nneg i32 %.4233 to i64
  %i.cu = shl i64 %i.co, %i.ct
  %i.cv = or i64 %i.cu, %.4
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cw = icmp ugt i32 %.4233, 63
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.cy = load i32, ptr %i.k, align 4, !tbaa !29
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  store i64 %.4, ptr %i.da, align 1, !tbaa !24
  %i.db = load i32, ptr %i.k, align 4, !tbaa !29
  %i.dc = add i32 %i.db, 8
  store i32 %i.dc, ptr %i.k, align 4, !tbaa !29
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dd = zext nneg i32 %.4233 to i64
  %i.de = shl i64 %i.co, %i.dd
  %i.df = or i64 %i.de, %.4
  %i.dg = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.dh = load i32, ptr %i.k, align 4, !tbaa !29
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  store i64 %i.df, ptr %i.dj, align 1, !tbaa !24
  %i.dk = load i32, ptr %i.k, align 4, !tbaa !29
  %i.dl = add i32 %i.dk, 8
  store i32 %i.dl, ptr %i.k, align 4, !tbaa !29
  %i.dm = sub nuw nsw i32 64, %.4233
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = lshr i64 %i.co, %i.dn
  %i.dp = add nsw i32 %i.cr, -64
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r
  %.5234 = phi i32 [ %i.cr, %bb.r ], [ %i.cq, %bb.t ], [ %i.dp, %bb.u ] ; 7 uses
  %.5 = phi i64 [ %i.cv, %bb.r ], [ %i.co, %bb.t ], [ %i.do, %bb.u ] ; 3 uses
  %i.dq = sext i32 %.2250 to i64
  %i.dr = add nsw i64 %i.dq, -3                   ; 4 uses
  %i.ds = add nsw i32 %.5234, 2                   ; 2 uses
  %i.dt = or i32 %i.ds, %.5234
  %or.cond7 = icmp ult i32 %i.dt, 64
  br i1 %or.cond7, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
end_hunk_1
