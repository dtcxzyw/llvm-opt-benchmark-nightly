inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0_@choose_table_short:bb.a
bb.i:                                             ; preds = %bb.i, %bb.h
  %.04.i67 = phi i32 [ %.3.2.i, %bb.h ], [ %i.da, %bb.i ]
  %.0.i68 = phi ptr [ @cb_esc_buf, %bb.h ], [ %i.cu, %bb.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i68, i64 4 ; 2 uses
  %i.cv = load i32, ptr %.0.i68, align 4, !tbaa !4
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !25
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nsw i32 %.04.i67, %i.cz             ; 3 uses
  %i.db = icmp ult ptr %i.cu, %i.bs
  br i1 %i.db, label %bb.i, label %count_bit_noESC2.exit69, !llvm.loop !46

count_bit_noESC2.exit69:                          ; preds = %bb.i
  %i.dc = icmp sgt i32 %.048, %i.da
  %spec.select62 = select i1 %i.dc, i32 %i.cp, i32 %.050
  %spec.select63 = tail call i32 @llvm.smin.i32(i32 %.048, i32 %i.da)
  br label %bb.l

bb.j:                                             ; preds = %count_bit_short_noESC.exit
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 376), align 8, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.04.i70 = phi i32 [ %.3.2.i, %bb.j ], [ %i.dk, %bb.k ]
  %.0.i71 = phi ptr [ @cb_esc_buf, %bb.j ], [ %i.de, %bb.k ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i71, i64 4 ; 2 uses
  %i.df = load i32, ptr %.0.i71, align 4, !tbaa !4
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !25
  %i.dj = zext i8 %i.di to i32
  %i.dk = add nsw i32 %.04.i70, %i.dj             ; 3 uses
  %i.dl = icmp ult ptr %i.de, %i.bs
  br i1 %i.dl, label %bb.k, label %count_bit_noESC2.exit72, !llvm.loop !46

count_bit_noESC2.exit72:                          ; preds = %bb.k
  %i.dm = icmp sgt i32 %i.ca, %i.dk
  %spec.select64 = select i1 %i.dm, i32 15, i32 13
  %spec.select65 = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.dk)
  br label %bb.l

bb.l:                                             ; preds = %count_bit_noESC2.exit72, %count_bit_noESC2.exit69, %count_bit_short_noESC.exit
  %.151 = phi i32 [ %i.ae, %count_bit_short_noESC.exit ], [ %spec.select62, %count_bit_noESC2.exit69 ], [ %spec.select64, %count_bit_noESC2.exit72 ]
  %.149 = phi i32 [ %i.ca, %count_bit_short_noESC.exit ], [ %spec.select63, %count_bit_noESC2.exit69 ], [ %spec.select65, %count_bit_noESC2.exit72 ]
  %i.dn = load i32, ptr %2, align 4, !tbaa !4
  %i.do = add nsw i32 %i.dn, %.149
  br label %.thread87.sink.split

bb.m:                                             ; preds = %bb.b
  %i.dp = add nsw i32 %.2.i.lcssa, -15            ; 16 uses
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 580), align 4, !tbaa !47
  %.not = icmp slt i32 %i.dq, %i.dp
  br i1 %.not, label %bb.n, label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 604), align 4, !tbaa !47
  %.not.1 = icmp slt i32 %i.dr, %i.dp
  br i1 %.not.1, label %bb.o, label %.lr.ph.preheader

bb.o:                                             ; preds = %bb.n
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 628), align 4, !tbaa !47
  %.not.2 = icmp slt i32 %i.ds, %i.dp
  br i1 %.not.2, label %bb.p, label %.lr.ph.preheader

bb.p:                                             ; preds = %bb.o
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 652), align 4, !tbaa !47
  %.not.3 = icmp slt i32 %i.dt, %i.dp
  br i1 %.not.3, label %bb.q, label %.lr.ph.preheader

bb.q:                                             ; preds = %bb.p
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 676), align 4, !tbaa !47
  %.not.4 = icmp slt i32 %i.du, %i.dp
  br i1 %.not.4, label %bb.r, label %.lr.ph.preheader

bb.r:                                             ; preds = %bb.q
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 700), align 4, !tbaa !47
  %.not.5 = icmp slt i32 %i.dv, %i.dp
  br i1 %.not.5, label %bb.s, label %.lr.ph.preheader

bb.s:                                             ; preds = %bb.r
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 724), align 4, !tbaa !47
  %.not.6 = icmp slt i32 %i.dw, %i.dp
  br i1 %.not.6, label %bb.t, label %.lr.ph.preheader

bb.t:                                             ; preds = %bb.s
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 748), align 4, !tbaa !47
  %.not.7 = icmp slt i32 %i.dx, %i.dp
  br i1 %.not.7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %bb.n, %bb.t, %bb.o, %bb.r, %bb.p, %bb.s, %bb.q
  %.1.lcssa.ph = phi i32 [ 28, %bb.q ], [ 30, %bb.s ], [ 27, %bb.p ], [ 29, %bb.r ], [ 26, %bb.o ], [ 31, %bb.t ], [ 25, %bb.n ], [ 24, %bb.m ] ; 10 uses
  %i.dy = zext nneg i32 %.1.lcssa.ph to i64       ; 17 uses
  %i.dz = add nsw i64 %i.dy, -8                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !47
  %.not60 = icmp slt i32 %i.ec, %i.dp
  br i1 %.not60, label %bb.u, label %._crit_edge.loopexit.split.loop.exit

bb.u:                                             ; preds = %.lr.ph.preheader
  %indvars.iv.next = add nsw i64 %i.dy, -7        ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !47
  %.not60.1 = icmp slt i32 %i.ef, %i.dp
  br i1 %.not60.1, label %bb.v, label %._crit_edge.loopexit.split.loop.exit

bb.v:                                             ; preds = %.lr.ph.1
  %indvars.iv.next.1 = add nsw i64 %i.dy, -6      ; 3 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 24
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !47
  %.not60.2 = icmp slt i32 %i.ei, %i.dp
  br i1 %.not60.2, label %bb.w, label %._crit_edge.loopexit.split.loop.exit

bb.w:                                             ; preds = %.lr.ph.2
  %indvars.iv.next.2 = add nsw i64 %i.dy, -5      ; 3 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 24
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !47
  %.not60.3 = icmp slt i32 %i.el, %i.dp
  br i1 %.not60.3, label %bb.x, label %._crit_edge.loopexit.split.loop.exit

bb.x:                                             ; preds = %.lr.ph.3
  %indvars.iv.next.3 = add nsw i64 %i.dy, -4      ; 3 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 24
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.x
  %i.em = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.3
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !47
  %.not60.4 = icmp slt i32 %i.eo, %i.dp
  br i1 %.not60.4, label %bb.y, label %._crit_edge.loopexit.split.loop.exit

bb.y:                                             ; preds = %.lr.ph.4
  %indvars.iv.next.4 = add nsw i64 %i.dy, -3      ; 3 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 24
  br i1 %exitcond.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.y
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !47
  %.not60.5 = icmp slt i32 %i.er, %i.dp
  br i1 %.not60.5, label %bb.z, label %._crit_edge.loopexit.split.loop.exit

bb.z:                                             ; preds = %.lr.ph.5
  %indvars.iv.next.5 = add nsw i64 %i.dy, -2      ; 3 uses
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next.5, 24
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.z
  %i.es = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.5
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !47
  %.not60.6 = icmp slt i32 %i.eu, %i.dp
  br i1 %.not60.6, label %bb.aa, label %._crit_edge.loopexit.split.loop.exit

bb.aa:                                            ; preds = %.lr.ph.6
  %indvars.iv.next.6 = add nsw i64 %i.dy, -1      ; 3 uses
  %exitcond.not.6 = icmp eq i64 %indvars.iv.next.6, 24
  br i1 %exitcond.not.6, label %._crit_edge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %indvars.iv.next.6
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !47
  %.not60.7 = icmp slt i32 %i.ex, %i.dp
  br i1 %.not60.7, label %._crit_edge, label %._crit_edge.loopexit.split.loop.exit

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.dz, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ], [ %indvars.iv.next.3, %.lr.ph.4 ], [ %indvars.iv.next.4, %.lr.ph.5 ], [ %indvars.iv.next.5, %.lr.ph.6 ], [ %indvars.iv.next.6, %.lr.ph.7 ]
  %i.ey = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %.lr.ph.7, %._crit_edge.loopexit.split.loop.exit, %bb.t
  %.1.lcssa118 = phi i32 [ 32, %bb.t ], [ %.1.lcssa.ph, %._crit_edge.loopexit.split.loop.exit ], [ %.1.lcssa.ph, %.lr.ph.7 ], [ %.1.lcssa.ph, %bb.aa ], [ %.1.lcssa.ph, %bb.z ], [ %.1.lcssa.ph, %bb.y ], [ %.1.lcssa.ph, %bb.x ], [ %.1.lcssa.ph, %bb.w ], [ %.1.lcssa.ph, %bb.v ], [ %.1.lcssa.ph, %bb.u ]
  %.pre-phi = phi i64 [ 32, %bb.t ], [ %i.dy, %._crit_edge.loopexit.split.loop.exit ], [ %i.dy, %.lr.ph.7 ], [ %i.dy, %bb.aa ], [ %i.dy, %bb.z ], [ %i.dy, %bb.y ], [ %i.dy, %bb.x ], [ %i.dy, %bb.w ], [ %i.dy, %bb.v ], [ %i.dy, %bb.u ]
  %.2.lcssa = phi i32 [ 24, %bb.t ], [ %i.ey, %._crit_edge.loopexit.split.loop.exit ], [ 24, %.lr.ph.7 ], [ 24, %bb.aa ], [ 24, %bb.z ], [ 24, %bb.y ], [ 24, %bb.x ], [ 24, %bb.w ], [ 24, %bb.v ], [ 24, %bb.u ] ; 2 uses
  %i.ez = zext nneg i32 %.2.lcssa to i64
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !48 ; 6 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr @ht, i64 %.pre-phi
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !48 ; 6 uses
  %i.fe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 400), align 16, !tbaa !41 ; 3 uses
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 592), align 16, !tbaa !41 ; 3 uses
  %scevgep.i = getelementptr i8, ptr %0, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %._crit_edge
  %indvars.iv.i = phi ptr [ %scevgep67.i, %bb.an ], [ %scevgep.i, %._crit_edge ] ; 2 uses
  %.052.i = phi ptr [ %i.hz, %bb.an ], [ %0, %._crit_edge ] ; 6 uses
  %.048.i = phi i32 [ %.351.2.i, %bb.an ], [ 0, %._crit_edge ] ; 2 uses
  %.042.i = phi i32 [ %i.hu, %bb.an ], [ 0, %._crit_edge ] ; 2 uses
  %.039.i = phi i32 [ %i.hy, %bb.an ], [ 0, %._crit_edge ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.052.i, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.052.i, i64 4
  %i.fj = load i32, ptr %.052.i, align 4, !tbaa !4 ; 3 uses
  %.not.i73 = icmp eq i32 %i.fj, 0
  br i1 %.not.i73, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = add nsw i32 %.048.i, 1
  %i.fl = icmp sgt i32 %i.fj, 14                  ; 2 uses
  %i.fm = select i1 %i.fl, i32 %i.fb, i32 0
  %.244.i = add nsw i32 %i.fm, %.042.i
  %i.fn = select i1 %i.fl, i32 %i.fd, i32 0
  %.241.i = add nsw i32 %i.fn, %.039.i
  %i.fo = tail call i32 @llvm.smin.i32(i32 %i.fj, i32 15)
  %i.fp = shl i32 %i.fo, 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.250.i = phi i32 [ %i.fk, %bb.ac ], [ %.048.i, %bb.ab ] ; 2 uses
  %.345.i = phi i32 [ %.244.i, %bb.ac ], [ %.042.i, %bb.ab ] ; 2 uses
  %.3.i74 = phi i32 [ %.241.i, %bb.ac ], [ %.039.i, %bb.ab ] ; 2 uses
  %.1.i = phi i32 [ %i.fp, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %.not59.i = icmp eq i32 %i.fh, 0
  br i1 %.not59.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = add nsw i32 %.250.i, 1
  %i.fr = icmp sgt i32 %i.fh, 14                  ; 3 uses
  %i.fs = select i1 %i.fr, i32 %i.fb, i32 0
  %.446.i = add nsw i32 %.345.i, %i.fs
  %i.ft = select i1 %i.fr, i32 %i.fd, i32 0
  %.4.i = add nsw i32 %.3.i74, %i.ft
  %.037.i = select i1 %i.fr, i32 15, i32 %i.fh
  %i.fu = add nsw i32 %.1.i, %.037.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.351.i = phi i32 [ %i.fq, %bb.ae ], [ %.250.i, %bb.ad ] ; 2 uses
  %.547.i = phi i32 [ %.446.i, %bb.ae ], [ %.345.i, %bb.ad ]
  %.5.i = phi i32 [ %.4.i, %bb.ae ], [ %.3.i74, %bb.ad ]
  %.2.i75 = phi i32 [ %i.fu, %bb.ae ], [ %.1.i, %bb.ad ]
  %i.fv = sext i32 %.2.i75 to i64                 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fe, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !25
  %i.fy = zext i8 %i.fx to i32
  %i.fz = add nsw i32 %.547.i, %i.fy              ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.ff, i64 %i.fv
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !25
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %.5.i, %i.gc                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.052.i, i64 16
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.052.i, i64 8
  %i.gh = load i32, ptr %i.fi, align 4, !tbaa !4  ; 3 uses
  %.not.1.i76 = icmp eq i32 %i.gh, 0
  br i1 %.not.1.i76, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = add nsw i32 %.351.i, 1
  %i.gj = icmp sgt i32 %i.gh, 14                  ; 2 uses
  %i.gk = select i1 %i.gj, i32 %i.fb, i32 0
  %.244.1.i = add nsw i32 %i.gk, %i.fz
  %i.gl = select i1 %i.gj, i32 %i.fd, i32 0
  %.241.1.i = add nsw i32 %i.gl, %i.gd
  %i.gm = tail call i32 @llvm.smin.i32(i32 %i.gh, i32 15)
  %i.gn = shl i32 %i.gm, 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.250.1.i = phi i32 [ %i.gi, %bb.ag ], [ %.351.i, %bb.af ] ; 2 uses
  %.345.1.i = phi i32 [ %.244.1.i, %bb.ag ], [ %i.fz, %bb.af ] ; 2 uses
  %.3.1.i77 = phi i32 [ %.241.1.i, %bb.ag ], [ %i.gd, %bb.af ] ; 2 uses
  %.1.1.i = phi i32 [ %i.gn, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %.not59.1.i = icmp eq i32 %i.gf, 0
  br i1 %.not59.1.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = add nsw i32 %.250.1.i, 1
  %i.gp = icmp sgt i32 %i.gf, 14                  ; 3 uses
  %i.gq = select i1 %i.gp, i32 %i.fb, i32 0
  %.446.1.i = add nsw i32 %.345.1.i, %i.gq
  %i.gr = select i1 %i.gp, i32 %i.fd, i32 0
  %.4.1.i = add nsw i32 %.3.1.i77, %i.gr
  %.037.1.i = select i1 %i.gp, i32 15, i32 %i.gf
  %i.gs = add nsw i32 %.1.1.i, %.037.1.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.351.1.i = phi i32 [ %i.go, %bb.ai ], [ %.250.1.i, %bb.ah ] ; 2 uses
  %.547.1.i = phi i32 [ %.446.1.i, %bb.ai ], [ %.345.1.i, %bb.ah ]
  %.5.1.i = phi i32 [ %.4.1.i, %bb.ai ], [ %.3.1.i77, %bb.ah ]
  %.2.1.i78 = phi i32 [ %i.gs, %bb.ai ], [ %.1.1.i, %bb.ah ]
  %i.gt = sext i32 %.2.1.i78 to i64               ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.fe, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !25
  %i.gw = zext i8 %i.gv to i32
  %i.gx = add nsw i32 %.547.1.i, %i.gw            ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.ff, i64 %i.gt
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !25
  %i.ha = zext i8 %i.gz to i32
  %i.hb = add nsw i32 %.5.1.i, %i.ha              ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.052.i, i64 20
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4  ; 3 uses
  %i.he = load i32, ptr %i.gg, align 4, !tbaa !4  ; 3 uses
  %.not.2.i79 = icmp eq i32 %i.he, 0
  br i1 %.not.2.i79, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hf = add nsw i32 %.351.1.i, 1
  %i.hg = icmp sgt i32 %i.he, 14                  ; 2 uses
  %i.hh = select i1 %i.hg, i32 %i.fb, i32 0
  %.244.2.i = add nsw i32 %i.hh, %i.gx
  %i.hi = select i1 %i.hg, i32 %i.fd, i32 0
  %.241.2.i = add nsw i32 %i.hi, %i.hb
  %i.hj = tail call i32 @llvm.smin.i32(i32 %i.he, i32 15)
  %i.hk = shl i32 %i.hj, 4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.250.2.i = phi i32 [ %i.hf, %bb.ak ], [ %.351.1.i, %bb.aj ] ; 2 uses
  %.345.2.i = phi i32 [ %.244.2.i, %bb.ak ], [ %i.gx, %bb.aj ] ; 2 uses
  %.3.2.i80 = phi i32 [ %.241.2.i, %bb.ak ], [ %i.hb, %bb.aj ] ; 2 uses
  %.1.2.i = phi i32 [ %i.hk, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %.not59.2.i = icmp eq i32 %i.hd, 0
  br i1 %.not59.2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hl = add nsw i32 %.250.2.i, 1
  %i.hm = icmp sgt i32 %i.hd, 14                  ; 3 uses
  %i.hn = select i1 %i.hm, i32 %i.fb, i32 0
  %.446.2.i = add nsw i32 %.345.2.i, %i.hn
  %i.ho = select i1 %i.hm, i32 %i.fd, i32 0
  %.4.2.i = add nsw i32 %.3.2.i80, %i.ho
  %.037.2.i = select i1 %i.hm, i32 15, i32 %i.hd
  %i.hp = add nsw i32 %.1.2.i, %.037.2.i
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.351.2.i = phi i32 [ %i.hl, %bb.am ], [ %.250.2.i, %bb.al ] ; 2 uses
  %.547.2.i = phi i32 [ %.446.2.i, %bb.am ], [ %.345.2.i, %bb.al ]
  %.5.2.i = phi i32 [ %.4.2.i, %bb.am ], [ %.3.2.i80, %bb.al ]
  %.2.2.i81 = phi i32 [ %i.hp, %bb.am ], [ %.1.2.i, %bb.al ]
  %i.hq = sext i32 %.2.2.i81 to i64               ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %i.fe, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !25
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nsw i32 %.547.2.i, %i.ht            ; 3 uses
  %i.hv = getelementptr inbounds i8, ptr %i.ff, i64 %i.hq
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !25
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nsw i32 %.5.2.i, %i.hx              ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %indvars.iv.i, i64 16 ; 2 uses
  %i.ia = icmp ult ptr %i.hz, %1
  %scevgep67.i = getelementptr i8, ptr %indvars.iv.i, i64 24
  br i1 %i.ia, label %bb.ab, label %count_bit_short_ESC.exit, !llvm.loop !49

count_bit_short_ESC.exit:                         ; preds = %bb.an
  %i.ib = icmp sgt i32 %i.hu, %i.hy
  %spec.select.i82 = select i1 %i.ib, i32 %.1.lcssa118, i32 %.2.lcssa
  %spec.select60.i = tail call i32 @llvm.smin.i32(i32 %i.hu, i32 %i.hy)
  %i.ic = add nsw i32 %spec.select60.i, %.351.2.i
  %i.id = load i32, ptr %2, align 4, !tbaa !4
  %i.ie = add nsw i32 %i.ic, %i.id
  br label %.thread87.sink.split

.thread87.sink.split:                             ; preds = %ix_max.exit, %count_bit_short_ESC.exit, %bb.l
  %.sink = phi i32 [ %i.do, %bb.l ], [ %i.ie, %count_bit_short_ESC.exit ], [ 100000, %ix_max.exit ]
  %.052.ph = phi i32 [ %.151, %bb.l ], [ %spec.select.i82, %count_bit_short_ESC.exit ], [ -1, %ix_max.exit ]
  store i32 %.sink, ptr %2, align 4, !tbaa !4
  br label %.thread87

.thread87:                                        ; preds = %.thread87.sink.split, %bb.a, %bb.c
  %.052 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.052.ph, %.thread87.sink.split ]
  ret i32 %.052
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @best_huffman_divide(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [25 x i32], align 16              ; 54 uses
  %i.c = alloca [25 x i32], align 16              ; 31 uses
  %4 = alloca %struct.gr_info, align 8            ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %i.f = shl i32 %i.e, 1                          ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, %i.h                       ; 21 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l ; 21 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 8), align 4, !tbaa !4 ; 2 uses
  %i.o = icmp sgt i32 %i.n, %i.f
  %.0.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.lcssa.sroa.gep108 = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %.0.lcssa.sroa.gep110 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.0.lcssa.sroa.gep111 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.lcssa.sroa.gep112 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.0.lcssa.sroa.gep113 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.0.lcssa.sroa.gep114 = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %.0.lcssa.sroa.gep115 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.0.lcssa.sroa.gep116 = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.0.lcssa.sroa.gep117 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.0.lcssa.sroa.gep118 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.0.lcssa.sroa.gep119 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.0.lcssa.sroa.gep120 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.0.lcssa.sroa.gep121 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.0.lcssa.sroa.gep122 = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.0.lcssa.sroa.gep123 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.0.lcssa.sroa.gep124 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.0.lcssa.sroa.gep125 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.0.lcssa.sroa.gep126 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.0.lcssa.sroa.gep127 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.0.lcssa.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  br i1 %i.o, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.lcssa.sroa.gep109 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.k, ptr %i.p, align 8, !tbaa !4
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %3, i64 %i.q
  %i.s = call fastcc i32 @choose_table(ptr noundef %i.r, ptr noundef %i.m, ptr noundef %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.s, ptr %i.t, align 8, !tbaa !4
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 12), align 4, !tbaa !4 ; 2 uses
  %i.v = icmp sgt i32 %i.u, %i.f
  br i1 %i.v, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 %i.k, ptr %i.w, align 4, !tbaa !4
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %3, i64 %i.x
  %i.z = call fastcc i32 @choose_table(ptr noundef %i.y, ptr noundef %i.m, ptr noundef %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 16), align 4, !tbaa !4 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.f
  br i1 %i.ac, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 %i.k, ptr %i.ad, align 16, !tbaa !4
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ae
  %i.ag = call fastcc i32 @choose_table(ptr noundef %i.af, ptr noundef %i.m, ptr noundef %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ag, ptr %i.ah, align 16, !tbaa !4
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 20), align 4, !tbaa !4 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, %i.f
  br i1 %i.aj, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i32 %i.k, ptr %i.ak, align 4, !tbaa !4
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %3, i64 %i.al
  %i.an = call fastcc i32 @choose_table(ptr noundef %i.am, ptr noundef %i.m, ptr noundef %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !4
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 24), align 4, !tbaa !4 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.f
  br i1 %i.aq, label %.lr.ph.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i32 %i.k, ptr %i.ar, align 8, !tbaa !4
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %3, i64 %i.as
  %i.au = call fastcc i32 @choose_table(ptr noundef %i.at, ptr noundef %i.m, ptr noundef %i.ar)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.au, ptr %i.av, align 8, !tbaa !4
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 28), align 4, !tbaa !4 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, %i.f
  br i1 %i.ax, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  store i32 %i.k, ptr %i.ay, align 4, !tbaa !4
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %i.az
  %i.bb = call fastcc i32 @choose_table(ptr noundef %i.ba, ptr noundef %i.m, ptr noundef %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !4
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 32), align 4, !tbaa !4 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %i.f
  br i1 %i.be, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i32 %i.k, ptr %i.bf, align 16, !tbaa !4
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bg
  %i.bi = call fastcc i32 @choose_table(ptr noundef %i.bh, ptr noundef %i.m, ptr noundef %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.bi, ptr %i.bj, align 16, !tbaa !4
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 36), align 4, !tbaa !4 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, %i.f
  br i1 %i.bl, label %.lr.ph.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 %i.k, ptr %i.bm, align 4, !tbaa !4
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bn
  %i.bp = call fastcc i32 @choose_table(ptr noundef %i.bo, ptr noundef %i.m, ptr noundef %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !4
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 40), align 4, !tbaa !4 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, %i.f
  br i1 %i.bs, label %.lr.ph.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 %i.k, ptr %i.bt, align 8, !tbaa !4
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bu
  %i.bw = call fastcc i32 @choose_table(ptr noundef %i.bv, ptr noundef %i.m, ptr noundef %i.bt)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !4
  %i.by = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 44), align 4, !tbaa !4 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, %i.f
  br i1 %i.bz, label %.lr.ph.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  store i32 %i.k, ptr %i.ca, align 4, !tbaa !4
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cb
  %i.cd = call fastcc i32 @choose_table(ptr noundef %i.cc, ptr noundef %i.m, ptr noundef %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !4
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 48), align 4, !tbaa !4 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, %i.f
  br i1 %i.cg, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i32 %i.k, ptr %i.ch, align 16, !tbaa !4
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ci
  %i.ck = call fastcc i32 @choose_table(ptr noundef %i.cj, ptr noundef %i.m, ptr noundef %i.ch)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 48
end_hunk_0
