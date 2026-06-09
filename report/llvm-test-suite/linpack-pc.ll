inline.NumInlined: 42
begin_hunk_0_@main:bb.a
  %wide.load530.2 = load <4 x float>, ptr %i.ah, align 4, !tbaa !11
  %wide.load531.2 = load <4 x float>, ptr %i.ai, align 4, !tbaa !11
  %i.aj = fadd <4 x float> %wide.load.2882, %wide.load530.2 ; 2 uses
  %i.ak = fadd <4 x float> %wide.load529.2885, %wide.load531.2 ; 2 uses
  %i.al = getelementptr i8, ptr %invariant.gep82.i, i64 96
  %i.am = getelementptr i8, ptr %invariant.gep82.i, i64 112
  %wide.load530.3 = load <4 x float>, ptr %i.al, align 4, !tbaa !11
  %wide.load531.3 = load <4 x float>, ptr %i.am, align 4, !tbaa !11
  %i.an = fadd <4 x float> %wide.load.3888, %wide.load530.3 ; 2 uses
  %i.ao = fadd <4 x float> %wide.load529.3891, %wide.load531.3 ; 2 uses
  %i.ap = getelementptr i8, ptr %invariant.gep82.i, i64 128
  %i.aq = getelementptr i8, ptr %invariant.gep82.i, i64 144
  %wide.load530.4 = load <4 x float>, ptr %i.ap, align 4, !tbaa !11
  %wide.load531.4 = load <4 x float>, ptr %i.aq, align 4, !tbaa !11
  %i.ar = fadd <4 x float> %wide.load.4894, %wide.load530.4 ; 2 uses
  %i.as = fadd <4 x float> %wide.load529.4897, %wide.load531.4 ; 2 uses
  %i.at = getelementptr i8, ptr %invariant.gep82.i, i64 160
  %i.au = getelementptr i8, ptr %invariant.gep82.i, i64 176
  %wide.load530.5 = load <4 x float>, ptr %i.at, align 4, !tbaa !11
  %wide.load531.5 = load <4 x float>, ptr %i.au, align 4, !tbaa !11
  %i.av = fadd <4 x float> %wide.load.5900, %wide.load530.5 ; 2 uses
  %i.aw = fadd <4 x float> %wide.load529.5903, %wide.load531.5 ; 2 uses
  %i.ax = getelementptr i8, ptr %invariant.gep82.i, i64 192
  %i.ay = getelementptr i8, ptr %invariant.gep82.i, i64 208
  %wide.load530.6 = load <4 x float>, ptr %i.ax, align 4, !tbaa !11
  %wide.load531.6 = load <4 x float>, ptr %i.ay, align 4, !tbaa !11
  %i.az = fadd <4 x float> %wide.load.6906, %wide.load530.6 ; 2 uses
  %i.ba = fadd <4 x float> %wide.load529.6909, %wide.load531.6 ; 2 uses
  %i.bb = getelementptr i8, ptr %invariant.gep82.i, i64 224
  %i.bc = getelementptr i8, ptr %invariant.gep82.i, i64 240
  %wide.load530.7 = load <4 x float>, ptr %i.bb, align 4, !tbaa !11
  %wide.load531.7 = load <4 x float>, ptr %i.bc, align 4, !tbaa !11
  %i.bd = fadd <4 x float> %wide.load.7912, %wide.load530.7 ; 2 uses
  %i.be = fadd <4 x float> %wide.load529.7915, %wide.load531.7 ; 2 uses
  %i.bf = getelementptr i8, ptr %invariant.gep82.i, i64 256
  %i.bg = getelementptr i8, ptr %invariant.gep82.i, i64 272
  %wide.load530.8 = load <4 x float>, ptr %i.bf, align 4, !tbaa !11
  %wide.load531.8 = load <4 x float>, ptr %i.bg, align 4, !tbaa !11
  %i.bh = fadd <4 x float> %wide.load.8918, %wide.load530.8 ; 2 uses
  %i.bi = fadd <4 x float> %wide.load529.8921, %wide.load531.8 ; 2 uses
  %i.bj = getelementptr i8, ptr %invariant.gep82.i, i64 288
  %i.bk = getelementptr i8, ptr %invariant.gep82.i, i64 304
  %wide.load530.9 = load <4 x float>, ptr %i.bj, align 4, !tbaa !11
  %wide.load531.9 = load <4 x float>, ptr %i.bk, align 4, !tbaa !11
  %i.bl = fadd <4 x float> %wide.load.9924, %wide.load530.9 ; 2 uses
  %i.bm = fadd <4 x float> %wide.load529.9927, %wide.load531.9 ; 2 uses
  %i.bn = getelementptr i8, ptr %invariant.gep82.i, i64 320
  %i.bo = getelementptr i8, ptr %invariant.gep82.i, i64 336
  %wide.load530.10 = load <4 x float>, ptr %i.bn, align 4, !tbaa !11
  %wide.load531.10 = load <4 x float>, ptr %i.bo, align 4, !tbaa !11
  %i.bp = fadd <4 x float> %wide.load.10930, %wide.load530.10 ; 2 uses
  %i.bq = fadd <4 x float> %wide.load529.10933, %wide.load531.10 ; 2 uses
  %i.br = getelementptr i8, ptr %invariant.gep82.i, i64 352
  %i.bs = getelementptr i8, ptr %invariant.gep82.i, i64 368
  %wide.load530.11 = load <4 x float>, ptr %i.br, align 4, !tbaa !11
  %wide.load531.11 = load <4 x float>, ptr %i.bs, align 4, !tbaa !11
  %i.bt = fadd <4 x float> %wide.load.11936, %wide.load530.11 ; 2 uses
  %i.bu = fadd <4 x float> %wide.load529.11939, %wide.load531.11 ; 2 uses
  %gep83.i = getelementptr i8, ptr %invariant.gep82.i, i64 384
  %i.bv = load float, ptr %gep83.i, align 4, !tbaa !11
  %i.bw = fadd float %i.y, %i.bv                  ; 2 uses
  %gep83.i.1 = getelementptr i8, ptr %invariant.gep82.i, i64 388
  %i.bx = load float, ptr %gep83.i.1, align 4, !tbaa !11
  %i.by = fadd float %i.x, %i.bx                  ; 2 uses
  %gep83.i.2 = getelementptr i8, ptr %invariant.gep82.i, i64 392
  %i.bz = load float, ptr %gep83.i.2, align 4, !tbaa !11
  %i.ca = fadd float %i.w, %i.bz                  ; 2 uses
  %gep83.i.3 = getelementptr i8, ptr %invariant.gep82.i, i64 396
  %i.cb = load float, ptr %gep83.i.3, align 4, !tbaa !11
  %i.cc = fadd float %i.v, %i.cb                  ; 2 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, 100
  br i1 %exitcond81.not.i, label %matgen.exit, label %.preheader.us.i, !llvm.loop !16

matgen.exit:                                      ; preds = %.preheader.us.i
  store <4 x float> %i.ab, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.ac, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.af, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.ag, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.aj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.ak, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.an, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.ao, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.as, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.av, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.aw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.az, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.ba, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.bd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.be, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.bh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.bi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.bl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.bm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.bp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.bq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.bt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.bu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.bw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.by, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.ca, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.cc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  %i.cd = tail call i64 @clock() #12
  %i.ce = sitofp i64 %i.cd to float
  %i.cf = fdiv float %i.ce, 1.000000e+06
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info)
  %i.cg = tail call i64 @clock() #12
  %i.ch = sitofp i64 %i.cg to float
  %i.ci = fdiv float %i.ch, 1.000000e+06
  %i.cj = fsub float %i.ci, %i.cf
  store float %i.cj, ptr @atime, align 16, !tbaa !11
  %i.ck = tail call i64 @clock() #12
  br label %bb.c

bb.c:                                             ; preds = %daxpy.exit.i, %matgen.exit
  %indvars.iv146.i = phi i64 [ 0, %matgen.exit ], [ %indvars.iv.next147.i, %daxpy.exit.i ] ; 7 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.cn ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !11 ; 4 uses
  %i.cq = zext i32 %i.cm to i64
  %.not103.i = icmp eq i64 %indvars.iv146.i, %i.cq
  br i1 %.not103.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11
  store float %i.cs, ptr %i.co, align 4, !tbaa !11
  store float %i.cp, ptr %i.cr, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 3 uses
  %i.ct = mul nuw nsw i64 %indvars.iv146.i, 808
  %i.cu = getelementptr i8, ptr @main.a, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 4      ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i ; 2 uses
  %i.cx = fcmp oeq float %i.cp, 0.000000e+00
  br i1 %i.cx, label %daxpy.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = sub nuw nsw i64 99, %indvars.iv146.i    ; 3 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv146.i, 91
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph533

vector.ph533:                                     ; preds = %bb.f
  %n.vec = and i64 %i.cy, 120                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph533
  %index535 = phi i64 [ 0, %vector.ph533 ], [ %index.next540, %vector.body534 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index535 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load536 = load <4 x float>, ptr %i.cz, align 4, !tbaa !11
  %wide.load537 = load <4 x float>, ptr %i.da, align 4, !tbaa !11
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index535 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load538 = load <4 x float>, ptr %i.db, align 4, !tbaa !11
  %wide.load539 = load <4 x float>, ptr %i.dc, align 4, !tbaa !11
  %i.dd = fmul <4 x float> %broadcast.splat, %wide.load538
  %i.de = fmul <4 x float> %broadcast.splat, %wide.load539
  %i.df = fadd <4 x float> %wide.load536, %i.dd
  %i.dg = fadd <4 x float> %wide.load537, %i.de
  store <4 x float> %i.df, ptr %i.cz, align 4, !tbaa !11
  store <4 x float> %i.dg, ptr %i.da, align 4, !tbaa !11
  %index.next540 = add nuw i64 %index535, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next540, %n.vec
  br i1 %i.dh, label %middle.block541, label %vector.body534, !llvm.loop !17

middle.block541:                                  ; preds = %vector.body534
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %daxpy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %middle.block541
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block541 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !11
  %i.dm = fmul float %i.cp, %i.dl
  %i.dn = fadd float %i.dj, %i.dm
  store float %i.dn, ptr %i.di, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cy
  br i1 %exitcond.not.i.i, label %daxpy.exit.i, label %.lr.ph.i.i, !llvm.loop !20

daxpy.exit.i:                                     ; preds = %.lr.ph.i.i, %middle.block541, %bb.e
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, 99
  br i1 %exitcond150.not.i, label %.lr.ph136.i, label %bb.c, !llvm.loop !21

.lr.ph136.i:                                      ; preds = %daxpy.exit.i, %daxpy.exit110.i
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %daxpy.exit110.i ], [ 0, %daxpy.exit.i ] ; 4 uses
  %0 = sub nsw i64 99, %indvars.iv151.i           ; 3 uses
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.do = sub nuw nsw i64 99, %indvars.iv151.i    ; 5 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.do ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !11
  %i.dr = getelementptr [4 x i8], ptr @main.a, i64 %i.do
  %i.ds = mul nuw nsw i64 %i.do, 804
  %i.dt = getelementptr i8, ptr %i.dr, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !11
  %i.dv = fdiv float %i.dq, %i.du                 ; 4 uses
  store float %i.dv, ptr %i.dp, align 4, !tbaa !11
  %.idx = mul nuw nsw i64 %i.do, 804
  %i.dw = getelementptr inbounds nuw i8, ptr @main.a, i64 %.idx ; 2 uses
  %i.dx = icmp samesign ugt i64 %indvars.iv151.i, 98
  %i.dy = fcmp oeq float %i.dv, 0.000000e+00
  %or.cond41.i104.i = or i1 %i.dx, %i.dy
  br i1 %or.cond41.i104.i, label %daxpy.exit110.i, label %.lr.ph.i106.i.preheader

.lr.ph.i106.i.preheader:                          ; preds = %.lr.ph136.i
  %min.iters.check543 = icmp ult i64 %0, 8
  br i1 %min.iters.check543, label %.lr.ph.i106.i.preheader829, label %vector.ph544

vector.ph544:                                     ; preds = %.lr.ph.i106.i.preheader
  %n.vec546 = and i64 %0, -8                      ; 3 uses
  %broadcast.splatinsert547 = insertelement <4 x float> poison, float %i.dv, i64 0
  %broadcast.splat548 = shufflevector <4 x float> %broadcast.splatinsert547, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph544
  %index550 = phi i64 [ 0, %vector.ph544 ], [ %index.next555, %vector.body549 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index550 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %wide.load551 = load <4 x float>, ptr %i.dz, align 16, !tbaa !11
  %wide.load552 = load <4 x float>, ptr %i.ea, align 16, !tbaa !11
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index550 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load553 = load <4 x float>, ptr %i.eb, align 4, !tbaa !11
  %wide.load554 = load <4 x float>, ptr %i.ec, align 4, !tbaa !11
  %i.ed = fmul <4 x float> %broadcast.splat548, %wide.load553
  %i.ee = fmul <4 x float> %broadcast.splat548, %wide.load554
  %i.ef = fsub <4 x float> %wide.load551, %i.ed
  %i.eg = fsub <4 x float> %wide.load552, %i.ee
  store <4 x float> %i.ef, ptr %i.dz, align 16, !tbaa !11
  store <4 x float> %i.eg, ptr %i.ea, align 16, !tbaa !11
  %index.next555 = add nuw i64 %index550, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next555, %n.vec546
  br i1 %i.eh, label %middle.block556, label %vector.body549, !llvm.loop !22

middle.block556:                                  ; preds = %vector.body549
  %cmp.n557 = icmp eq i64 %0, %n.vec546
  br i1 %cmp.n557, label %daxpy.exit110.i, label %.lr.ph.i106.i.preheader829

.lr.ph.i106.i.preheader829:                       ; preds = %.lr.ph.i106.i.preheader, %middle.block556
  %indvars.iv.i107.i.ph = phi i64 [ 0, %.lr.ph.i106.i.preheader ], [ %n.vec546, %middle.block556 ]
  br label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %.lr.ph.i106.i.preheader829, %.lr.ph.i106.i
  %indvars.iv.i107.i = phi i64 [ %indvars.iv.next.i108.i, %.lr.ph.i106.i ], [ %indvars.iv.i107.i.ph, %.lr.ph.i106.i.preheader829 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !11
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i107.i
  %i.el = load float, ptr %i.ek, align 4, !tbaa !11
  %i.em = fmul float %i.dv, %i.el
  %i.en = fsub float %i.ej, %i.em
  store float %i.en, ptr %i.ei, align 4, !tbaa !11
  %indvars.iv.next.i108.i = add nuw nsw i64 %indvars.iv.i107.i, 1 ; 2 uses
  %exitcond.not.i109.i = icmp eq i64 %indvars.iv.next.i108.i, %i.do
  br i1 %exitcond.not.i109.i, label %daxpy.exit110.i, label %.lr.ph.i106.i, !llvm.loop !23

daxpy.exit110.i:                                  ; preds = %.lr.ph.i106.i, %middle.block556, %.lr.ph136.i
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, 100
  br i1 %exitcond155.not.i, label %dgesl.exit, label %.lr.ph136.i, !llvm.loop !24

dgesl.exit:                                       ; preds = %daxpy.exit110.i
  %i.eo = sitofp i64 %i.ck to float
  %i.ep = fdiv float %i.eo, 1.000000e+06
  %i.eq = tail call i64 @clock() #12
  %i.er = sitofp i64 %i.eq to float
  %i.es = fdiv float %i.er, 1.000000e+06
  %i.et = fsub float %i.es, %i.ep                 ; 2 uses
  store float %i.et, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), align 4, !tbaa !11
  %i.eu = load float, ptr @atime, align 16, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.x, ptr noundef nonnull align 16 dereferenceable(400) @main.b, i64 400, i1 false), !tbaa !11
  br label %.preheader52.us.i88

.preheader52.us.i88:                              ; preds = %dgesl.exit, %._crit_edge.us.i98
  %.2 = phi float [ %..us.i95.1, %._crit_edge.us.i98 ], [ 0.000000e+00, %dgesl.exit ]
  %indvars.iv64.i89 = phi i64 [ %indvars.iv.next65.i99, %._crit_edge.us.i98 ], [ 0, %dgesl.exit ] ; 2 uses
  %.04455.us.i90 = phi i32 [ %i.fc, %._crit_edge.us.i98 ], [ 1325, %dgesl.exit ]
  %invariant.gep.i91.idx = mul nuw nsw i64 %indvars.iv64.i89, 804
  %invariant.gep.i91 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i91.idx ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader52.us.i88
  %.3 = phi float [ %.2, %.preheader52.us.i88 ], [ %..us.i95.1, %bb.g ] ; 2 uses
  %indvars.iv.i92 = phi i64 [ 0, %.preheader52.us.i88 ], [ %indvars.iv.next.i96.1, %bb.g ] ; 3 uses
  %.14553.us.i93 = phi i32 [ %.04455.us.i90, %.preheader52.us.i88 ], [ %i.fc, %bb.g ] ; 2 uses
  %i.ev = mul nuw nsw i32 %.14553.us.i93, 3125
  %i.ew = and i32 %i.ev, 65535
  %i.ex = add nsw i32 %i.ew, -32768
  %i.ey = sitofp i32 %i.ex to float
  %i.ez = fmul nnan float %i.ey, f0x38800000      ; 3 uses
  %gep.i94 = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  store float %i.ez, ptr %gep.i94, align 4, !tbaa !11
  %i.fa = fcmp ogt float %i.ez, %.3
  %..us.i95 = select i1 %i.fa, float %i.ez, float %.3 ; 2 uses
  %i.fb = mul nsw i32 %.14553.us.i93, 761
  %i.fc = and i32 %i.fb, 65535                    ; 3 uses
  %i.fd = add nsw i32 %i.fc, -32768
  %i.fe = sitofp i32 %i.fd to float
  %i.ff = fmul nnan float %i.fe, f0x38800000      ; 3 uses
  %i.fg = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  %gep.i94.1 = getelementptr i8, ptr %i.fg, i64 4
  store float %i.ff, ptr %gep.i94.1, align 4, !tbaa !11
  %i.fh = fcmp ogt float %i.ff, %..us.i95
  %..us.i95.1 = select i1 %i.fh, float %i.ff, float %..us.i95 ; 3 uses
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %exitcond.not.i97.1 = icmp eq i64 %indvars.iv.next.i96.1, 100
  br i1 %exitcond.not.i97.1, label %._crit_edge.us.i98, label %bb.g, !llvm.loop !13

._crit_edge.us.i98:                               ; preds = %bb.g
  %indvars.iv.next65.i99 = add nuw nsw i64 %indvars.iv64.i89, 1 ; 2 uses
  %exitcond68.not.i100 = icmp eq i64 %indvars.iv.next65.i99, 100
  br i1 %exitcond68.not.i100, label %.preheader51.i101, label %.preheader52.us.i88, !llvm.loop !15

.preheader51.i101:                                ; preds = %._crit_edge.us.i98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted949 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted952 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted954 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted957 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted960 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted963 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted966 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted969 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted972 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted975 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted978 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted981 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted984 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted987 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted990 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted993 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted996 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted999 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1002 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1005 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1008 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1011 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1014 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1017 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1020 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1022 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1024 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1026 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i102

.preheader.us.i102:                               ; preds = %.preheader.us.i102, %.preheader51.i101
  %i.fi = phi float [ %.promoted1026, %.preheader51.i101 ], [ %i.hp, %.preheader.us.i102 ]
  %i.fj = phi float [ %.promoted1024, %.preheader51.i101 ], [ %i.hn, %.preheader.us.i102 ]
  %i.fk = phi float [ %.promoted1022, %.preheader51.i101 ], [ %i.hl, %.preheader.us.i102 ]
  %i.fl = phi float [ %.promoted1020, %.preheader51.i101 ], [ %i.hj, %.preheader.us.i102 ]
  %wide.load564.111018 = phi <4 x float> [ %.promoted1017, %.preheader51.i101 ], [ %i.hh, %.preheader.us.i102 ]
  %wide.load563.111015 = phi <4 x float> [ %.promoted1014, %.preheader51.i101 ], [ %i.hg, %.preheader.us.i102 ]
  %wide.load564.101012 = phi <4 x float> [ %.promoted1011, %.preheader51.i101 ], [ %i.hd, %.preheader.us.i102 ]
  %wide.load563.101009 = phi <4 x float> [ %.promoted1008, %.preheader51.i101 ], [ %i.hc, %.preheader.us.i102 ]
  %wide.load564.91006 = phi <4 x float> [ %.promoted1005, %.preheader51.i101 ], [ %i.gz, %.preheader.us.i102 ]
  %wide.load563.91003 = phi <4 x float> [ %.promoted1002, %.preheader51.i101 ], [ %i.gy, %.preheader.us.i102 ]
  %wide.load564.81000 = phi <4 x float> [ %.promoted999, %.preheader51.i101 ], [ %i.gv, %.preheader.us.i102 ]
  %wide.load563.8997 = phi <4 x float> [ %.promoted996, %.preheader51.i101 ], [ %i.gu, %.preheader.us.i102 ]
  %wide.load564.7994 = phi <4 x float> [ %.promoted993, %.preheader51.i101 ], [ %i.gr, %.preheader.us.i102 ]
  %wide.load563.7991 = phi <4 x float> [ %.promoted990, %.preheader51.i101 ], [ %i.gq, %.preheader.us.i102 ]
  %wide.load564.6988 = phi <4 x float> [ %.promoted987, %.preheader51.i101 ], [ %i.gn, %.preheader.us.i102 ]
  %wide.load563.6985 = phi <4 x float> [ %.promoted984, %.preheader51.i101 ], [ %i.gm, %.preheader.us.i102 ]
  %wide.load564.5982 = phi <4 x float> [ %.promoted981, %.preheader51.i101 ], [ %i.gj, %.preheader.us.i102 ]
  %wide.load563.5979 = phi <4 x float> [ %.promoted978, %.preheader51.i101 ], [ %i.gi, %.preheader.us.i102 ]
  %wide.load564.4976 = phi <4 x float> [ %.promoted975, %.preheader51.i101 ], [ %i.gf, %.preheader.us.i102 ]
  %wide.load563.4973 = phi <4 x float> [ %.promoted972, %.preheader51.i101 ], [ %i.ge, %.preheader.us.i102 ]
  %wide.load564.3970 = phi <4 x float> [ %.promoted969, %.preheader51.i101 ], [ %i.gb, %.preheader.us.i102 ]
  %wide.load563.3967 = phi <4 x float> [ %.promoted966, %.preheader51.i101 ], [ %i.ga, %.preheader.us.i102 ]
  %wide.load564.2964 = phi <4 x float> [ %.promoted963, %.preheader51.i101 ], [ %i.fx, %.preheader.us.i102 ]
  %wide.load563.2961 = phi <4 x float> [ %.promoted960, %.preheader51.i101 ], [ %i.fw, %.preheader.us.i102 ]
  %wide.load564.1958 = phi <4 x float> [ %.promoted957, %.preheader51.i101 ], [ %i.ft, %.preheader.us.i102 ]
  %wide.load563.1955 = phi <4 x float> [ %.promoted954, %.preheader51.i101 ], [ %i.fs, %.preheader.us.i102 ]
  %i.fm = phi <4 x float> [ %.promoted952, %.preheader51.i101 ], [ %i.fp, %.preheader.us.i102 ]
  %wide.load563950 = phi <4 x float> [ %main.b.promoted949, %.preheader51.i101 ], [ %i.fo, %.preheader.us.i102 ]
  %indvars.iv77.i103 = phi i64 [ 0, %.preheader51.i101 ], [ %indvars.iv.next78.i110, %.preheader.us.i102 ] ; 2 uses
  %invariant.gep82.i104.idx = mul nuw nsw i64 %indvars.iv77.i103, 804
  %invariant.gep82.i104 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i104.idx ; 28 uses
  %i.fn = getelementptr i8, ptr %invariant.gep82.i104, i64 16
  %wide.load565 = load <4 x float>, ptr %invariant.gep82.i104, align 4, !tbaa !11
  %wide.load566 = load <4 x float>, ptr %i.fn, align 4, !tbaa !11
  %i.fo = fadd <4 x float> %wide.load563950, %wide.load565 ; 2 uses
  %i.fp = fadd <4 x float> %i.fm, %wide.load566   ; 2 uses
  %i.fq = getelementptr i8, ptr %invariant.gep82.i104, i64 32
  %i.fr = getelementptr i8, ptr %invariant.gep82.i104, i64 48
  %wide.load565.1 = load <4 x float>, ptr %i.fq, align 4, !tbaa !11
  %wide.load566.1 = load <4 x float>, ptr %i.fr, align 4, !tbaa !11
  %i.fs = fadd <4 x float> %wide.load563.1955, %wide.load565.1 ; 2 uses
  %i.ft = fadd <4 x float> %wide.load564.1958, %wide.load566.1 ; 2 uses
  %i.fu = getelementptr i8, ptr %invariant.gep82.i104, i64 64
  %i.fv = getelementptr i8, ptr %invariant.gep82.i104, i64 80
  %wide.load565.2 = load <4 x float>, ptr %i.fu, align 4, !tbaa !11
  %wide.load566.2 = load <4 x float>, ptr %i.fv, align 4, !tbaa !11
  %i.fw = fadd <4 x float> %wide.load563.2961, %wide.load565.2 ; 2 uses
  %i.fx = fadd <4 x float> %wide.load564.2964, %wide.load566.2 ; 2 uses
  %i.fy = getelementptr i8, ptr %invariant.gep82.i104, i64 96
  %i.fz = getelementptr i8, ptr %invariant.gep82.i104, i64 112
  %wide.load565.3 = load <4 x float>, ptr %i.fy, align 4, !tbaa !11
  %wide.load566.3 = load <4 x float>, ptr %i.fz, align 4, !tbaa !11
  %i.ga = fadd <4 x float> %wide.load563.3967, %wide.load565.3 ; 2 uses
  %i.gb = fadd <4 x float> %wide.load564.3970, %wide.load566.3 ; 2 uses
  %i.gc = getelementptr i8, ptr %invariant.gep82.i104, i64 128
  %i.gd = getelementptr i8, ptr %invariant.gep82.i104, i64 144
  %wide.load565.4 = load <4 x float>, ptr %i.gc, align 4, !tbaa !11
  %wide.load566.4 = load <4 x float>, ptr %i.gd, align 4, !tbaa !11
  %i.ge = fadd <4 x float> %wide.load563.4973, %wide.load565.4 ; 2 uses
  %i.gf = fadd <4 x float> %wide.load564.4976, %wide.load566.4 ; 2 uses
  %i.gg = getelementptr i8, ptr %invariant.gep82.i104, i64 160
  %i.gh = getelementptr i8, ptr %invariant.gep82.i104, i64 176
  %wide.load565.5 = load <4 x float>, ptr %i.gg, align 4, !tbaa !11
  %wide.load566.5 = load <4 x float>, ptr %i.gh, align 4, !tbaa !11
  %i.gi = fadd <4 x float> %wide.load563.5979, %wide.load565.5 ; 2 uses
  %i.gj = fadd <4 x float> %wide.load564.5982, %wide.load566.5 ; 2 uses
  %i.gk = getelementptr i8, ptr %invariant.gep82.i104, i64 192
  %i.gl = getelementptr i8, ptr %invariant.gep82.i104, i64 208
  %wide.load565.6 = load <4 x float>, ptr %i.gk, align 4, !tbaa !11
  %wide.load566.6 = load <4 x float>, ptr %i.gl, align 4, !tbaa !11
  %i.gm = fadd <4 x float> %wide.load563.6985, %wide.load565.6 ; 2 uses
  %i.gn = fadd <4 x float> %wide.load564.6988, %wide.load566.6 ; 2 uses
  %i.go = getelementptr i8, ptr %invariant.gep82.i104, i64 224
  %i.gp = getelementptr i8, ptr %invariant.gep82.i104, i64 240
  %wide.load565.7 = load <4 x float>, ptr %i.go, align 4, !tbaa !11
  %wide.load566.7 = load <4 x float>, ptr %i.gp, align 4, !tbaa !11
  %i.gq = fadd <4 x float> %wide.load563.7991, %wide.load565.7 ; 2 uses
  %i.gr = fadd <4 x float> %wide.load564.7994, %wide.load566.7 ; 2 uses
  %i.gs = getelementptr i8, ptr %invariant.gep82.i104, i64 256
  %i.gt = getelementptr i8, ptr %invariant.gep82.i104, i64 272
  %wide.load565.8 = load <4 x float>, ptr %i.gs, align 4, !tbaa !11
  %wide.load566.8 = load <4 x float>, ptr %i.gt, align 4, !tbaa !11
  %i.gu = fadd <4 x float> %wide.load563.8997, %wide.load565.8 ; 2 uses
  %i.gv = fadd <4 x float> %wide.load564.81000, %wide.load566.8 ; 2 uses
  %i.gw = getelementptr i8, ptr %invariant.gep82.i104, i64 288
  %i.gx = getelementptr i8, ptr %invariant.gep82.i104, i64 304
  %wide.load565.9 = load <4 x float>, ptr %i.gw, align 4, !tbaa !11
  %wide.load566.9 = load <4 x float>, ptr %i.gx, align 4, !tbaa !11
  %i.gy = fadd <4 x float> %wide.load563.91003, %wide.load565.9 ; 2 uses
  %i.gz = fadd <4 x float> %wide.load564.91006, %wide.load566.9 ; 2 uses
  %i.ha = getelementptr i8, ptr %invariant.gep82.i104, i64 320
  %i.hb = getelementptr i8, ptr %invariant.gep82.i104, i64 336
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.ul = sitofp i32 %i.uk to float
  %i.um = fmul nnan float %i.ul, f0x38800000
  %i.un = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  %gep.i144.1 = getelementptr i8, ptr %i.un, i64 4
  store float %i.um, ptr %gep.i144.1, align 4, !tbaa !11
  %indvars.iv.next.i146.1 = add nuw nsw i64 %indvars.iv.i142, 2 ; 2 uses
  %exitcond.not.i147.1 = icmp eq i64 %indvars.iv.next.i146.1, 100
  br i1 %exitcond.not.i147.1, label %._crit_edge.us.i148, label %bb.o, !llvm.loop !13

._crit_edge.us.i148:                              ; preds = %bb.o
  %indvars.iv.next65.i149 = add nuw nsw i64 %indvars.iv64.i139, 1 ; 2 uses
  %exitcond68.not.i150 = icmp eq i64 %indvars.iv.next65.i149, 100
  br i1 %exitcond68.not.i150, label %.preheader51.i151, label %.preheader52.us.i138, !llvm.loop !15

.preheader51.i151:                                ; preds = %._crit_edge.us.i148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1265 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1268 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1270 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1273 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1276 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1279 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1282 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1285 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1288 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1291 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1294 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1297 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1300 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1303 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1306 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1309 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1312 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1315 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1318 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1321 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1324 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1327 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1330 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1333 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1336 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1338 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1340 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1342 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i152

.preheader.us.i152:                               ; preds = %.preheader.us.i152, %.preheader51.i151
  %i.uo = phi float [ %.promoted1342, %.preheader51.i151 ], [ %i.wv, %.preheader.us.i152 ]
  %i.up = phi float [ %.promoted1340, %.preheader51.i151 ], [ %i.wt, %.preheader.us.i152 ]
  %i.uq = phi float [ %.promoted1338, %.preheader51.i151 ], [ %i.wr, %.preheader.us.i152 ]
  %i.ur = phi float [ %.promoted1336, %.preheader51.i151 ], [ %i.wp, %.preheader.us.i152 ]
  %wide.load644.111334 = phi <4 x float> [ %.promoted1333, %.preheader51.i151 ], [ %i.wn, %.preheader.us.i152 ]
  %wide.load643.111331 = phi <4 x float> [ %.promoted1330, %.preheader51.i151 ], [ %i.wm, %.preheader.us.i152 ]
  %wide.load644.101328 = phi <4 x float> [ %.promoted1327, %.preheader51.i151 ], [ %i.wj, %.preheader.us.i152 ]
  %wide.load643.101325 = phi <4 x float> [ %.promoted1324, %.preheader51.i151 ], [ %i.wi, %.preheader.us.i152 ]
  %wide.load644.91322 = phi <4 x float> [ %.promoted1321, %.preheader51.i151 ], [ %i.wf, %.preheader.us.i152 ]
  %wide.load643.91319 = phi <4 x float> [ %.promoted1318, %.preheader51.i151 ], [ %i.we, %.preheader.us.i152 ]
  %wide.load644.81316 = phi <4 x float> [ %.promoted1315, %.preheader51.i151 ], [ %i.wb, %.preheader.us.i152 ]
  %wide.load643.81313 = phi <4 x float> [ %.promoted1312, %.preheader51.i151 ], [ %i.wa, %.preheader.us.i152 ]
  %wide.load644.71310 = phi <4 x float> [ %.promoted1309, %.preheader51.i151 ], [ %i.vx, %.preheader.us.i152 ]
  %wide.load643.71307 = phi <4 x float> [ %.promoted1306, %.preheader51.i151 ], [ %i.vw, %.preheader.us.i152 ]
  %wide.load644.61304 = phi <4 x float> [ %.promoted1303, %.preheader51.i151 ], [ %i.vt, %.preheader.us.i152 ]
  %wide.load643.61301 = phi <4 x float> [ %.promoted1300, %.preheader51.i151 ], [ %i.vs, %.preheader.us.i152 ]
  %wide.load644.51298 = phi <4 x float> [ %.promoted1297, %.preheader51.i151 ], [ %i.vp, %.preheader.us.i152 ]
  %wide.load643.51295 = phi <4 x float> [ %.promoted1294, %.preheader51.i151 ], [ %i.vo, %.preheader.us.i152 ]
  %wide.load644.41292 = phi <4 x float> [ %.promoted1291, %.preheader51.i151 ], [ %i.vl, %.preheader.us.i152 ]
  %wide.load643.41289 = phi <4 x float> [ %.promoted1288, %.preheader51.i151 ], [ %i.vk, %.preheader.us.i152 ]
  %wide.load644.31286 = phi <4 x float> [ %.promoted1285, %.preheader51.i151 ], [ %i.vh, %.preheader.us.i152 ]
  %wide.load643.31283 = phi <4 x float> [ %.promoted1282, %.preheader51.i151 ], [ %i.vg, %.preheader.us.i152 ]
  %wide.load644.21280 = phi <4 x float> [ %.promoted1279, %.preheader51.i151 ], [ %i.vd, %.preheader.us.i152 ]
  %wide.load643.21277 = phi <4 x float> [ %.promoted1276, %.preheader51.i151 ], [ %i.vc, %.preheader.us.i152 ]
  %wide.load644.11274 = phi <4 x float> [ %.promoted1273, %.preheader51.i151 ], [ %i.uz, %.preheader.us.i152 ]
  %wide.load643.11271 = phi <4 x float> [ %.promoted1270, %.preheader51.i151 ], [ %i.uy, %.preheader.us.i152 ]
  %i.us = phi <4 x float> [ %.promoted1268, %.preheader51.i151 ], [ %i.uv, %.preheader.us.i152 ]
  %wide.load6431266 = phi <4 x float> [ %main.b.promoted1265, %.preheader51.i151 ], [ %i.uu, %.preheader.us.i152 ]
  %indvars.iv77.i153 = phi i64 [ 0, %.preheader51.i151 ], [ %indvars.iv.next78.i160, %.preheader.us.i152 ] ; 2 uses
  %invariant.gep82.i154.idx = mul nuw nsw i64 %indvars.iv77.i153, 804
  %invariant.gep82.i154 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i154.idx ; 28 uses
  %i.ut = getelementptr i8, ptr %invariant.gep82.i154, i64 16
  %wide.load645 = load <4 x float>, ptr %invariant.gep82.i154, align 4, !tbaa !11
  %wide.load646 = load <4 x float>, ptr %i.ut, align 4, !tbaa !11
  %i.uu = fadd <4 x float> %wide.load6431266, %wide.load645 ; 2 uses
  %i.uv = fadd <4 x float> %i.us, %wide.load646   ; 2 uses
  %i.uw = getelementptr i8, ptr %invariant.gep82.i154, i64 32
  %i.ux = getelementptr i8, ptr %invariant.gep82.i154, i64 48
  %wide.load645.1 = load <4 x float>, ptr %i.uw, align 4, !tbaa !11
  %wide.load646.1 = load <4 x float>, ptr %i.ux, align 4, !tbaa !11
  %i.uy = fadd <4 x float> %wide.load643.11271, %wide.load645.1 ; 2 uses
  %i.uz = fadd <4 x float> %wide.load644.11274, %wide.load646.1 ; 2 uses
  %i.va = getelementptr i8, ptr %invariant.gep82.i154, i64 64
  %i.vb = getelementptr i8, ptr %invariant.gep82.i154, i64 80
  %wide.load645.2 = load <4 x float>, ptr %i.va, align 4, !tbaa !11
  %wide.load646.2 = load <4 x float>, ptr %i.vb, align 4, !tbaa !11
  %i.vc = fadd <4 x float> %wide.load643.21277, %wide.load645.2 ; 2 uses
  %i.vd = fadd <4 x float> %wide.load644.21280, %wide.load646.2 ; 2 uses
  %i.ve = getelementptr i8, ptr %invariant.gep82.i154, i64 96
  %i.vf = getelementptr i8, ptr %invariant.gep82.i154, i64 112
  %wide.load645.3 = load <4 x float>, ptr %i.ve, align 4, !tbaa !11
  %wide.load646.3 = load <4 x float>, ptr %i.vf, align 4, !tbaa !11
  %i.vg = fadd <4 x float> %wide.load643.31283, %wide.load645.3 ; 2 uses
  %i.vh = fadd <4 x float> %wide.load644.31286, %wide.load646.3 ; 2 uses
  %i.vi = getelementptr i8, ptr %invariant.gep82.i154, i64 128
  %i.vj = getelementptr i8, ptr %invariant.gep82.i154, i64 144
  %wide.load645.4 = load <4 x float>, ptr %i.vi, align 4, !tbaa !11
  %wide.load646.4 = load <4 x float>, ptr %i.vj, align 4, !tbaa !11
  %i.vk = fadd <4 x float> %wide.load643.41289, %wide.load645.4 ; 2 uses
  %i.vl = fadd <4 x float> %wide.load644.41292, %wide.load646.4 ; 2 uses
  %i.vm = getelementptr i8, ptr %invariant.gep82.i154, i64 160
  %i.vn = getelementptr i8, ptr %invariant.gep82.i154, i64 176
  %wide.load645.5 = load <4 x float>, ptr %i.vm, align 4, !tbaa !11
  %wide.load646.5 = load <4 x float>, ptr %i.vn, align 4, !tbaa !11
  %i.vo = fadd <4 x float> %wide.load643.51295, %wide.load645.5 ; 2 uses
  %i.vp = fadd <4 x float> %wide.load644.51298, %wide.load646.5 ; 2 uses
  %i.vq = getelementptr i8, ptr %invariant.gep82.i154, i64 192
  %i.vr = getelementptr i8, ptr %invariant.gep82.i154, i64 208
  %wide.load645.6 = load <4 x float>, ptr %i.vq, align 4, !tbaa !11
  %wide.load646.6 = load <4 x float>, ptr %i.vr, align 4, !tbaa !11
  %i.vs = fadd <4 x float> %wide.load643.61301, %wide.load645.6 ; 2 uses
  %i.vt = fadd <4 x float> %wide.load644.61304, %wide.load646.6 ; 2 uses
  %i.vu = getelementptr i8, ptr %invariant.gep82.i154, i64 224
  %i.vv = getelementptr i8, ptr %invariant.gep82.i154, i64 240
  %wide.load645.7 = load <4 x float>, ptr %i.vu, align 4, !tbaa !11
  %wide.load646.7 = load <4 x float>, ptr %i.vv, align 4, !tbaa !11
  %i.vw = fadd <4 x float> %wide.load643.71307, %wide.load645.7 ; 2 uses
  %i.vx = fadd <4 x float> %wide.load644.71310, %wide.load646.7 ; 2 uses
  %i.vy = getelementptr i8, ptr %invariant.gep82.i154, i64 256
  %i.vz = getelementptr i8, ptr %invariant.gep82.i154, i64 272
  %wide.load645.8 = load <4 x float>, ptr %i.vy, align 4, !tbaa !11
  %wide.load646.8 = load <4 x float>, ptr %i.vz, align 4, !tbaa !11
  %i.wa = fadd <4 x float> %wide.load643.81313, %wide.load645.8 ; 2 uses
  %i.wb = fadd <4 x float> %wide.load644.81316, %wide.load646.8 ; 2 uses
  %i.wc = getelementptr i8, ptr %invariant.gep82.i154, i64 288
  %i.wd = getelementptr i8, ptr %invariant.gep82.i154, i64 304
  %wide.load645.9 = load <4 x float>, ptr %i.wc, align 4, !tbaa !11
  %wide.load646.9 = load <4 x float>, ptr %i.wd, align 4, !tbaa !11
  %i.we = fadd <4 x float> %wide.load643.91319, %wide.load645.9 ; 2 uses
  %i.wf = fadd <4 x float> %wide.load644.91322, %wide.load646.9 ; 2 uses
  %i.wg = getelementptr i8, ptr %invariant.gep82.i154, i64 320
  %i.wh = getelementptr i8, ptr %invariant.gep82.i154, i64 336
  %wide.load645.10 = load <4 x float>, ptr %i.wg, align 4, !tbaa !11
  %wide.load646.10 = load <4 x float>, ptr %i.wh, align 4, !tbaa !11
  %i.wi = fadd <4 x float> %wide.load643.101325, %wide.load645.10 ; 2 uses
  %i.wj = fadd <4 x float> %wide.load644.101328, %wide.load646.10 ; 2 uses
  %i.wk = getelementptr i8, ptr %invariant.gep82.i154, i64 352
  %i.wl = getelementptr i8, ptr %invariant.gep82.i154, i64 368
  %wide.load645.11 = load <4 x float>, ptr %i.wk, align 4, !tbaa !11
  %wide.load646.11 = load <4 x float>, ptr %i.wl, align 4, !tbaa !11
  %i.wm = fadd <4 x float> %wide.load643.111331, %wide.load645.11 ; 2 uses
  %i.wn = fadd <4 x float> %wide.load644.111334, %wide.load646.11 ; 2 uses
  %gep83.i156 = getelementptr i8, ptr %invariant.gep82.i154, i64 384
  %i.wo = load float, ptr %gep83.i156, align 4, !tbaa !11
  %i.wp = fadd float %i.ur, %i.wo                 ; 2 uses
  %gep83.i156.1 = getelementptr i8, ptr %invariant.gep82.i154, i64 388
  %i.wq = load float, ptr %gep83.i156.1, align 4, !tbaa !11
  %i.wr = fadd float %i.uq, %i.wq                 ; 2 uses
  %gep83.i156.2 = getelementptr i8, ptr %invariant.gep82.i154, i64 392
  %i.ws = load float, ptr %gep83.i156.2, align 4, !tbaa !11
  %i.wt = fadd float %i.up, %i.ws                 ; 2 uses
  %gep83.i156.3 = getelementptr i8, ptr %invariant.gep82.i154, i64 396
  %i.wu = load float, ptr %gep83.i156.3, align 4, !tbaa !11
  %i.wv = fadd float %i.uo, %i.wu                 ; 2 uses
  %indvars.iv.next78.i160 = add nuw nsw i64 %indvars.iv77.i153, 1 ; 2 uses
  %exitcond81.not.i161 = icmp eq i64 %indvars.iv.next78.i160, 100
  br i1 %exitcond81.not.i161, label %.lr.ph103.i.preheader.preheader, label %.preheader.us.i152, !llvm.loop !16

.lr.ph103.i.preheader.preheader:                  ; preds = %.preheader.us.i152
  store <4 x float> %i.uu, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.uv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.uy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.uz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.vc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.vd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.vg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.vh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.vk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.vl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.vo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.vp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.vs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.vt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.vw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.vx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.wa, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.wb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.we, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.wf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.wi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.wj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.wm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.wn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.wp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.wr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.wt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.wv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i.preheader

.lr.ph103.i.preheader:                            ; preds = %.lr.ph103.i.preheader.preheader, %.loopexit.i
  %i.ww = phi i32 [ %i.zi, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader.preheader ]
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader.preheader ] ; 12 uses
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164, %.loopexit.i ], [ 1, %.lr.ph103.i.preheader.preheader ] ; 2 uses
  %1 = sub nsw i64 99, %indvars.iv107.i           ; 3 uses
  %i.wx = sub nsw i64 99, %indvars.iv107.i        ; 3 uses
  %indvars109.i = trunc i64 %indvars.iv107.i to i32 ; 2 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %i.wy = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i
  %i.wz = mul nuw nsw i64 %indvars.iv107.i, 804
  %i.xa = getelementptr i8, ptr %i.wy, i64 %i.wz  ; 7 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !11
  %i.xc = tail call float @llvm.fabs.f32(float %i.xb) ; 2 uses
  %xtraiter = and i64 %1, 1
  %i.xd = icmp eq i64 %indvars.iv107.i, 98
  br i1 %i.xd, label %.lr.ph48.i.i.epil.preheader, label %.lr.ph103.i.preheader.new

.lr.ph103.i.preheader.new:                        ; preds = %.lr.ph103.i.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph48.i.i

.lr.ph48.i.i:                                     ; preds = %.lr.ph48.i.i, %.lr.ph103.i.preheader.new
  %indvars.iv52.i.i = phi i64 [ 1, %.lr.ph103.i.preheader.new ], [ %indvars.iv.next53.i.i.1, %.lr.ph48.i.i ] ; 4 uses
  %.247.i.i = phi i32 [ 0, %.lr.ph103.i.preheader.new ], [ %.3.i.i.1, %.lr.ph48.i.i ]
  %.23345.i.i = phi float [ %i.xc, %.lr.ph103.i.preheader.new ], [ %.334.i.i.1, %.lr.ph48.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph103.i.preheader.new ], [ %niter.next.1, %.lr.ph48.i.i ]
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %indvars.iv52.i.i
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !11
  %i.xg = tail call float @llvm.fabs.f32(float %i.xf) ; 2 uses
  %i.xh = fcmp ogt float %i.xg, %.23345.i.i       ; 2 uses
  %.334.i.i = select i1 %i.xh, float %i.xg, float %.23345.i.i ; 2 uses
  %i.xi = trunc nuw nsw i64 %indvars.iv52.i.i to i32
  %.3.i.i = select i1 %i.xh, i32 %i.xi, i32 %.247.i.i
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %indvars.iv.next53.i.i
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !11
  %i.xl = tail call float @llvm.fabs.f32(float %i.xk) ; 2 uses
  %i.xm = fcmp ogt float %i.xl, %.334.i.i         ; 2 uses
  %.334.i.i.1 = select i1 %i.xm, float %i.xl, float %.334.i.i ; 2 uses
  %i.xn = trunc nuw nsw i64 %indvars.iv.next53.i.i to i32
  %.3.i.i.1 = select i1 %i.xm, i32 %i.xn, i32 %.3.i.i ; 3 uses
  %indvars.iv.next53.i.i.1 = add nuw nsw i64 %indvars.iv52.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.i.unr-lcssa, label %.lr.ph48.i.i, !llvm.loop !27

idamax.exit.i.unr-lcssa:                          ; preds = %.lr.ph48.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.i, label %.lr.ph48.i.i.epil.preheader

.lr.ph48.i.i.epil.preheader:                      ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph103.i.preheader
  %indvars.iv52.i.i.epil.init = phi i64 [ 1, %.lr.ph103.i.preheader ], [ %indvars.iv.next53.i.i.1, %idamax.exit.i.unr-lcssa ] ; 2 uses
  %.247.i.i.epil.init = phi i32 [ 0, %.lr.ph103.i.preheader ], [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ]
  %.23345.i.i.epil.init = phi float [ %i.xc, %.lr.ph103.i.preheader ], [ %.334.i.i.1, %idamax.exit.i.unr-lcssa ]
  %lcmp.mod845 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod845)
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %indvars.iv52.i.i.epil.init
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !11
  %i.xq = tail call float @llvm.fabs.f32(float %i.xp)
  %i.xr = fcmp ogt float %i.xq, %.23345.i.i.epil.init
  %i.xs = trunc nuw nsw i64 %indvars.iv52.i.i.epil.init to i32
  %.3.i.i.epil = select i1 %i.xr, i32 %i.xs, i32 %.247.i.i.epil.init
  br label %idamax.exit.i

idamax.exit.i:                                    ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph48.i.i.epil.preheader
  %.3.i.i.lcssa = phi i32 [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ], [ %.3.i.i.epil, %.lr.ph48.i.i.epil.preheader ] ; 2 uses
  %i.xt = add nsw i32 %.3.i.i.lcssa, %indvars109.i ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i
  store i32 %i.xt, ptr %i.xu, align 4, !tbaa !4
  %i.xv = sext i32 %i.xt to i64                   ; 2 uses
  %.idx393 = mul nuw nsw i64 %indvars.iv107.i, 804
  %i.xw = getelementptr i8, ptr @main.a, i64 %.idx393
  %i.xx = getelementptr [4 x i8], ptr %i.xw, i64 %i.xv ; 2 uses
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !11 ; 3 uses
  %i.xz = fcmp une float %i.xy, 0.000000e+00
  br i1 %i.xz, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %idamax.exit.i
  %.not.i = icmp eq i32 %.3.i.i.lcssa, 0          ; 2 uses
  %.pre.i = load float, ptr %i.xa, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store float %.pre.i, ptr %i.xx, align 4, !tbaa !11
  store float %i.xy, ptr %i.xa, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ya = phi float [ %i.xy, %bb.q ], [ %.pre.i, %bb.p ]
  %i.yb = fdiv float -1.000000e+00, %i.ya         ; 2 uses
  %i.yc = sub nuw nsw i64 99, %indvars.iv107.i    ; 4 uses
  %i.yd = getelementptr i8, ptr %i.xa, i64 4      ; 4 uses
  %min.iters.check625 = icmp samesign ugt i64 %indvars.iv107.i, 91
  br i1 %min.iters.check625, label %.lr.ph25.i.i.preheader, label %vector.ph626

vector.ph626:                                     ; preds = %bb.r
  %n.vec628 = and i64 %i.yc, 120                  ; 3 uses
  %broadcast.splatinsert629 = insertelement <4 x float> poison, float %i.yb, i64 0
  %broadcast.splat630 = shufflevector <4 x float> %broadcast.splatinsert629, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body631

vector.body631:                                   ; preds = %vector.body631, %vector.ph626
  %index632 = phi i64 [ 0, %vector.ph626 ], [ %index.next635, %vector.body631 ] ; 2 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %index632 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 2 uses
  %wide.load633 = load <4 x float>, ptr %i.ye, align 4, !tbaa !11
  %wide.load634 = load <4 x float>, ptr %i.yf, align 4, !tbaa !11
  %i.yg = fmul <4 x float> %broadcast.splat630, %wide.load633
  %i.yh = fmul <4 x float> %broadcast.splat630, %wide.load634
  store <4 x float> %i.yg, ptr %i.ye, align 4, !tbaa !11
  store <4 x float> %i.yh, ptr %i.yf, align 4, !tbaa !11
  %index.next635 = add nuw i64 %index632, 8       ; 2 uses
  %i.yi = icmp eq i64 %index.next635, %n.vec628
  br i1 %i.yi, label %middle.block636, label %vector.body631, !llvm.loop !28

middle.block636:                                  ; preds = %vector.body631
  %cmp.n637 = icmp eq i64 %i.yc, %n.vec628
  br i1 %cmp.n637, label %.lr.ph.i, label %.lr.ph25.i.i.preheader

.lr.ph25.i.i.preheader:                           ; preds = %bb.r, %middle.block636
  %indvars.iv28.i.i.ph = phi i64 [ 0, %bb.r ], [ %n.vec628, %middle.block636 ]
  br label %.lr.ph25.i.i

.lr.ph25.i.i:                                     ; preds = %.lr.ph25.i.i.preheader, %.lr.ph25.i.i
  %indvars.iv28.i.i = phi i64 [ %indvars.iv.next29.i.i, %.lr.ph25.i.i ], [ %indvars.iv28.i.i.ph, %.lr.ph25.i.i.preheader ] ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv28.i.i ; 2 uses
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !11
  %i.yl = fmul float %i.yb, %i.yk
  store float %i.yl, ptr %i.yj, align 4, !tbaa !11
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1 ; 2 uses
  %exitcond.not.i.i165 = icmp eq i64 %indvars.iv.next29.i.i, %i.yc
  br i1 %exitcond.not.i.i165, label %.lr.ph.i, label %.lr.ph25.i.i, !llvm.loop !29

.lr.ph.i:                                         ; preds = %.lr.ph25.i.i, %middle.block636
  %invariant.gep.i166 = getelementptr [4 x i8], ptr @main.a, i64 %i.xv
  %min.iters.check608 = icmp ult i64 %i.wx, 8
  %n.vec611 = and i64 %i.wx, -8                   ; 3 uses
  %cmp.n622 = icmp eq i64 %i.wx, %n.vec611
  br label %bb.s

bb.s:                                             ; preds = %daxpy.exit.i171, %.lr.ph.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.i163, %.lr.ph.i ], [ %indvars.iv.next105.i, %daxpy.exit.i171 ] ; 2 uses
  %i.ym = mul nuw nsw i64 %indvars.iv104.i, 201   ; 2 uses
  %gep.i167 = getelementptr [4 x i8], ptr %invariant.gep.i166, i64 %i.ym ; 2 uses
  %i.yn = load float, ptr %gep.i167, align 4, !tbaa !11 ; 4 uses
  %.pre112.i = add nuw nsw i64 %i.ym, %indvars.iv107.i ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre112.i ; 2 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !11
  store float %i.yp, ptr %gep.i167, align 4, !tbaa !11
  store float %i.yn, ptr %i.yo, align 4, !tbaa !11
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.s
  %i.yq = getelementptr [4 x i8], ptr @main.a, i64 %.pre112.i
  %i.yr = getelementptr i8, ptr %i.yq, i64 4      ; 2 uses
  %i.ys = fcmp oeq float %i.yn, 0.000000e+00
  br i1 %i.ys, label %daxpy.exit.i171, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %._crit_edge.i
  br i1 %min.iters.check608, label %.lr.ph.i.i168.preheader821, label %vector.ph609

vector.ph609:                                     ; preds = %.lr.ph.i.i168.preheader
  %broadcast.splatinsert612 = insertelement <4 x float> poison, float %i.yn, i64 0
  %broadcast.splat613 = shufflevector <4 x float> %broadcast.splatinsert612, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph609
  %index615 = phi i64 [ 0, %vector.ph609 ], [ %index.next620, %vector.body614 ] ; 3 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %index615 ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16 ; 2 uses
  %wide.load616 = load <4 x float>, ptr %i.yt, align 4, !tbaa !11
  %wide.load617 = load <4 x float>, ptr %i.yu, align 4, !tbaa !11
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %index615 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %wide.load618 = load <4 x float>, ptr %i.yv, align 4, !tbaa !11
  %wide.load619 = load <4 x float>, ptr %i.yw, align 4, !tbaa !11
  %i.yx = fmul <4 x float> %broadcast.splat613, %wide.load618
  %i.yy = fmul <4 x float> %broadcast.splat613, %wide.load619
  %i.yz = fadd <4 x float> %wide.load616, %i.yx
  %i.za = fadd <4 x float> %wide.load617, %i.yy
  store <4 x float> %i.yz, ptr %i.yt, align 4, !tbaa !11
  store <4 x float> %i.za, ptr %i.yu, align 4, !tbaa !11
  %index.next620 = add nuw i64 %index615, 8       ; 2 uses
  %i.zb = icmp eq i64 %index.next620, %n.vec611
  br i1 %i.zb, label %middle.block621, label %vector.body614, !llvm.loop !30

middle.block621:                                  ; preds = %vector.body614
  br i1 %cmp.n622, label %daxpy.exit.i171, label %.lr.ph.i.i168.preheader821

.lr.ph.i.i168.preheader821:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block621
  %indvars.iv.i.i169.ph = phi i64 [ 0, %.lr.ph.i.i168.preheader ], [ %n.vec611, %middle.block621 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader821, %.lr.ph.i.i168
  %indvars.iv.i.i169 = phi i64 [ %indvars.iv.next.i.i170, %.lr.ph.i.i168 ], [ %indvars.iv.i.i169.ph, %.lr.ph.i.i168.preheader821 ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.i.i169 ; 2 uses
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !11
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv.i.i169
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !11
  %i.zg = fmul float %i.yn, %i.zf
  %i.zh = fadd float %i.zd, %i.zg
  store float %i.zh, ptr %i.zc, align 4, !tbaa !11
  %indvars.iv.next.i.i170 = add nuw nsw i64 %indvars.iv.i.i169, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i.i170, %i.yc
  br i1 %exitcond.not.i99.i, label %daxpy.exit.i171, label %.lr.ph.i.i168, !llvm.loop !31

daxpy.exit.i171:                                  ; preds = %.lr.ph.i.i168, %middle.block621, %._crit_edge.i
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next105.i, 100
  br i1 %exitcond.not.i172, label %.loopexit.i, label %bb.s, !llvm.loop !32

.loopexit.i:                                      ; preds = %daxpy.exit.i171, %idamax.exit.i
  %i.zi = phi i32 [ %indvars109.i, %idamax.exit.i ], [ %i.ww, %daxpy.exit.i171 ] ; 2 uses
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, 99
  br i1 %exitcond111.not.i, label %.loopexit100.i, label %.lr.ph103.i.preheader, !llvm.loop !33

.loopexit100.i:                                   ; preds = %.loopexit.i
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.zj = add nuw nsw i32 %storemerge79414, 1     ; 2 uses
  %exitcond467.not = icmp eq i32 %i.zj, %i.ub
  br i1 %exitcond467.not, label %._crit_edge415, label %.preheader52.us.i138.preheader, !llvm.loop !34

._crit_edge415:                                   ; preds = %.loopexit100.i
  %i.zk = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.zl = fcmp oeq float %i.zk, 0.000000e+00
  %i.zm = select i1 %i.zl, i32 99, i32 %i.zi
  store i32 %i.zm, ptr @main.info, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge415, %bb.n
  %i.zn = tail call i64 @clock() #12              ; 0 uses
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.zp = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zo, ptr noundef nonnull @.str.15, i32 noundef %i.zp, double noundef 0.000000e+00) #14 ; 0 uses
  %exitcond468.not = icmp eq i32 %.162, -1
  br i1 %exitcond468.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.zr = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zs = shl nsw i32 %i.zr, 1
  br label %bb.n, !llvm.loop !35

.critedge:                                        ; preds = %bb.u
  %i.zt = sitofp i64 %i.qx to float
  %i.zu = fdiv nnan float %i.zt, 1.000000e+06
  %i.zv = sitofp i64 %i.ts to float
  %i.zw = fdiv nnan float %i.zv, 1.000000e+06
  %i.zx = fsub float %i.zw, %i.zu
  %i.zy = fdiv float %i.zx, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %i.zz = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aaa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zz, ptr noundef nonnull @.str.18, i32 noundef 0) #14 ; 0 uses
  %i.aab = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aab, ptr noundef nonnull @.str.19, i32 noundef 201) #14 ; 0 uses
  %i.aad = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aae = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %i.aad) #13 ; 0 uses
  %i.aaf = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aag = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %i.aaf) #13 ; 0 uses
  %i.aah = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.aai = sitofp i32 %i.aah to float
  %i.aaj = fmul float %i.zy, %i.aai
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %._crit_edge425
  %i.aak = tail call i64 @clock() #12
  %i.aal = sitofp i64 %i.aak to float
  %i.aam = fdiv float %i.aal, 1.000000e+06
  %i.aan = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.aao = icmp sgt i32 %i.aan, 0
  br i1 %i.aao, label %.preheader52.us.i173.preheader, label %bb.ad

.preheader52.us.i173.preheader:                   ; preds = %bb.w, %.loopexit100.i216
  %storemerge85419 = phi i32 [ %i.afv, %.loopexit100.i216 ], [ 0, %bb.w ]
  br label %.preheader52.us.i173

.preheader52.us.i173:                             ; preds = %.preheader52.us.i173.preheader, %._crit_edge.us.i183
  %indvars.iv64.i174 = phi i64 [ %indvars.iv.next65.i184, %._crit_edge.us.i183 ], [ 0, %.preheader52.us.i173.preheader ] ; 2 uses
  %.04455.us.i175 = phi i32 [ %i.aav, %._crit_edge.us.i183 ], [ 1325, %.preheader52.us.i173.preheader ]
  %invariant.gep.i176.idx = mul nuw nsw i64 %indvars.iv64.i174, 804
  %invariant.gep.i176 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i176.idx ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader52.us.i173
  %indvars.iv.i177 = phi i64 [ 0, %.preheader52.us.i173 ], [ %indvars.iv.next.i181.1, %bb.x ] ; 3 uses
  %.14553.us.i178 = phi i32 [ %.04455.us.i175, %.preheader52.us.i173 ], [ %i.aav, %bb.x ] ; 2 uses
  %i.aap = mul nuw nsw i32 %.14553.us.i178, 3125
  %i.aaq = and i32 %i.aap, 65535
  %i.aar = add nsw i32 %i.aaq, -32768
  %i.aas = sitofp i32 %i.aar to float
  %i.aat = fmul nnan float %i.aas, f0x38800000
  %gep.i179 = getelementptr [4 x i8], ptr %invariant.gep.i176, i64 %indvars.iv.i177
  store float %i.aat, ptr %gep.i179, align 4, !tbaa !11
  %i.aau = mul nsw i32 %.14553.us.i178, 761
  %i.aav = and i32 %i.aau, 65535                  ; 3 uses
  %i.aaw = add nsw i32 %i.aav, -32768
  %i.aax = sitofp i32 %i.aaw to float
  %i.aay = fmul nnan float %i.aax, f0x38800000
  %i.aaz = getelementptr [4 x i8], ptr %invariant.gep.i176, i64 %indvars.iv.i177
  %gep.i179.1 = getelementptr i8, ptr %i.aaz, i64 4
  store float %i.aay, ptr %gep.i179.1, align 4, !tbaa !11
  %indvars.iv.next.i181.1 = add nuw nsw i64 %indvars.iv.i177, 2 ; 2 uses
  %exitcond.not.i182.1 = icmp eq i64 %indvars.iv.next.i181.1, 100
  br i1 %exitcond.not.i182.1, label %._crit_edge.us.i183, label %bb.x, !llvm.loop !13

._crit_edge.us.i183:                              ; preds = %bb.x
  %indvars.iv.next65.i184 = add nuw nsw i64 %indvars.iv64.i174, 1 ; 2 uses
  %exitcond68.not.i185 = icmp eq i64 %indvars.iv.next65.i184, 100
  br i1 %exitcond68.not.i185, label %.preheader51.i186, label %.preheader52.us.i173, !llvm.loop !15

.preheader51.i186:                                ; preds = %._crit_edge.us.i183
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1344 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1347 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1349 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1352 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1355 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1358 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1361 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1364 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1367 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1370 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1373 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1376 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1379 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1382 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1385 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1388 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1391 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1394 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1397 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1400 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1403 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1406 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1409 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1412 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1415 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1417 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1419 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1421 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i187

.preheader.us.i187:                               ; preds = %.preheader.us.i187, %.preheader51.i186
  %i.aba = phi float [ %.promoted1421, %.preheader51.i186 ], [ %i.adh, %.preheader.us.i187 ]
  %i.abb = phi float [ %.promoted1419, %.preheader51.i186 ], [ %i.adf, %.preheader.us.i187 ]
  %i.abc = phi float [ %.promoted1417, %.preheader51.i186 ], [ %i.add, %.preheader.us.i187 ]
  %i.abd = phi float [ %.promoted1415, %.preheader51.i186 ], [ %i.adb, %.preheader.us.i187 ]
  %wide.load720.111413 = phi <4 x float> [ %.promoted1412, %.preheader51.i186 ], [ %i.acz, %.preheader.us.i187 ]
  %wide.load719.111410 = phi <4 x float> [ %.promoted1409, %.preheader51.i186 ], [ %i.acy, %.preheader.us.i187 ]
  %wide.load720.101407 = phi <4 x float> [ %.promoted1406, %.preheader51.i186 ], [ %i.acv, %.preheader.us.i187 ]
  %wide.load719.101404 = phi <4 x float> [ %.promoted1403, %.preheader51.i186 ], [ %i.acu, %.preheader.us.i187 ]
  %wide.load720.91401 = phi <4 x float> [ %.promoted1400, %.preheader51.i186 ], [ %i.acr, %.preheader.us.i187 ]
  %wide.load719.91398 = phi <4 x float> [ %.promoted1397, %.preheader51.i186 ], [ %i.acq, %.preheader.us.i187 ]
  %wide.load720.81395 = phi <4 x float> [ %.promoted1394, %.preheader51.i186 ], [ %i.acn, %.preheader.us.i187 ]
  %wide.load719.81392 = phi <4 x float> [ %.promoted1391, %.preheader51.i186 ], [ %i.acm, %.preheader.us.i187 ]
  %wide.load720.71389 = phi <4 x float> [ %.promoted1388, %.preheader51.i186 ], [ %i.acj, %.preheader.us.i187 ]
  %wide.load719.71386 = phi <4 x float> [ %.promoted1385, %.preheader51.i186 ], [ %i.aci, %.preheader.us.i187 ]
  %wide.load720.61383 = phi <4 x float> [ %.promoted1382, %.preheader51.i186 ], [ %i.acf, %.preheader.us.i187 ]
  %wide.load719.61380 = phi <4 x float> [ %.promoted1379, %.preheader51.i186 ], [ %i.ace, %.preheader.us.i187 ]
  %wide.load720.51377 = phi <4 x float> [ %.promoted1376, %.preheader51.i186 ], [ %i.acb, %.preheader.us.i187 ]
  %wide.load719.51374 = phi <4 x float> [ %.promoted1373, %.preheader51.i186 ], [ %i.aca, %.preheader.us.i187 ]
  %wide.load720.41371 = phi <4 x float> [ %.promoted1370, %.preheader51.i186 ], [ %i.abx, %.preheader.us.i187 ]
  %wide.load719.41368 = phi <4 x float> [ %.promoted1367, %.preheader51.i186 ], [ %i.abw, %.preheader.us.i187 ]
  %wide.load720.31365 = phi <4 x float> [ %.promoted1364, %.preheader51.i186 ], [ %i.abt, %.preheader.us.i187 ]
  %wide.load719.31362 = phi <4 x float> [ %.promoted1361, %.preheader51.i186 ], [ %i.abs, %.preheader.us.i187 ]
  %wide.load720.21359 = phi <4 x float> [ %.promoted1358, %.preheader51.i186 ], [ %i.abp, %.preheader.us.i187 ]
  %wide.load719.21356 = phi <4 x float> [ %.promoted1355, %.preheader51.i186 ], [ %i.abo, %.preheader.us.i187 ]
  %wide.load720.11353 = phi <4 x float> [ %.promoted1352, %.preheader51.i186 ], [ %i.abl, %.preheader.us.i187 ]
  %wide.load719.11350 = phi <4 x float> [ %.promoted1349, %.preheader51.i186 ], [ %i.abk, %.preheader.us.i187 ]
  %i.abe = phi <4 x float> [ %.promoted1347, %.preheader51.i186 ], [ %i.abh, %.preheader.us.i187 ]
  %wide.load7191345 = phi <4 x float> [ %main.b.promoted1344, %.preheader51.i186 ], [ %i.abg, %.preheader.us.i187 ]
  %indvars.iv77.i188 = phi i64 [ 0, %.preheader51.i186 ], [ %indvars.iv.next78.i195, %.preheader.us.i187 ] ; 2 uses
  %invariant.gep82.i189.idx = mul nuw nsw i64 %indvars.iv77.i188, 804
  %invariant.gep82.i189 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i189.idx ; 28 uses
  %i.abf = getelementptr i8, ptr %invariant.gep82.i189, i64 16
  %wide.load721 = load <4 x float>, ptr %invariant.gep82.i189, align 4, !tbaa !11
  %wide.load722 = load <4 x float>, ptr %i.abf, align 4, !tbaa !11
  %i.abg = fadd <4 x float> %wide.load7191345, %wide.load721 ; 2 uses
  %i.abh = fadd <4 x float> %i.abe, %wide.load722 ; 2 uses
  %i.abi = getelementptr i8, ptr %invariant.gep82.i189, i64 32
  %i.abj = getelementptr i8, ptr %invariant.gep82.i189, i64 48
  %wide.load721.1 = load <4 x float>, ptr %i.abi, align 4, !tbaa !11
  %wide.load722.1 = load <4 x float>, ptr %i.abj, align 4, !tbaa !11
  %i.abk = fadd <4 x float> %wide.load719.11350, %wide.load721.1 ; 2 uses
  %i.abl = fadd <4 x float> %wide.load720.11353, %wide.load722.1 ; 2 uses
  %i.abm = getelementptr i8, ptr %invariant.gep82.i189, i64 64
  %i.abn = getelementptr i8, ptr %invariant.gep82.i189, i64 80
  %wide.load721.2 = load <4 x float>, ptr %i.abm, align 4, !tbaa !11
  %wide.load722.2 = load <4 x float>, ptr %i.abn, align 4, !tbaa !11
  %i.abo = fadd <4 x float> %wide.load719.21356, %wide.load721.2 ; 2 uses
  %i.abp = fadd <4 x float> %wide.load720.21359, %wide.load722.2 ; 2 uses
  %i.abq = getelementptr i8, ptr %invariant.gep82.i189, i64 96
  %i.abr = getelementptr i8, ptr %invariant.gep82.i189, i64 112
  %wide.load721.3 = load <4 x float>, ptr %i.abq, align 4, !tbaa !11
  %wide.load722.3 = load <4 x float>, ptr %i.abr, align 4, !tbaa !11
  %i.abs = fadd <4 x float> %wide.load719.31362, %wide.load721.3 ; 2 uses
  %i.abt = fadd <4 x float> %wide.load720.31365, %wide.load722.3 ; 2 uses
  %i.abu = getelementptr i8, ptr %invariant.gep82.i189, i64 128
  %i.abv = getelementptr i8, ptr %invariant.gep82.i189, i64 144
  %wide.load721.4 = load <4 x float>, ptr %i.abu, align 4, !tbaa !11
  %wide.load722.4 = load <4 x float>, ptr %i.abv, align 4, !tbaa !11
  %i.abw = fadd <4 x float> %wide.load719.41368, %wide.load721.4 ; 2 uses
  %i.abx = fadd <4 x float> %wide.load720.41371, %wide.load722.4 ; 2 uses
  %i.aby = getelementptr i8, ptr %invariant.gep82.i189, i64 160
  %i.abz = getelementptr i8, ptr %invariant.gep82.i189, i64 176
  %wide.load721.5 = load <4 x float>, ptr %i.aby, align 4, !tbaa !11
  %wide.load722.5 = load <4 x float>, ptr %i.abz, align 4, !tbaa !11
  %i.aca = fadd <4 x float> %wide.load719.51374, %wide.load721.5 ; 2 uses
  %i.acb = fadd <4 x float> %wide.load720.51377, %wide.load722.5 ; 2 uses
  %i.acc = getelementptr i8, ptr %invariant.gep82.i189, i64 192
  %i.acd = getelementptr i8, ptr %invariant.gep82.i189, i64 208
  %wide.load721.6 = load <4 x float>, ptr %i.acc, align 4, !tbaa !11
  %wide.load722.6 = load <4 x float>, ptr %i.acd, align 4, !tbaa !11
  %i.ace = fadd <4 x float> %wide.load719.61380, %wide.load721.6 ; 2 uses
  %i.acf = fadd <4 x float> %wide.load720.61383, %wide.load722.6 ; 2 uses
  %i.acg = getelementptr i8, ptr %invariant.gep82.i189, i64 224
  %i.ach = getelementptr i8, ptr %invariant.gep82.i189, i64 240
  %wide.load721.7 = load <4 x float>, ptr %i.acg, align 4, !tbaa !11
  %wide.load722.7 = load <4 x float>, ptr %i.ach, align 4, !tbaa !11
  %i.aci = fadd <4 x float> %wide.load719.71386, %wide.load721.7 ; 2 uses
  %i.acj = fadd <4 x float> %wide.load720.71389, %wide.load722.7 ; 2 uses
  %i.ack = getelementptr i8, ptr %invariant.gep82.i189, i64 256
  %i.acl = getelementptr i8, ptr %invariant.gep82.i189, i64 272
  %wide.load721.8 = load <4 x float>, ptr %i.ack, align 4, !tbaa !11
  %wide.load722.8 = load <4 x float>, ptr %i.acl, align 4, !tbaa !11
  %i.acm = fadd <4 x float> %wide.load719.81392, %wide.load721.8 ; 2 uses
  %i.acn = fadd <4 x float> %wide.load720.81395, %wide.load722.8 ; 2 uses
  %i.aco = getelementptr i8, ptr %invariant.gep82.i189, i64 288
  %i.acp = getelementptr i8, ptr %invariant.gep82.i189, i64 304
  %wide.load721.9 = load <4 x float>, ptr %i.aco, align 4, !tbaa !11
  %wide.load722.9 = load <4 x float>, ptr %i.acp, align 4, !tbaa !11
  %i.acq = fadd <4 x float> %wide.load719.91398, %wide.load721.9 ; 2 uses
  %i.acr = fadd <4 x float> %wide.load720.91401, %wide.load722.9 ; 2 uses
  %i.acs = getelementptr i8, ptr %invariant.gep82.i189, i64 320
  %i.act = getelementptr i8, ptr %invariant.gep82.i189, i64 336
  %wide.load721.10 = load <4 x float>, ptr %i.acs, align 4, !tbaa !11
  %wide.load722.10 = load <4 x float>, ptr %i.act, align 4, !tbaa !11
  %i.acu = fadd <4 x float> %wide.load719.101404, %wide.load721.10 ; 2 uses
  %i.acv = fadd <4 x float> %wide.load720.101407, %wide.load722.10 ; 2 uses
  %i.acw = getelementptr i8, ptr %invariant.gep82.i189, i64 352
  %i.acx = getelementptr i8, ptr %invariant.gep82.i189, i64 368
  %wide.load721.11 = load <4 x float>, ptr %i.acw, align 4, !tbaa !11
  %wide.load722.11 = load <4 x float>, ptr %i.acx, align 4, !tbaa !11
  %i.acy = fadd <4 x float> %wide.load719.111410, %wide.load721.11 ; 2 uses
  %i.acz = fadd <4 x float> %wide.load720.111413, %wide.load722.11 ; 2 uses
  %gep83.i191 = getelementptr i8, ptr %invariant.gep82.i189, i64 384
  %i.ada = load float, ptr %gep83.i191, align 4, !tbaa !11
  %i.adb = fadd float %i.abd, %i.ada              ; 2 uses
  %gep83.i191.1 = getelementptr i8, ptr %invariant.gep82.i189, i64 388
  %i.adc = load float, ptr %gep83.i191.1, align 4, !tbaa !11
  %i.add = fadd float %i.abc, %i.adc              ; 2 uses
  %gep83.i191.2 = getelementptr i8, ptr %invariant.gep82.i189, i64 392
  %i.ade = load float, ptr %gep83.i191.2, align 4, !tbaa !11
  %i.adf = fadd float %i.abb, %i.ade              ; 2 uses
  %gep83.i191.3 = getelementptr i8, ptr %invariant.gep82.i189, i64 396
  %i.adg = load float, ptr %gep83.i191.3, align 4, !tbaa !11
  %i.adh = fadd float %i.aba, %i.adg              ; 2 uses
  %indvars.iv.next78.i195 = add nuw nsw i64 %indvars.iv77.i188, 1 ; 2 uses
  %exitcond81.not.i196 = icmp eq i64 %indvars.iv.next78.i195, 100
  br i1 %exitcond81.not.i196, label %.lr.ph103.i198.preheader.preheader, label %.preheader.us.i187, !llvm.loop !16

.lr.ph103.i198.preheader.preheader:               ; preds = %.preheader.us.i187
  store <4 x float> %i.abg, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.abh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.abk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.abl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.abo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.abp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.abs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.abt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.abw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.abx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.aca, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.acb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.ace, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.acf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.aci, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.acj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.acm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.acn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.acq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.acr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.acu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.acv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.acy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.acz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.adb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.add, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.adf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.adh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i198.preheader

.lr.ph103.i198.preheader:                         ; preds = %.lr.ph103.i198.preheader.preheader, %.loopexit.i213
  %i.adi = phi i32 [ %i.afu, %.loopexit.i213 ], [ 0, %.lr.ph103.i198.preheader.preheader ]
  %indvars.iv107.i199 = phi i64 [ %indvars.iv.next108.i202, %.loopexit.i213 ], [ 0, %.lr.ph103.i198.preheader.preheader ] ; 12 uses
  %indvars.iv.i200 = phi i64 [ %indvars.iv.next.i214, %.loopexit.i213 ], [ 1, %.lr.ph103.i198.preheader.preheader ] ; 2 uses
  %2 = sub nsw i64 99, %indvars.iv107.i199        ; 3 uses
  %i.adj = sub nsw i64 99, %indvars.iv107.i199    ; 3 uses
  %indvars109.i201 = trunc i64 %indvars.iv107.i199 to i32 ; 2 uses
  %indvars.iv.next108.i202 = add nuw nsw i64 %indvars.iv107.i199, 1 ; 2 uses
  %i.adk = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i199
  %i.adl = mul nuw nsw i64 %indvars.iv107.i199, 804
  %i.adm = getelementptr i8, ptr %i.adk, i64 %i.adl ; 7 uses
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !11
  %i.ado = tail call float @llvm.fabs.f32(float %i.adn) ; 2 uses
  %xtraiter846 = and i64 %2, 1
  %i.adp = icmp eq i64 %indvars.iv107.i199, 98
  br i1 %i.adp, label %.lr.ph48.i.i203.epil.preheader, label %.lr.ph103.i198.preheader.new

.lr.ph103.i198.preheader.new:                     ; preds = %.lr.ph103.i198.preheader
  %unroll_iter850 = and i64 %2, -2
  br label %.lr.ph48.i.i203

.lr.ph48.i.i203:                                  ; preds = %.lr.ph48.i.i203, %.lr.ph103.i198.preheader.new
  %indvars.iv52.i.i204 = phi i64 [ 1, %.lr.ph103.i198.preheader.new ], [ %indvars.iv.next53.i.i209.1, %.lr.ph48.i.i203 ] ; 4 uses
  %.247.i.i205 = phi i32 [ 0, %.lr.ph103.i198.preheader.new ], [ %.3.i.i208.1, %.lr.ph48.i.i203 ]
  %.23345.i.i206 = phi float [ %i.ado, %.lr.ph103.i198.preheader.new ], [ %.334.i.i207.1, %.lr.ph48.i.i203 ] ; 2 uses
  %niter851 = phi i64 [ 0, %.lr.ph103.i198.preheader.new ], [ %niter851.next.1, %.lr.ph48.i.i203 ]
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv52.i.i204
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !11
  %i.ads = tail call float @llvm.fabs.f32(float %i.adr) ; 2 uses
  %i.adt = fcmp ogt float %i.ads, %.23345.i.i206  ; 2 uses
  %.334.i.i207 = select i1 %i.adt, float %i.ads, float %.23345.i.i206 ; 2 uses
  %i.adu = trunc nuw nsw i64 %indvars.iv52.i.i204 to i32
  %.3.i.i208 = select i1 %i.adt, i32 %i.adu, i32 %.247.i.i205
  %indvars.iv.next53.i.i209 = add nuw nsw i64 %indvars.iv52.i.i204, 1 ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv.next53.i.i209
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !11
  %i.adx = tail call float @llvm.fabs.f32(float %i.adw) ; 2 uses
  %i.ady = fcmp ogt float %i.adx, %.334.i.i207    ; 2 uses
  %.334.i.i207.1 = select i1 %i.ady, float %i.adx, float %.334.i.i207 ; 2 uses
  %i.adz = trunc nuw nsw i64 %indvars.iv.next53.i.i209 to i32
  %.3.i.i208.1 = select i1 %i.ady, i32 %i.adz, i32 %.3.i.i208 ; 3 uses
  %indvars.iv.next53.i.i209.1 = add nuw nsw i64 %indvars.iv52.i.i204, 2 ; 2 uses
  %niter851.next.1 = add i64 %niter851, 2         ; 2 uses
  %niter851.ncmp.1 = icmp eq i64 %niter851.next.1, %unroll_iter850
  br i1 %niter851.ncmp.1, label %idamax.exit.i211.unr-lcssa, label %.lr.ph48.i.i203, !llvm.loop !27

idamax.exit.i211.unr-lcssa:                       ; preds = %.lr.ph48.i.i203
  %lcmp.mod847.not = icmp eq i64 %xtraiter846, 0
  br i1 %lcmp.mod847.not, label %idamax.exit.i211, label %.lr.ph48.i.i203.epil.preheader

.lr.ph48.i.i203.epil.preheader:                   ; preds = %idamax.exit.i211.unr-lcssa, %.lr.ph103.i198.preheader
  %indvars.iv52.i.i204.epil.init = phi i64 [ 1, %.lr.ph103.i198.preheader ], [ %indvars.iv.next53.i.i209.1, %idamax.exit.i211.unr-lcssa ] ; 2 uses
  %.247.i.i205.epil.init = phi i32 [ 0, %.lr.ph103.i198.preheader ], [ %.3.i.i208.1, %idamax.exit.i211.unr-lcssa ]
  %.23345.i.i206.epil.init = phi float [ %i.ado, %.lr.ph103.i198.preheader ], [ %.334.i.i207.1, %idamax.exit.i211.unr-lcssa ]
  %lcmp.mod849 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod849)
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv52.i.i204.epil.init
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !11
  %i.aec = tail call float @llvm.fabs.f32(float %i.aeb)
  %i.aed = fcmp ogt float %i.aec, %.23345.i.i206.epil.init
  %i.aee = trunc nuw nsw i64 %indvars.iv52.i.i204.epil.init to i32
  %.3.i.i208.epil = select i1 %i.aed, i32 %i.aee, i32 %.247.i.i205.epil.init
  br label %idamax.exit.i211

idamax.exit.i211:                                 ; preds = %idamax.exit.i211.unr-lcssa, %.lr.ph48.i.i203.epil.preheader
  %.3.i.i208.lcssa = phi i32 [ %.3.i.i208.1, %idamax.exit.i211.unr-lcssa ], [ %.3.i.i208.epil, %.lr.ph48.i.i203.epil.preheader ] ; 2 uses
  %i.aef = add nsw i32 %.3.i.i208.lcssa, %indvars109.i201 ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i199
  store i32 %i.aef, ptr %i.aeg, align 4, !tbaa !4
  %i.aeh = sext i32 %i.aef to i64                 ; 2 uses
  %.idx391 = mul nuw nsw i64 %indvars.iv107.i199, 804
  %i.aei = getelementptr i8, ptr @main.a, i64 %.idx391
  %i.aej = getelementptr [4 x i8], ptr %i.aei, i64 %i.aeh ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !11 ; 3 uses
  %i.ael = fcmp une float %i.aek, 0.000000e+00
  br i1 %i.ael, label %bb.y, label %.loopexit.i213

bb.y:                                             ; preds = %idamax.exit.i211
  %.not.i217 = icmp eq i32 %.3.i.i208.lcssa, 0    ; 2 uses
  %.pre.i218 = load float, ptr %i.adm, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i217, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store float %.pre.i218, ptr %i.aej, align 4, !tbaa !11
  store float %i.aek, ptr %i.adm, align 4, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.aem = phi float [ %i.aek, %bb.z ], [ %.pre.i218, %bb.y ]
  %i.aen = fdiv float -1.000000e+00, %i.aem       ; 2 uses
  %i.aeo = sub nuw nsw i64 99, %indvars.iv107.i199 ; 4 uses
  %i.aep = getelementptr i8, ptr %i.adm, i64 4    ; 4 uses
  %min.iters.check701 = icmp samesign ugt i64 %indvars.iv107.i199, 91
  br i1 %min.iters.check701, label %.lr.ph25.i.i219.preheader, label %vector.ph702

vector.ph702:                                     ; preds = %bb.aa
  %n.vec704 = and i64 %i.aeo, 120                 ; 3 uses
  %broadcast.splatinsert705 = insertelement <4 x float> poison, float %i.aen, i64 0
  %broadcast.splat706 = shufflevector <4 x float> %broadcast.splatinsert705, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph702
  %index708 = phi i64 [ 0, %vector.ph702 ], [ %index.next711, %vector.body707 ] ; 2 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %index708 ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16 ; 2 uses
  %wide.load709 = load <4 x float>, ptr %i.aeq, align 4, !tbaa !11
  %wide.load710 = load <4 x float>, ptr %i.aer, align 4, !tbaa !11
  %i.aes = fmul <4 x float> %broadcast.splat706, %wide.load709
  %i.aet = fmul <4 x float> %broadcast.splat706, %wide.load710
  store <4 x float> %i.aes, ptr %i.aeq, align 4, !tbaa !11
  store <4 x float> %i.aet, ptr %i.aer, align 4, !tbaa !11
  %index.next711 = add nuw i64 %index708, 8       ; 2 uses
  %i.aeu = icmp eq i64 %index.next711, %n.vec704
  br i1 %i.aeu, label %middle.block712, label %vector.body707, !llvm.loop !36

middle.block712:                                  ; preds = %vector.body707
  %cmp.n713 = icmp eq i64 %i.aeo, %n.vec704
  br i1 %cmp.n713, label %.lr.ph.i223, label %.lr.ph25.i.i219.preheader

.lr.ph25.i.i219.preheader:                        ; preds = %bb.aa, %middle.block712
  %indvars.iv28.i.i220.ph = phi i64 [ 0, %bb.aa ], [ %n.vec704, %middle.block712 ]
  br label %.lr.ph25.i.i219

.lr.ph25.i.i219:                                  ; preds = %.lr.ph25.i.i219.preheader, %.lr.ph25.i.i219
  %indvars.iv28.i.i220 = phi i64 [ %indvars.iv.next29.i.i221, %.lr.ph25.i.i219 ], [ %indvars.iv28.i.i220.ph, %.lr.ph25.i.i219.preheader ] ; 2 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv28.i.i220 ; 2 uses
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !11
  %i.aex = fmul float %i.aen, %i.aew
  store float %i.aex, ptr %i.aev, align 4, !tbaa !11
  %indvars.iv.next29.i.i221 = add nuw nsw i64 %indvars.iv28.i.i220, 1 ; 2 uses
  %exitcond.not.i.i222 = icmp eq i64 %indvars.iv.next29.i.i221, %i.aeo
  br i1 %exitcond.not.i.i222, label %.lr.ph.i223, label %.lr.ph25.i.i219, !llvm.loop !37

.lr.ph.i223:                                      ; preds = %.lr.ph25.i.i219, %middle.block712
  %invariant.gep.i224 = getelementptr [4 x i8], ptr @main.a, i64 %i.aeh
  %min.iters.check684 = icmp ult i64 %i.adj, 8
  %n.vec687 = and i64 %i.adj, -8                  ; 3 uses
  %cmp.n698 = icmp eq i64 %i.adj, %n.vec687
  br label %bb.ab

bb.ab:                                            ; preds = %daxpy.exit.i233, %.lr.ph.i223
  %indvars.iv104.i225 = phi i64 [ %indvars.iv.i200, %.lr.ph.i223 ], [ %indvars.iv.next105.i234, %daxpy.exit.i233 ] ; 2 uses
  %i.aey = mul nuw nsw i64 %indvars.iv104.i225, 201 ; 2 uses
  %gep.i226 = getelementptr [4 x i8], ptr %invariant.gep.i224, i64 %i.aey ; 2 uses
  %i.aez = load float, ptr %gep.i226, align 4, !tbaa !11 ; 4 uses
  %.pre112.i227 = add nuw nsw i64 %i.aey, %indvars.iv107.i199 ; 2 uses
  br i1 %.not.i217, label %._crit_edge.i228, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre112.i227 ; 2 uses
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !11
  store float %i.afb, ptr %gep.i226, align 4, !tbaa !11
  store float %i.aez, ptr %i.afa, align 4, !tbaa !11
  br label %._crit_edge.i228

._crit_edge.i228:                                 ; preds = %bb.ac, %bb.ab
  %i.afc = getelementptr [4 x i8], ptr @main.a, i64 %.pre112.i227
  %i.afd = getelementptr i8, ptr %i.afc, i64 4    ; 2 uses
  %i.afe = fcmp oeq float %i.aez, 0.000000e+00
  br i1 %i.afe, label %daxpy.exit.i233, label %.lr.ph.i.i229.preheader

.lr.ph.i.i229.preheader:                          ; preds = %._crit_edge.i228
  br i1 %min.iters.check684, label %.lr.ph.i.i229.preheader816, label %vector.ph685

vector.ph685:                                     ; preds = %.lr.ph.i.i229.preheader
  %broadcast.splatinsert688 = insertelement <4 x float> poison, float %i.aez, i64 0
  %broadcast.splat689 = shufflevector <4 x float> %broadcast.splatinsert688, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph685
  %index691 = phi i64 [ 0, %vector.ph685 ], [ %index.next696, %vector.body690 ] ; 3 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %index691 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 16 ; 2 uses
  %wide.load692 = load <4 x float>, ptr %i.aff, align 4, !tbaa !11
  %wide.load693 = load <4 x float>, ptr %i.afg, align 4, !tbaa !11
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %index691 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %wide.load694 = load <4 x float>, ptr %i.afh, align 4, !tbaa !11
  %wide.load695 = load <4 x float>, ptr %i.afi, align 4, !tbaa !11
  %i.afj = fmul <4 x float> %broadcast.splat689, %wide.load694
  %i.afk = fmul <4 x float> %broadcast.splat689, %wide.load695
  %i.afl = fadd <4 x float> %wide.load692, %i.afj
  %i.afm = fadd <4 x float> %wide.load693, %i.afk
  store <4 x float> %i.afl, ptr %i.aff, align 4, !tbaa !11
  store <4 x float> %i.afm, ptr %i.afg, align 4, !tbaa !11
  %index.next696 = add nuw i64 %index691, 8       ; 2 uses
  %i.afn = icmp eq i64 %index.next696, %n.vec687
  br i1 %i.afn, label %middle.block697, label %vector.body690, !llvm.loop !38

middle.block697:                                  ; preds = %vector.body690
  br i1 %cmp.n698, label %daxpy.exit.i233, label %.lr.ph.i.i229.preheader816

.lr.ph.i.i229.preheader816:                       ; preds = %.lr.ph.i.i229.preheader, %middle.block697
  %indvars.iv.i.i230.ph = phi i64 [ 0, %.lr.ph.i.i229.preheader ], [ %n.vec687, %middle.block697 ]
  br label %.lr.ph.i.i229

.lr.ph.i.i229:                                    ; preds = %.lr.ph.i.i229.preheader816, %.lr.ph.i.i229
  %indvars.iv.i.i230 = phi i64 [ %indvars.iv.next.i.i231, %.lr.ph.i.i229 ], [ %indvars.iv.i.i230.ph, %.lr.ph.i.i229.preheader816 ] ; 3 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv.i.i230 ; 2 uses
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !11
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.i.i230
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !11
  %i.afs = fmul float %i.aez, %i.afr
  %i.aft = fadd float %i.afp, %i.afs
  store float %i.aft, ptr %i.afo, align 4, !tbaa !11
  %indvars.iv.next.i.i231 = add nuw nsw i64 %indvars.iv.i.i230, 1 ; 2 uses
  %exitcond.not.i99.i232 = icmp eq i64 %indvars.iv.next.i.i231, %i.aeo
  br i1 %exitcond.not.i99.i232, label %daxpy.exit.i233, label %.lr.ph.i.i229, !llvm.loop !39

daxpy.exit.i233:                                  ; preds = %.lr.ph.i.i229, %middle.block697, %._crit_edge.i228
  %indvars.iv.next105.i234 = add nuw nsw i64 %indvars.iv104.i225, 1 ; 2 uses
  %exitcond.not.i235 = icmp eq i64 %indvars.iv.next105.i234, 100
  br i1 %exitcond.not.i235, label %.loopexit.i213, label %bb.ab, !llvm.loop !32

.loopexit.i213:                                   ; preds = %daxpy.exit.i233, %idamax.exit.i211
  %i.afu = phi i32 [ %indvars109.i201, %idamax.exit.i211 ], [ %i.adi, %daxpy.exit.i233 ] ; 2 uses
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i200, 1
  %exitcond111.not.i215 = icmp eq i64 %indvars.iv.next108.i202, 99
  br i1 %exitcond111.not.i215, label %.loopexit100.i216, label %.lr.ph103.i198.preheader, !llvm.loop !33

.loopexit100.i216:                                ; preds = %.loopexit.i213
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.afv = add nuw nsw i32 %storemerge85419, 1    ; 2 uses
  %exitcond469.not = icmp eq i32 %i.afv, %i.aan
  br i1 %exitcond469.not, label %._crit_edge420, label %.preheader52.us.i173.preheader, !llvm.loop !40

._crit_edge420:                                   ; preds = %.loopexit100.i216
  %i.afw = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.afx = fcmp oeq float %i.afw, 0.000000e+00
  %i.afy = select i1 %i.afx, i32 99, i32 %i.afu
  store i32 %i.afy, ptr @main.info, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge420, %bb.w
  %i.afz = tail call i64 @clock() #12
  %i.aga = sitofp i64 %i.afz to float
  %i.agb = fdiv float %i.aga, 1.000000e+06
  %i.agc = fsub float %i.agb, %i.aam
  %i.agd = fsub float %i.agc, %i.aaj
  %i.age = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.agf = sitofp i32 %i.age to float
  %i.agg = fdiv float %i.agd, %i.agf
  %i.agh = load i32, ptr @main.j, align 4, !tbaa !4
  %i.agi = sext i32 %i.agh to i64
  %i.agj = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.agi
  store float %i.agg, ptr %i.agj, align 4, !tbaa !11
  %i.agk = tail call i64 @clock() #12
  %i.agl = sitofp i64 %i.agk to float
  %i.agm = fdiv float %i.agl, 1.000000e+06
  %i.agn = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.ago = icmp sgt i32 %i.agn, 0
  br i1 %i.ago, label %.preheader394, label %._crit_edge425

.preheader394:                                    ; preds = %bb.ad, %dgesl.exit259
  %storemerge86424 = phi i32 [ %i.ais, %dgesl.exit259 ], [ 0, %bb.ad ]
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader394, %daxpy.exit.i244
  %indvars.iv146.i237 = phi i64 [ %indvars.iv.next147.i239, %daxpy.exit.i244 ], [ 0, %.preheader394 ] ; 7 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i237
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !4 ; 2 uses
  %i.agr = sext i32 %i.agq to i64
  %i.ags = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.agr ; 2 uses
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !11 ; 4 uses
  %i.agu = zext i32 %i.agq to i64
  %.not103.i238 = icmp eq i64 %indvars.iv146.i237, %i.agu
  br i1 %.not103.i238, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i237 ; 2 uses
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !11
  store float %i.agw, ptr %i.ags, align 4, !tbaa !11
  store float %i.agt, ptr %i.agv, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next147.i239 = add nuw nsw i64 %indvars.iv146.i237, 1 ; 3 uses
  %i.agx = mul nuw nsw i64 %indvars.iv146.i237, 808
  %i.agy = getelementptr i8, ptr @main.a, i64 %i.agx
  %i.agz = getelementptr i8, ptr %i.agy, i64 4    ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i239 ; 2 uses
  %i.ahb = fcmp oeq float %i.agt, 0.000000e+00
  br i1 %i.ahb, label %daxpy.exit.i244, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ahc = sub nuw nsw i64 99, %indvars.iv146.i237 ; 3 uses
  %min.iters.check667 = icmp samesign ugt i64 %indvars.iv146.i237, 91
  br i1 %min.iters.check667, label %.lr.ph.i.i240.preheader, label %vector.ph668

vector.ph668:                                     ; preds = %bb.ah
  %n.vec670 = and i64 %i.ahc, 120                 ; 3 uses
  %broadcast.splatinsert671 = insertelement <4 x float> poison, float %i.agt, i64 0
  %broadcast.splat672 = shufflevector <4 x float> %broadcast.splatinsert671, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph668
  %index674 = phi i64 [ 0, %vector.ph668 ], [ %index.next679, %vector.body673 ] ; 3 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %index674 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16 ; 2 uses
  %wide.load675 = load <4 x float>, ptr %i.ahd, align 4, !tbaa !11
  %wide.load676 = load <4 x float>, ptr %i.ahe, align 4, !tbaa !11
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %index674 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %wide.load677 = load <4 x float>, ptr %i.ahf, align 4, !tbaa !11
  %wide.load678 = load <4 x float>, ptr %i.ahg, align 4, !tbaa !11
  %i.ahh = fmul <4 x float> %broadcast.splat672, %wide.load677
  %i.ahi = fmul <4 x float> %broadcast.splat672, %wide.load678
  %i.ahj = fadd <4 x float> %wide.load675, %i.ahh
  %i.ahk = fadd <4 x float> %wide.load676, %i.ahi
  store <4 x float> %i.ahj, ptr %i.ahd, align 4, !tbaa !11
  store <4 x float> %i.ahk, ptr %i.ahe, align 4, !tbaa !11
  %index.next679 = add nuw i64 %index674, 8       ; 2 uses
  %i.ahl = icmp eq i64 %index.next679, %n.vec670
  br i1 %i.ahl, label %middle.block680, label %vector.body673, !llvm.loop !41

middle.block680:                                  ; preds = %vector.body673
  %cmp.n681 = icmp eq i64 %i.ahc, %n.vec670
  br i1 %cmp.n681, label %daxpy.exit.i244, label %.lr.ph.i.i240.preheader

.lr.ph.i.i240.preheader:                          ; preds = %bb.ah, %middle.block680
  %indvars.iv.i.i241.ph = phi i64 [ 0, %bb.ah ], [ %n.vec670, %middle.block680 ]
  br label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %.lr.ph.i.i240.preheader, %.lr.ph.i.i240
  %indvars.iv.i.i241 = phi i64 [ %indvars.iv.next.i.i242, %.lr.ph.i.i240 ], [ %indvars.iv.i.i241.ph, %.lr.ph.i.i240.preheader ] ; 3 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv.i.i241 ; 2 uses
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !11
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.i.i241
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !11
  %i.ahq = fmul float %i.agt, %i.ahp
  %i.ahr = fadd float %i.ahn, %i.ahq
  store float %i.ahr, ptr %i.ahm, align 4, !tbaa !11
  %indvars.iv.next.i.i242 = add nuw nsw i64 %indvars.iv.i.i241, 1 ; 2 uses
  %exitcond.not.i.i243 = icmp eq i64 %indvars.iv.next.i.i242, %i.ahc
  br i1 %exitcond.not.i.i243, label %daxpy.exit.i244, label %.lr.ph.i.i240, !llvm.loop !42

daxpy.exit.i244:                                  ; preds = %.lr.ph.i.i240, %middle.block680, %bb.ag
  %exitcond150.not.i245 = icmp eq i64 %indvars.iv.next147.i239, 99
  br i1 %exitcond150.not.i245, label %.lr.ph136.i247, label %bb.ae, !llvm.loop !21

.lr.ph136.i247:                                   ; preds = %daxpy.exit.i244, %daxpy.exit110.i256
  %indvars.iv151.i248 = phi i64 [ %indvars.iv.next152.i249, %daxpy.exit110.i256 ], [ 0, %daxpy.exit.i244 ] ; 4 uses
  %3 = sub nsw i64 99, %indvars.iv151.i248        ; 3 uses
  %indvars.iv.next152.i249 = add nuw nsw i64 %indvars.iv151.i248, 1 ; 2 uses
  %i.ahs = sub nuw nsw i64 99, %indvars.iv151.i248 ; 5 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.ahs ; 2 uses
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !11
  %i.ahv = getelementptr [4 x i8], ptr @main.a, i64 %i.ahs
  %i.ahw = mul nuw nsw i64 %i.ahs, 804
  %i.ahx = getelementptr i8, ptr %i.ahv, i64 %i.ahw
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !11
  %i.ahz = fdiv float %i.ahu, %i.ahy              ; 4 uses
  store float %i.ahz, ptr %i.aht, align 4, !tbaa !11
  %.idx389 = mul nuw nsw i64 %i.ahs, 804
  %i.aia = getelementptr inbounds nuw i8, ptr @main.a, i64 %.idx389 ; 2 uses
  %i.aib = icmp samesign ugt i64 %indvars.iv151.i248, 98
  %i.aic = fcmp oeq float %i.ahz, 0.000000e+00
  %or.cond41.i104.i251 = or i1 %i.aib, %i.aic
  br i1 %or.cond41.i104.i251, label %daxpy.exit110.i256, label %.lr.ph.i106.i252.preheader

.lr.ph.i106.i252.preheader:                       ; preds = %.lr.ph136.i247
  %min.iters.check650 = icmp ult i64 %3, 8
  br i1 %min.iters.check650, label %.lr.ph.i106.i252.preheader817, label %vector.ph651

vector.ph651:                                     ; preds = %.lr.ph.i106.i252.preheader
  %n.vec653 = and i64 %3, -8                      ; 3 uses
  %broadcast.splatinsert654 = insertelement <4 x float> poison, float %i.ahz, i64 0
  %broadcast.splat655 = shufflevector <4 x float> %broadcast.splatinsert654, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %vector.ph651
  %index657 = phi i64 [ 0, %vector.ph651 ], [ %index.next662, %vector.body656 ] ; 3 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index657 ; 3 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16 ; 2 uses
  %wide.load658 = load <4 x float>, ptr %i.aid, align 16, !tbaa !11
  %wide.load659 = load <4 x float>, ptr %i.aie, align 16, !tbaa !11
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %index657 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 16
  %wide.load660 = load <4 x float>, ptr %i.aif, align 4, !tbaa !11
  %wide.load661 = load <4 x float>, ptr %i.aig, align 4, !tbaa !11
  %i.aih = fmul <4 x float> %broadcast.splat655, %wide.load660
  %i.aii = fmul <4 x float> %broadcast.splat655, %wide.load661
  %i.aij = fsub <4 x float> %wide.load658, %i.aih
  %i.aik = fsub <4 x float> %wide.load659, %i.aii
  store <4 x float> %i.aij, ptr %i.aid, align 16, !tbaa !11
  store <4 x float> %i.aik, ptr %i.aie, align 16, !tbaa !11
  %index.next662 = add nuw i64 %index657, 8       ; 2 uses
  %i.ail = icmp eq i64 %index.next662, %n.vec653
  br i1 %i.ail, label %middle.block663, label %vector.body656, !llvm.loop !43

middle.block663:                                  ; preds = %vector.body656
  %cmp.n664 = icmp eq i64 %3, %n.vec653
  br i1 %cmp.n664, label %daxpy.exit110.i256, label %.lr.ph.i106.i252.preheader817

.lr.ph.i106.i252.preheader817:                    ; preds = %.lr.ph.i106.i252.preheader, %middle.block663
  %indvars.iv.i107.i253.ph = phi i64 [ 0, %.lr.ph.i106.i252.preheader ], [ %n.vec653, %middle.block663 ]
  br label %.lr.ph.i106.i252

.lr.ph.i106.i252:                                 ; preds = %.lr.ph.i106.i252.preheader817, %.lr.ph.i106.i252
  %indvars.iv.i107.i253 = phi i64 [ %indvars.iv.next.i108.i254, %.lr.ph.i106.i252 ], [ %indvars.iv.i107.i253.ph, %.lr.ph.i106.i252.preheader817 ] ; 3 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i253 ; 2 uses
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !11
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv.i107.i253
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !11
  %i.aiq = fmul float %i.ahz, %i.aip
  %i.air = fsub float %i.ain, %i.aiq
  store float %i.air, ptr %i.aim, align 4, !tbaa !11
  %indvars.iv.next.i108.i254 = add nuw nsw i64 %indvars.iv.i107.i253, 1 ; 2 uses
  %exitcond.not.i109.i255 = icmp eq i64 %indvars.iv.next.i108.i254, %i.ahs
  br i1 %exitcond.not.i109.i255, label %daxpy.exit110.i256, label %.lr.ph.i106.i252, !llvm.loop !44

daxpy.exit110.i256:                               ; preds = %.lr.ph.i106.i252, %middle.block663, %.lr.ph136.i247
  %exitcond155.not.i257 = icmp eq i64 %indvars.iv.next152.i249, 100
  br i1 %exitcond155.not.i257, label %dgesl.exit259, label %.lr.ph136.i247, !llvm.loop !24

dgesl.exit259:                                    ; preds = %daxpy.exit110.i256
  %i.ais = add nuw nsw i32 %storemerge86424, 1    ; 2 uses
  %exitcond470.not = icmp eq i32 %i.ais, %i.agn
  br i1 %exitcond470.not, label %._crit_edge425, label %.preheader394, !llvm.loop !45

._crit_edge425:                                   ; preds = %dgesl.exit259, %bb.ad
  %i.ait = tail call i64 @clock() #12
  %i.aiu = sitofp i64 %i.ait to float
  %i.aiv = fdiv float %i.aiu, 1.000000e+06
  %i.aiw = fsub float %i.aiv, %i.agm
  %i.aix = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.aiy = sitofp i32 %i.aix to float
  %i.aiz = fdiv float %i.aiw, %i.aiy              ; 2 uses
  %i.aja = load i32, ptr @main.j, align 4, !tbaa !4 ; 3 uses
  %i.ajb = sext i32 %i.aja to i64                 ; 6 uses
  %i.ajc = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), i64 %i.ajb
  store float %i.aiz, ptr %i.ajc, align 4, !tbaa !11
  %i.ajd = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.ajb
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !11
  %i.ajf = fadd float %i.aje, %i.aiz              ; 3 uses
  %i.ajg = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 120), i64 %i.ajb
  store float %i.ajf, ptr %i.ajg, align 4, !tbaa !11
  %i.ajh = fpext float %i.ajf to double
  %i.aji = fmul double %i.ajh, 1.000000e+06
  %i.ajj = fdiv double f0x4124F49560000000, %i.aji
  %i.ajk = fptrunc double %i.ajj to float         ; 3 uses
  %i.ajl = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 180), i64 %i.ajb
  store float %i.ajk, ptr %i.ajl, align 4, !tbaa !11
  %i.ajm = fdiv float 2.000000e+00, %i.ajk
  %i.ajn = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), i64 %i.ajb
  store float %i.ajm, ptr %i.ajn, align 4, !tbaa !11
  %i.ajo = fdiv float %i.ajf, 5.600000e-02
  %i.ajp = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), i64 %i.ajb
  store float %i.ajo, ptr %i.ajp, align 4, !tbaa !11
  %i.ajq = load float, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  %i.ajr = fadd float %i.ajq, %i.ajk              ; 2 uses
  store float %i.ajr, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  %i.ajs = add nsw i32 %i.aja, 1
  store i32 %i.ajs, ptr @main.j, align 4, !tbaa !4
  %i.ajt = icmp slt i32 %i.aja, 5
  br i1 %i.ajt, label %bb.w, label %.preheader52.us.i260.preheader.preheader, !llvm.loop !46

.preheader52.us.i260.preheader.preheader:         ; preds = %._crit_edge425
  %i.aju = fdiv float %i.ajr, 5.000000e+00
  store float %i.aju, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  %i.ajv = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ajw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajv, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
  %i.ajx = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ajy = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %i.ajx) #13 ; 0 uses
  %i.ajz = tail call i64 @clock() #12
  %i.aka = sitofp i64 %i.ajz to float
  %i.akb = fdiv nnan float %i.aka, 1.000000e+06
  br label %.preheader52.us.i260.preheader

.preheader52.us.i260.preheader:                   ; preds = %.preheader52.us.i260.preheader.preheader, %matgen.exit284
  %storemerge81427 = phi i32 [ %i.amv, %matgen.exit284 ], [ 0, %.preheader52.us.i260.preheader.preheader ]
  br label %.preheader52.us.i260

.preheader52.us.i260:                             ; preds = %.preheader52.us.i260.preheader, %._crit_edge.us.i270
  %indvars.iv64.i261 = phi i64 [ %indvars.iv.next65.i271, %._crit_edge.us.i270 ], [ 0, %.preheader52.us.i260.preheader ] ; 2 uses
  %.04455.us.i262 = phi i32 [ %i.aki, %._crit_edge.us.i270 ], [ 1325, %.preheader52.us.i260.preheader ]
  %invariant.gep.i263.idx = mul nuw nsw i64 %indvars.iv64.i261, 800
  %invariant.gep.i263 = getelementptr i8, ptr @main.aa, i64 %invariant.gep.i263.idx ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.preheader52.us.i260
  %indvars.iv.i264 = phi i64 [ 0, %.preheader52.us.i260 ], [ %indvars.iv.next.i268.1, %bb.ai ] ; 3 uses
  %.14553.us.i265 = phi i32 [ %.04455.us.i262, %.preheader52.us.i260 ], [ %i.aki, %bb.ai ] ; 2 uses
  %i.akc = mul nuw nsw i32 %.14553.us.i265, 3125
  %i.akd = and i32 %i.akc, 65535
  %i.ake = add nsw i32 %i.akd, -32768
  %i.akf = sitofp i32 %i.ake to float
  %i.akg = fmul nnan float %i.akf, f0x38800000
  %gep.i266 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i264
  store float %i.akg, ptr %gep.i266, align 8, !tbaa !11
  %i.akh = mul nsw i32 %.14553.us.i265, 761
  %i.aki = and i32 %i.akh, 65535                  ; 3 uses
  %i.akj = add nsw i32 %i.aki, -32768
  %i.akk = sitofp i32 %i.akj to float
  %i.akl = fmul nnan float %i.akk, f0x38800000
  %i.akm = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i264
  %gep.i266.1 = getelementptr i8, ptr %i.akm, i64 4
  store float %i.akl, ptr %gep.i266.1, align 4, !tbaa !11
  %indvars.iv.next.i268.1 = add nuw nsw i64 %indvars.iv.i264, 2 ; 2 uses
  %exitcond.not.i269.1 = icmp eq i64 %indvars.iv.next.i268.1, 100
  br i1 %exitcond.not.i269.1, label %._crit_edge.us.i270, label %bb.ai, !llvm.loop !13

._crit_edge.us.i270:                              ; preds = %bb.ai
  %indvars.iv.next65.i271 = add nuw nsw i64 %indvars.iv64.i261, 1 ; 2 uses
  %exitcond68.not.i272 = icmp eq i64 %indvars.iv.next65.i271, 100
  br i1 %exitcond68.not.i272, label %.preheader51.i273, label %.preheader52.us.i260, !llvm.loop !15

.preheader51.i273:                                ; preds = %._crit_edge.us.i270
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1423 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1426 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1428 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1431 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1434 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1437 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1440 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1443 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1446 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1449 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1452 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1455 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1458 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1461 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1464 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1467 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1470 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1473 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1476 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1479 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1482 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1485 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1488 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1491 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1494 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1496 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1498 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1500 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i274

.preheader.us.i274:                               ; preds = %.preheader.us.i274, %.preheader51.i273
  %i.akn = phi float [ %.promoted1500, %.preheader51.i273 ], [ %i.amu, %.preheader.us.i274 ]
  %i.ako = phi float [ %.promoted1498, %.preheader51.i273 ], [ %i.ams, %.preheader.us.i274 ]
  %i.akp = phi float [ %.promoted1496, %.preheader51.i273 ], [ %i.amq, %.preheader.us.i274 ]
  %i.akq = phi float [ %.promoted1494, %.preheader51.i273 ], [ %i.amo, %.preheader.us.i274 ]
  %wide.load730.111492 = phi <4 x float> [ %.promoted1491, %.preheader51.i273 ], [ %i.amm, %.preheader.us.i274 ]
  %wide.load729.111489 = phi <4 x float> [ %.promoted1488, %.preheader51.i273 ], [ %i.aml, %.preheader.us.i274 ]
  %wide.load730.101486 = phi <4 x float> [ %.promoted1485, %.preheader51.i273 ], [ %i.ami, %.preheader.us.i274 ]
  %wide.load729.101483 = phi <4 x float> [ %.promoted1482, %.preheader51.i273 ], [ %i.amh, %.preheader.us.i274 ]
  %wide.load730.91480 = phi <4 x float> [ %.promoted1479, %.preheader51.i273 ], [ %i.ame, %.preheader.us.i274 ]
  %wide.load729.91477 = phi <4 x float> [ %.promoted1476, %.preheader51.i273 ], [ %i.amd, %.preheader.us.i274 ]
  %wide.load730.81474 = phi <4 x float> [ %.promoted1473, %.preheader51.i273 ], [ %i.ama, %.preheader.us.i274 ]
  %wide.load729.81471 = phi <4 x float> [ %.promoted1470, %.preheader51.i273 ], [ %i.alz, %.preheader.us.i274 ]
  %wide.load730.71468 = phi <4 x float> [ %.promoted1467, %.preheader51.i273 ], [ %i.alw, %.preheader.us.i274 ]
  %wide.load729.71465 = phi <4 x float> [ %.promoted1464, %.preheader51.i273 ], [ %i.alv, %.preheader.us.i274 ]
  %wide.load730.61462 = phi <4 x float> [ %.promoted1461, %.preheader51.i273 ], [ %i.als, %.preheader.us.i274 ]
  %wide.load729.61459 = phi <4 x float> [ %.promoted1458, %.preheader51.i273 ], [ %i.alr, %.preheader.us.i274 ]
  %wide.load730.51456 = phi <4 x float> [ %.promoted1455, %.preheader51.i273 ], [ %i.alo, %.preheader.us.i274 ]
  %wide.load729.51453 = phi <4 x float> [ %.promoted1452, %.preheader51.i273 ], [ %i.aln, %.preheader.us.i274 ]
  %wide.load730.41450 = phi <4 x float> [ %.promoted1449, %.preheader51.i273 ], [ %i.alk, %.preheader.us.i274 ]
  %wide.load729.41447 = phi <4 x float> [ %.promoted1446, %.preheader51.i273 ], [ %i.alj, %.preheader.us.i274 ]
  %wide.load730.31444 = phi <4 x float> [ %.promoted1443, %.preheader51.i273 ], [ %i.alg, %.preheader.us.i274 ]
  %wide.load729.31441 = phi <4 x float> [ %.promoted1440, %.preheader51.i273 ], [ %i.alf, %.preheader.us.i274 ]
  %wide.load730.21438 = phi <4 x float> [ %.promoted1437, %.preheader51.i273 ], [ %i.alc, %.preheader.us.i274 ]
  %wide.load729.21435 = phi <4 x float> [ %.promoted1434, %.preheader51.i273 ], [ %i.alb, %.preheader.us.i274 ]
  %wide.load730.11432 = phi <4 x float> [ %.promoted1431, %.preheader51.i273 ], [ %i.aky, %.preheader.us.i274 ]
  %wide.load729.11429 = phi <4 x float> [ %.promoted1428, %.preheader51.i273 ], [ %i.akx, %.preheader.us.i274 ]
  %i.akr = phi <4 x float> [ %.promoted1426, %.preheader51.i273 ], [ %i.aku, %.preheader.us.i274 ]
  %wide.load7291424 = phi <4 x float> [ %main.b.promoted1423, %.preheader51.i273 ], [ %i.akt, %.preheader.us.i274 ]
  %indvars.iv77.i275 = phi i64 [ 0, %.preheader51.i273 ], [ %indvars.iv.next78.i282, %.preheader.us.i274 ] ; 2 uses
  %invariant.gep82.i276.idx = mul nuw nsw i64 %indvars.iv77.i275, 800
  %invariant.gep82.i276 = getelementptr i8, ptr @main.aa, i64 %invariant.gep82.i276.idx ; 28 uses
  %i.aks = getelementptr i8, ptr %invariant.gep82.i276, i64 16
  %wide.load731 = load <4 x float>, ptr %invariant.gep82.i276, align 16, !tbaa !11
  %wide.load732 = load <4 x float>, ptr %i.aks, align 16, !tbaa !11
  %i.akt = fadd <4 x float> %wide.load7291424, %wide.load731 ; 2 uses
  %i.aku = fadd <4 x float> %i.akr, %wide.load732 ; 2 uses
  %i.akv = getelementptr i8, ptr %invariant.gep82.i276, i64 32
  %i.akw = getelementptr i8, ptr %invariant.gep82.i276, i64 48
  %wide.load731.1 = load <4 x float>, ptr %i.akv, align 16, !tbaa !11
  %wide.load732.1 = load <4 x float>, ptr %i.akw, align 16, !tbaa !11
  %i.akx = fadd <4 x float> %wide.load729.11429, %wide.load731.1 ; 2 uses
  %i.aky = fadd <4 x float> %wide.load730.11432, %wide.load732.1 ; 2 uses
  %i.akz = getelementptr i8, ptr %invariant.gep82.i276, i64 64
  %i.ala = getelementptr i8, ptr %invariant.gep82.i276, i64 80
  %wide.load731.2 = load <4 x float>, ptr %i.akz, align 16, !tbaa !11
  %wide.load732.2 = load <4 x float>, ptr %i.ala, align 16, !tbaa !11
  %i.alb = fadd <4 x float> %wide.load729.21435, %wide.load731.2 ; 2 uses
  %i.alc = fadd <4 x float> %wide.load730.21438, %wide.load732.2 ; 2 uses
  %i.ald = getelementptr i8, ptr %invariant.gep82.i276, i64 96
  %i.ale = getelementptr i8, ptr %invariant.gep82.i276, i64 112
  %wide.load731.3 = load <4 x float>, ptr %i.ald, align 16, !tbaa !11
  %wide.load732.3 = load <4 x float>, ptr %i.ale, align 16, !tbaa !11
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.anz = sitofp i32 %i.any to float
  %i.aoa = fmul nnan float %i.anz, f0x38800000
  %i.aob = getelementptr [4 x i8], ptr %invariant.gep.i288, i64 %indvars.iv.i289
  %gep.i291.1 = getelementptr i8, ptr %i.aob, i64 4
  store float %i.aoa, ptr %gep.i291.1, align 4, !tbaa !11
  %indvars.iv.next.i293.1 = add nuw nsw i64 %indvars.iv.i289, 2 ; 2 uses
  %exitcond.not.i294.1 = icmp eq i64 %indvars.iv.next.i293.1, 100
  br i1 %exitcond.not.i294.1, label %._crit_edge.us.i295, label %bb.ak, !llvm.loop !13

._crit_edge.us.i295:                              ; preds = %bb.ak
  %indvars.iv.next65.i296 = add nuw nsw i64 %indvars.iv64.i286, 1 ; 2 uses
  %exitcond68.not.i297 = icmp eq i64 %indvars.iv.next65.i296, 100
  br i1 %exitcond68.not.i297, label %.preheader51.i298, label %.preheader52.us.i285, !llvm.loop !15

.preheader51.i298:                                ; preds = %._crit_edge.us.i295
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1502 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1505 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1507 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1510 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1513 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1516 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1519 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1522 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1525 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1528 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1531 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1534 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1537 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1540 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1543 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1546 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1549 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1552 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1555 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1558 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1561 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1564 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1567 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1570 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1573 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1575 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1577 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1579 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i299

.preheader.us.i299:                               ; preds = %.preheader.us.i299, %.preheader51.i298
  %i.aoc = phi float [ %.promoted1579, %.preheader51.i298 ], [ %i.aqj, %.preheader.us.i299 ]
  %i.aod = phi float [ %.promoted1577, %.preheader51.i298 ], [ %i.aqh, %.preheader.us.i299 ]
  %i.aoe = phi float [ %.promoted1575, %.preheader51.i298 ], [ %i.aqf, %.preheader.us.i299 ]
  %i.aof = phi float [ %.promoted1573, %.preheader51.i298 ], [ %i.aqd, %.preheader.us.i299 ]
  %wide.load806.111571 = phi <4 x float> [ %.promoted1570, %.preheader51.i298 ], [ %i.aqb, %.preheader.us.i299 ]
  %wide.load805.111568 = phi <4 x float> [ %.promoted1567, %.preheader51.i298 ], [ %i.aqa, %.preheader.us.i299 ]
  %wide.load806.101565 = phi <4 x float> [ %.promoted1564, %.preheader51.i298 ], [ %i.apx, %.preheader.us.i299 ]
  %wide.load805.101562 = phi <4 x float> [ %.promoted1561, %.preheader51.i298 ], [ %i.apw, %.preheader.us.i299 ]
  %wide.load806.91559 = phi <4 x float> [ %.promoted1558, %.preheader51.i298 ], [ %i.apt, %.preheader.us.i299 ]
  %wide.load805.91556 = phi <4 x float> [ %.promoted1555, %.preheader51.i298 ], [ %i.aps, %.preheader.us.i299 ]
  %wide.load806.81553 = phi <4 x float> [ %.promoted1552, %.preheader51.i298 ], [ %i.app, %.preheader.us.i299 ]
  %wide.load805.81550 = phi <4 x float> [ %.promoted1549, %.preheader51.i298 ], [ %i.apo, %.preheader.us.i299 ]
  %wide.load806.71547 = phi <4 x float> [ %.promoted1546, %.preheader51.i298 ], [ %i.apl, %.preheader.us.i299 ]
  %wide.load805.71544 = phi <4 x float> [ %.promoted1543, %.preheader51.i298 ], [ %i.apk, %.preheader.us.i299 ]
  %wide.load806.61541 = phi <4 x float> [ %.promoted1540, %.preheader51.i298 ], [ %i.aph, %.preheader.us.i299 ]
  %wide.load805.61538 = phi <4 x float> [ %.promoted1537, %.preheader51.i298 ], [ %i.apg, %.preheader.us.i299 ]
  %wide.load806.51535 = phi <4 x float> [ %.promoted1534, %.preheader51.i298 ], [ %i.apd, %.preheader.us.i299 ]
  %wide.load805.51532 = phi <4 x float> [ %.promoted1531, %.preheader51.i298 ], [ %i.apc, %.preheader.us.i299 ]
  %wide.load806.41529 = phi <4 x float> [ %.promoted1528, %.preheader51.i298 ], [ %i.aoz, %.preheader.us.i299 ]
  %wide.load805.41526 = phi <4 x float> [ %.promoted1525, %.preheader51.i298 ], [ %i.aoy, %.preheader.us.i299 ]
  %wide.load806.31523 = phi <4 x float> [ %.promoted1522, %.preheader51.i298 ], [ %i.aov, %.preheader.us.i299 ]
  %wide.load805.31520 = phi <4 x float> [ %.promoted1519, %.preheader51.i298 ], [ %i.aou, %.preheader.us.i299 ]
  %wide.load806.21517 = phi <4 x float> [ %.promoted1516, %.preheader51.i298 ], [ %i.aor, %.preheader.us.i299 ]
  %wide.load805.21514 = phi <4 x float> [ %.promoted1513, %.preheader51.i298 ], [ %i.aoq, %.preheader.us.i299 ]
  %wide.load806.11511 = phi <4 x float> [ %.promoted1510, %.preheader51.i298 ], [ %i.aon, %.preheader.us.i299 ]
  %wide.load805.11508 = phi <4 x float> [ %.promoted1507, %.preheader51.i298 ], [ %i.aom, %.preheader.us.i299 ]
  %i.aog = phi <4 x float> [ %.promoted1505, %.preheader51.i298 ], [ %i.aoj, %.preheader.us.i299 ]
  %wide.load8051503 = phi <4 x float> [ %main.b.promoted1502, %.preheader51.i298 ], [ %i.aoi, %.preheader.us.i299 ]
  %indvars.iv77.i300 = phi i64 [ 0, %.preheader51.i298 ], [ %indvars.iv.next78.i307, %.preheader.us.i299 ] ; 2 uses
  %invariant.gep82.i301.idx = mul nuw nsw i64 %indvars.iv77.i300, 800
  %invariant.gep82.i301 = getelementptr i8, ptr @main.aa, i64 %invariant.gep82.i301.idx ; 28 uses
  %i.aoh = getelementptr i8, ptr %invariant.gep82.i301, i64 16
  %wide.load807 = load <4 x float>, ptr %invariant.gep82.i301, align 16, !tbaa !11
  %wide.load808 = load <4 x float>, ptr %i.aoh, align 16, !tbaa !11
  %i.aoi = fadd <4 x float> %wide.load8051503, %wide.load807 ; 2 uses
  %i.aoj = fadd <4 x float> %i.aog, %wide.load808 ; 2 uses
  %i.aok = getelementptr i8, ptr %invariant.gep82.i301, i64 32
  %i.aol = getelementptr i8, ptr %invariant.gep82.i301, i64 48
  %wide.load807.1 = load <4 x float>, ptr %i.aok, align 16, !tbaa !11
  %wide.load808.1 = load <4 x float>, ptr %i.aol, align 16, !tbaa !11
  %i.aom = fadd <4 x float> %wide.load805.11508, %wide.load807.1 ; 2 uses
  %i.aon = fadd <4 x float> %wide.load806.11511, %wide.load808.1 ; 2 uses
  %i.aoo = getelementptr i8, ptr %invariant.gep82.i301, i64 64
  %i.aop = getelementptr i8, ptr %invariant.gep82.i301, i64 80
  %wide.load807.2 = load <4 x float>, ptr %i.aoo, align 16, !tbaa !11
  %wide.load808.2 = load <4 x float>, ptr %i.aop, align 16, !tbaa !11
  %i.aoq = fadd <4 x float> %wide.load805.21514, %wide.load807.2 ; 2 uses
  %i.aor = fadd <4 x float> %wide.load806.21517, %wide.load808.2 ; 2 uses
  %i.aos = getelementptr i8, ptr %invariant.gep82.i301, i64 96
  %i.aot = getelementptr i8, ptr %invariant.gep82.i301, i64 112
  %wide.load807.3 = load <4 x float>, ptr %i.aos, align 16, !tbaa !11
  %wide.load808.3 = load <4 x float>, ptr %i.aot, align 16, !tbaa !11
  %i.aou = fadd <4 x float> %wide.load805.31520, %wide.load807.3 ; 2 uses
  %i.aov = fadd <4 x float> %wide.load806.31523, %wide.load808.3 ; 2 uses
  %i.aow = getelementptr i8, ptr %invariant.gep82.i301, i64 128
  %i.aox = getelementptr i8, ptr %invariant.gep82.i301, i64 144
  %wide.load807.4 = load <4 x float>, ptr %i.aow, align 16, !tbaa !11
  %wide.load808.4 = load <4 x float>, ptr %i.aox, align 16, !tbaa !11
  %i.aoy = fadd <4 x float> %wide.load805.41526, %wide.load807.4 ; 2 uses
  %i.aoz = fadd <4 x float> %wide.load806.41529, %wide.load808.4 ; 2 uses
  %i.apa = getelementptr i8, ptr %invariant.gep82.i301, i64 160
  %i.apb = getelementptr i8, ptr %invariant.gep82.i301, i64 176
  %wide.load807.5 = load <4 x float>, ptr %i.apa, align 16, !tbaa !11
  %wide.load808.5 = load <4 x float>, ptr %i.apb, align 16, !tbaa !11
  %i.apc = fadd <4 x float> %wide.load805.51532, %wide.load807.5 ; 2 uses
  %i.apd = fadd <4 x float> %wide.load806.51535, %wide.load808.5 ; 2 uses
  %i.ape = getelementptr i8, ptr %invariant.gep82.i301, i64 192
  %i.apf = getelementptr i8, ptr %invariant.gep82.i301, i64 208
  %wide.load807.6 = load <4 x float>, ptr %i.ape, align 16, !tbaa !11
  %wide.load808.6 = load <4 x float>, ptr %i.apf, align 16, !tbaa !11
  %i.apg = fadd <4 x float> %wide.load805.61538, %wide.load807.6 ; 2 uses
  %i.aph = fadd <4 x float> %wide.load806.61541, %wide.load808.6 ; 2 uses
  %i.api = getelementptr i8, ptr %invariant.gep82.i301, i64 224
  %i.apj = getelementptr i8, ptr %invariant.gep82.i301, i64 240
  %wide.load807.7 = load <4 x float>, ptr %i.api, align 16, !tbaa !11
  %wide.load808.7 = load <4 x float>, ptr %i.apj, align 16, !tbaa !11
  %i.apk = fadd <4 x float> %wide.load805.71544, %wide.load807.7 ; 2 uses
  %i.apl = fadd <4 x float> %wide.load806.71547, %wide.load808.7 ; 2 uses
  %i.apm = getelementptr i8, ptr %invariant.gep82.i301, i64 256
  %i.apn = getelementptr i8, ptr %invariant.gep82.i301, i64 272
  %wide.load807.8 = load <4 x float>, ptr %i.apm, align 16, !tbaa !11
  %wide.load808.8 = load <4 x float>, ptr %i.apn, align 16, !tbaa !11
  %i.apo = fadd <4 x float> %wide.load805.81550, %wide.load807.8 ; 2 uses
  %i.app = fadd <4 x float> %wide.load806.81553, %wide.load808.8 ; 2 uses
  %i.apq = getelementptr i8, ptr %invariant.gep82.i301, i64 288
  %i.apr = getelementptr i8, ptr %invariant.gep82.i301, i64 304
  %wide.load807.9 = load <4 x float>, ptr %i.apq, align 16, !tbaa !11
  %wide.load808.9 = load <4 x float>, ptr %i.apr, align 16, !tbaa !11
  %i.aps = fadd <4 x float> %wide.load805.91556, %wide.load807.9 ; 2 uses
  %i.apt = fadd <4 x float> %wide.load806.91559, %wide.load808.9 ; 2 uses
  %i.apu = getelementptr i8, ptr %invariant.gep82.i301, i64 320
  %i.apv = getelementptr i8, ptr %invariant.gep82.i301, i64 336
  %wide.load807.10 = load <4 x float>, ptr %i.apu, align 16, !tbaa !11
  %wide.load808.10 = load <4 x float>, ptr %i.apv, align 16, !tbaa !11
  %i.apw = fadd <4 x float> %wide.load805.101562, %wide.load807.10 ; 2 uses
  %i.apx = fadd <4 x float> %wide.load806.101565, %wide.load808.10 ; 2 uses
  %i.apy = getelementptr i8, ptr %invariant.gep82.i301, i64 352
  %i.apz = getelementptr i8, ptr %invariant.gep82.i301, i64 368
  %wide.load807.11 = load <4 x float>, ptr %i.apy, align 16, !tbaa !11
  %wide.load808.11 = load <4 x float>, ptr %i.apz, align 16, !tbaa !11
  %i.aqa = fadd <4 x float> %wide.load805.111568, %wide.load807.11 ; 2 uses
  %i.aqb = fadd <4 x float> %wide.load806.111571, %wide.load808.11 ; 2 uses
  %gep83.i303 = getelementptr i8, ptr %invariant.gep82.i301, i64 384
  %i.aqc = load float, ptr %gep83.i303, align 16, !tbaa !11
  %i.aqd = fadd float %i.aof, %i.aqc              ; 2 uses
  %gep83.i303.1 = getelementptr i8, ptr %invariant.gep82.i301, i64 388
  %i.aqe = load float, ptr %gep83.i303.1, align 4, !tbaa !11
  %i.aqf = fadd float %i.aoe, %i.aqe              ; 2 uses
  %gep83.i303.2 = getelementptr i8, ptr %invariant.gep82.i301, i64 392
  %i.aqg = load float, ptr %gep83.i303.2, align 8, !tbaa !11
  %i.aqh = fadd float %i.aod, %i.aqg              ; 2 uses
  %gep83.i303.3 = getelementptr i8, ptr %invariant.gep82.i301, i64 396
  %i.aqi = load float, ptr %gep83.i303.3, align 4, !tbaa !11
  %i.aqj = fadd float %i.aoc, %i.aqi              ; 2 uses
  %indvars.iv.next78.i307 = add nuw nsw i64 %indvars.iv77.i300, 1 ; 2 uses
  %exitcond81.not.i308 = icmp eq i64 %indvars.iv.next78.i307, 100
  br i1 %exitcond81.not.i308, label %.lr.ph103.i310.preheader.preheader, label %.preheader.us.i299, !llvm.loop !16

.lr.ph103.i310.preheader.preheader:               ; preds = %.preheader.us.i299
  store <4 x float> %i.aoi, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.aoj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.aom, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.aon, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.aoq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.aor, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.aou, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.aov, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.aoy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.aoz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.apc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.apd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.apg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.aph, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.apk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.apl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.apo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.app, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.aps, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.apt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.apw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.apx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.aqa, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.aqb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.aqd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.aqf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.aqh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.aqj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i310.preheader

.lr.ph103.i310.preheader:                         ; preds = %.lr.ph103.i310.preheader.preheader, %.loopexit.i325
  %i.aqk = phi i32 [ %i.asw, %.loopexit.i325 ], [ 0, %.lr.ph103.i310.preheader.preheader ]
  %indvars.iv107.i311 = phi i64 [ %indvars.iv.next108.i314, %.loopexit.i325 ], [ 0, %.lr.ph103.i310.preheader.preheader ] ; 12 uses
  %indvars.iv.i312 = phi i64 [ %indvars.iv.next.i326, %.loopexit.i325 ], [ 1, %.lr.ph103.i310.preheader.preheader ] ; 2 uses
  %4 = sub nsw i64 99, %indvars.iv107.i311        ; 3 uses
  %i.aql = sub nsw i64 99, %indvars.iv107.i311    ; 3 uses
  %indvars109.i313 = trunc i64 %indvars.iv107.i311 to i32 ; 2 uses
  %indvars.iv.next108.i314 = add nuw nsw i64 %indvars.iv107.i311, 1 ; 2 uses
  %i.aqm = getelementptr [4 x i8], ptr @main.aa, i64 %indvars.iv107.i311
  %i.aqn = mul nuw nsw i64 %indvars.iv107.i311, 800
  %i.aqo = getelementptr i8, ptr %i.aqm, i64 %i.aqn ; 7 uses
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !11
  %i.aqq = tail call float @llvm.fabs.f32(float %i.aqp) ; 2 uses
  %xtraiter852 = and i64 %4, 1
  %i.aqr = icmp eq i64 %indvars.iv107.i311, 98
  br i1 %i.aqr, label %.lr.ph48.i.i315.epil.preheader, label %.lr.ph103.i310.preheader.new

.lr.ph103.i310.preheader.new:                     ; preds = %.lr.ph103.i310.preheader
  %unroll_iter856 = and i64 %4, -2
  br label %.lr.ph48.i.i315

.lr.ph48.i.i315:                                  ; preds = %.lr.ph48.i.i315, %.lr.ph103.i310.preheader.new
  %indvars.iv52.i.i316 = phi i64 [ 1, %.lr.ph103.i310.preheader.new ], [ %indvars.iv.next53.i.i321.1, %.lr.ph48.i.i315 ] ; 4 uses
  %.247.i.i317 = phi i32 [ 0, %.lr.ph103.i310.preheader.new ], [ %.3.i.i320.1, %.lr.ph48.i.i315 ]
  %.23345.i.i318 = phi float [ %i.aqq, %.lr.ph103.i310.preheader.new ], [ %.334.i.i319.1, %.lr.ph48.i.i315 ] ; 2 uses
  %niter857 = phi i64 [ 0, %.lr.ph103.i310.preheader.new ], [ %niter857.next.1, %.lr.ph48.i.i315 ]
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv52.i.i316
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !11
  %i.aqu = tail call float @llvm.fabs.f32(float %i.aqt) ; 2 uses
  %i.aqv = fcmp ogt float %i.aqu, %.23345.i.i318  ; 2 uses
  %.334.i.i319 = select i1 %i.aqv, float %i.aqu, float %.23345.i.i318 ; 2 uses
  %i.aqw = trunc nuw nsw i64 %indvars.iv52.i.i316 to i32
  %.3.i.i320 = select i1 %i.aqv, i32 %i.aqw, i32 %.247.i.i317
  %indvars.iv.next53.i.i321 = add nuw nsw i64 %indvars.iv52.i.i316, 1 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv.next53.i.i321
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !11
  %i.aqz = tail call float @llvm.fabs.f32(float %i.aqy) ; 2 uses
  %i.ara = fcmp ogt float %i.aqz, %.334.i.i319    ; 2 uses
  %.334.i.i319.1 = select i1 %i.ara, float %i.aqz, float %.334.i.i319 ; 2 uses
  %i.arb = trunc nuw nsw i64 %indvars.iv.next53.i.i321 to i32
  %.3.i.i320.1 = select i1 %i.ara, i32 %i.arb, i32 %.3.i.i320 ; 3 uses
  %indvars.iv.next53.i.i321.1 = add nuw nsw i64 %indvars.iv52.i.i316, 2 ; 2 uses
  %niter857.next.1 = add i64 %niter857, 2         ; 2 uses
  %niter857.ncmp.1 = icmp eq i64 %niter857.next.1, %unroll_iter856
  br i1 %niter857.ncmp.1, label %idamax.exit.i323.unr-lcssa, label %.lr.ph48.i.i315, !llvm.loop !27

idamax.exit.i323.unr-lcssa:                       ; preds = %.lr.ph48.i.i315
  %lcmp.mod853.not = icmp eq i64 %xtraiter852, 0
  br i1 %lcmp.mod853.not, label %idamax.exit.i323, label %.lr.ph48.i.i315.epil.preheader

.lr.ph48.i.i315.epil.preheader:                   ; preds = %idamax.exit.i323.unr-lcssa, %.lr.ph103.i310.preheader
  %indvars.iv52.i.i316.epil.init = phi i64 [ 1, %.lr.ph103.i310.preheader ], [ %indvars.iv.next53.i.i321.1, %idamax.exit.i323.unr-lcssa ] ; 2 uses
  %.247.i.i317.epil.init = phi i32 [ 0, %.lr.ph103.i310.preheader ], [ %.3.i.i320.1, %idamax.exit.i323.unr-lcssa ]
  %.23345.i.i318.epil.init = phi float [ %i.aqq, %.lr.ph103.i310.preheader ], [ %.334.i.i319.1, %idamax.exit.i323.unr-lcssa ]
  %lcmp.mod855 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod855)
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv52.i.i316.epil.init
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !11
  %i.are = tail call float @llvm.fabs.f32(float %i.ard)
  %i.arf = fcmp ogt float %i.are, %.23345.i.i318.epil.init
  %i.arg = trunc nuw nsw i64 %indvars.iv52.i.i316.epil.init to i32
  %.3.i.i320.epil = select i1 %i.arf, i32 %i.arg, i32 %.247.i.i317.epil.init
  br label %idamax.exit.i323

idamax.exit.i323:                                 ; preds = %idamax.exit.i323.unr-lcssa, %.lr.ph48.i.i315.epil.preheader
  %.3.i.i320.lcssa = phi i32 [ %.3.i.i320.1, %idamax.exit.i323.unr-lcssa ], [ %.3.i.i320.epil, %.lr.ph48.i.i315.epil.preheader ] ; 2 uses
  %i.arh = add nsw i32 %.3.i.i320.lcssa, %indvars109.i313 ; 2 uses
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i311
  store i32 %i.arh, ptr %i.ari, align 4, !tbaa !4
  %i.arj = sext i32 %i.arh to i64                 ; 2 uses
  %.idx386 = mul nuw nsw i64 %indvars.iv107.i311, 800
  %i.ark = getelementptr i8, ptr @main.aa, i64 %.idx386
  %i.arl = getelementptr [4 x i8], ptr %i.ark, i64 %i.arj ; 2 uses
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !11 ; 3 uses
  %i.arn = fcmp une float %i.arm, 0.000000e+00
  br i1 %i.arn, label %bb.al, label %.loopexit.i325

bb.al:                                            ; preds = %idamax.exit.i323
  %.not.i329 = icmp eq i32 %.3.i.i320.lcssa, 0    ; 2 uses
  %.pre.i330 = load float, ptr %i.aqo, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i329, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store float %.pre.i330, ptr %i.arl, align 4, !tbaa !11
  store float %i.arm, ptr %i.aqo, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.aro = phi float [ %i.arm, %bb.am ], [ %.pre.i330, %bb.al ]
  %i.arp = fdiv float -1.000000e+00, %i.aro       ; 2 uses
  %i.arq = sub nuw nsw i64 99, %indvars.iv107.i311 ; 4 uses
  %i.arr = getelementptr i8, ptr %i.aqo, i64 4    ; 4 uses
  %min.iters.check787 = icmp samesign ugt i64 %indvars.iv107.i311, 91
  br i1 %min.iters.check787, label %.lr.ph25.i.i331.preheader, label %vector.ph788

vector.ph788:                                     ; preds = %bb.an
  %n.vec790 = and i64 %i.arq, 120                 ; 3 uses
  %broadcast.splatinsert791 = insertelement <4 x float> poison, float %i.arp, i64 0
  %broadcast.splat792 = shufflevector <4 x float> %broadcast.splatinsert791, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body793

vector.body793:                                   ; preds = %vector.body793, %vector.ph788
  %index794 = phi i64 [ 0, %vector.ph788 ], [ %index.next797, %vector.body793 ] ; 2 uses
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index794 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16 ; 2 uses
  %wide.load795 = load <4 x float>, ptr %i.ars, align 4, !tbaa !11
  %wide.load796 = load <4 x float>, ptr %i.art, align 4, !tbaa !11
  %i.aru = fmul <4 x float> %broadcast.splat792, %wide.load795
  %i.arv = fmul <4 x float> %broadcast.splat792, %wide.load796
  store <4 x float> %i.aru, ptr %i.ars, align 4, !tbaa !11
  store <4 x float> %i.arv, ptr %i.art, align 4, !tbaa !11
  %index.next797 = add nuw i64 %index794, 8       ; 2 uses
  %i.arw = icmp eq i64 %index.next797, %n.vec790
  br i1 %i.arw, label %middle.block798, label %vector.body793, !llvm.loop !48

middle.block798:                                  ; preds = %vector.body793
  %cmp.n799 = icmp eq i64 %i.arq, %n.vec790
  br i1 %cmp.n799, label %.lr.ph.i335, label %.lr.ph25.i.i331.preheader

.lr.ph25.i.i331.preheader:                        ; preds = %bb.an, %middle.block798
  %indvars.iv28.i.i332.ph = phi i64 [ 0, %bb.an ], [ %n.vec790, %middle.block798 ]
  br label %.lr.ph25.i.i331

.lr.ph25.i.i331:                                  ; preds = %.lr.ph25.i.i331.preheader, %.lr.ph25.i.i331
  %indvars.iv28.i.i332 = phi i64 [ %indvars.iv.next29.i.i333, %.lr.ph25.i.i331 ], [ %indvars.iv28.i.i332.ph, %.lr.ph25.i.i331.preheader ] ; 2 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv28.i.i332 ; 2 uses
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !11
  %i.arz = fmul float %i.arp, %i.ary
  store float %i.arz, ptr %i.arx, align 4, !tbaa !11
  %indvars.iv.next29.i.i333 = add nuw nsw i64 %indvars.iv28.i.i332, 1 ; 2 uses
  %exitcond.not.i.i334 = icmp eq i64 %indvars.iv.next29.i.i333, %i.arq
  br i1 %exitcond.not.i.i334, label %.lr.ph.i335, label %.lr.ph25.i.i331, !llvm.loop !49

.lr.ph.i335:                                      ; preds = %.lr.ph25.i.i331, %middle.block798
  %invariant.gep.i336 = getelementptr [4 x i8], ptr @main.aa, i64 %i.arj
  %min.iters.check770 = icmp ult i64 %i.aql, 8
  %n.vec773 = and i64 %i.aql, -8                  ; 3 uses
  %cmp.n784 = icmp eq i64 %i.aql, %n.vec773
  br label %bb.ao

bb.ao:                                            ; preds = %daxpy.exit.i345, %.lr.ph.i335
  %indvars.iv104.i337 = phi i64 [ %indvars.iv.i312, %.lr.ph.i335 ], [ %indvars.iv.next105.i346, %daxpy.exit.i345 ] ; 2 uses
  %i.asa = mul nuw nsw i64 %indvars.iv104.i337, 200 ; 2 uses
  %gep.i338 = getelementptr [4 x i8], ptr %invariant.gep.i336, i64 %i.asa ; 2 uses
  %i.asb = load float, ptr %gep.i338, align 4, !tbaa !11 ; 4 uses
  %.pre112.i339 = add nuw nsw i64 %i.asa, %indvars.iv107.i311 ; 2 uses
  br i1 %.not.i329, label %._crit_edge.i340, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr @main.aa, i64 %.pre112.i339 ; 2 uses
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !11
  store float %i.asd, ptr %gep.i338, align 4, !tbaa !11
  store float %i.asb, ptr %i.asc, align 4, !tbaa !11
  br label %._crit_edge.i340

._crit_edge.i340:                                 ; preds = %bb.ap, %bb.ao
  %i.ase = getelementptr [4 x i8], ptr @main.aa, i64 %.pre112.i339
  %i.asf = getelementptr i8, ptr %i.ase, i64 4    ; 2 uses
  %i.asg = fcmp oeq float %i.asb, 0.000000e+00
  br i1 %i.asg, label %daxpy.exit.i345, label %.lr.ph.i.i341.preheader

.lr.ph.i.i341.preheader:                          ; preds = %._crit_edge.i340
  br i1 %min.iters.check770, label %.lr.ph.i.i341.preheader811, label %vector.ph771

vector.ph771:                                     ; preds = %.lr.ph.i.i341.preheader
  %broadcast.splatinsert774 = insertelement <4 x float> poison, float %i.asb, i64 0
  %broadcast.splat775 = shufflevector <4 x float> %broadcast.splatinsert774, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body776

vector.body776:                                   ; preds = %vector.body776, %vector.ph771
  %index777 = phi i64 [ 0, %vector.ph771 ], [ %index.next782, %vector.body776 ] ; 3 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %index777 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 16 ; 2 uses
  %wide.load778 = load <4 x float>, ptr %i.ash, align 4, !tbaa !11
  %wide.load779 = load <4 x float>, ptr %i.asi, align 4, !tbaa !11
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index777 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 16
  %wide.load780 = load <4 x float>, ptr %i.asj, align 4, !tbaa !11
  %wide.load781 = load <4 x float>, ptr %i.ask, align 4, !tbaa !11
  %i.asl = fmul <4 x float> %broadcast.splat775, %wide.load780
  %i.asm = fmul <4 x float> %broadcast.splat775, %wide.load781
  %i.asn = fadd <4 x float> %wide.load778, %i.asl
  %i.aso = fadd <4 x float> %wide.load779, %i.asm
  store <4 x float> %i.asn, ptr %i.ash, align 4, !tbaa !11
  store <4 x float> %i.aso, ptr %i.asi, align 4, !tbaa !11
  %index.next782 = add nuw i64 %index777, 8       ; 2 uses
  %i.asp = icmp eq i64 %index.next782, %n.vec773
  br i1 %i.asp, label %middle.block783, label %vector.body776, !llvm.loop !50

middle.block783:                                  ; preds = %vector.body776
  br i1 %cmp.n784, label %daxpy.exit.i345, label %.lr.ph.i.i341.preheader811

.lr.ph.i.i341.preheader811:                       ; preds = %.lr.ph.i.i341.preheader, %middle.block783
  %indvars.iv.i.i342.ph = phi i64 [ 0, %.lr.ph.i.i341.preheader ], [ %n.vec773, %middle.block783 ]
  br label %.lr.ph.i.i341

.lr.ph.i.i341:                                    ; preds = %.lr.ph.i.i341.preheader811, %.lr.ph.i.i341
  %indvars.iv.i.i342 = phi i64 [ %indvars.iv.next.i.i343, %.lr.ph.i.i341 ], [ %indvars.iv.i.i342.ph, %.lr.ph.i.i341.preheader811 ] ; 3 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %indvars.iv.i.i342 ; 2 uses
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !11
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.i.i342
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !11
  %i.asu = fmul float %i.asb, %i.ast
  %i.asv = fadd float %i.asr, %i.asu
  store float %i.asv, ptr %i.asq, align 4, !tbaa !11
  %indvars.iv.next.i.i343 = add nuw nsw i64 %indvars.iv.i.i342, 1 ; 2 uses
  %exitcond.not.i99.i344 = icmp eq i64 %indvars.iv.next.i.i343, %i.arq
  br i1 %exitcond.not.i99.i344, label %daxpy.exit.i345, label %.lr.ph.i.i341, !llvm.loop !51

daxpy.exit.i345:                                  ; preds = %.lr.ph.i.i341, %middle.block783, %._crit_edge.i340
  %indvars.iv.next105.i346 = add nuw nsw i64 %indvars.iv104.i337, 1 ; 2 uses
  %exitcond.not.i347 = icmp eq i64 %indvars.iv.next105.i346, 100
  br i1 %exitcond.not.i347, label %.loopexit.i325, label %bb.ao, !llvm.loop !32

.loopexit.i325:                                   ; preds = %daxpy.exit.i345, %idamax.exit.i323
  %i.asw = phi i32 [ %indvars109.i313, %idamax.exit.i323 ], [ %i.aqk, %daxpy.exit.i345 ] ; 2 uses
  %indvars.iv.next.i326 = add nuw nsw i64 %indvars.iv.i312, 1
  %exitcond111.not.i327 = icmp eq i64 %indvars.iv.next108.i314, 99
  br i1 %exitcond111.not.i327, label %.loopexit100.i328, label %.lr.ph103.i310.preheader, !llvm.loop !33

.loopexit100.i328:                                ; preds = %.loopexit.i325
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.asx = add nuw nsw i32 %storemerge83430, 1    ; 2 uses
  %exitcond472.not = icmp eq i32 %i.asx, %i.anp
  br i1 %exitcond472.not, label %._crit_edge431, label %.preheader52.us.i285.preheader, !llvm.loop !52

._crit_edge431:                                   ; preds = %.loopexit100.i328
  %i.asy = load float, ptr getelementptr inbounds nuw (i8, ptr @main.aa, i64 79596), align 4, !tbaa !11
  %i.asz = fcmp oeq float %i.asy, 0.000000e+00
  %i.ata = select i1 %i.asz, i32 99, i32 %i.asw
  store i32 %i.ata, ptr @main.info, align 4, !tbaa !4
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge431, %bb.aj
  %i.atb = tail call i64 @clock() #12
  %i.atc = sitofp i64 %i.atb to float
  %i.atd = fdiv float %i.atc, 1.000000e+06
  %i.ate = fsub float %i.atd, %i.ano
  %i.atf = fsub float %i.ate, %i.anl
  %i.atg = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.ath = sitofp i32 %i.atg to float
  %i.ati = fdiv float %i.atf, %i.ath
  %i.atj = load i32, ptr @main.j, align 4, !tbaa !4
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.atk
  store float %i.ati, ptr %i.atl, align 4, !tbaa !11
  %i.atm = tail call i64 @clock() #12
  %i.atn = sitofp i64 %i.atm to float
  %i.ato = fdiv float %i.atn, 1.000000e+06
  %i.atp = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.atq = icmp sgt i32 %i.atp, 0
  br i1 %i.atq, label %.preheader, label %._crit_edge436

.preheader:                                       ; preds = %bb.aq, %dgesl.exit371
  %storemerge84435 = phi i32 [ %i.avu, %dgesl.exit371 ], [ 0, %bb.aq ]
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %daxpy.exit.i356
  %indvars.iv146.i349 = phi i64 [ %indvars.iv.next147.i351, %daxpy.exit.i356 ], [ 0, %.preheader ] ; 7 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i349
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !4 ; 2 uses
  %i.att = sext i32 %i.ats to i64
  %i.atu = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.att ; 2 uses
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !11 ; 4 uses
  %i.atw = zext i32 %i.ats to i64
  %.not103.i350 = icmp eq i64 %indvars.iv146.i349, %i.atw
  br i1 %.not103.i350, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i349 ; 2 uses
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !11
  store float %i.aty, ptr %i.atu, align 4, !tbaa !11
  store float %i.atv, ptr %i.atx, align 4, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next147.i351 = add nuw nsw i64 %indvars.iv146.i349, 1 ; 3 uses
  %i.atz = mul nuw nsw i64 %indvars.iv146.i349, 804
  %i.aua = getelementptr i8, ptr @main.aa, i64 %i.atz
  %i.aub = getelementptr i8, ptr %i.aua, i64 4    ; 2 uses
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i351 ; 2 uses
  %i.aud = fcmp oeq float %i.atv, 0.000000e+00
  br i1 %i.aud, label %daxpy.exit.i356, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aue = sub nuw nsw i64 99, %indvars.iv146.i349 ; 3 uses
  %min.iters.check753 = icmp samesign ugt i64 %indvars.iv146.i349, 91
  br i1 %min.iters.check753, label %.lr.ph.i.i352.preheader, label %vector.ph754

vector.ph754:                                     ; preds = %bb.au
  %n.vec756 = and i64 %i.aue, 120                 ; 3 uses
  %broadcast.splatinsert757 = insertelement <4 x float> poison, float %i.atv, i64 0
  %broadcast.splat758 = shufflevector <4 x float> %broadcast.splatinsert757, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body759

vector.body759:                                   ; preds = %vector.body759, %vector.ph754
  %index760 = phi i64 [ 0, %vector.ph754 ], [ %index.next765, %vector.body759 ] ; 3 uses
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %index760 ; 3 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 16 ; 2 uses
  %wide.load761 = load <4 x float>, ptr %i.auf, align 4, !tbaa !11
  %wide.load762 = load <4 x float>, ptr %i.aug, align 4, !tbaa !11
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %index760 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 16
  %wide.load763 = load <4 x float>, ptr %i.auh, align 4, !tbaa !11
  %wide.load764 = load <4 x float>, ptr %i.aui, align 4, !tbaa !11
  %i.auj = fmul <4 x float> %broadcast.splat758, %wide.load763
  %i.auk = fmul <4 x float> %broadcast.splat758, %wide.load764
  %i.aul = fadd <4 x float> %wide.load761, %i.auj
  %i.aum = fadd <4 x float> %wide.load762, %i.auk
  store <4 x float> %i.aul, ptr %i.auf, align 4, !tbaa !11
  store <4 x float> %i.aum, ptr %i.aug, align 4, !tbaa !11
  %index.next765 = add nuw i64 %index760, 8       ; 2 uses
  %i.aun = icmp eq i64 %index.next765, %n.vec756
  br i1 %i.aun, label %middle.block766, label %vector.body759, !llvm.loop !53

middle.block766:                                  ; preds = %vector.body759
  %cmp.n767 = icmp eq i64 %i.aue, %n.vec756
  br i1 %cmp.n767, label %daxpy.exit.i356, label %.lr.ph.i.i352.preheader

.lr.ph.i.i352.preheader:                          ; preds = %bb.au, %middle.block766
  %indvars.iv.i.i353.ph = phi i64 [ 0, %bb.au ], [ %n.vec756, %middle.block766 ]
  br label %.lr.ph.i.i352

.lr.ph.i.i352:                                    ; preds = %.lr.ph.i.i352.preheader, %.lr.ph.i.i352
  %indvars.iv.i.i353 = phi i64 [ %indvars.iv.next.i.i354, %.lr.ph.i.i352 ], [ %indvars.iv.i.i353.ph, %.lr.ph.i.i352.preheader ] ; 3 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %indvars.iv.i.i353 ; 2 uses
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !11
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv.i.i353
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !11
  %i.aus = fmul float %i.atv, %i.aur
  %i.aut = fadd float %i.aup, %i.aus
  store float %i.aut, ptr %i.auo, align 4, !tbaa !11
  %indvars.iv.next.i.i354 = add nuw nsw i64 %indvars.iv.i.i353, 1 ; 2 uses
  %exitcond.not.i.i355 = icmp eq i64 %indvars.iv.next.i.i354, %i.aue
  br i1 %exitcond.not.i.i355, label %daxpy.exit.i356, label %.lr.ph.i.i352, !llvm.loop !54

daxpy.exit.i356:                                  ; preds = %.lr.ph.i.i352, %middle.block766, %bb.at
  %exitcond150.not.i357 = icmp eq i64 %indvars.iv.next147.i351, 99
  br i1 %exitcond150.not.i357, label %.lr.ph136.i359, label %bb.ar, !llvm.loop !21

.lr.ph136.i359:                                   ; preds = %daxpy.exit.i356, %daxpy.exit110.i368
  %indvars.iv151.i360 = phi i64 [ %indvars.iv.next152.i361, %daxpy.exit110.i368 ], [ 0, %daxpy.exit.i356 ] ; 4 uses
  %5 = sub nsw i64 99, %indvars.iv151.i360        ; 3 uses
  %indvars.iv.next152.i361 = add nuw nsw i64 %indvars.iv151.i360, 1 ; 2 uses
  %i.auu = sub nuw nsw i64 99, %indvars.iv151.i360 ; 5 uses
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.auu ; 2 uses
  %i.auw = load float, ptr %i.auv, align 4, !tbaa !11
  %i.aux = getelementptr [4 x i8], ptr @main.aa, i64 %i.auu
  %i.auy = mul nuw nsw i64 %i.auu, 800
  %i.auz = getelementptr i8, ptr %i.aux, i64 %i.auy
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !11
  %i.avb = fdiv float %i.auw, %i.ava              ; 4 uses
  store float %i.avb, ptr %i.auv, align 4, !tbaa !11
  %.idx384 = mul nuw nsw i64 %i.auu, 800
  %i.avc = getelementptr inbounds nuw i8, ptr @main.aa, i64 %.idx384 ; 2 uses
  %i.avd = icmp samesign ugt i64 %indvars.iv151.i360, 98
  %i.ave = fcmp oeq float %i.avb, 0.000000e+00
  %or.cond41.i104.i363 = or i1 %i.avd, %i.ave
  br i1 %or.cond41.i104.i363, label %daxpy.exit110.i368, label %.lr.ph.i106.i364.preheader

.lr.ph.i106.i364.preheader:                       ; preds = %.lr.ph136.i359
  %min.iters.check736 = icmp ult i64 %5, 8
  br i1 %min.iters.check736, label %.lr.ph.i106.i364.preheader812, label %vector.ph737

vector.ph737:                                     ; preds = %.lr.ph.i106.i364.preheader
  %n.vec739 = and i64 %5, -8                      ; 3 uses
  %broadcast.splatinsert740 = insertelement <4 x float> poison, float %i.avb, i64 0
  %broadcast.splat741 = shufflevector <4 x float> %broadcast.splatinsert740, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body742

vector.body742:                                   ; preds = %vector.body742, %vector.ph737
  %index743 = phi i64 [ 0, %vector.ph737 ], [ %index.next748, %vector.body742 ] ; 3 uses
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index743 ; 3 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 16 ; 2 uses
  %wide.load744 = load <4 x float>, ptr %i.avf, align 16, !tbaa !11
  %wide.load745 = load <4 x float>, ptr %i.avg, align 16, !tbaa !11
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %index743 ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 16
  %wide.load746 = load <4 x float>, ptr %i.avh, align 16, !tbaa !11
  %wide.load747 = load <4 x float>, ptr %i.avi, align 16, !tbaa !11
  %i.avj = fmul <4 x float> %broadcast.splat741, %wide.load746
  %i.avk = fmul <4 x float> %broadcast.splat741, %wide.load747
  %i.avl = fsub <4 x float> %wide.load744, %i.avj
  %i.avm = fsub <4 x float> %wide.load745, %i.avk
  store <4 x float> %i.avl, ptr %i.avf, align 16, !tbaa !11
  store <4 x float> %i.avm, ptr %i.avg, align 16, !tbaa !11
  %index.next748 = add nuw i64 %index743, 8       ; 2 uses
  %i.avn = icmp eq i64 %index.next748, %n.vec739
  br i1 %i.avn, label %middle.block749, label %vector.body742, !llvm.loop !55

middle.block749:                                  ; preds = %vector.body742
  %cmp.n750 = icmp eq i64 %5, %n.vec739
  br i1 %cmp.n750, label %daxpy.exit110.i368, label %.lr.ph.i106.i364.preheader812

.lr.ph.i106.i364.preheader812:                    ; preds = %.lr.ph.i106.i364.preheader, %middle.block749
  %indvars.iv.i107.i365.ph = phi i64 [ 0, %.lr.ph.i106.i364.preheader ], [ %n.vec739, %middle.block749 ]
  br label %.lr.ph.i106.i364

.lr.ph.i106.i364:                                 ; preds = %.lr.ph.i106.i364.preheader812, %.lr.ph.i106.i364
  %indvars.iv.i107.i365 = phi i64 [ %indvars.iv.next.i108.i366, %.lr.ph.i106.i364 ], [ %indvars.iv.i107.i365.ph, %.lr.ph.i106.i364.preheader812 ] ; 3 uses
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i365 ; 2 uses
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !11
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %indvars.iv.i107.i365
  %i.avr = load float, ptr %i.avq, align 4, !tbaa !11
  %i.avs = fmul float %i.avb, %i.avr
  %i.avt = fsub float %i.avp, %i.avs
  store float %i.avt, ptr %i.avo, align 4, !tbaa !11
  %indvars.iv.next.i108.i366 = add nuw nsw i64 %indvars.iv.i107.i365, 1 ; 2 uses
  %exitcond.not.i109.i367 = icmp eq i64 %indvars.iv.next.i108.i366, %i.auu
  br i1 %exitcond.not.i109.i367, label %daxpy.exit110.i368, label %.lr.ph.i106.i364, !llvm.loop !56

daxpy.exit110.i368:                               ; preds = %.lr.ph.i106.i364, %middle.block749, %.lr.ph136.i359
  %exitcond155.not.i369 = icmp eq i64 %indvars.iv.next152.i361, 100
  br i1 %exitcond155.not.i369, label %dgesl.exit371, label %.lr.ph136.i359, !llvm.loop !24

dgesl.exit371:                                    ; preds = %daxpy.exit110.i368
  %i.avu = add nuw nsw i32 %storemerge84435, 1    ; 2 uses
  %exitcond473.not = icmp eq i32 %i.avu, %i.atp
  br i1 %exitcond473.not, label %._crit_edge436, label %.preheader, !llvm.loop !57

._crit_edge436:                                   ; preds = %dgesl.exit371, %bb.aq
  %i.avv = tail call i64 @clock() #12
  %i.avw = sitofp i64 %i.avv to float
  %i.avx = fdiv float %i.avw, 1.000000e+06
  %i.avy = fsub float %i.avx, %i.ato
  %i.avz = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.awa = sitofp i32 %i.avz to float
  %i.awb = fdiv float %i.avy, %i.awa              ; 2 uses
  %i.awc = load i32, ptr @main.j, align 4, !tbaa !4 ; 3 uses
  %i.awd = sext i32 %i.awc to i64                 ; 6 uses
  %i.awe = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), i64 %i.awd
  store float %i.awb, ptr %i.awe, align 4, !tbaa !11
  %i.awf = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.awd
  %i.awg = load float, ptr %i.awf, align 4, !tbaa !11
  %i.awh = fadd float %i.awg, %i.awb              ; 3 uses
  %i.awi = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 120), i64 %i.awd
  store float %i.awh, ptr %i.awi, align 4, !tbaa !11
  %i.awj = fpext float %i.awh to double
  %i.awk = fmul double %i.awj, 1.000000e+06
  %i.awl = fdiv double f0x4124F49560000000, %i.awk
  %i.awm = fptrunc double %i.awl to float         ; 3 uses
  %i.awn = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 180), i64 %i.awd
  store float %i.awm, ptr %i.awn, align 4, !tbaa !11
  %i.awo = fdiv float 2.000000e+00, %i.awm
  %i.awp = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), i64 %i.awd
  store float %i.awo, ptr %i.awp, align 4, !tbaa !11
  %i.awq = fdiv float %i.awh, 5.600000e-02
  %i.awr = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), i64 %i.awd
  store float %i.awq, ptr %i.awr, align 4, !tbaa !11
  %i.aws = load float, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awt = fadd float %i.aws, %i.awm              ; 2 uses
  store float %i.awt, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awu = add nsw i32 %i.awc, 1
  store i32 %i.awu, ptr @main.j, align 4, !tbaa !4
  %i.awv = icmp slt i32 %i.awc, 11
  br i1 %i.awv, label %bb.aj, label %bb.av, !llvm.loop !58

bb.av:                                            ; preds = %._crit_edge436
  %i.aww = fdiv float %i.awt, 5.000000e+00
  store float %i.aww, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awx = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.awy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.awx, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matgen(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store float 0.000000e+00, ptr %4, align 4, !tbaa !11
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader52.us.preheader, label %._crit_edge61

.preheader52.us.preheader:                        ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 7 uses
  br label %.preheader52.us

.preheader52.us:                                  ; preds = %.preheader52.us.preheader, %._crit_edge.us
  %indvars.iv64 = phi i64 [ 0, %.preheader52.us.preheader ], [ %indvars.iv.next65, %._crit_edge.us ] ; 2 uses
  %.04455.us = phi i32 [ 1325, %.preheader52.us.preheader ], [ %i.e, %._crit_edge.us ]
  %i.c = mul nsw i64 %indvars.iv64, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.preheader52.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader52.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.14553.us = phi i32 [ %.04455.us, %.preheader52.us ], [ %i.e, %bb.b ]
  %i.d = mul nuw nsw i32 %.14553.us, 3125
  %i.e = and i32 %i.d, 65535                      ; 3 uses
  %i.f = add nsw i32 %i.e, -32768
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul nnan float %i.g, f0x38800000        ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.h, ptr %gep, align 4, !tbaa !11
  %i.i = load float, ptr %4, align 4, !tbaa !11   ; 2 uses
  %i.j = fcmp ogt float %i.h, %i.i
  %..us = select i1 %i.j, float %i.h, float %i.i
  store float %..us, ptr %4, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !13

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.preheader.us.preheader, label %.preheader52.us, !llvm.loop !15

.preheader.us.preheader:                          ; preds = %._crit_edge.us
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.l, i1 false), !tbaa !11
  %i.m = sext i32 %1 to i64
  %wide.trip.count80 = zext nneg i32 %2 to i64    ; 4 uses
  %i.n = shl nuw nsw i64 %wide.trip.count67, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.n
  %i.o = add nuw nsw i64 %wide.trip.count67, 4611686018427387903
  %i.p = mul i64 %i.o, %i.b
  %i.q = add i64 %i.p, %wide.trip.count67
  %i.r = shl i64 %i.q, 2
  %scevgep84 = getelementptr i8, ptr %0, i64 %i.r
  %min.iters.check = icmp ult i32 %2, 8
  %bound0 = icmp ult ptr %3, %scevgep84
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %1, 0
  %i.s = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count67, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  %xtraiter = and i64 %wide.trip.count80, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us62
  %indvars.iv77 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next78, %._crit_edge.us62 ] ; 2 uses
  %i.t = mul nsw i64 %indvars.iv77, %i.m
  %invariant.gep82 = getelementptr [4 x i8], ptr %0, i64 %i.t ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.s
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %wide.load85 = load <4 x float>, ptr %i.v, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %i.w = getelementptr [4 x i8], ptr %invariant.gep82, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load86 = load <4 x float>, ptr %i.w, align 4, !tbaa !11, !alias.scope !62
  %wide.load87 = load <4 x float>, ptr %i.x, align 4, !tbaa !11, !alias.scope !62
  %i.y = fadd <4 x float> %wide.load, %wide.load86
  %i.z = fadd <4 x float> %wide.load85, %wide.load87
  store <4 x float> %i.y, ptr %i.u, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  store <4 x float> %i.z, ptr %i.v, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us62, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv72.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %scalar.ph.prol ], [ %indvars.iv72.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv72.prol ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %gep83.prol = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72.prol
  %i.ad = load float, ptr %gep83.prol, align 4, !tbaa !11
  %i.ae = fadd float %i.ac, %i.ad
  store float %i.ae, ptr %i.ab, align 4, !tbaa !11
  %indvars.iv.next73.prol = add nuw nsw i64 %indvars.iv72.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv72.unr = phi i64 [ %indvars.iv72.ph, %scalar.ph.preheader ], [ %indvars.iv.next73.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv72.ph, %wide.trip.count80
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge.us62, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %scalar.ph ], [ %indvars.iv72.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv72 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %gep83 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72
  %i.aj = load float, ptr %gep83, align 4, !tbaa !11
  %i.ak = fadd float %i.ai, %i.aj
  store float %i.ak, ptr %i.ah, align 4, !tbaa !11
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %gep83.1 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73
  %i.an = load float, ptr %gep83.1, align 4, !tbaa !11
  %i.ao = fadd float %i.am, %i.an
  store float %i.ao, ptr %i.al, align 4, !tbaa !11
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.1 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %gep83.2 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.1
  %i.ar = load float, ptr %gep83.2, align 4, !tbaa !11
  %i.as = fadd float %i.aq, %i.ar
  store float %i.as, ptr %i.ap, align 4, !tbaa !11
  %indvars.iv.next73.2 = add nuw nsw i64 %indvars.iv72, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.2 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %gep83.3 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.2
  %i.av = load float, ptr %gep83.3, align 4, !tbaa !11
  %i.aw = fadd float %i.au, %i.av
  store float %i.aw, ptr %i.at, align 4, !tbaa !11
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count80
  br i1 %exitcond76.not.3, label %._crit_edge.us62, label %scalar.ph, !llvm.loop !67

._crit_edge.us62:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge61, label %.preheader.us, !llvm.loop !16

._crit_edge61:                                    ; preds = %._crit_edge.us62, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgefa(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.a = add i32 %2, -1                           ; 5 uses
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph103.preheader, label %.loopexit100

.lr.ph103.preheader:                              ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = zext nneg i32 %2 to i64                  ; 4 uses
  %wide.trip.count110 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %i.e = shl nsw i64 %i.c, 2
  %i.f = add nsw i64 %i.e, 4
  %i.g = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.h = add nsw i64 %i.g, -4
  %i.i = mul i64 %i.h, %i.c
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep117 = getelementptr i8, ptr %i.j, i64 %i.g
  %scevgep120 = getelementptr i8, ptr %0, i64 %i.g
  %i.k = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.l = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %stride.check = icmp slt i32 %1, 0
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 15 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph103.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.m = sub i64 %i.k, %indvars.iv107             ; 3 uses
  %5 = xor i64 %indvars.iv107, -1
  %6 = add nsw i64 %5, %i.d                       ; 3 uses
  %i.n = add nuw i64 %indvars.iv107, 1
  %i.o = mul i64 %i.f, %i.n
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %i.p = shl nuw nsw i64 %indvars.iv107, 2
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %scevgep118 = getelementptr i8, ptr %i.q, i64 4
  %i.r = trunc i64 %indvars.iv107 to i32
  %i.s = mul i32 %1, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2                      ; 2 uses
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.u
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.u
  %indvars109 = trunc i64 %indvars.iv107 to i32   ; 3 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 3 uses
  %i.v = sub nsw i64 %i.d, %indvars.iv107
  %i.w = mul nsw i64 %indvars.iv107, %i.c
  %i.x = mul nsw i32 %1, %indvars109
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %0, i64 %indvars.iv107
  %i.aa = getelementptr [4 x i8], ptr %i.z, i64 %i.y ; 7 uses
  %i.ab = icmp eq i64 %i.v, 1
  br i1 %i.ab, label %idamax.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph103
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !11
  %i.ad = tail call float @llvm.fabs.f32(float %i.ac) ; 2 uses
  %xtraiter = and i64 %i.m, 1
  %i.ae = icmp eq i64 %i.l, %indvars.iv107
  br i1 %i.ae, label %.lr.ph48.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i, %.new
  %indvars.iv52.i = phi i64 [ 1, %.new ], [ %indvars.iv.next53.i.1, %.lr.ph48.i ] ; 4 uses
  %.247.i = phi i32 [ 0, %.new ], [ %.3.i.1, %.lr.ph48.i ]
  %.23345.i = phi float [ %i.ad, %.new ], [ %.334.i.1, %.lr.ph48.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph48.i ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv52.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !11
  %i.ah = tail call float @llvm.fabs.f32(float %i.ag) ; 2 uses
  %i.ai = fcmp ogt float %i.ah, %.23345.i         ; 2 uses
  %.334.i = select i1 %i.ai, float %i.ah, float %.23345.i ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv52.i to i32
  %.3.i = select i1 %i.ai, i32 %i.aj, i32 %.247.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next53.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !11
  %i.am = tail call float @llvm.fabs.f32(float %i.al) ; 2 uses
  %i.an = fcmp ogt float %i.am, %.334.i           ; 2 uses
  %.334.i.1 = select i1 %i.an, float %i.am, float %.334.i ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %.3.i.1 = select i1 %i.an, i32 %i.ao, i32 %.3.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !27

idamax.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph48.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit, label %.lr.ph48.i.epil.preheader

.lr.ph48.i.epil.preheader:                        ; preds = %idamax.exit.loopexit.unr-lcssa, %bb.b
  %indvars.iv52.i.epil.init = phi i64 [ 1, %bb.b ], [ %indvars.iv.next53.i.1, %idamax.exit.loopexit.unr-lcssa ] ; 2 uses
  %.247.i.epil.init = phi i32 [ 0, %bb.b ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %.23345.i.epil.init = phi float [ %i.ad, %bb.b ], [ %.334.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %lcmp.mod142 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv52.i.epil.init
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %i.ar = tail call float @llvm.fabs.f32(float %i.aq)
  %i.as = fcmp ogt float %i.ar, %.23345.i.epil.init
  %i.at = trunc nuw nsw i64 %indvars.iv52.i.epil.init to i32
  %.3.i.epil = select i1 %i.as, i32 %i.at, i32 %.247.i.epil.init
  br label %idamax.exit

idamax.exit:                                      ; preds = %.lr.ph48.i.epil.preheader, %idamax.exit.loopexit.unr-lcssa, %.lr.ph103
  %.035.i = phi i32 [ 0, %.lr.ph103 ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ], [ %.3.i.epil, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %i.au = add nsw i32 %.035.i, %indvars109        ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv107
  store i32 %i.au, ptr %i.av, align 4, !tbaa !4
  %i.aw = sext i32 %i.au to i64                   ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %0, i64 %i.w
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11 ; 3 uses
  %i.ba = fcmp une float %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.c, label %bb.h

bb.c:                                             ; preds = %idamax.exit
  %.not = icmp eq i32 %.035.i, 0                  ; 2 uses
  %.pre = load float, ptr %i.aa, align 4, !tbaa !11 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.pre, ptr %i.ay, align 4, !tbaa !11
  store float %i.az, ptr %i.aa, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = phi float [ %i.az, %bb.d ], [ %.pre, %bb.c ]
  %i.bc = fdiv float -1.000000e+00, %i.bb         ; 2 uses
  %i.bd = sub nsw i64 %i.d, %indvars.iv.next108   ; 5 uses
  %i.be = getelementptr i8, ptr %i.aa, i64 4      ; 6 uses
  %min.iters.check126 = icmp ult i64 %i.bd, 8
  br i1 %min.iters.check126, label %.lr.ph25.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.e
  %n.vec129 = and i64 %i.bd, -8                   ; 3 uses
  %broadcast.splatinsert130 = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat131 = shufflevector <4 x float> %broadcast.splatinsert130, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next136, %vector.body132 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index133 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %wide.load134 = load <4 x float>, ptr %i.bf, align 4, !tbaa !11
  %wide.load135 = load <4 x float>, ptr %i.bg, align 4, !tbaa !11
  %i.bh = fmul <4 x float> %broadcast.splat131, %wide.load134
  %i.bi = fmul <4 x float> %broadcast.splat131, %wide.load135
  store <4 x float> %i.bh, ptr %i.bf, align 4, !tbaa !11
  store <4 x float> %i.bi, ptr %i.bg, align 4, !tbaa !11
  %index.next136 = add nuw i64 %index133, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next136, %n.vec129
  br i1 %i.bj, label %middle.block137, label %vector.body132, !llvm.loop !68

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %i.bd, %n.vec129
  br i1 %cmp.n138, label %.lr.ph, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.e, %middle.block137
  %indvars.iv28.i.ph = phi i64 [ 0, %bb.e ], [ %n.vec129, %middle.block137 ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %.lr.ph25.i ], [ %indvars.iv28.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv28.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !11
  %i.bm = fmul float %i.bc, %i.bl
  store float %i.bm, ptr %i.bk, align 4, !tbaa !11
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next29.i, %i.bd
  br i1 %exitcond.not.i, label %.lr.ph, label %.lr.ph25.i, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph25.i, %middle.block137
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.aw
  %min.iters.check = icmp ult i64 %6, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep121
  %bound1 = icmp ult ptr %scevgep119, %scevgep117
  %found.conflict = and i1 %bound0, %bound1
  %i.bn = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %6, -8                         ; 3 uses
  %cmp.n = icmp eq i64 %6, %n.vec
  %i.bo = sub i64 %i.k, %indvars.iv107
  %xtraiter143 = and i64 %i.bo, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %daxpy.exit
  %indvars.iv104 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next105, %daxpy.exit ] ; 2 uses
  %i.bp = mul nsw i64 %indvars.iv104, %i.c        ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bp ; 2 uses
  %i.bq = load float, ptr %gep, align 4, !tbaa !11 ; 6 uses
  %.pre112 = add nsw i64 %i.bp, %indvars.iv107    ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre112 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !11
  store float %i.bs, ptr %gep, align 4, !tbaa !11
  store float %i.bq, ptr %i.br, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.bt = getelementptr [4 x i8], ptr %0, i64 %.pre112
  %i.bu = getelementptr i8, ptr %i.bt, i64 4      ; 4 uses
  %i.bv = fcmp oeq float %i.bq, 0.000000e+00
  br i1 %i.bv, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bn
  br i1 %brmerge, label %.lr.ph.i.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bw, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %wide.load122 = load <4 x float>, ptr %i.bx, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load123 = load <4 x float>, ptr %i.by, align 4, !tbaa !11, !alias.scope !73
  %wide.load124 = load <4 x float>, ptr %i.bz, align 4, !tbaa !11, !alias.scope !73
  %i.ca = fmul <4 x float> %broadcast.splat, %wide.load123
  %i.cb = fmul <4 x float> %broadcast.splat, %wide.load124
  %i.cc = fadd <4 x float> %wide.load, %i.ca
  %i.cd = fadd <4 x float> %wide.load122, %i.cb
  store <4 x float> %i.cc, ptr %i.bw, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  store <4 x float> %i.cd, ptr %i.bx, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader140

.lr.ph.i.preheader140:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.cf = add i64 %indvars.iv107, %indvars.iv.i.ph
  br i1 %lcmp.mod144.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader140
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.ph ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !11
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.ph
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !11
  %i.ck = fmul float %i.bq, %i.cj
  %i.cl = fadd float %i.ch, %i.ck
  store float %i.cl, ptr %i.cg, align 4, !tbaa !11
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader140
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader140 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.cm = icmp eq i64 %i.l, %i.cf
  br i1 %i.cm, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !11
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !11
  %i.cr = fmul float %i.bq, %i.cq
  %i.cs = fadd float %i.co, %i.cr
  store float %i.cs, ptr %i.cn, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !11
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next.i
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !11
  %i.cx = fmul float %i.bq, %i.cw
  %i.cy = fadd float %i.cu, %i.cx
  store float %i.cy, ptr %i.ct, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i99.1 = icmp eq i64 %indvars.iv.next.i.1, %i.bd
  br i1 %exitcond.not.i99.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !76

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !32

bb.h:                                             ; preds = %idamax.exit
  store i32 %indvars109, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %daxpy.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %.loopexit100, label %.lr.ph103, !llvm.loop !33

.loopexit100:                                     ; preds = %.loopexit, %bb.a
  %i.cz = sext i32 %i.a to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cz
  store i32 %i.a, ptr %i.da, align 4, !tbaa !4
  %i.db = add i32 %1, 1
  %i.dc = mul i32 %i.a, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !11
  %i.dg = fcmp oeq float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit100
  store i32 %i.a, ptr %4, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit100
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgesl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = add i32 %2, -1                           ; 2 uses
  %i.b = icmp eq i32 %5, 0
  br i1 %i.b, label %bb.b, label %.preheader127

.preheader127:                                    ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader127
  %i.d = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %.lr.ph133, label %.loopexit124

.lr.ph133:                                        ; preds = %bb.b
  %i.f = add i32 %1, 1                            ; 2 uses
  %i.g = zext nneg i32 %2 to i64                  ; 5 uses
  %wide.trip.count149 = zext nneg i32 %i.a to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %scevgep164 = getelementptr i8, ptr %4, i64 %i.h
  %scevgep165 = getelementptr i8, ptr %0, i64 4
  %i.i = add nsw i64 %i.g, -2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph133, %daxpy.exit
  %indvars.iv146 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next147, %daxpy.exit ] ; 10 uses
  %i.j = shl nuw nsw i64 %indvars.iv146, 2
  %i.k = getelementptr i8, ptr %4, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.k, i64 4
  %i.l = trunc i64 %indvars.iv146 to i32
  %i.m = mul i32 %i.f, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.o
  %i.p = sub nsw i64 %i.g, %indvars.iv146
  %i.q = shl i64 %i.p, 2
  %scevgep167 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.o
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv146
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %4, i64 %i.t ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !11 ; 6 uses
  %i.w = zext i32 %i.s to i64
  %.not103 = icmp eq i64 %indvars.iv146, %i.w
  br i1 %.not103, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv146 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !11
  store float %i.y, ptr %i.u, align 4, !tbaa !11
  store float %i.v, ptr %i.x, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 4 uses
  %i.z = trunc nuw nsw i64 %indvars.iv146 to i32
  %i.aa = mul i32 %i.f, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4      ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next147 ; 4 uses
  %i.af = fcmp oeq float %i.v, 0.000000e+00
  br i1 %i.af, label %daxpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = sub nsw i64 %i.g, %indvars.iv.next147   ; 4 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.f
  %bound0 = icmp ult ptr %scevgep, %scevgep168
  %bound1 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ah, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %wide.load169 = load <4 x float>, ptr %i.ai, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load170 = load <4 x float>, ptr %i.aj, align 4, !tbaa !11, !alias.scope !80
  %wide.load171 = load <4 x float>, ptr %i.ak, align 4, !tbaa !11, !alias.scope !80
  %i.al = fmul <4 x float> %broadcast.splat, %wide.load170
  %i.am = fmul <4 x float> %broadcast.splat, %wide.load171
  %i.an = fadd <4 x float> %wide.load, %i.al
  %i.ao = fadd <4 x float> %wide.load169, %i.am
  store <4 x float> %i.an, ptr %i.ah, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  store <4 x float> %i.ao, ptr %i.ai, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.f, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.f ], [ %n.vec, %middle.block ] ; 5 uses
  %i.aq = add i64 %indvars.iv146, %indvars.iv.i.ph
  %i.ar = sub nsw i64 %indvars.iv146, %i.g
  %i.as = and i64 %i.ar, 1
  %lcmp.mod209.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod209.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.ph ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.ph
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11
  %i.ax = fmul float %i.v, %i.aw
  %i.ay = fadd float %i.au, %i.ax
  store float %i.ay, ptr %i.at, align 4, !tbaa !11
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.az = icmp eq i64 %i.i, %i.aq
  br i1 %i.az, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11
  %i.be = fmul float %i.v, %i.bd
  %i.bf = fadd float %i.bb, %i.be
  store float %i.bf, ptr %i.ba, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.i ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !11
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul float %i.v, %i.bj
  %i.bl = fadd float %i.bh, %i.bk
  store float %i.bl, ptr %i.bg, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ag
  br i1 %exitcond.not.i.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !83

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.e
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %.loopexit124, label %bb.c, !llvm.loop !21

.loopexit124:                                     ; preds = %daxpy.exit, %bb.b
  %i.bm = icmp sgt i32 %2, 0
  br i1 %i.bm, label %.lr.ph136.preheader, label %.loopexit

.lr.ph136.preheader:                              ; preds = %.loopexit124
  %i.bn = zext nneg i32 %2 to i64                 ; 6 uses
  %i.bo = sext i32 %1 to i64                      ; 4 uses
  %wide.trip.count154 = zext nneg i32 %2 to i64
  %i.bp = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  %i.bq = add nsw i64 %i.bp, -4
  %i.br = add nuw nsw i64 %i.bn, 4611686018427387903
  %i.bs = mul i64 %i.br, %i.bo
  %i.bt = shl i64 %i.bs, 2                        ; 2 uses
  %i.bu = mul nsw i64 %i.bo, -4
  %i.bv = shl nsw i64 %i.bo, 2
  %i.bw = sub nuw nsw i64 -4, %i.bv
  %i.bx = add nsw i64 %i.bn, -2
  %i.by = getelementptr i8, ptr %0, i64 %i.bt
  %i.bz = getelementptr i8, ptr %0, i64 %i.bt
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bp
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %daxpy.exit110
  %indvars.iv151 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next152, %daxpy.exit110 ] ; 7 uses
  %6 = xor i64 %indvars.iv151, -1
  %7 = add nsw i64 %6, %i.bn                      ; 3 uses
  %i.cc = shl i64 %indvars.iv151, 2
  %i.cd = sub i64 %i.bq, %i.cc
  %scevgep173 = getelementptr i8, ptr %4, i64 %i.cd
  %i.ce = mul i64 %i.bu, %indvars.iv151
  %scevgep174 = getelementptr i8, ptr %i.by, i64 %i.ce
  %i.cf = mul i64 %i.bw, %indvars.iv151
  %scevgep175 = getelementptr i8, ptr %i.cb, i64 %i.cf
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next152 to i32
  %i.cg = sub nsw i64 %i.bn, %indvars.iv.next152  ; 5 uses
  %i.ch = sub nsw i32 %2, %indvars
  %i.ci = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cg ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !11
  %i.ck = mul nsw i64 %i.cg, %i.bo
  %i.cl = mul nsw i32 %i.ch, %1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [4 x i8], ptr %0, i64 %i.cg
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load float, ptr %i.co, align 4, !tbaa !11
  %i.cq = fdiv float %i.cj, %i.cp                 ; 6 uses
  store float %i.cq, ptr %i.ci, align 4, !tbaa !11
  %i.cr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ck ; 4 uses
  %i.cs = icmp slt i64 %i.cg, 1
  %i.ct = fcmp oeq float %i.cq, 0.000000e+00
  %or.cond41.i104 = or i1 %i.cs, %i.ct
  br i1 %or.cond41.i104, label %daxpy.exit110, label %.lr.ph.i106.preheader

.lr.ph.i106.preheader:                            ; preds = %.lr.ph136
  %min.iters.check180 = icmp ult i64 %7, 8
  br i1 %min.iters.check180, label %.lr.ph.i106.preheader196, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph.i106.preheader
  %bound0176 = icmp ult ptr %4, %scevgep175
  %bound1177 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict178 = and i1 %bound0176, %bound1177
  br i1 %found.conflict178, label %.lr.ph.i106.preheader196, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck172
  %n.vec183 = and i64 %7, -8                      ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph181
  %index187 = phi i64 [ 0, %vector.ph181 ], [ %index.next192, %vector.body186 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index187 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load188 = load <4 x float>, ptr %i.cu, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %wide.load189 = load <4 x float>, ptr %i.cv, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index187 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load190 = load <4 x float>, ptr %i.cw, align 4, !tbaa !11, !alias.scope !87
  %wide.load191 = load <4 x float>, ptr %i.cx, align 4, !tbaa !11, !alias.scope !87
  %i.cy = fmul <4 x float> %broadcast.splat185, %wide.load190
  %i.cz = fmul <4 x float> %broadcast.splat185, %wide.load191
  %i.da = fsub <4 x float> %wide.load188, %i.cy
  %i.db = fsub <4 x float> %wide.load189, %i.cz
  store <4 x float> %i.da, ptr %i.cu, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  store <4 x float> %i.db, ptr %i.cv, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %index.next192 = add nuw i64 %index187, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next192, %n.vec183
  br i1 %i.dc, label %middle.block193, label %vector.body186, !llvm.loop !89

middle.block193:                                  ; preds = %vector.body186
  %cmp.n194 = icmp eq i64 %7, %n.vec183
  br i1 %cmp.n194, label %daxpy.exit110, label %.lr.ph.i106.preheader196

.lr.ph.i106.preheader196:                         ; preds = %vector.memcheck172, %.lr.ph.i106.preheader, %middle.block193
  %indvars.iv.i107.ph = phi i64 [ 0, %vector.memcheck172 ], [ 0, %.lr.ph.i106.preheader ], [ %n.vec183, %middle.block193 ] ; 5 uses
  %i.dd = add i64 %indvars.iv151, %indvars.iv.i107.ph
  %i.de = sub nsw i64 %indvars.iv151, %i.bn
  %i.df = and i64 %i.de, 1
  %lcmp.mod211.not.not = icmp eq i64 %i.df, 0
  br i1 %lcmp.mod211.not.not, label %.lr.ph.i106.prol, label %.lr.ph.i106.prol.loopexit

.lr.ph.i106.prol:                                 ; preds = %.lr.ph.i106.preheader196
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i107.ph ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !11
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i107.ph
  %i.dj = load float, ptr %i.di, align 4, !tbaa !11
  %i.dk = fmul float %i.cq, %i.dj
  %i.dl = fsub float %i.dh, %i.dk
  store float %i.dl, ptr %i.dg, align 4, !tbaa !11
  %indvars.iv.next.i108.prol = or disjoint i64 %indvars.iv.i107.ph, 1
  br label %.lr.ph.i106.prol.loopexit

.lr.ph.i106.prol.loopexit:                        ; preds = %.lr.ph.i106.prol, %.lr.ph.i106.preheader196
  %indvars.iv.i107.unr = phi i64 [ %indvars.iv.i107.ph, %.lr.ph.i106.preheader196 ], [ %indvars.iv.next.i108.prol, %.lr.ph.i106.prol ]
  %i.dm = icmp eq i64 %i.bx, %i.dd
  br i1 %i.dm, label %daxpy.exit110, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106.prol.loopexit, %.lr.ph.i106
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i108.1, %.lr.ph.i106 ], [ %indvars.iv.i107.unr, %.lr.ph.i106.prol.loopexit ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i107 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !11
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i107
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !11
  %i.dr = fmul float %i.cq, %i.dq
  %i.ds = fsub float %i.do, %i.dr
  store float %i.ds, ptr %i.dn, align 4, !tbaa !11
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i108 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !11
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i108
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !11
  %i.dx = fmul float %i.cq, %i.dw
  %i.dy = fsub float %i.du, %i.dx
  store float %i.dy, ptr %i.dt, align 4, !tbaa !11
  %indvars.iv.next.i108.1 = add nuw nsw i64 %indvars.iv.i107, 2 ; 2 uses
  %exitcond.not.i109.1 = icmp eq i64 %indvars.iv.next.i108.1, %i.cg
  br i1 %exitcond.not.i109.1, label %daxpy.exit110, label %.lr.ph.i106, !llvm.loop !90

daxpy.exit110:                                    ; preds = %.lr.ph.i106.prol.loopexit, %.lr.ph.i106, %middle.block193, %.lr.ph136
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph136, !llvm.loop !24

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ddot.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %ddot.exit ] ; 9 uses
  %indvars140 = trunc i64 %indvars.iv to i32
  %i.dz = mul nsw i64 %indvars.iv, %i.d
  %i.ea = mul nsw i32 %1, %indvars140
  %i.eb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dz ; 5 uses
  %i.ec = icmp eq i64 %indvars.iv, 0
  br i1 %i.ec, label %ddot.exit, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %.lr.ph
  %xtraiter = and i64 %indvars.iv, 3              ; 3 uses
  %i.ed = icmp samesign ult i64 %indvars.iv, 4
  br i1 %i.ed, label %.lr.ph.i112.epil.preheader, label %.lr.ph.i112.preheader.new

.lr.ph.i112.preheader.new:                        ; preds = %.lr.ph.i112.preheader
  %unroll_iter = and i64 %indvars.iv, 9223372036854775804
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112, %.lr.ph.i112.preheader.new
  %indvars.iv.i113 = phi i64 [ 0, %.lr.ph.i112.preheader.new ], [ %indvars.iv.next.i114.3, %.lr.ph.i112 ] ; 6 uses
  %.144.i = phi float [ 0.000000e+00, %.lr.ph.i112.preheader.new ], [ %i.fb, %.lr.ph.i112 ]
  %niter = phi i64 [ 0, %.lr.ph.i112.preheader.new ], [ %niter.next.3, %.lr.ph.i112 ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i113
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !11
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i113
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !11
  %i.ei = fmul float %i.ef, %i.eh
  %i.ej = fadd float %.144.i, %i.ei
  %indvars.iv.next.i114 = or disjoint i64 %indvars.iv.i113, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i114
  %i.el = load float, ptr %i.ek, align 4, !tbaa !11
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i114
  %i.en = load float, ptr %i.em, align 4, !tbaa !11
  %i.eo = fmul float %i.el, %i.en
  %i.ep = fadd float %i.ej, %i.eo
  %indvars.iv.next.i114.1 = or disjoint i64 %indvars.iv.i113, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i114.1
  %i.er = load float, ptr %i.eq, align 4, !tbaa !11
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i114.1
  %i.et = load float, ptr %i.es, align 4, !tbaa !11
  %i.eu = fmul float %i.er, %i.et
  %i.ev = fadd float %i.ep, %i.eu
  %indvars.iv.next.i114.2 = or disjoint i64 %indvars.iv.i113, 3 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i114.2
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !11
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i114.2
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !11
  %i.fa = fmul float %i.ex, %i.ez
  %i.fb = fadd float %i.ev, %i.fa                 ; 3 uses
  %indvars.iv.next.i114.3 = add nuw nsw i64 %indvars.iv.i113, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ddot.exit.loopexit.unr-lcssa, label %.lr.ph.i112, !llvm.loop !91

ddot.exit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i112
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ddot.exit, label %.lr.ph.i112.epil.preheader

.lr.ph.i112.epil.preheader:                       ; preds = %ddot.exit.loopexit.unr-lcssa, %.lr.ph.i112.preheader
  %indvars.iv.i113.epil.init = phi i64 [ 0, %.lr.ph.i112.preheader ], [ %indvars.iv.next.i114.3, %ddot.exit.loopexit.unr-lcssa ]
  %.144.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i112.preheader ], [ %i.fb, %ddot.exit.loopexit.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %.lr.ph.i112.epil

.lr.ph.i112.epil:                                 ; preds = %.lr.ph.i112.epil, %.lr.ph.i112.epil.preheader
  %indvars.iv.i113.epil = phi i64 [ %indvars.iv.next.i114.epil, %.lr.ph.i112.epil ], [ %indvars.iv.i113.epil.init, %.lr.ph.i112.epil.preheader ] ; 3 uses
  %.144.i.epil = phi float [ %i.fh, %.lr.ph.i112.epil ], [ %.144.i.epil.init, %.lr.ph.i112.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i112.epil ], [ 0, %.lr.ph.i112.epil.preheader ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i113.epil
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !11
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i113.epil
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !11
  %i.fg = fmul float %i.fd, %i.ff
  %i.fh = fadd float %.144.i.epil, %i.fg          ; 2 uses
  %indvars.iv.next.i114.epil = add nuw nsw i64 %indvars.iv.i113.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ddot.exit, label %.lr.ph.i112.epil, !llvm.loop !92

ddot.exit:                                        ; preds = %ddot.exit.loopexit.unr-lcssa, %.lr.ph.i112.epil, %.lr.ph
  %.0.i = phi float [ 0.000000e+00, %.lr.ph ], [ %i.fb, %ddot.exit.loopexit.unr-lcssa ], [ %i.fh, %.lr.ph.i112.epil ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !11
  %i.fk = fsub float %i.fj, %.0.i
  %i.fl = sext i32 %i.ea to i64
  %i.fm = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !11
  %i.fp = fdiv float %i.fk, %i.fo
  store float %i.fp, ptr %i.fi, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %ddot.exit
  %i.fq = icmp sgt i32 %2, 2
  br i1 %i.fq, label %.lr.ph131, label %.loopexit

.lr.ph131:                                        ; preds = %._crit_edge
  %i.fr = add i32 %1, 1
  %i.fs = zext nneg i32 %2 to i64
  %wide.trip.count144 = zext nneg i32 %i.a to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph131, %bb.i
  %indvar = phi i64 [ 0, %.lr.ph131 ], [ %indvar.next, %bb.i ] ; 2 uses
  %indvars.iv141 = phi i64 [ 1, %.lr.ph131 ], [ %indvars.iv.next142, %bb.i ] ; 3 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 3 uses
  %i.ft = sub nsw i64 %i.fs, %indvars.iv.next142  ; 3 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ft ; 4 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !11
  %i.fw = trunc nsw i64 %i.ft to i32              ; 2 uses
  %i.fx = mul i32 %i.fr, %i.fw
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [4 x i8], ptr %0, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 4      ; 5 uses
  %i.gb = getelementptr i8, ptr %i.fu, i64 4      ; 5 uses
  %xtraiter201 = and i64 %indvars.iv141, 3        ; 3 uses
  %i.gc = icmp ult i64 %indvar, 3
  br i1 %i.gc, label %.lr.ph.i117.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter206 = and i64 %indvars.iv141, 9223372036854775804
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117, %.new
  %indvars.iv.i118 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i120.3, %.lr.ph.i117 ] ; 6 uses
  %.144.i119 = phi float [ 0.000000e+00, %.new ], [ %i.ha, %.lr.ph.i117 ]
  %niter207 = phi i64 [ 0, %.new ], [ %niter207.next.3, %.lr.ph.i117 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i118
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !11
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i118
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !11
  %i.gh = fmul float %i.ge, %i.gg
  %i.gi = fadd float %.144.i119, %i.gh
  %indvars.iv.next.i120 = or disjoint i64 %indvars.iv.i118, 1 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i120
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !11
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i120
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !11
  %i.gn = fmul float %i.gk, %i.gm
  %i.go = fadd float %i.gi, %i.gn
  %indvars.iv.next.i120.1 = or disjoint i64 %indvars.iv.i118, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i120.1
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !11
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i120.1
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !11
  %i.gt = fmul float %i.gq, %i.gs
  %i.gu = fadd float %i.go, %i.gt
  %indvars.iv.next.i120.2 = or disjoint i64 %indvars.iv.i118, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.next.i120.2
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !11
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i120.2
end_hunk_2
