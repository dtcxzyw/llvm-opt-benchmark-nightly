inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManTestProblem:bb.a
  %i.ai = and <4 x i32> %i.ah, splat (i32 1)
  %i.aj = icmp eq <4 x i32> %vec.ind, splat (i32 3)
  %i.ak = select <4 x i1> %i.aj, <4 x i32> %broadcast.splat434, <4 x i32> splat (i32 1)
  %i.al = select <4 x i1> %i.ag, <4 x i32> %i.ai, <4 x i32> %i.ak
  %i.am = icmp eq <4 x i32> %broadcast.splat436, %i.al
  %i.an = select <4 x i1> %i.am, <4 x i32> splat (i32 1), <4 x i32> splat (i32 -1)
  %gep475 = getelementptr [4 x i8], ptr %invariant.gep474, i64 %index
  store <4 x i32> %i.an, ptr %gep475, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit116.loopexit, label %Gia_GetMValue.exit.us.preheader462

Gia_GetMValue.exit.us.preheader462:               ; preds = %Gia_GetMValue.exit.us.preheader, %middle.block
  %indvars.iv162.ph = phi i64 [ %i.ac, %Gia_GetMValue.exit.us.preheader ], [ %i.ad, %middle.block ]
  %.0106118.us.ph = phi i32 [ %i.x, %Gia_GetMValue.exit.us.preheader ], [ %i.af, %middle.block ]
  br label %Gia_GetMValue.exit.us

Gia_GetMValue.exit.us:                            ; preds = %Gia_GetMValue.exit.us.preheader462, %Gia_GetMValue.exit.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %Gia_GetMValue.exit.us ], [ %indvars.iv162.ph, %Gia_GetMValue.exit.us.preheader462 ] ; 2 uses
  %.0106118.us = phi i32 [ %i.aw, %Gia_GetMValue.exit.us ], [ %.0106118.us.ph, %Gia_GetMValue.exit.us.preheader462 ] ; 4 uses
  %i.ap = icmp samesign ult i32 %.0106118.us, 3
  %i.aq = lshr i32 %i.h, %.0106118.us
  %i.ar = and i32 %i.aq, 1
  %i.as = icmp eq i32 %.0106118.us, 3
  %spec.select = select i1 %i.as, i32 %., i32 1
  %.0.i109.us = select i1 %i.ap, i32 %i.ar, i32 %spec.select
  %i.at = icmp eq i32 %i.ab, %.0.i109.us
  %i.au = select i1 %i.at, i32 1, i32 -1
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv162
  store i32 %i.au, ptr %i.av, align 4, !tbaa !8
  %i.aw = add nuw nsw i32 %.0106118.us, 1         ; 2 uses
  %exitcond165.not = icmp eq i32 %i.aw, 7
  br i1 %exitcond165.not, label %.loopexit116.loopexit, label %Gia_GetMValue.exit.us, !llvm.loop !315

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ax = icmp eq i32 %.097129, 3
  %i.ay = sext i32 %.099128 to i64                ; 6 uses
  br i1 %i.ax, label %.lr.ph.split.split.us, label %Gia_GetMValue.exit.preheader

Gia_GetMValue.exit.preheader:                     ; preds = %.lr.ph.split
  %min.iters.check441 = icmp ult i32 %i.r, 3
  br i1 %min.iters.check441, label %Gia_GetMValue.exit.preheader463, label %vector.ph442

vector.ph442:                                     ; preds = %Gia_GetMValue.exit.preheader
  %n.vec443 = and i64 %i.t, 8589934588            ; 4 uses
  %i.az = add nsw i64 %n.vec443, %i.ay            ; 2 uses
  %i.ba = trunc i64 %n.vec443 to i32
  %i.bb = add i32 %i.x, %i.ba
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction450 = add nuw nsw <4 x i32> %broadcast.splat449, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep473 = getelementptr [4 x i8], ptr %i.l, i64 %i.ay
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph442
  %index452 = phi i64 [ 0, %vector.ph442 ], [ %index.next454, %vector.body451 ] ; 2 uses
  %vec.ind453 = phi <4 x i32> [ %induction450, %vector.ph442 ], [ %vec.ind.next455, %vector.body451 ] ; 4 uses
  %i.bc = icmp samesign ult <4 x i32> %vec.ind453, splat (i32 3)
  %i.bd = lshr <4 x i32> %broadcast.splat445, %vec.ind453
  %i.be = and <4 x i32> %i.bd, splat (i32 1)
  %i.bf = icmp eq <4 x i32> %vec.ind453, splat (i32 3)
  %i.bg = select <4 x i1> %i.bf, <4 x i32> %broadcast.splat447, <4 x i32> splat (i32 1)
  %i.bh = select <4 x i1> %i.bc, <4 x i32> %i.be, <4 x i32> %i.bg
  %i.bi = icmp eq <4 x i32> %i.bh, zeroinitializer
  %i.bj = select <4 x i1> %i.bi, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %gep = getelementptr [4 x i8], ptr %invariant.gep473, i64 %index452
  store <4 x i32> %i.bj, ptr %gep, align 4, !tbaa !8
  %index.next454 = add nuw i64 %index452, 4       ; 2 uses
  %vec.ind.next455 = add nuw nsw <4 x i32> %vec.ind453, splat (i32 4)
  %i.bk = icmp eq i64 %index.next454, %n.vec443
  br i1 %i.bk, label %middle.block456, label %vector.body451, !llvm.loop !316

middle.block456:                                  ; preds = %vector.body451
  %cmp.n457 = icmp eq i64 %i.t, %n.vec443
  br i1 %cmp.n457, label %.loopexit116.loopexit153, label %Gia_GetMValue.exit.preheader463

Gia_GetMValue.exit.preheader463:                  ; preds = %Gia_GetMValue.exit.preheader, %middle.block456
  %indvars.iv.ph = phi i64 [ %i.ay, %Gia_GetMValue.exit.preheader ], [ %i.az, %middle.block456 ]
  %.0106118.ph = phi i32 [ %i.x, %Gia_GetMValue.exit.preheader ], [ %i.bb, %middle.block456 ]
  br label %Gia_GetMValue.exit

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ay
  store i32 %i.m, ptr %i.bl, align 4, !tbaa !8
  %i.bm = getelementptr [4 x i8], ptr %i.l, i64 %i.ay
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  store i32 %i.n, ptr %i.bn, align 4, !tbaa !8
  %indvars.iv.next159.2 = add i32 %.099128, 3
  %i.bo = getelementptr [4 x i8], ptr %i.l, i64 %i.ay
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  store i32 %i.o, ptr %i.bp, align 4, !tbaa !8
  br label %.loopexit116

Gia_GetMValue.exit:                               ; preds = %Gia_GetMValue.exit.preheader463, %Gia_GetMValue.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Gia_GetMValue.exit ], [ %indvars.iv.ph, %Gia_GetMValue.exit.preheader463 ] ; 2 uses
  %.0106118 = phi i32 [ %i.bw, %Gia_GetMValue.exit ], [ %.0106118.ph, %Gia_GetMValue.exit.preheader463 ] ; 4 uses
  %i.bq = icmp samesign ult i32 %.0106118, 3
  %i.br = lshr i32 %i.h, %.0106118
  %i.bs = and i32 %i.br, 1
  %i.bt = icmp eq i32 %.0106118, 3
  %spec.select150 = select i1 %i.bt, i32 %.148, i32 1
  %.0.i109 = select i1 %i.bq, i32 %i.bs, i32 %spec.select150
  %.not = icmp eq i32 %.0.i109, 0
  %i.bu = select i1 %.not, i32 -1, i32 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !8
  %i.bw = add nuw nsw i32 %.0106118, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, 7
  br i1 %exitcond.not, label %.loopexit116.loopexit153, label %Gia_GetMValue.exit, !llvm.loop !317

bb.c:                                             ; preds = %.loopexit116
  %i.bx = select i1 %i.d, float -1.000000e+00, float 1.000000e+00
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv167
  store float %i.bx, ptr %i.by, align 4, !tbaa !318
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next168, 16
  br i1 %exitcond170.not, label %.preheader114, label %.preheader117, !llvm.loop !319

.preheader114:                                    ; preds = %bb.c, %.preheader114
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.preheader114 ], [ 0, %bb.c ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [400 x i8], ptr %i.a, i64 %indvars.iv175 ; 21 uses
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !8
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ca) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cd) ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !8
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cg) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cj) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cm = load i32, ptr %i.cl, align 16, !tbaa !8
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cm) ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cp) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cs) ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cv) ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cy = load i32, ptr %i.cx, align 16, !tbaa !8
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.cy) ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.db) ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !8
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.de) ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dh) ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.dk = load i32, ptr %i.dj, align 16, !tbaa !8
  %i.dl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dk) ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !8
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dn) ; 0 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !8
  %i.dr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dq) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bz, i64 60
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dt) ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !8
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dw) ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bz, i64 68
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.dz) ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !8
  %i.ed = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ec) ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bz, i64 76
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.eg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ef) ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.ei = load i32, ptr %i.eh, align 16, !tbaa !8
  %i.ej = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %i.ei) ; 0 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv175
  %i.el = load float, ptr %i.ek, align 4, !tbaa !318
  %i.em = fpext float %i.el to double
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, double noundef %i.em) ; 0 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, 16
  br i1 %exitcond178.not, label %.preheader112.preheader, label %.preheader114, !llvm.loop !320

.preheader112.preheader:                          ; preds = %.preheader114
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !318
  %.phi.trans.insert205 = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %.pre.a = load float, ptr %.phi.trans.insert205, align 4, !tbaa !318
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.fi = load <16 x float>, ptr %i.b, align 16
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.preheader, %bb.bb
  %i.fj = phi float [ %i.ow, %bb.bb ], [ %.pre.a, %.preheader112.preheader ] ; 2 uses
  %i.fk = phi float [ %i.ox, %bb.bb ], [ %.pre, %.preheader112.preheader ] ; 2 uses
  %.198145 = phi i32 [ %i.pa, %bb.bb ], [ 0, %.preheader112.preheader ] ; 2 uses
  %i.fl = phi <16 x float> [ %i.oy, %bb.bb ], [ %i.fi, %.preheader112.preheader ] ; 4 uses
  %i.fm = insertelement <16 x float> %i.fl, float %i.fk, i64 14
  %i.fn = insertelement <16 x float> %i.fm, float %i.fj, i64 15
  %0 = shufflevector <16 x float> %i.fl, <16 x float> %i.fn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 3 uses
  %i.fo = fcmp ogt <16 x float> %0, zeroinitializer
  %i.fp = fneg <16 x float> %0
  %i.fq = select <16 x i1> %i.fo, <16 x float> %0, <16 x float> %i.fp ; 16 uses
  %i.fr = extractelement <16 x float> %i.fq, i64 0
  %i.fs = fadd float %i.fr, 0.000000e+00
  %i.ft = extractelement <16 x float> %i.fq, i64 1
  %i.fu = fadd float %i.fs, %i.ft
  %i.fv = extractelement <16 x float> %i.fq, i64 2
  %i.fw = fadd float %i.fu, %i.fv
  %i.fx = extractelement <16 x float> %i.fq, i64 3
  %i.fy = fadd float %i.fw, %i.fx
  %i.fz = extractelement <16 x float> %i.fq, i64 4
  %i.ga = fadd float %i.fy, %i.fz
  %i.gb = extractelement <16 x float> %i.fq, i64 5
  %i.gc = fadd float %i.ga, %i.gb
  %i.gd = extractelement <16 x float> %i.fq, i64 6
  %i.ge = fadd float %i.gc, %i.gd
  %i.gf = extractelement <16 x float> %i.fq, i64 7
  %i.gg = fadd float %i.ge, %i.gf
  %i.gh = extractelement <16 x float> %i.fq, i64 8
  %i.gi = fadd float %i.gg, %i.gh
  %i.gj = extractelement <16 x float> %i.fq, i64 9
  %i.gk = fadd float %i.gi, %i.gj
  %i.gl = extractelement <16 x float> %i.fq, i64 10
  %i.gm = fadd float %i.gk, %i.gl
  %i.gn = extractelement <16 x float> %i.fq, i64 11
  %i.go = fadd float %i.gm, %i.gn
  %i.gp = extractelement <16 x float> %i.fq, i64 12
  %i.gq = fadd float %i.go, %i.gp
  %i.gr = extractelement <16 x float> %i.fq, i64 13
  %i.gs = fadd float %i.gq, %i.gr
  %i.gt = extractelement <16 x float> %i.fq, i64 14
  %i.gu = fadd float %i.gs, %i.gt
  %i.gv = extractelement <16 x float> %i.fq, i64 15
  %i.gw = fadd float %i.gu, %i.gv
  %i.gx = fpext float %i.gw to double
  %i.gy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %.198145, double noundef %i.gx) ; 0 uses
  %i.gz = load float, ptr %i.c, align 16, !tbaa !318
  %i.ha = fpext float %i.gz to double
  %i.hb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ha) ; 0 uses
  %i.hc = load float, ptr %i.eo, align 4, !tbaa !318
  %i.hd = fpext float %i.hc to double
  %i.he = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hd) ; 0 uses
  %i.hf = load float, ptr %i.ep, align 8, !tbaa !318
  %i.hg = fpext float %i.hf to double
  %i.hh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hg) ; 0 uses
  %i.hi = load float, ptr %i.eq, align 4, !tbaa !318
  %i.hj = fpext float %i.hi to double
  %i.hk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hj) ; 0 uses
  %i.hl = load float, ptr %i.er, align 16, !tbaa !318
  %i.hm = fpext float %i.hl to double
  %i.hn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hm) ; 0 uses
  %i.ho = load float, ptr %i.es, align 4, !tbaa !318
  %i.hp = fpext float %i.ho to double
  %i.hq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hp) ; 0 uses
  %i.hr = load float, ptr %i.et, align 8, !tbaa !318
  %i.hs = fpext float %i.hr to double
  %i.ht = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hs) ; 0 uses
  %i.hu = load float, ptr %i.eu, align 4, !tbaa !318
  %i.hv = fpext float %i.hu to double
  %i.hw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hv) ; 0 uses
  %i.hx = load float, ptr %i.ev, align 16, !tbaa !318
  %i.hy = fpext float %i.hx to double
  %i.hz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.hy) ; 0 uses
  %i.ia = load float, ptr %i.ew, align 4, !tbaa !318
  %i.ib = fpext float %i.ia to double
  %i.ic = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ib) ; 0 uses
  %i.id = load float, ptr %i.ex, align 8, !tbaa !318
  %i.ie = fpext float %i.id to double
  %i.if = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ie) ; 0 uses
  %i.ig = load float, ptr %i.ey, align 4, !tbaa !318
  %i.ih = fpext float %i.ig to double
  %i.ii = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ih) ; 0 uses
  %i.ij = load float, ptr %i.ez, align 16, !tbaa !318
  %i.ik = fpext float %i.ij to double
  %i.il = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ik) ; 0 uses
  %i.im = load float, ptr %i.fa, align 4, !tbaa !318
  %i.in = fpext float %i.im to double
  %i.io = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.in) ; 0 uses
  %i.ip = load float, ptr %i.fb, align 8, !tbaa !318
  %i.iq = fpext float %i.ip to double
  %i.ir = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.iq) ; 0 uses
  %i.is = load float, ptr %i.fc, align 4, !tbaa !318
  %i.it = fpext float %i.is to double
  %i.iu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.it) ; 0 uses
  %i.iv = load float, ptr %i.fd, align 16, !tbaa !318
  %i.iw = fpext float %i.iv to double
  %i.ix = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.iw) ; 0 uses
  %i.iy = load float, ptr %i.fe, align 4, !tbaa !318
  %i.iz = fpext float %i.iy to double
  %i.ja = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.iz) ; 0 uses
  %i.jb = load float, ptr %i.ff, align 8, !tbaa !318
  %i.jc = fpext float %i.jb to double
  %i.jd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.jc) ; 0 uses
  %i.je = load float, ptr %i.fg, align 4, !tbaa !318
  %i.jf = fpext float %i.je to double
  %i.jg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.jf) ; 0 uses
  %i.jh = load float, ptr %i.fh, align 16, !tbaa !318
  %i.ji = fpext float %i.jh to double
  %i.jj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, double noundef %i.ji) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader112, %.loopexit
  %i.jk = phi float [ %i.fj, %.preheader112 ], [ %i.ow, %.loopexit ]
  %i.jl = phi float [ %i.fk, %.preheader112 ], [ %i.ox, %.loopexit ]
  %indvars.iv199 = phi i64 [ 0, %.preheader112 ], [ %indvars.iv.next200, %.loopexit ] ; 4 uses
  %i.jm = phi <16 x float> [ %i.fl, %.preheader112 ], [ %i.oy, %.loopexit ]
  %i.jn = phi <16 x float> [ %i.fl, %.preheader112 ], [ %i.oz, %.loopexit ] ; 32 uses
  %i.jo = extractelement <16 x float> %i.jn, i64 15 ; 6 uses
  %i.jp = extractelement <16 x float> %i.jn, i64 14 ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv199 ; 16 uses
  %i.jq = load i32, ptr %invariant.gep, align 4, !tbaa !8 ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.js = extractelement <16 x float> %i.jn, i64 0
  %i.jt = fcmp ogt float %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.f, label %.thread

bb.e:                                             ; preds = %.preheader
  %i.ju = icmp ne i32 %i.jq, 0
  %i.jv = extractelement <16 x float> %i.jn, i64 0
  %i.jw = fcmp olt float %i.jv, 0.000000e+00
  %or.cond = select i1 %i.ju, i1 %i.jw, i1 false
  br i1 %or.cond, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.thread
  %.1 = phi i32 [ -1, %.thread ], [ 1, %bb.e ], [ 1, %bb.d ]
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 400
  %i.jx = load i32, ptr %gep.1, align 4, !tbaa !8 ; 2 uses
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.jz = icmp ne i32 %i.jx, 0
  %i.ka = extractelement <16 x float> %i.jn, i64 1
  %i.kb = fcmp olt float %i.ka, 0.000000e+00
  %or.cond383 = select i1 %i.jz, i1 %i.kb, i1 false
  br i1 %or.cond383, label %bb.i, label %.thread.1

bb.h:                                             ; preds = %bb.f
  %i.kc = extractelement <16 x float> %i.jn, i64 1
  %i.kd = fcmp ogt float %i.kc, 0.000000e+00
  br i1 %i.kd, label %bb.i, label %.thread.1

bb.i:                                             ; preds = %bb.g, %bb.h
  br label %.thread.1

.thread.1:                                        ; preds = %bb.g, %bb.h, %bb.i
  %.sink384 = phi i32 [ 1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ]
  %i.ke = add nsw i32 %.1, %.sink384
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 800
  %i.kf = load i32, ptr %gep.2, align 4, !tbaa !8 ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread.1
  %i.kh = icmp ne i32 %i.kf, 0
  %i.ki = extractelement <16 x float> %i.jn, i64 2
  %i.kj = fcmp olt float %i.ki, 0.000000e+00
  %or.cond385 = select i1 %i.kh, i1 %i.kj, i1 false
  br i1 %or.cond385, label %bb.l, label %.thread.2

bb.k:                                             ; preds = %.thread.1
  %i.kk = extractelement <16 x float> %i.jn, i64 2
  %i.kl = fcmp ogt float %i.kk, 0.000000e+00
  br i1 %i.kl, label %bb.l, label %.thread.2

bb.l:                                             ; preds = %bb.j, %bb.k
  br label %.thread.2

.thread.2:                                        ; preds = %bb.j, %bb.k, %bb.l
  %.sink386 = phi i32 [ 1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.j ]
  %i.km = add nsw i32 %i.ke, %.sink386
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1200
  %i.kn = load i32, ptr %gep.3, align 4, !tbaa !8 ; 2 uses
  %i.ko = icmp sgt i32 %i.kn, 0
  br i1 %i.ko, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread.2
  %i.kp = icmp ne i32 %i.kn, 0
  %i.kq = extractelement <16 x float> %i.jn, i64 3
  %i.kr = fcmp olt float %i.kq, 0.000000e+00
  %or.cond387 = select i1 %i.kp, i1 %i.kr, i1 false
  br i1 %or.cond387, label %bb.o, label %.thread.3

bb.n:                                             ; preds = %.thread.2
  %i.ks = extractelement <16 x float> %i.jn, i64 3
  %i.kt = fcmp ogt float %i.ks, 0.000000e+00
  br i1 %i.kt, label %bb.o, label %.thread.3

bb.o:                                             ; preds = %bb.m, %bb.n
  br label %.thread.3

.thread.3:                                        ; preds = %bb.m, %bb.n, %bb.o
  %.sink388 = phi i32 [ 1, %bb.o ], [ -1, %bb.n ], [ -1, %bb.m ]
  %i.ku = add nsw i32 %i.km, %.sink388
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1600
end_hunk_0
