Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/trees?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_tr_flush_block:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.q = load i16, ptr %i.p, align 4, !tbaa !23
  %.not19.4.i = icmp eq i16 %i.q, 0
  br i1 %.not19.4.i, label %bb.h, label %detect_data_type.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i16, ptr %i.r, align 8, !tbaa !23
  %.not19.5.i = icmp eq i16 %i.s, 0
  br i1 %.not19.5.i, label %bb.i, label %detect_data_type.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.u = load i16, ptr %i.t, align 4, !tbaa !23
  %.not19.6.i = icmp eq i16 %i.u, 0
  br i1 %.not19.6.i, label %bb.j, label %detect_data_type.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.w = load i16, ptr %i.v, align 4, !tbaa !23
  %.not19.14.i = icmp eq i16 %i.w, 0
  br i1 %.not19.14.i, label %bb.k, label %detect_data_type.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = load i16, ptr %i.x, align 8, !tbaa !23
  %.not19.15.i = icmp eq i16 %i.y, 0
  br i1 %.not19.15.i, label %bb.l, label %detect_data_type.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !23
  %.not19.16.i = icmp eq i16 %i.aa, 0
  br i1 %.not19.16.i, label %bb.m, label %detect_data_type.exit

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !23
  %.not19.17.i = icmp eq i16 %i.ac, 0
  br i1 %.not19.17.i, label %bb.n, label %detect_data_type.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !23
  %.not19.18.i = icmp eq i16 %i.ae, 0
  br i1 %.not19.18.i, label %bb.o, label %detect_data_type.exit

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !23
  %.not19.19.i = icmp eq i16 %i.ag, 0
  br i1 %.not19.19.i, label %bb.p, label %detect_data_type.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !23
  %.not19.20.i = icmp eq i16 %i.ai, 0
  br i1 %.not19.20.i, label %bb.q, label %detect_data_type.exit

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !23
  %.not19.21.i = icmp eq i16 %i.ak, 0
  br i1 %.not19.21.i, label %bb.r, label %detect_data_type.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.am = load i16, ptr %i.al, align 4, !tbaa !23
  %.not19.22.i = icmp eq i16 %i.am, 0
  br i1 %.not19.22.i, label %bb.s, label %detect_data_type.exit

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !23
  %.not19.23.i = icmp eq i16 %i.ao, 0
  br i1 %.not19.23.i, label %bb.t, label %detect_data_type.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !23
  %.not19.24.i = icmp eq i16 %i.aq, 0
  br i1 %.not19.24.i, label %bb.u, label %detect_data_type.exit

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !23
  %.not19.25.i = icmp eq i16 %i.as, 0
  br i1 %.not19.25.i, label %bb.v, label %detect_data_type.exit

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.au = load i16, ptr %i.at, align 4, !tbaa !23
  %.not19.28.i = icmp eq i16 %i.au, 0
  br i1 %.not19.28.i, label %bb.w, label %detect_data_type.exit

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !23
  %.not19.29.i = icmp eq i16 %i.aw, 0
  br i1 %.not19.29.i, label %bb.x, label %detect_data_type.exit

bb.x:                                             ; preds = %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !23
  %.not19.30.i = icmp eq i16 %i.ay, 0
  br i1 %.not19.30.i, label %bb.y, label %detect_data_type.exit

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !23
  %.not19.31.i = icmp eq i16 %i.ba, 0
  br i1 %.not19.31.i, label %bb.z, label %detect_data_type.exit

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !23
  %.not.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i, label %bb.aa, label %detect_data_type.exit

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !23
  %.not15.i = icmp eq i16 %i.be, 0
  br i1 %.not15.i, label %bb.ab, label %detect_data_type.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !23
  %.not16.i = icmp eq i16 %i.bg, 0
  br i1 %.not16.i, label %.preheader.i, label %detect_data_type.exit

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !23
  %.not17.i.1 = icmp eq i16 %i.bj, 0
  br i1 %.not17.i.1, label %.preheader.i.2, label %detect_data_type.exit

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !23
  %.not17.i.2 = icmp eq i16 %i.bm, 0
  br i1 %.not17.i.2, label %.preheader.i.3, label %detect_data_type.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !23
  %.not17.i.3 = icmp eq i16 %i.bp, 0
  br i1 %.not17.i.3, label %bb.ac, label %detect_data_type.exit

bb.ac:                                            ; preds = %.preheader.i.3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %detect_data_type.exit, label %.preheader.i, !llvm.loop !38

.preheader.i:                                     ; preds = %bb.ab, %bb.ac
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %bb.ac ], [ 32, %bb.ab ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !23
  %.not17.i = icmp eq i16 %i.br, 0
  br i1 %.not17.i, label %.preheader.i.1, label %detect_data_type.exit

detect_data_type.exit:                            ; preds = %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %bb.ac, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.014.i = phi i32 [ 1, %bb.aa ], [ 0, %bb.d ], [ 1, %bb.z ], [ 1, %bb.ab ], [ 0, %bb.c ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 1, %.preheader.i ], [ 0, %bb.ac ], [ 1, %.preheader.i.1 ], [ 1, %.preheader.i.3 ], [ 1, %.preheader.i.2 ]
  store i32 %.014.i, ptr %i.e, align 8, !tbaa !45
  br label %bb.ad

bb.ad:                                            ; preds = %detect_data_type.exit, %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2904
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2928
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2912 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !46 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 214
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !23 ; 2 uses
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr [4 x i8], ptr %i.bu, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 6
  store i16 -1, ptr %i.cb, align 2, !tbaa !23
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
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.aq ] ; 2 uses
  %.154.i.i = phi i32 [ %spec.select46.i.i, %.lr.ph.i.i ], [ %.2.i.i, %bb.aq ] ; 2 uses
  %.13253.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.233.i.i, %bb.aq ] ; 2 uses
  %.03452.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.135.i.i, %bb.aq ] ; 2 uses
  %.03651.i.i = phi i32 [ %i.cd, %.lr.ph.i.i ], [ %i.cm, %bb.aq ] ; 7 uses
  %.03750.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.138.i.i, %bb.aq ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !23 ; 2 uses
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
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !23
  %i.cu = trunc i32 %i.cn to i16
  %i.cv = add i16 %i.ct, %i.cu
  store i16 %i.cv, ptr %i.cs, align 4, !tbaa !23
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %.not44.i.i = icmp eq i32 %.03651.i.i, 0
  br i1 %.not44.i.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not45.i.i = icmp eq i32 %.03651.i.i, %.03750.i.i
  br i1 %.not45.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = zext nneg i32 %.03651.i.i to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cw ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 4, !tbaa !23
  %i.cz = add i16 %i.cy, 1
  store i16 %i.cz, ptr %i.cx, align 4, !tbaa !23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.da = load i16, ptr %i.cf, align 4, !tbaa !23
  %i.db = add i16 %i.da, 1
  store i16 %i.db, ptr %i.cf, align 4, !tbaa !23
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  %i.dc = icmp slt i32 %.03452.i.i, 10
  br i1 %i.dc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dd = load i16, ptr %i.ch, align 8, !tbaa !23
  %i.de = add i16 %i.dd, 1
  store i16 %i.de, ptr %i.ch, align 8, !tbaa !23
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.df = load i16, ptr %i.cg, align 4, !tbaa !23
  %i.dg = add i16 %i.df, 1
  store i16 %i.dg, ptr %i.cg, align 4, !tbaa !23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ag
  %i.dh = icmp eq i16 %i.cl, 0
  br i1 %i.dh, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %..i.i = select i1 %i.cp, i32 6, i32 7
  %.47.i.i = select i1 %i.cp, i32 3, i32 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.ae
  %.138.i.i = phi i32 [ %.03750.i.i, %bb.ae ], [ %.03651.i.i, %bb.ao ], [ %.03651.i.i, %bb.ap ]
  %.135.i.i = phi i32 [ %i.cn, %bb.ae ], [ 0, %bb.ao ], [ 0, %bb.ap ]
  %.233.i.i = phi i32 [ %.13253.i.i, %bb.ae ], [ 138, %bb.ao ], [ %..i.i, %bb.ap ]
  %.2.i.i = phi i32 [ %.154.i.i, %bb.ae ], [ 3, %bb.ao ], [ %.47.i.i, %bb.ap ]
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %scan_tree.exit.i, label %bb.ae, !llvm.loop !39

scan_tree.exit.i:                                 ; preds = %bb.aq, %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2936 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !47 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2506
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !23 ; 2 uses
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr [4 x i8], ptr %i.di, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 6
  store i16 -1, ptr %i.dp, align 2, !tbaa !23
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
  %indvars.iv.i19.i = phi i64 [ 0, %.lr.ph.i15.i ], [ %indvars.iv.next.i25.i, %bb.bd ] ; 2 uses
  %.154.i20.i = phi i32 [ %spec.select46.i16.i, %.lr.ph.i15.i ], [ %.2.i34.i, %bb.bd ] ; 2 uses
  %.13253.i21.i = phi i32 [ %spec.select.i17.i, %.lr.ph.i15.i ], [ %.233.i33.i, %bb.bd ] ; 2 uses
  %.03452.i22.i = phi i32 [ 0, %.lr.ph.i15.i ], [ %.135.i32.i, %bb.bd ] ; 2 uses
  %.03651.i23.i = phi i32 [ %i.dr, %.lr.ph.i15.i ], [ %i.ea, %bb.bd ] ; 7 uses
  %.03750.i24.i = phi i32 [ -1, %.lr.ph.i15.i ], [ %.138.i31.i, %bb.bd ] ; 2 uses
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i19.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !23 ; 2 uses
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
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !23
  %i.ei = trunc i32 %i.eb to i16
  %i.ej = add i16 %i.eh, %i.ei
  store i16 %i.ej, ptr %i.eg, align 4, !tbaa !23
  br label %bb.bb

bb.au:                                            ; preds = %bb.as
  %.not44.i27.i = icmp eq i32 %.03651.i23.i, 0
  br i1 %.not44.i27.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not45.i28.i = icmp eq i32 %.03651.i23.i, %.03750.i24.i
  br i1 %.not45.i28.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ek = zext nneg i32 %.03651.i23.i to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ek ; 2 uses
  %i.em = load i16, ptr %i.el, align 4, !tbaa !23
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %i.el, align 4, !tbaa !23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.eo = load i16, ptr %i.dt, align 4, !tbaa !23
  %i.ep = add i16 %i.eo, 1
  store i16 %i.ep, ptr %i.dt, align 4, !tbaa !23
  br label %bb.bb

bb.ay:                                            ; preds = %bb.au
  %i.eq = icmp slt i32 %.03452.i22.i, 10
  br i1 %i.eq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.er = load i16, ptr %i.dv, align 8, !tbaa !23
  %i.es = add i16 %i.er, 1
  store i16 %i.es, ptr %i.dv, align 8, !tbaa !23
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.et = load i16, ptr %i.du, align 4, !tbaa !23
  %i.eu = add i16 %i.et, 1
  store i16 %i.eu, ptr %i.du, align 4, !tbaa !23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax, %bb.at
  %i.ev = icmp eq i16 %i.dz, 0
  br i1 %i.ev, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %..i29.i = select i1 %i.ed, i32 6, i32 7
  %.47.i30.i = select i1 %i.ed, i32 3, i32 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ar
  %.138.i31.i = phi i32 [ %.03750.i24.i, %bb.ar ], [ %.03651.i23.i, %bb.bb ], [ %.03651.i23.i, %bb.bc ]
  %.135.i32.i = phi i32 [ %i.eb, %bb.ar ], [ 0, %bb.bb ], [ 0, %bb.bc ]
  %.233.i33.i = phi i32 [ %.13253.i21.i, %bb.ar ], [ 138, %bb.bb ], [ %..i29.i, %bb.bc ]
  %.2.i34.i = phi i32 [ %.154.i20.i, %bb.ar ], [ 3, %bb.bb ], [ %.47.i30.i, %bb.bc ]
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i18.i
  br i1 %exitcond.not.i35.i, label %scan_tree.exit36.i, label %bb.ar, !llvm.loop !39

scan_tree.exit36.i:                               ; preds = %bb.bd, %scan_tree.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !23
  %.not.i90 = icmp eq i16 %i.ey, 0
  br i1 %.not.i90, label %bb.be, label %build_bl_tree.exit

bb.be:                                            ; preds = %scan_tree.exit36.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !23
  %.not.1.i = icmp eq i16 %i.fa, 0
  br i1 %.not.1.i, label %bb.bf, label %build_bl_tree.exit

bb.bf:                                            ; preds = %bb.be
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !23
  %.not.2.i = icmp eq i16 %i.fc, 0
  br i1 %.not.2.i, label %bb.bg, label %build_bl_tree.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !23
  %.not.3.i = icmp eq i16 %i.fe, 0
  br i1 %.not.3.i, label %bb.bh, label %build_bl_tree.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !23
  %.not.4.i = icmp eq i16 %i.fg, 0
  br i1 %.not.4.i, label %bb.bi, label %build_bl_tree.exit

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !23
  %.not.5.i = icmp eq i16 %i.fi, 0
  br i1 %.not.5.i, label %bb.bj, label %build_bl_tree.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !23
  %.not.6.i = icmp eq i16 %i.fk, 0
  br i1 %.not.6.i, label %bb.bk, label %build_bl_tree.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !23
  %.not.7.i = icmp eq i16 %i.fm, 0
  br i1 %.not.7.i, label %bb.bl, label %build_bl_tree.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !23
  %.not.8.i = icmp eq i16 %i.fo, 0
  br i1 %.not.8.i, label %bb.bm, label %build_bl_tree.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !23
  %.not.9.i = icmp eq i16 %i.fq, 0
  br i1 %.not.9.i, label %bb.bn, label %build_bl_tree.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !23
  %.not.10.i = icmp eq i16 %i.fs, 0
  br i1 %.not.10.i, label %bb.bo, label %build_bl_tree.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !23
  %.not.11.i = icmp eq i16 %i.fu, 0
  br i1 %.not.11.i, label %bb.bp, label %build_bl_tree.exit

bb.bp:                                            ; preds = %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !23
  %.not.12.i = icmp eq i16 %i.fw, 0
  br i1 %.not.12.i, label %bb.bq, label %build_bl_tree.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !23
  %.not.13.i = icmp eq i16 %i.fy, 0
  br i1 %.not.13.i, label %bb.br, label %build_bl_tree.exit

bb.br:                                            ; preds = %bb.bq
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !23
  %.not.14.i = icmp eq i16 %i.ga, 0
  br i1 %.not.14.i, label %bb.bs, label %build_bl_tree.exit

bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !23
  %.not.15.i = icmp eq i16 %i.gc, 0
  %spec.select.i = select i1 %.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 10, %bb.bl ], [ 17, %bb.be ], [ %spec.select.i, %bb.bs ], [ 16, %bb.bf ], [ 8, %bb.bn ], [ 15, %bb.bg ], [ 4, %bb.br ], [ 14, %bb.bh ], [ 9, %bb.bm ], [ 13, %bb.bi ], [ 5, %bb.bq ], [ 12, %bb.bj ], [ 7, %bb.bo ], [ 11, %bb.bk ], [ 6, %bb.bp ] ; 3 uses
  %narrow.i = mul nuw nsw i32 %.0.lcssa.i, 3
  %narrow42.i = add nuw nsw i32 %narrow.i, 17
  %i.gd = zext nneg i32 %narrow42.i to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !28
  %i.gg = add i64 %i.gf, %i.gd                    ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !28
  %i.gh = add i64 %i.gg, 10
  %i.gi = lshr i64 %i.gh, 3                       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !29
  %i.gl = add i64 %i.gk, 10
  %i.gm = lshr i64 %i.gl, 3                       ; 3 uses
  %.not = icmp samesign ugt i64 %i.gm, %i.gi
  br i1 %.not, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %build_bl_tree.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !48
  %i.gp = icmp eq i32 %i.go, 4
  br i1 %i.gp, label %bb.bv, label %.thread

bb.bu:                                            ; preds = %bb.a
end_hunk_0
begin_hunk_1_@build_tree:bb.a
bb.w:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds i8, ptr %i.bb, i64 %i.dm
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !23
  %i.dz = getelementptr inbounds i8, ptr %i.bb, i64 %i.ds
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %.not55.i107 = icmp ugt i8 %i.dy, %i.ea
  br i1 %.not55.i107, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %._crit_edge65.i99
  %.pre-phi.i101 = phi i64 [ %.pre.i100, %._crit_edge65.i99 ], [ %i.dj, %bb.x ], [ %i.dp, %bb.w ], [ %i.dp, %bb.v ]
  %.1.i102 = phi i32 [ %.060.i97, %._crit_edge65.i99 ], [ %i.di, %bb.x ], [ %.060.i97, %bb.w ], [ %.060.i97, %bb.v ] ; 3 uses
  %i.eb = load i16, ptr %i.df, align 2, !tbaa !23 ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.pre-phi.i101
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !30 ; 2 uses
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !23 ; 2 uses
  %i.eh = icmp ult i16 %i.eb, %i.eg
  br i1 %i.eh, label %pqdownheap.exit108.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = icmp eq i16 %i.eb, %i.eg
  br i1 %i.ei, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = load i8, ptr %i.de, align 1, !tbaa !23
  %i.ek = getelementptr inbounds i8, ptr %i.bb, i64 %i.ee
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !23
  %.not56.i106 = icmp ugt i8 %i.ej, %i.el
  br i1 %.not56.i106, label %bb.ab, label %pqdownheap.exit108.loopexit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.em = sext i32 %.04959.i98 to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.em
  store i32 %i.ed, ptr %i.en, align 4, !tbaa !30
  %.0.i103 = shl i32 %.1.i102, 1                  ; 2 uses
  %i.eo = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %.not.i104 = icmp sgt i32 %.0.i103, %i.eo
  br i1 %.not.i104, label %pqdownheap.exit108.loopexit, label %bb.t, !llvm.loop !51

pqdownheap.exit108.loopexit:                      ; preds = %bb.ab, %bb.aa, %bb.y
  %.049.lcssa.i105.ph = phi i32 [ %.04959.i98, %bb.y ], [ %.04959.i98, %bb.aa ], [ %.1.i102, %bb.ab ]
  %i.ep = sext i32 %.049.lcssa.i105.ph to i64
  br label %pqdownheap.exit108

pqdownheap.exit108:                               ; preds = %pqdownheap.exit108.loopexit, %bb.s
  %.049.lcssa.i105 = phi i64 [ 1, %bb.s ], [ %i.ep, %pqdownheap.exit108.loopexit ]
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.049.lcssa.i105
  store i32 %i.dc, ptr %i.eq, align 4, !tbaa !30
  %i.er = load i32, ptr %i.ba, align 4, !tbaa !30 ; 2 uses
  %i.es = load i32, ptr %i.i, align 8, !tbaa !69
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %i.i, align 8, !tbaa !69
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.eu
  store i32 %i.cy, ptr %i.ev, align 4, !tbaa !30
  %i.ew = load i32, ptr %i.i, align 8, !tbaa !69
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  store i32 %i.ex, ptr %i.i, align 8, !tbaa !69
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ey
  store i32 %i.er, ptr %i.ez, align 4, !tbaa !30
  %i.fa = sext i32 %i.cy to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fa ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !23
  %i.fd = sext i32 %i.er to i64                   ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fd ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !23
  %i.fg = add i16 %i.ff, %i.fc
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv154 ; 2 uses
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !23
  %i.fi = getelementptr inbounds i8, ptr %i.bb, i64 %i.fa
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !23
  %i.fk = getelementptr inbounds i8, ptr %i.bb, i64 %i.fd
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !23
  %. = tail call i8 @llvm.umax.i8(i8 %i.fj, i8 %i.fl)
  %i.fm = add i8 %., 1
  %i.fn = getelementptr inbounds i8, ptr %i.bb, i64 %indvars.iv154 ; 2 uses
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !23
  %i.fo = trunc nsw i64 %indvars.iv154 to i32     ; 2 uses
  %i.fp = trunc i64 %indvars.iv154 to i16         ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !23
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  store i16 %i.fp, ptr %i.fr, align 2, !tbaa !23
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1
  store i32 %i.fo, ptr %i.ba, align 4, !tbaa !30
  %i.fs = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %.not58.i109 = icmp slt i32 %i.fs, 2
  br i1 %.not58.i109, label %pqdownheap.exit122, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %pqdownheap.exit108, %bb.aj
  %i.ft = phi i32 [ %i.hb, %bb.aj ], [ %i.fs, %pqdownheap.exit108 ]
  %.060.i111 = phi i32 [ %.0.i117, %bb.aj ], [ 2, %pqdownheap.exit108 ] ; 7 uses
  %.04959.i112 = phi i32 [ %.1.i116, %bb.aj ], [ 1, %pqdownheap.exit108 ] ; 3 uses
  %i.fu = icmp slt i32 %.060.i111, %i.ft
  br i1 %i.fu, label %bb.ac, label %._crit_edge65.i113

._crit_edge65.i113:                               ; preds = %.lr.ph.i110
  %.pre.i114 = sext i32 %.060.i111 to i64
  br label %bb.ag

bb.ac:                                            ; preds = %.lr.ph.i110
  %i.fv = or disjoint i32 %.060.i111, 1           ; 2 uses
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !30
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !23 ; 2 uses
  %i.gc = sext i32 %.060.i111 to i64              ; 3 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !30
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !23 ; 2 uses
  %i.gi = icmp ult i16 %i.gb, %i.gh
  br i1 %i.gi, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gj = icmp eq i16 %i.gb, %i.gh
  br i1 %i.gj, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gk = getelementptr inbounds i8, ptr %i.bb, i64 %i.fz
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !23
  %i.gm = getelementptr inbounds i8, ptr %i.bb, i64 %i.gf
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !23
  %.not55.i121 = icmp ugt i8 %i.gl, %i.gn
  br i1 %.not55.i121, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %._crit_edge65.i113
  %.pre-phi.i115 = phi i64 [ %.pre.i114, %._crit_edge65.i113 ], [ %i.fw, %bb.af ], [ %i.gc, %bb.ae ], [ %i.gc, %bb.ad ]
  %.1.i116 = phi i32 [ %.060.i111, %._crit_edge65.i113 ], [ %i.fv, %bb.af ], [ %.060.i111, %bb.ae ], [ %.060.i111, %bb.ad ] ; 3 uses
  %i.go = load i16, ptr %i.fh, align 2, !tbaa !23 ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.pre-phi.i115
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !30 ; 2 uses
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !23 ; 2 uses
  %i.gu = icmp ult i16 %i.go, %i.gt
  br i1 %i.gu, label %pqdownheap.exit122.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gv = icmp eq i16 %i.go, %i.gt
  br i1 %i.gv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load i8, ptr %i.fn, align 1, !tbaa !23
  %i.gx = getelementptr inbounds i8, ptr %i.bb, i64 %i.gr
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !23
  %.not56.i120 = icmp ugt i8 %i.gw, %i.gy
  br i1 %.not56.i120, label %bb.aj, label %pqdownheap.exit122.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gz = sext i32 %.04959.i112 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.gz
  store i32 %i.gq, ptr %i.ha, align 4, !tbaa !30
  %.0.i117 = shl i32 %.1.i116, 1                  ; 2 uses
  %i.hb = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %.not.i118 = icmp sgt i32 %.0.i117, %i.hb
  br i1 %.not.i118, label %pqdownheap.exit122.loopexit, label %.lr.ph.i110, !llvm.loop !51

pqdownheap.exit122.loopexit:                      ; preds = %bb.aj, %bb.ai, %bb.ag
  %.049.lcssa.i119.ph = phi i32 [ %.04959.i112, %bb.ag ], [ %.04959.i112, %bb.ai ], [ %.1.i116, %bb.aj ]
  %i.hc = sext i32 %.049.lcssa.i119.ph to i64
  br label %pqdownheap.exit122

pqdownheap.exit122:                               ; preds = %pqdownheap.exit122.loopexit, %pqdownheap.exit108
  %.049.lcssa.i119 = phi i64 [ 1, %pqdownheap.exit108 ], [ %i.hc, %pqdownheap.exit122.loopexit ]
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.049.lcssa.i119
  store i32 %i.fo, ptr %i.hd, align 4, !tbaa !30
  %i.he = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.s, label %bb.ak, !llvm.loop !53

bb.ak:                                            ; preds = %pqdownheap.exit122
  %i.hg = load i32, ptr %i.ba, align 4, !tbaa !30
  %i.hh = load i32, ptr %i.i, align 8, !tbaa !69
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  store i32 %i.hi, ptr %i.i, align 8, !tbaa !69
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hj
  store i32 %i.hg, ptr %i.hk, align 4, !tbaa !30
  %i.hl = load ptr, ptr %1, align 8, !tbaa !62    ; 4 uses
  %i.hm = load i32, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !63  ; 4 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !66 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !71
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !72 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !73 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hv, i8 0, i64 32, i1 false), !tbaa !74
  %i.hw = load i32, ptr %i.i, align 8, !tbaa !69
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !30
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store i16 0, ptr %i.ic, align 2, !tbaa !23
  %i.id = load i32, ptr %i.i, align 8, !tbaa !69  ; 2 uses
  %i.ie = icmp slt i32 %i.id, 572
  br i1 %i.ie, label %.lr.ph.i123, label %gen_bitlen.exit

.lr.ph.i123:                                      ; preds = %bb.ak
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 4 uses
  %.not103.i = icmp eq ptr %i.ho, null
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.ih = sext i32 %i.id to i64
  %i.ii = add nsw i64 %i.ih, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i123
  %indvars.iv.i = phi i64 [ %i.ii, %.lr.ph.i123 ], [ %indvars.iv.next.i, %bb.aq ] ; 2 uses
  %.0113.i = phi i32 [ 0, %.lr.ph.i123 ], [ %spec.select104.i, %bb.aq ]
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !30 ; 4 uses
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2 ; 2 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !23
  %i.ip = zext i16 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !23
  %i.it = zext i16 %i.is to i32                   ; 2 uses
  %i.iu = add nuw nsw i32 %i.it, 1
  %.not101.i = icmp sle i32 %i.hu, %i.it          ; 2 uses
  %spec.select.i = select i1 %.not101.i, i32 %i.hu, i32 %i.iu ; 3 uses
  %i.iv = zext i1 %.not101.i to i32
  %spec.select104.i = add nuw nsw i32 %.0113.i, %i.iv ; 3 uses
  %i.iw = trunc i32 %spec.select.i to i16
  store i16 %i.iw, ptr %i.in, align 2, !tbaa !23
  %i.ix = icmp sgt i32 %i.ik, %i.hm
  br i1 %i.ix, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iy = sext i32 %spec.select.i to i64
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.iy ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !74
  %i.jb = add i16 %i.ja, 1
  store i16 %i.jb, ptr %i.iz, align 2, !tbaa !74
  %.not102.i = icmp slt i32 %i.ik, %i.hs
  br i1 %.not102.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jc = sub nsw i32 %i.ik, %i.hs
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.084.i = phi i32 [ %i.jf, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.jg = load i16, ptr %i.im, align 2, !tbaa !23
  %i.jh = zext i16 %i.jg to i64                   ; 2 uses
  %i.ji = add nsw i32 %.084.i, %spec.select.i
  %i.jj = zext i32 %i.ji to i64
  %i.jk = mul nuw nsw i64 %i.jh, %i.jj
  %i.jl = load i64, ptr %i.if, align 8, !tbaa !28
  %i.jm = add i64 %i.jk, %i.jl
  store i64 %i.jm, ptr %i.if, align 8, !tbaa !28
  br i1 %.not103.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.il
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !23
  %i.jq = zext i16 %i.jp to i32
  %i.jr = add nsw i32 %.084.i, %i.jq
  %i.js = zext i32 %i.jr to i64
  %i.jt = mul nuw nsw i64 %i.js, %i.jh
  %i.ju = load i64, ptr %i.ig, align 8, !tbaa !29
  %i.jv = add i64 %i.jt, %i.ju
  store i64 %i.jv, ptr %i.ig, align 8, !tbaa !29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jw = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.jw, 573
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.al, !llvm.loop !54

._crit_edge.i:                                    ; preds = %bb.aq
  %i.jx = icmp eq i32 %spec.select104.i, 0
  br i1 %i.jx, label %gen_bitlen.exit, label %.preheader105.i

.preheader105.i:                                  ; preds = %._crit_edge.i
  %i.jy = sext i32 %i.hu to i64                   ; 3 uses
  %i.jz = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %i.jy ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.preheader105.i
  %.2.i = phi i32 [ %i.ki, %bb.at ], [ %spec.select104.i, %.preheader105.i ] ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %bb.as ], [ %i.jy, %bb.ar ] ; 2 uses
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, -1
  %i.ka = getelementptr [2 x i8], ptr %i.hv, i64 %indvars.iv132.i ; 4 uses
  %2 = getelementptr i8, ptr %i.ka, i64 -2
  %i.kb = load i16, ptr %2, align 2, !tbaa !74    ; 2 uses
  %i.kc = icmp eq i16 %i.kb, 0
  br i1 %i.kc, label %bb.as, label %bb.at, !llvm.loop !55

bb.at:                                            ; preds = %bb.as
  %3 = getelementptr i8, ptr %i.ka, i64 -2
  %i.kd = add i16 %i.kb, -1
  store i16 %i.kd, ptr %3, align 2, !tbaa !74
  %i.ke = load i16, ptr %i.ka, align 2, !tbaa !74
  %i.kf = add i16 %i.ke, 2
  store i16 %i.kf, ptr %i.ka, align 2, !tbaa !74
  %i.kg = load i16, ptr %i.jz, align 2, !tbaa !74
  %i.kh = add i16 %i.kg, -1
  store i16 %i.kh, ptr %i.jz, align 2, !tbaa !74
  %i.ki = add nsw i32 %.2.i, -2
  %i.kj = icmp sgt i32 %.2.i, 2
  br i1 %i.kj, label %bb.ar, label %.preheader.i, !llvm.loop !56

.preheader.i:                                     ; preds = %bb.at
  %.not122.i = icmp eq i32 %i.hu, 0
  br i1 %.not122.i, label %gen_bitlen.exit, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.preheader.i, %.outer._crit_edge.i
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %.outer._crit_edge.i ], [ %i.jy, %.preheader.i ] ; 5 uses
  %.190123.i = phi i32 [ %.291.lcssa.i, %.outer._crit_edge.i ], [ 573, %.preheader.i ] ; 2 uses
  %i.kk = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %indvars.iv138.i
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !74 ; 2 uses
  %.not99118.i = icmp eq i16 %i.kl, 0
  br i1 %.not99118.i, label %.outer._crit_edge.i, label %.outer.split.lr.ph.i

.outer.split.lr.ph.i:                             ; preds = %.lr.ph125.i
  %i.km = zext i16 %i.kl to i32
  %i.kn = trunc i64 %indvars.iv138.i to i16
  %i.ko = sext i32 %.190123.i to i64
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %.088.ph120.i = phi i32 [ %i.km, %.outer.split.lr.ph.i ], [ %i.ld, %.outer.i ]
  %.291.ph119.i = phi i64 [ %i.ko, %.outer.split.lr.ph.i ], [ %indvars.iv.next136.i, %.outer.i ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.outer.split.i
  %indvars.iv135.i = phi i64 [ %.291.ph119.i, %.outer.split.i ], [ %indvars.iv.next136.i, %bb.au ] ; 2 uses
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, -1 ; 3 uses
  %i.kp = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv135.i
  %4 = getelementptr i8, ptr %i.kp, i64 -4
  %i.kq = load i32, ptr %4, align 4, !tbaa !30    ; 2 uses
  %i.kr = icmp sgt i32 %i.kq, %i.hm
  br i1 %i.kr, label %bb.au, label %bb.av, !llvm.loop !57

bb.av:                                            ; preds = %bb.au
  %i.ks = sext i32 %i.kq to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 2 ; 2 uses
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !23
  %i.kw = zext i16 %i.kv to i64                   ; 2 uses
  %.not100.i = icmp eq i64 %indvars.iv138.i, %i.kw
  br i1 %.not100.i, label %.outer.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kx = sub nsw i64 %indvars.iv138.i, %i.kw
  %i.ky = load i16, ptr %i.kt, align 2, !tbaa !23
  %i.kz = zext i16 %i.ky to i64
  %i.la = mul nsw i64 %i.kx, %i.kz
  %i.lb = load i64, ptr %i.if, align 8, !tbaa !28
  %i.lc = add i64 %i.la, %i.lb
  store i64 %i.lc, ptr %i.if, align 8, !tbaa !28
  store i16 %i.kn, ptr %i.ku, align 2, !tbaa !23
  br label %.outer.i

.outer.i:                                         ; preds = %bb.aw, %bb.av
  %i.ld = add nsw i32 %.088.ph120.i, -1           ; 2 uses
  %.not99.i = icmp eq i32 %i.ld, 0
  br i1 %.not99.i, label %.outer._crit_edge.loopexit.i, label %.outer.split.i, !llvm.loop !57

.outer._crit_edge.loopexit.i:                     ; preds = %.outer.i
  %i.le = trunc nsw i64 %indvars.iv.next136.i to i32
  br label %.outer._crit_edge.i

.outer._crit_edge.i:                              ; preds = %.outer._crit_edge.loopexit.i, %.lr.ph125.i
  %.291.lcssa.i = phi i32 [ %.190123.i, %.lr.ph125.i ], [ %i.le, %.outer._crit_edge.loopexit.i ]
  %indvars.iv.next139.i = add nsw i64 %indvars.iv138.i, -1 ; 2 uses
  %.not.i124 = icmp eq i64 %indvars.iv.next139.i, 0
  br i1 %.not.i124, label %gen_bitlen.exit, label %.lr.ph125.i, !llvm.loop !58

gen_bitlen.exit:                                  ; preds = %.outer._crit_edge.i, %bb.ak, %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.lf = load i16, ptr %i.hv, align 8, !tbaa !74
  %i.lg = shl i16 %i.lf, 1                        ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.lg, ptr %i.lh, align 2, !tbaa !74
  %i.li = getelementptr i8, ptr %0, i64 2978
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !74
  %i.lk = add i16 %i.lj, %i.lg
  %i.ll = shl i16 %i.lk, 1                        ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %i.ll, ptr %i.lm, align 4, !tbaa !74
  %i.ln = getelementptr i8, ptr %0, i64 2980
  %i.lo = load i16, ptr %i.ln, align 4, !tbaa !74
  %i.lp = add i16 %i.lo, %i.ll
  %i.lq = shl i16 %i.lp, 1                        ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 %i.lq, ptr %i.lr, align 2, !tbaa !74
  %i.ls = getelementptr i8, ptr %0, i64 2982
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !74
  %i.lu = add i16 %i.lt, %i.lq
  %i.lv = shl i16 %i.lu, 1                        ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.lv, ptr %i.lw, align 8, !tbaa !74
  %i.lx = getelementptr i8, ptr %0, i64 2984
  %i.ly = load i16, ptr %i.lx, align 8, !tbaa !74
  %i.lz = add i16 %i.ly, %i.lv
  %i.ma = shl i16 %i.lz, 1                        ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !74
  %i.mc = getelementptr i8, ptr %0, i64 2986
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !74
  %i.me = add i16 %i.md, %i.ma
  %i.mf = shl i16 %i.me, 1                        ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i16 %i.mf, ptr %i.mg, align 4, !tbaa !74
  %i.mh = getelementptr i8, ptr %0, i64 2988
  %i.mi = load i16, ptr %i.mh, align 4, !tbaa !74
  %i.mj = add i16 %i.mi, %i.mf
  %i.mk = shl i16 %i.mj, 1                        ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i16 %i.mk, ptr %i.ml, align 2, !tbaa !74
  %i.mm = getelementptr i8, ptr %0, i64 2990
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !74
  %i.mo = add i16 %i.mn, %i.mk
  %i.mp = shl i16 %i.mo, 1                        ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 %i.mp, ptr %i.mq, align 16, !tbaa !74
  %i.mr = getelementptr i8, ptr %0, i64 2992
  %i.ms = load i16, ptr %i.mr, align 8, !tbaa !74
  %i.mt = add i16 %i.ms, %i.mp
  %i.mu = shl i16 %i.mt, 1                        ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 %i.mu, ptr %i.mv, align 2, !tbaa !74
  %i.mw = getelementptr i8, ptr %0, i64 2994
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !74
  %i.my = add i16 %i.mx, %i.mu
  %i.mz = shl i16 %i.my, 1                        ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 %i.mz, ptr %i.na, align 4, !tbaa !74
  %i.nb = getelementptr i8, ptr %0, i64 2996
  %i.nc = load i16, ptr %i.nb, align 4, !tbaa !74
  %i.nd = add i16 %i.nc, %i.mz
  %i.ne = shl i16 %i.nd, 1                        ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i16 %i.ne, ptr %i.nf, align 2, !tbaa !74
  %i.ng = getelementptr i8, ptr %0, i64 2998
  %i.nh = load i16, ptr %i.ng, align 2, !tbaa !74
  %i.ni = add i16 %i.nh, %i.ne
  %i.nj = shl i16 %i.ni, 1                        ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 %i.nj, ptr %i.nk, align 8, !tbaa !74
  %i.nl = getelementptr i8, ptr %0, i64 3000
  %i.nm = load i16, ptr %i.nl, align 8, !tbaa !74
  %i.nn = add i16 %i.nm, %i.nj
  %i.no = shl i16 %i.nn, 1                        ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 %i.no, ptr %i.np, align 2, !tbaa !74
  %i.nq = getelementptr i8, ptr %0, i64 3002
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !74
  %i.ns = add i16 %i.nr, %i.no
  %i.nt = shl i16 %i.ns, 1                        ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 %i.nt, ptr %i.nu, align 4, !tbaa !74
  %i.nv = getelementptr i8, ptr %0, i64 3004
  %i.nw = load i16, ptr %i.nv, align 4, !tbaa !74
  %i.nx = add i16 %i.nw, %i.nt
  %i.ny = shl i16 %i.nx, 1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 %i.ny, ptr %i.nz, align 2, !tbaa !74
  %.not21.i = icmp slt i32 %.2.lcssa, 0
  br i1 %.not21.i, label %gen_codes.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %gen_bitlen.exit
  %i.oa = add nuw i32 %.2.lcssa, 1
  %wide.trip.count.i = zext i32 %i.oa to i64
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %bb.ba, %.lr.ph.preheader.i
  %indvars.iv.i127 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i128, %bb.ba ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i127 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !23 ; 4 uses
  %i.oe = icmp eq i16 %i.od, 0
  br i1 %i.oe, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i126
  %i.of = zext i16 %i.od to i32                   ; 2 uses
  %i.og = zext i16 %i.od to i64
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.og ; 2 uses
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !74 ; 3 uses
  %i.oj = add i16 %i.oi, 1
  store i16 %i.oj, ptr %i.oh, align 2, !tbaa !74
  %xtraiter = and i32 %i.of, 3                    ; 3 uses
  %i.ok = icmp ult i16 %i.od, 4
  br i1 %i.ok, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ax
  %unroll_iter = and i32 %i.of, 65532
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.new
  %.07.i.i = phi i16 [ %i.oi, %.new ], [ %i.ox, %bb.ay ] ; 5 uses
  %.0.i.i = phi i16 [ 0, %.new ], [ %i.oy, %bb.ay ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.ay ]
  %i.ol = and i16 %.07.i.i, 1
  %i.om = or disjoint i16 %.0.i.i, %i.ol
  %i.on = shl i16 %i.om, 2
  %i.oo = and i16 %.07.i.i, 2
  %i.op = or disjoint i16 %i.on, %i.oo
  %i.oq = lshr i16 %.07.i.i, 2
  %i.or = and i16 %i.oq, 1
  %i.os = or disjoint i16 %i.op, %i.or
  %i.ot = lshr i16 %.07.i.i, 3
  %i.ou = shl i16 %i.os, 1
  %i.ov = and i16 %i.ot, 1
  %i.ow = or disjoint i16 %i.ou, %i.ov            ; 2 uses
  %i.ox = lshr i16 %.07.i.i, 4                    ; 2 uses
  %i.oy = shl i16 %i.ow, 1                        ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %bi_reverse.exit.i.unr-lcssa, label %bb.ay, !llvm.loop !59

bi_reverse.exit.i.unr-lcssa:                      ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bi_reverse.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %bi_reverse.exit.i.unr-lcssa, %bb.ax
  %.07.i.i.epil.init = phi i16 [ %i.oi, %bb.ax ], [ %i.ox, %bi_reverse.exit.i.unr-lcssa ]
  %.0.i.i.epil.init = phi i16 [ 0, %bb.ax ], [ %i.oy, %bi_reverse.exit.i.unr-lcssa ]
  %lcmp.mod206 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod206)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %.07.i.i.epil = phi i16 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.pb, %bb.az ] ; 2 uses
  %.0.i.i.epil = phi i16 [ %.0.i.i.epil.init, %.epil.preheader ], [ %i.pc, %bb.az ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %i.oz = and i16 %.07.i.i.epil, 1
  %i.pa = or disjoint i16 %.0.i.i.epil, %i.oz     ; 2 uses
  %i.pb = lshr i16 %.07.i.i.epil, 1
  %i.pc = shl i16 %i.pa, 1
end_hunk_1
begin_hunk_2_@compress_block:bb.a
  store i64 %i.gm, ptr %i.g, align 8, !tbaa !27
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl
  store i8 %i.gj, ptr %i.gn, align 1, !tbaa !23
  %i.go = load i32, ptr %i.d, align 4, !tbaa !21  ; 2 uses
  %i.gp = sub nsw i32 16, %i.go
  %i.gq = lshr i32 %i.fy, %i.gp
  %i.gr = trunc nuw i32 %i.gq to i16
  store i16 %i.gr, ptr %i.e, align 8, !tbaa !20
  %i.gs = add nsw i32 %i.fs, -16
  %i.gt = add nsw i32 %i.gs, %i.go
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.gu = shl i32 %i.fv, %storemerge189
  %i.gv = trunc i32 %i.gu to i16
  %i.gw = or i16 %i.fq, %i.gv
  store i16 %i.gw, ptr %i.e, align 8, !tbaa !20
  %i.gx = add nsw i32 %i.fs, %storemerge189
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t, %bb.d, %bb.e
  %storemerge192.sink = phi i32 [ %i.bf, %bb.d ], [ %i.bg, %bb.e ], [ %i.gx, %bb.t ], [ %i.gt, %bb.s ] ; 2 uses
  store i32 %storemerge192.sink, ptr %i.d, align 4, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q
  %i.gy = phi i32 [ %storemerge189, %bb.q ], [ %storemerge192.sink, %.sink.split ]
  %i.gz = load i32, ptr %i.a, align 4, !tbaa !25
  %i.ha = icmp ult i32 %i.u, %i.gz
  br i1 %i.ha, label %bb.b, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %bb.u, %..loopexit_crit_edge
  %i.hb = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.gy, %bb.u ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 1026
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !23
  %i.hf = zext i16 %i.he to i32                   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 2 uses
  %i.hh = sub nsw i32 16, %i.hf
  %i.hi = icmp sgt i32 %i.hb, %i.hh
  %i.hj = load i16, ptr %i.hc, align 2, !tbaa !23
  %i.hk = zext i16 %i.hj to i32                   ; 2 uses
  %i.hl = shl i32 %i.hk, %i.hb
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 4 uses
  %i.hn = load i16, ptr %i.hm, align 8, !tbaa !20
  %i.ho = trunc i32 %i.hl to i16
  %i.hp = or i16 %i.hn, %i.ho                     ; 2 uses
  store i16 %i.hp, ptr %i.hm, align 8, !tbaa !20
  br i1 %i.hi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.hq = trunc i16 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !26
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !27 ; 2 uses
  %i.hv = add i64 %i.hu, 1
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hu
  store i8 %i.hq, ptr %i.hw, align 1, !tbaa !23
  %i.hx = load i16, ptr %i.hm, align 8, !tbaa !20
  %i.hy = lshr i16 %i.hx, 8
  %i.hz = trunc nuw i16 %i.hy to i8
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !26
  %i.ib = load i64, ptr %i.ht, align 8, !tbaa !27 ; 2 uses
  %i.ic = add i64 %i.ib, 1
  store i64 %i.ic, ptr %i.ht, align 8, !tbaa !27
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ib
  store i8 %i.hz, ptr %i.id, align 1, !tbaa !23
  %i.ie = load i32, ptr %i.hg, align 4, !tbaa !21 ; 2 uses
  %i.if = sub nsw i32 16, %i.ie
  %i.ig = lshr i32 %i.hk, %i.if
  %i.ih = trunc nuw i32 %i.ig to i16
  store i16 %i.ih, ptr %i.hm, align 8, !tbaa !20
  %i.ii = add nsw i32 %i.hf, -16
  %i.ij = add nsw i32 %i.ii, %i.ie
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.ik = add nsw i32 %i.hb, %i.hf
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge193 = phi i32 [ %i.ik, %bb.w ], [ %i.ij, %bb.v ]
  store i32 %storemerge193, ptr %i.hg, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_tr_tally(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5888 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 7 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !25
  %i.g = zext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  store i8 %i.a, ptr %i.h, align 1, !tbaa !23
  %i.i = lshr i32 %1, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.l = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.d, align 4, !tbaa !25
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  store i8 %i.j, ptr %i.o, align 1, !tbaa !23
  %i.p = trunc i32 %2 to i8
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.r = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.d, align 4, !tbaa !25
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  store i8 %i.p, ptr %i.u, align 1, !tbaa !23
  %i.v = icmp eq i32 %1, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.x = zext i32 %2 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i16, ptr %i.y, align 4, !tbaa !23
  %i.aa = add i16 %i.z, 1
  store i16 %i.aa, ptr %i.y, align 4, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !77
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !77
  %i.ae = add i32 %1, -1                          ; 2 uses
  %i.af = zext i32 %2 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !23
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr %0, i64 1240
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !23
  %i.am = add i16 %i.al, 1
  store i16 %i.am, ptr %i.ak, align 4, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.ao = icmp ult i32 %1, 257
  %i.ap = zext nneg i32 %i.ae to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.ap
  %i.ar = lshr i32 %i.ae, 7
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 256
  %.in.in = select i1 %i.ao, ptr %i.aq, ptr %i.au
  %.in = load i8, ptr %.in.in, align 1, !tbaa !23
  %i.av = zext i8 %.in to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.av ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !23
  %i.ay = add i16 %i.ax, 1
  store i16 %i.ay, ptr %i.aw, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.az = load i32, ptr %i.d, align 4, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !78
  %i.bc = icmp eq i32 %i.az, %i.bb
  %i.bd = zext i1 %i.bc to i32
  ret i32 %i.bd
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @send_tree(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #5 {
bb.a:
  %.not253 = icmp slt i32 %2, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !23   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0                      ; 2 uses
  %spec.select251 = select i1 %i.c, i32 138, i32 7
  %spec.select = select i1 %i.c, i32 3, i32 4
  %i.d = zext i16 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 28 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 32 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2820
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2822
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2818
  %i.p = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 2 uses
  %.0210258 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.ah ] ; 2 uses
  %.0211257 = phi i32 [ %i.d, %.lr.ph ], [ %i.t, %bb.ah ] ; 7 uses
  %.0212256 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.ah ] ; 5 uses
  %.1215255 = phi i32 [ %spec.select251, %.lr.ph ], [ %.2216, %bb.ah ] ; 2 uses
  %.1218254 = phi i32 [ %spec.select, %.lr.ph ], [ %.2219, %bb.ah ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !23   ; 2 uses
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = add nsw i32 %.0212256, 1                 ; 5 uses
  %i.v = icmp slt i32 %i.u, %.1215255
  %i.w = icmp eq i32 %.0211257, %i.t              ; 3 uses
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %i.u, %.1218254
  br i1 %i.x, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.c
  %i.y = zext nneg i32 %.0211257 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %.pre261 = load i32, ptr %i.f, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.g
  %i.ab = phi i32 [ %storemerge249, %bb.g ], [ %.pre261, %.preheader ] ; 3 uses
  %.1213 = phi i32 [ %i.bf, %bb.g ], [ %i.u, %.preheader ]
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !23
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = sub nsw i32 16, %i.ad
  %i.af = icmp sgt i32 %i.ab, %i.ae
  %i.ag = load i16, ptr %i.z, align 4, !tbaa !23
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = shl i32 %i.ah, %i.ab
  %i.aj = load i16, ptr %i.g, align 8, !tbaa !20
  %i.ak = trunc i32 %i.ai to i16
  %i.al = or i16 %i.aj, %i.ak                     ; 2 uses
  store i16 %i.al, ptr %i.g, align 8, !tbaa !20
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = trunc i16 %i.al to i8
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.i, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 %i.am, ptr %i.aq, align 1, !tbaa !23
  %i.ar = load i16, ptr %i.g, align 8, !tbaa !20
  %i.as = lshr i16 %i.ar, 8
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.av = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %i.i, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store i8 %i.at, ptr %i.ax, align 1, !tbaa !23
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.az = sub nsw i32 16, %i.ay
  %i.ba = lshr i32 %i.ah, %i.az
  %i.bb = trunc nuw i32 %i.ba to i16
  store i16 %i.bb, ptr %i.g, align 8, !tbaa !20
  %i.bc = add nsw i32 %i.ad, -16
  %i.bd = add nsw i32 %i.bc, %i.ay
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.be = add nsw i32 %i.ab, %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge249 = phi i32 [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 2 uses
  store i32 %storemerge249, ptr %i.f, align 4, !tbaa !21
  %i.bf = add nsw i32 %.1213, -1                  ; 2 uses
  %.not250 = icmp eq i32 %i.bf, 0
  br i1 %.not250, label %.loopexit, label %bb.d, !llvm.loop !79

bb.h:                                             ; preds = %bb.c
  %.not241 = icmp eq i32 %.0211257, 0
  %i.bg = load i32, ptr %i.f, align 4, !tbaa !21  ; 10 uses
  br i1 %.not241, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not245 = icmp eq i32 %.0211257, %.0210258
  br i1 %.not245, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = zext nneg i32 %.0211257 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bl = zext i16 %i.bk to i32                   ; 3 uses
  %i.bm = sub nsw i32 16, %i.bl
  %i.bn = icmp sgt i32 %i.bg, %i.bm
  %i.bo = load i16, ptr %i.bi, align 4, !tbaa !23
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = shl i32 %i.bp, %i.bg
  %i.br = load i16, ptr %i.g, align 8, !tbaa !20
  %i.bs = trunc i32 %i.bq to i16
  %i.bt = or i16 %i.br, %i.bs                     ; 2 uses
  store i16 %i.bt, ptr %i.g, align 8, !tbaa !20
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = trunc i16 %i.bt to i8
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.bw = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.i, align 8, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  store i8 %i.bu, ptr %i.by, align 1, !tbaa !23
  %i.bz = load i16, ptr %i.g, align 8, !tbaa !20
  %i.ca = lshr i16 %i.bz, 8
  %i.cb = trunc nuw i16 %i.ca to i8
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  store i8 %i.cb, ptr %i.cf, align 1, !tbaa !23
  %i.cg = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.ch = sub nsw i32 16, %i.cg
  %i.ci = lshr i32 %i.bp, %i.ch
  %i.cj = trunc nuw i32 %i.ci to i16
  store i16 %i.cj, ptr %i.g, align 8, !tbaa !20
  %i.ck = add nsw i32 %i.bl, -16
  %i.cl = add nsw i32 %i.ck, %i.cg
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cm = add nsw i32 %i.bg, %i.bl
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge246 = phi i32 [ %i.cm, %bb.l ], [ %i.cl, %bb.k ] ; 2 uses
  store i32 %storemerge246, ptr %i.f, align 4, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.cn = phi i32 [ %storemerge246, %bb.m ], [ %i.bg, %bb.i ] ; 3 uses
  %.2 = phi i32 [ %.0212256, %bb.m ], [ %i.u, %bb.i ]
  %i.co = load i16, ptr %i.k, align 2, !tbaa !23
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = sub nsw i32 16, %i.cp
  %i.cr = icmp sgt i32 %i.cn, %i.cq
  %i.cs = load i16, ptr %i.j, align 4, !tbaa !23
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = shl i32 %i.ct, %i.cn
  %i.cv = load i16, ptr %i.g, align 8, !tbaa !20
  %i.cw = trunc i32 %i.cu to i16
  %i.cx = or i16 %i.cv, %i.cw                     ; 3 uses
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 %i.cx, ptr %i.g, align 8, !tbaa !20
  %i.cy = trunc i16 %i.cx to i8
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.da = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.i, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da
  store i8 %i.cy, ptr %i.dc, align 1, !tbaa !23
  %i.dd = load i16, ptr %i.g, align 8, !tbaa !20
  %i.de = lshr i16 %i.dd, 8
  %i.df = trunc nuw i16 %i.de to i8
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.dh = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.i, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  store i8 %i.df, ptr %i.dj, align 1, !tbaa !23
  %i.dk = load i32, ptr %i.f, align 4, !tbaa !21  ; 2 uses
  %i.dl = sub nsw i32 16, %i.dk
  %i.dm = lshr i32 %i.ct, %i.dl
  %i.dn = trunc nuw i32 %i.dm to i16
  %i.do = add nsw i32 %i.cp, -16
  %i.dp = add nsw i32 %i.do, %i.dk
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dq = add nsw i32 %i.cn, %i.cp
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dr = phi i16 [ %i.cx, %bb.p ], [ %i.dn, %bb.o ] ; 2 uses
  %storemerge247 = phi i32 [ %i.dq, %bb.p ], [ %i.dp, %bb.o ] ; 5 uses
  store i32 %storemerge247, ptr %i.f, align 4, !tbaa !21
  %i.ds = icmp sgt i32 %storemerge247, 14
  %i.dt = add i32 %.2, 65533                      ; 3 uses
  br i1 %i.ds, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.du = and i32 %i.dt, 65535
  %i.dv = shl i32 %i.dt, %storemerge247
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = or i16 %i.dr, %i.dw                     ; 2 uses
  store i16 %i.dx, ptr %i.g, align 8, !tbaa !20
  %i.dy = trunc i16 %i.dx to i8
  %i.dz = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.ea = load i64, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.i, align 8, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ea
  store i8 %i.dy, ptr %i.ec, align 1, !tbaa !23
  %i.ed = load i16, ptr %i.g, align 8, !tbaa !20
end_hunk_2
