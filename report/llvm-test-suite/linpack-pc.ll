Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/linpack-pc?download=true
inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@main:bb.a
  %i.aj = fadd <4 x float> %wide.load.2872, %wide.load527.2 ; 2 uses
  %i.ak = fadd <4 x float> %wide.load526.2875, %wide.load528.2 ; 2 uses
  %i.al = getelementptr i8, ptr %invariant.gep82.i, i64 96
  %i.am = getelementptr i8, ptr %invariant.gep82.i, i64 112
  %wide.load527.3 = load <4 x float>, ptr %i.al, align 4, !tbaa !11
  %wide.load528.3 = load <4 x float>, ptr %i.am, align 4, !tbaa !11
  %i.an = fadd <4 x float> %wide.load.3878, %wide.load527.3 ; 2 uses
  %i.ao = fadd <4 x float> %wide.load526.3881, %wide.load528.3 ; 2 uses
  %i.ap = getelementptr i8, ptr %invariant.gep82.i, i64 128
  %i.aq = getelementptr i8, ptr %invariant.gep82.i, i64 144
  %wide.load527.4 = load <4 x float>, ptr %i.ap, align 4, !tbaa !11
  %wide.load528.4 = load <4 x float>, ptr %i.aq, align 4, !tbaa !11
  %i.ar = fadd <4 x float> %wide.load.4884, %wide.load527.4 ; 2 uses
  %i.as = fadd <4 x float> %wide.load526.4887, %wide.load528.4 ; 2 uses
  %i.at = getelementptr i8, ptr %invariant.gep82.i, i64 160
  %i.au = getelementptr i8, ptr %invariant.gep82.i, i64 176
  %wide.load527.5 = load <4 x float>, ptr %i.at, align 4, !tbaa !11
  %wide.load528.5 = load <4 x float>, ptr %i.au, align 4, !tbaa !11
  %i.av = fadd <4 x float> %wide.load.5890, %wide.load527.5 ; 2 uses
  %i.aw = fadd <4 x float> %wide.load526.5893, %wide.load528.5 ; 2 uses
  %i.ax = getelementptr i8, ptr %invariant.gep82.i, i64 192
  %i.ay = getelementptr i8, ptr %invariant.gep82.i, i64 208
  %wide.load527.6 = load <4 x float>, ptr %i.ax, align 4, !tbaa !11
  %wide.load528.6 = load <4 x float>, ptr %i.ay, align 4, !tbaa !11
  %i.az = fadd <4 x float> %wide.load.6896, %wide.load527.6 ; 2 uses
  %i.ba = fadd <4 x float> %wide.load526.6899, %wide.load528.6 ; 2 uses
  %i.bb = getelementptr i8, ptr %invariant.gep82.i, i64 224
  %i.bc = getelementptr i8, ptr %invariant.gep82.i, i64 240
  %wide.load527.7 = load <4 x float>, ptr %i.bb, align 4, !tbaa !11
  %wide.load528.7 = load <4 x float>, ptr %i.bc, align 4, !tbaa !11
  %i.bd = fadd <4 x float> %wide.load.7902, %wide.load527.7 ; 2 uses
  %i.be = fadd <4 x float> %wide.load526.7905, %wide.load528.7 ; 2 uses
  %i.bf = getelementptr i8, ptr %invariant.gep82.i, i64 256
  %i.bg = getelementptr i8, ptr %invariant.gep82.i, i64 272
  %wide.load527.8 = load <4 x float>, ptr %i.bf, align 4, !tbaa !11
  %wide.load528.8 = load <4 x float>, ptr %i.bg, align 4, !tbaa !11
  %i.bh = fadd <4 x float> %wide.load.8908, %wide.load527.8 ; 2 uses
  %i.bi = fadd <4 x float> %wide.load526.8911, %wide.load528.8 ; 2 uses
  %i.bj = getelementptr i8, ptr %invariant.gep82.i, i64 288
  %i.bk = getelementptr i8, ptr %invariant.gep82.i, i64 304
  %wide.load527.9 = load <4 x float>, ptr %i.bj, align 4, !tbaa !11
  %wide.load528.9 = load <4 x float>, ptr %i.bk, align 4, !tbaa !11
  %i.bl = fadd <4 x float> %wide.load.9914, %wide.load527.9 ; 2 uses
  %i.bm = fadd <4 x float> %wide.load526.9917, %wide.load528.9 ; 2 uses
  %i.bn = getelementptr i8, ptr %invariant.gep82.i, i64 320
  %i.bo = getelementptr i8, ptr %invariant.gep82.i, i64 336
  %wide.load527.10 = load <4 x float>, ptr %i.bn, align 4, !tbaa !11
  %wide.load528.10 = load <4 x float>, ptr %i.bo, align 4, !tbaa !11
  %i.bp = fadd <4 x float> %wide.load.10920, %wide.load527.10 ; 2 uses
  %i.bq = fadd <4 x float> %wide.load526.10923, %wide.load528.10 ; 2 uses
  %i.br = getelementptr i8, ptr %invariant.gep82.i, i64 352
  %i.bs = getelementptr i8, ptr %invariant.gep82.i, i64 368
  %wide.load527.11 = load <4 x float>, ptr %i.br, align 4, !tbaa !11
  %wide.load528.11 = load <4 x float>, ptr %i.bs, align 4, !tbaa !11
  %i.bt = fadd <4 x float> %wide.load.11926, %wide.load527.11 ; 2 uses
  %i.bu = fadd <4 x float> %wide.load526.11929, %wide.load528.11 ; 2 uses
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
  br i1 %exitcond81.not.i, label %matgen.exit, label %.preheader.i, !llvm.loop !16

matgen.exit:                                      ; preds = %.preheader.i
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
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info)
  %i.ce = tail call i64 @clock() #12
  %i.cf = sitofp i64 %i.cd to float
  %i.cg = sitofp i64 %i.ce to float
  %i.ch = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cf, i64 1
  %i.cj = fdiv <2 x float> %i.ci, splat (float 1.000000e+06) ; 2 uses
  %shift = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.cj, %shift
  %i.ck = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.ck, ptr @atime, align 16, !tbaa !11
  %i.cl = tail call i64 @clock() #12
  br label %bb.c

bb.c:                                             ; preds = %daxpy.exit.i, %matgen.exit
  %indvars.iv146.i = phi i64 [ 0, %matgen.exit ], [ %indvars.iv.next147.i, %daxpy.exit.i ] ; 7 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4  ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.co ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !11 ; 4 uses
  %i.cr = zext i32 %i.cn to i64
  %.not103.i = icmp eq i64 %indvars.iv146.i, %i.cr
  br i1 %.not103.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !11
  store float %i.ct, ptr %i.cp, align 4, !tbaa !11
  store float %i.cq, ptr %i.cs, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 3 uses
  %i.cu = mul nuw nsw i64 %indvars.iv146.i, 808
  %i.cv = getelementptr i8, ptr @main.a, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 4      ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i ; 2 uses
  %i.cy = fcmp oeq float %i.cq, 0.000000e+00
  br i1 %i.cy, label %daxpy.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cz = sub nuw nsw i64 99, %indvars.iv146.i    ; 3 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv146.i, 91
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph530

vector.ph530:                                     ; preds = %bb.f
  %n.vec = and i64 %i.cz, 120                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph530
  %index532 = phi i64 [ 0, %vector.ph530 ], [ %index.next537, %vector.body531 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %index532 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load533 = load <4 x float>, ptr %i.da, align 4, !tbaa !11
  %wide.load534 = load <4 x float>, ptr %i.db, align 4, !tbaa !11
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index532 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load535 = load <4 x float>, ptr %i.dc, align 4, !tbaa !11
  %wide.load536 = load <4 x float>, ptr %i.dd, align 4, !tbaa !11
  %i.de = fmul <4 x float> %broadcast.splat, %wide.load535
  %i.df = fmul <4 x float> %broadcast.splat, %wide.load536
  %i.dg = fadd <4 x float> %wide.load533, %i.de
  %i.dh = fadd <4 x float> %wide.load534, %i.df
  store <4 x float> %i.dg, ptr %i.da, align 4, !tbaa !11
  store <4 x float> %i.dh, ptr %i.db, align 4, !tbaa !11
  %index.next537 = add nuw i64 %index532, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next537, %n.vec
  br i1 %i.di, label %middle.block538, label %vector.body531, !llvm.loop !17

middle.block538:                                  ; preds = %vector.body531
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %daxpy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %middle.block538
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block538 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.i.i ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !11
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !11
  %i.dn = fmul float %i.cq, %i.dm
  %i.do = fadd float %i.dk, %i.dn
  store float %i.do, ptr %i.dj, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cz
  br i1 %exitcond.not.i.i, label %daxpy.exit.i, label %.lr.ph.i.i, !llvm.loop !20

daxpy.exit.i:                                     ; preds = %.lr.ph.i.i, %middle.block538, %bb.e
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, 99
  br i1 %exitcond150.not.i, label %.lr.ph136.i, label %bb.c, !llvm.loop !21

.lr.ph136.i:                                      ; preds = %daxpy.exit.i, %daxpy.exit110.i
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %daxpy.exit110.i ], [ 0, %daxpy.exit.i ] ; 4 uses
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.dp = sub nuw nsw i64 99, %indvars.iv151.i    ; 7 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.dp ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !11
  %i.ds = getelementptr [4 x i8], ptr @main.a, i64 %i.dp
  %0 = mul nuw nsw i64 %i.dp, 804
  %i.dt = getelementptr i8, ptr %i.ds, i64 %0
  %i.du = load float, ptr %i.dt, align 4, !tbaa !11
  %i.dv = fdiv float %i.dr, %i.du                 ; 4 uses
  store float %i.dv, ptr %i.dq, align 4, !tbaa !11
  %.idx = mul nuw nsw i64 %i.dp, 804
  %i.dw = getelementptr inbounds nuw i8, ptr @main.a, i64 %.idx ; 2 uses
  %i.dx = icmp samesign ugt i64 %indvars.iv151.i, 98
  %i.dy = fcmp oeq float %i.dv, 0.000000e+00
  %or.cond41.i104.i = or i1 %i.dx, %i.dy
  br i1 %or.cond41.i104.i, label %daxpy.exit110.i, label %.lr.ph.i106.i.preheader

.lr.ph.i106.i.preheader:                          ; preds = %.lr.ph136.i
  %min.iters.check540 = icmp samesign ugt i64 %indvars.iv151.i, 91
  br i1 %min.iters.check540, label %.lr.ph.i106.i.preheader819, label %vector.ph541

vector.ph541:                                     ; preds = %.lr.ph.i106.i.preheader
  %n.vec542 = and i64 %i.dp, 120                  ; 3 uses
  %broadcast.splatinsert543 = insertelement <4 x float> poison, float %i.dv, i64 0
  %broadcast.splat544 = shufflevector <4 x float> %broadcast.splatinsert543, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph541
  %index546 = phi i64 [ 0, %vector.ph541 ], [ %index.next551, %vector.body545 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index546 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %wide.load547 = load <4 x float>, ptr %i.dz, align 16, !tbaa !11
  %wide.load548 = load <4 x float>, ptr %i.ea, align 16, !tbaa !11
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index546 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load549 = load <4 x float>, ptr %i.eb, align 4, !tbaa !11
  %wide.load550 = load <4 x float>, ptr %i.ec, align 4, !tbaa !11
  %i.ed = fmul <4 x float> %broadcast.splat544, %wide.load549
  %i.ee = fmul <4 x float> %broadcast.splat544, %wide.load550
  %i.ef = fsub <4 x float> %wide.load547, %i.ed
  %i.eg = fsub <4 x float> %wide.load548, %i.ee
  store <4 x float> %i.ef, ptr %i.dz, align 16, !tbaa !11
  store <4 x float> %i.eg, ptr %i.ea, align 16, !tbaa !11
  %index.next551 = add nuw i64 %index546, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next551, %n.vec542
  br i1 %i.eh, label %middle.block552, label %vector.body545, !llvm.loop !22

middle.block552:                                  ; preds = %vector.body545
  %cmp.n553 = icmp eq i64 %i.dp, %n.vec542
  br i1 %cmp.n553, label %daxpy.exit110.i, label %.lr.ph.i106.i.preheader819

.lr.ph.i106.i.preheader819:                       ; preds = %.lr.ph.i106.i.preheader, %middle.block552
  %indvars.iv.i107.i.ph = phi i64 [ 0, %.lr.ph.i106.i.preheader ], [ %n.vec542, %middle.block552 ]
  br label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %.lr.ph.i106.i.preheader819, %.lr.ph.i106.i
  %indvars.iv.i107.i = phi i64 [ %indvars.iv.next.i108.i, %.lr.ph.i106.i ], [ %indvars.iv.i107.i.ph, %.lr.ph.i106.i.preheader819 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !11
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i107.i
  %i.el = load float, ptr %i.ek, align 4, !tbaa !11
  %i.em = fmul float %i.dv, %i.el
  %i.en = fsub float %i.ej, %i.em
  store float %i.en, ptr %i.ei, align 4, !tbaa !11
  %indvars.iv.next.i108.i = add nuw nsw i64 %indvars.iv.i107.i, 1 ; 2 uses
  %exitcond.not.i109.i = icmp eq i64 %indvars.iv.next.i108.i, %i.dp
  br i1 %exitcond.not.i109.i, label %daxpy.exit110.i, label %.lr.ph.i106.i, !llvm.loop !23

daxpy.exit110.i:                                  ; preds = %.lr.ph.i106.i, %middle.block552, %.lr.ph136.i
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, 100
  br i1 %exitcond155.not.i, label %dgesl.exit, label %.lr.ph136.i, !llvm.loop !24

dgesl.exit:                                       ; preds = %daxpy.exit110.i
  %i.eo = tail call i64 @clock() #12
  %i.ep = sitofp i64 %i.eo to float
  %i.eq = sitofp i64 %i.cl to float
  %i.er = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.ep, i64 1
  %i.et = fdiv <2 x float> %i.es, splat (float 1.000000e+06) ; 2 uses
  %shift798 = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop799 = fsub <2 x float> %shift798, %i.et
  %i.eu = extractelement <2 x float> %foldExtExtBinop799, i64 0 ; 2 uses
  store float %i.eu, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), align 4, !tbaa !11
  %i.ev = load float, ptr @atime, align 16, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.x, ptr noundef nonnull align 16 dereferenceable(400) @main.b, i64 400, i1 false), !tbaa !11
  br label %.preheader52.i88

.preheader52.i88:                                 ; preds = %dgesl.exit, %._crit_edge.i98
  %.2 = phi float [ %..i95.1, %._crit_edge.i98 ], [ 0.000000e+00, %dgesl.exit ]
  %indvars.iv64.i89 = phi i64 [ %indvars.iv.next65.i99, %._crit_edge.i98 ], [ 0, %dgesl.exit ] ; 2 uses
  %.04455.i90 = phi i32 [ %i.fd, %._crit_edge.i98 ], [ 1325, %dgesl.exit ]
  %invariant.gep.i91.idx = mul nuw nsw i64 %indvars.iv64.i89, 804
  %invariant.gep.i91 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i91.idx ; 2 uses
  br label %bb.g

.preheader51.i101:                                ; preds = %._crit_edge.i98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted939 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted942 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted944 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted947 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted950 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted953 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted956 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted959 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted962 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted965 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted968 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted971 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted974 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted977 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted980 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted983 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted986 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted989 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted992 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted995 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted998 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1001 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1004 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1007 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1010 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1012 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1014 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1016 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i102

bb.g:                                             ; preds = %bb.g, %.preheader52.i88
  %.3 = phi float [ %.2, %.preheader52.i88 ], [ %..i95.1, %bb.g ] ; 2 uses
  %indvars.iv.i92 = phi i64 [ 0, %.preheader52.i88 ], [ %indvars.iv.next.i96.1, %bb.g ] ; 3 uses
  %.14553.i93 = phi i32 [ %.04455.i90, %.preheader52.i88 ], [ %i.fd, %bb.g ] ; 2 uses
  %i.ew = mul nuw nsw i32 %.14553.i93, 3125
  %i.ex = and i32 %i.ew, 65535
  %i.ey = add nsw i32 %i.ex, -32768
  %i.ez = sitofp i32 %i.ey to float
  %i.fa = fmul nnan float %i.ez, f0x38800000      ; 3 uses
  %gep.i94 = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  store float %i.fa, ptr %gep.i94, align 4, !tbaa !11
  %i.fb = fcmp ogt float %i.fa, %.3
  %..i95 = select i1 %i.fb, float %i.fa, float %.3 ; 2 uses
  %i.fc = mul nsw i32 %.14553.i93, 761
  %i.fd = and i32 %i.fc, 65535                    ; 3 uses
  %i.fe = add nsw i32 %i.fd, -32768
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fmul nnan float %i.ff, f0x38800000      ; 3 uses
  %i.fh = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  %gep.i94.1 = getelementptr i8, ptr %i.fh, i64 4
  store float %i.fg, ptr %gep.i94.1, align 4, !tbaa !11
  %i.fi = fcmp ogt float %i.fg, %..i95
  %..i95.1 = select i1 %i.fi, float %i.fg, float %..i95 ; 3 uses
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %exitcond.not.i97.1 = icmp eq i64 %indvars.iv.next.i96.1, 100
  br i1 %exitcond.not.i97.1, label %._crit_edge.i98, label %bb.g, !llvm.loop !13

._crit_edge.i98:                                  ; preds = %bb.g
  %indvars.iv.next65.i99 = add nuw nsw i64 %indvars.iv64.i89, 1 ; 2 uses
  %exitcond68.not.i100 = icmp eq i64 %indvars.iv.next65.i99, 100
  br i1 %exitcond68.not.i100, label %.preheader51.i101, label %.preheader52.i88, !llvm.loop !15

.preheader.i102:                                  ; preds = %.preheader.i102, %.preheader51.i101
  %i.fj = phi float [ %.promoted1016, %.preheader51.i101 ], [ %i.hq, %.preheader.i102 ]
  %i.fk = phi float [ %.promoted1014, %.preheader51.i101 ], [ %i.ho, %.preheader.i102 ]
  %i.fl = phi float [ %.promoted1012, %.preheader51.i101 ], [ %i.hm, %.preheader.i102 ]
  %i.fm = phi float [ %.promoted1010, %.preheader51.i101 ], [ %i.hk, %.preheader.i102 ]
  %wide.load560.111008 = phi <4 x float> [ %.promoted1007, %.preheader51.i101 ], [ %i.hi, %.preheader.i102 ]
  %wide.load559.111005 = phi <4 x float> [ %.promoted1004, %.preheader51.i101 ], [ %i.hh, %.preheader.i102 ]
  %wide.load560.101002 = phi <4 x float> [ %.promoted1001, %.preheader51.i101 ], [ %i.he, %.preheader.i102 ]
  %wide.load559.10999 = phi <4 x float> [ %.promoted998, %.preheader51.i101 ], [ %i.hd, %.preheader.i102 ]
  %wide.load560.9996 = phi <4 x float> [ %.promoted995, %.preheader51.i101 ], [ %i.ha, %.preheader.i102 ]
  %wide.load559.9993 = phi <4 x float> [ %.promoted992, %.preheader51.i101 ], [ %i.gz, %.preheader.i102 ]
  %wide.load560.8990 = phi <4 x float> [ %.promoted989, %.preheader51.i101 ], [ %i.gw, %.preheader.i102 ]
  %wide.load559.8987 = phi <4 x float> [ %.promoted986, %.preheader51.i101 ], [ %i.gv, %.preheader.i102 ]
  %wide.load560.7984 = phi <4 x float> [ %.promoted983, %.preheader51.i101 ], [ %i.gs, %.preheader.i102 ]
  %wide.load559.7981 = phi <4 x float> [ %.promoted980, %.preheader51.i101 ], [ %i.gr, %.preheader.i102 ]
  %wide.load560.6978 = phi <4 x float> [ %.promoted977, %.preheader51.i101 ], [ %i.go, %.preheader.i102 ]
  %wide.load559.6975 = phi <4 x float> [ %.promoted974, %.preheader51.i101 ], [ %i.gn, %.preheader.i102 ]
  %wide.load560.5972 = phi <4 x float> [ %.promoted971, %.preheader51.i101 ], [ %i.gk, %.preheader.i102 ]
  %wide.load559.5969 = phi <4 x float> [ %.promoted968, %.preheader51.i101 ], [ %i.gj, %.preheader.i102 ]
  %wide.load560.4966 = phi <4 x float> [ %.promoted965, %.preheader51.i101 ], [ %i.gg, %.preheader.i102 ]
  %wide.load559.4963 = phi <4 x float> [ %.promoted962, %.preheader51.i101 ], [ %i.gf, %.preheader.i102 ]
  %wide.load560.3960 = phi <4 x float> [ %.promoted959, %.preheader51.i101 ], [ %i.gc, %.preheader.i102 ]
  %wide.load559.3957 = phi <4 x float> [ %.promoted956, %.preheader51.i101 ], [ %i.gb, %.preheader.i102 ]
  %wide.load560.2954 = phi <4 x float> [ %.promoted953, %.preheader51.i101 ], [ %i.fy, %.preheader.i102 ]
  %wide.load559.2951 = phi <4 x float> [ %.promoted950, %.preheader51.i101 ], [ %i.fx, %.preheader.i102 ]
  %wide.load560.1948 = phi <4 x float> [ %.promoted947, %.preheader51.i101 ], [ %i.fu, %.preheader.i102 ]
  %wide.load559.1945 = phi <4 x float> [ %.promoted944, %.preheader51.i101 ], [ %i.ft, %.preheader.i102 ]
  %i.fn = phi <4 x float> [ %.promoted942, %.preheader51.i101 ], [ %i.fq, %.preheader.i102 ]
  %wide.load559940 = phi <4 x float> [ %main.b.promoted939, %.preheader51.i101 ], [ %i.fp, %.preheader.i102 ]
  %indvars.iv77.i103 = phi i64 [ 0, %.preheader51.i101 ], [ %indvars.iv.next78.i110, %.preheader.i102 ] ; 2 uses
  %invariant.gep82.i104.idx = mul nuw nsw i64 %indvars.iv77.i103, 804
  %invariant.gep82.i104 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i104.idx ; 28 uses
  %i.fo = getelementptr i8, ptr %invariant.gep82.i104, i64 16
  %wide.load561 = load <4 x float>, ptr %invariant.gep82.i104, align 4, !tbaa !11
  %wide.load562 = load <4 x float>, ptr %i.fo, align 4, !tbaa !11
  %i.fp = fadd <4 x float> %wide.load559940, %wide.load561 ; 2 uses
  %i.fq = fadd <4 x float> %i.fn, %wide.load562   ; 2 uses
  %i.fr = getelementptr i8, ptr %invariant.gep82.i104, i64 32
  %i.fs = getelementptr i8, ptr %invariant.gep82.i104, i64 48
  %wide.load561.1 = load <4 x float>, ptr %i.fr, align 4, !tbaa !11
  %wide.load562.1 = load <4 x float>, ptr %i.fs, align 4, !tbaa !11
  %i.ft = fadd <4 x float> %wide.load559.1945, %wide.load561.1 ; 2 uses
  %i.fu = fadd <4 x float> %wide.load560.1948, %wide.load562.1 ; 2 uses
  %i.fv = getelementptr i8, ptr %invariant.gep82.i104, i64 64
  %i.fw = getelementptr i8, ptr %invariant.gep82.i104, i64 80
  %wide.load561.2 = load <4 x float>, ptr %i.fv, align 4, !tbaa !11
  %wide.load562.2 = load <4 x float>, ptr %i.fw, align 4, !tbaa !11
  %i.fx = fadd <4 x float> %wide.load559.2951, %wide.load561.2 ; 2 uses
  %i.fy = fadd <4 x float> %wide.load560.2954, %wide.load562.2 ; 2 uses
  %i.fz = getelementptr i8, ptr %invariant.gep82.i104, i64 96
  %i.ga = getelementptr i8, ptr %invariant.gep82.i104, i64 112
  %wide.load561.3 = load <4 x float>, ptr %i.fz, align 4, !tbaa !11
  %wide.load562.3 = load <4 x float>, ptr %i.ga, align 4, !tbaa !11
  %i.gb = fadd <4 x float> %wide.load559.3957, %wide.load561.3 ; 2 uses
  %i.gc = fadd <4 x float> %wide.load560.3960, %wide.load562.3 ; 2 uses
  %i.gd = getelementptr i8, ptr %invariant.gep82.i104, i64 128
  %i.ge = getelementptr i8, ptr %invariant.gep82.i104, i64 144
  %wide.load561.4 = load <4 x float>, ptr %i.gd, align 4, !tbaa !11
  %wide.load562.4 = load <4 x float>, ptr %i.ge, align 4, !tbaa !11
  %i.gf = fadd <4 x float> %wide.load559.4963, %wide.load561.4 ; 2 uses
  %i.gg = fadd <4 x float> %wide.load560.4966, %wide.load562.4 ; 2 uses
  %i.gh = getelementptr i8, ptr %invariant.gep82.i104, i64 160
  %i.gi = getelementptr i8, ptr %invariant.gep82.i104, i64 176
  %wide.load561.5 = load <4 x float>, ptr %i.gh, align 4, !tbaa !11
end_hunk_0
begin_hunk_1_@main:bb.a
  %indvars.iv104.i224 = phi i64 [ %indvars.iv.i201, %.lr.ph.i222 ], [ %indvars.iv.next105.i233, %daxpy.exit.i232 ] ; 2 uses
  %i.aez = mul nuw nsw i64 %indvars.iv104.i224, 201 ; 2 uses
  %gep.i225 = getelementptr [4 x i8], ptr %invariant.gep.i223, i64 %i.aez ; 2 uses
  %i.afa = load float, ptr %gep.i225, align 4, !tbaa !11 ; 4 uses
  %.pre.i226 = add nuw nsw i64 %i.aez, %indvars.iv107.i200 ; 2 uses
  br i1 %.not.i217, label %._crit_edge.i227, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre.i226 ; 2 uses
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !11
  store float %i.afc, ptr %gep.i225, align 4, !tbaa !11
  store float %i.afa, ptr %i.afb, align 4, !tbaa !11
  br label %._crit_edge.i227

._crit_edge.i227:                                 ; preds = %bb.ac, %bb.ab
  %i.afd = getelementptr [4 x i8], ptr @main.a, i64 %.pre.i226
  %i.afe = getelementptr i8, ptr %i.afd, i64 4    ; 2 uses
  %i.aff = fcmp oeq float %i.afa, 0.000000e+00
  br i1 %i.aff, label %daxpy.exit.i232, label %.lr.ph.i.i228.preheader

.lr.ph.i.i228.preheader:                          ; preds = %._crit_edge.i227
  br i1 %min.iters.check676, label %.lr.ph.i.i228.preheader806, label %vector.ph677

vector.ph677:                                     ; preds = %.lr.ph.i.i228.preheader
  %broadcast.splatinsert679 = insertelement <4 x float> poison, float %i.afa, i64 0
  %broadcast.splat680 = shufflevector <4 x float> %broadcast.splatinsert679, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph677
  %index682 = phi i64 [ 0, %vector.ph677 ], [ %index.next687, %vector.body681 ] ; 3 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %index682 ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16 ; 2 uses
  %wide.load683 = load <4 x float>, ptr %i.afg, align 4, !tbaa !11
  %wide.load684 = load <4 x float>, ptr %i.afh, align 4, !tbaa !11
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %index682 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %wide.load685 = load <4 x float>, ptr %i.afi, align 4, !tbaa !11
  %wide.load686 = load <4 x float>, ptr %i.afj, align 4, !tbaa !11
  %i.afk = fmul <4 x float> %broadcast.splat680, %wide.load685
  %i.afl = fmul <4 x float> %broadcast.splat680, %wide.load686
  %i.afm = fadd <4 x float> %wide.load683, %i.afk
  %i.afn = fadd <4 x float> %wide.load684, %i.afl
  store <4 x float> %i.afm, ptr %i.afg, align 4, !tbaa !11
  store <4 x float> %i.afn, ptr %i.afh, align 4, !tbaa !11
  %index.next687 = add nuw i64 %index682, 8       ; 2 uses
  %i.afo = icmp eq i64 %index.next687, %n.vec678
  br i1 %i.afo, label %middle.block688, label %vector.body681, !llvm.loop !38

middle.block688:                                  ; preds = %vector.body681
  br i1 %cmp.n689, label %daxpy.exit.i232, label %.lr.ph.i.i228.preheader806

.lr.ph.i.i228.preheader806:                       ; preds = %.lr.ph.i.i228.preheader, %middle.block688
  %indvars.iv.i.i229.ph = phi i64 [ 0, %.lr.ph.i.i228.preheader ], [ %n.vec678, %middle.block688 ]
  br label %.lr.ph.i.i228

.lr.ph.i.i228:                                    ; preds = %.lr.ph.i.i228.preheader806, %.lr.ph.i.i228
  %indvars.iv.i.i229 = phi i64 [ %indvars.iv.next.i.i230, %.lr.ph.i.i228 ], [ %indvars.iv.i.i229.ph, %.lr.ph.i.i228.preheader806 ] ; 3 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %indvars.iv.i.i229 ; 2 uses
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !11
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.i.i229
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !11
  %i.aft = fmul float %i.afa, %i.afs
  %i.afu = fadd float %i.afq, %i.aft
  store float %i.afu, ptr %i.afp, align 4, !tbaa !11
  %indvars.iv.next.i.i230 = add nuw nsw i64 %indvars.iv.i.i229, 1 ; 2 uses
  %exitcond.not.i99.i231 = icmp eq i64 %indvars.iv.next.i.i230, %i.aep
  br i1 %exitcond.not.i99.i231, label %daxpy.exit.i232, label %.lr.ph.i.i228, !llvm.loop !39

daxpy.exit.i232:                                  ; preds = %.lr.ph.i.i228, %middle.block688, %._crit_edge.i227
  %indvars.iv.next105.i233 = add nuw nsw i64 %indvars.iv104.i224, 1 ; 2 uses
  %exitcond.not.i234 = icmp eq i64 %indvars.iv.next105.i233, 100
  br i1 %exitcond.not.i234, label %.loopexit.i213, label %bb.ab, !llvm.loop !32

.loopexit.i213:                                   ; preds = %daxpy.exit.i232, %idamax.exit.loopexit.i211
  %i.afv = phi i32 [ %indvars109.i202, %idamax.exit.loopexit.i211 ], [ %i.adj, %daxpy.exit.i232 ] ; 2 uses
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i201, 1
  %exitcond111.not.i215 = icmp eq i64 %indvars.iv.next108.i212, 99
  br i1 %exitcond111.not.i215, label %.loopexit100.i216, label %.lr.ph103.i199, !llvm.loop !33

.loopexit100.i216:                                ; preds = %.loopexit.i213
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.afw = add nuw nsw i32 %storemerge85416, 1    ; 2 uses
  %exitcond466.not = icmp eq i32 %i.afw, %i.aao
  br i1 %exitcond466.not, label %._crit_edge417, label %.preheader52.i174.preheader, !llvm.loop !40

._crit_edge417:                                   ; preds = %.loopexit100.i216
  %i.afx = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.afy = fcmp oeq float %i.afx, 0.000000e+00
  %i.afz = select i1 %i.afy, i32 99, i32 %i.afv
  store i32 %i.afz, ptr @main.info, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge417, %bb.w
  %i.aga = tail call i64 @clock() #12
  %i.agb = sitofp i64 %i.aga to float
  %i.agc = fdiv float %i.agb, 1.000000e+06
  %i.agd = fsub float %i.agc, %i.aan
  %i.age = fsub float %i.agd, %i.aak
  %i.agf = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.agg = sitofp i32 %i.agf to float
  %i.agh = fdiv float %i.age, %i.agg
  %i.agi = load i32, ptr @main.j, align 4, !tbaa !4
  %i.agj = sext i32 %i.agi to i64
  %i.agk = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.agj
  store float %i.agh, ptr %i.agk, align 4, !tbaa !11
  %i.agl = tail call i64 @clock() #12
  %i.agm = sitofp i64 %i.agl to float
  %i.agn = fdiv float %i.agm, 1.000000e+06
  %i.ago = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.agp = icmp sgt i32 %i.ago, 0
  br i1 %i.agp, label %.preheader391, label %._crit_edge422

.preheader391:                                    ; preds = %bb.ad, %dgesl.exit258
  %storemerge86421 = phi i32 [ %i.ais, %dgesl.exit258 ], [ 0, %bb.ad ]
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader391, %daxpy.exit.i243
  %indvars.iv146.i236 = phi i64 [ %indvars.iv.next147.i238, %daxpy.exit.i243 ], [ 0, %.preheader391 ] ; 7 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i236
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !4 ; 2 uses
  %i.ags = sext i32 %i.agr to i64
  %i.agt = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.ags ; 2 uses
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !11 ; 4 uses
  %i.agv = zext i32 %i.agr to i64
  %.not103.i237 = icmp eq i64 %indvars.iv146.i236, %i.agv
  br i1 %.not103.i237, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i236 ; 2 uses
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !11
  store float %i.agx, ptr %i.agt, align 4, !tbaa !11
  store float %i.agu, ptr %i.agw, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next147.i238 = add nuw nsw i64 %indvars.iv146.i236, 1 ; 3 uses
  %i.agy = mul nuw nsw i64 %indvars.iv146.i236, 808
  %i.agz = getelementptr i8, ptr @main.a, i64 %i.agy
  %i.aha = getelementptr i8, ptr %i.agz, i64 4    ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i238 ; 2 uses
  %i.ahc = fcmp oeq float %i.agu, 0.000000e+00
  br i1 %i.ahc, label %daxpy.exit.i243, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ahd = sub nuw nsw i64 99, %indvars.iv146.i236 ; 3 uses
  %min.iters.check660 = icmp samesign ugt i64 %indvars.iv146.i236, 91
  br i1 %min.iters.check660, label %.lr.ph.i.i239.preheader, label %vector.ph661

vector.ph661:                                     ; preds = %bb.ah
  %n.vec662 = and i64 %i.ahd, 120                 ; 3 uses
  %broadcast.splatinsert663 = insertelement <4 x float> poison, float %i.agu, i64 0
  %broadcast.splat664 = shufflevector <4 x float> %broadcast.splatinsert663, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph661
  %index666 = phi i64 [ 0, %vector.ph661 ], [ %index.next671, %vector.body665 ] ; 3 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %index666 ; 3 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16 ; 2 uses
  %wide.load667 = load <4 x float>, ptr %i.ahe, align 4, !tbaa !11
  %wide.load668 = load <4 x float>, ptr %i.ahf, align 4, !tbaa !11
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %index666 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  %wide.load669 = load <4 x float>, ptr %i.ahg, align 4, !tbaa !11
  %wide.load670 = load <4 x float>, ptr %i.ahh, align 4, !tbaa !11
  %i.ahi = fmul <4 x float> %broadcast.splat664, %wide.load669
  %i.ahj = fmul <4 x float> %broadcast.splat664, %wide.load670
  %i.ahk = fadd <4 x float> %wide.load667, %i.ahi
  %i.ahl = fadd <4 x float> %wide.load668, %i.ahj
  store <4 x float> %i.ahk, ptr %i.ahe, align 4, !tbaa !11
  store <4 x float> %i.ahl, ptr %i.ahf, align 4, !tbaa !11
  %index.next671 = add nuw i64 %index666, 8       ; 2 uses
  %i.ahm = icmp eq i64 %index.next671, %n.vec662
  br i1 %i.ahm, label %middle.block672, label %vector.body665, !llvm.loop !41

middle.block672:                                  ; preds = %vector.body665
  %cmp.n673 = icmp eq i64 %i.ahd, %n.vec662
  br i1 %cmp.n673, label %daxpy.exit.i243, label %.lr.ph.i.i239.preheader

.lr.ph.i.i239.preheader:                          ; preds = %bb.ah, %middle.block672
  %indvars.iv.i.i240.ph = phi i64 [ 0, %bb.ah ], [ %n.vec662, %middle.block672 ]
  br label %.lr.ph.i.i239

.lr.ph.i.i239:                                    ; preds = %.lr.ph.i.i239.preheader, %.lr.ph.i.i239
  %indvars.iv.i.i240 = phi i64 [ %indvars.iv.next.i.i241, %.lr.ph.i.i239 ], [ %indvars.iv.i.i240.ph, %.lr.ph.i.i239.preheader ] ; 3 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahb, i64 %indvars.iv.i.i240 ; 2 uses
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !11
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv.i.i240
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !11
  %i.ahr = fmul float %i.agu, %i.ahq
  %i.ahs = fadd float %i.aho, %i.ahr
  store float %i.ahs, ptr %i.ahn, align 4, !tbaa !11
  %indvars.iv.next.i.i241 = add nuw nsw i64 %indvars.iv.i.i240, 1 ; 2 uses
  %exitcond.not.i.i242 = icmp eq i64 %indvars.iv.next.i.i241, %i.ahd
  br i1 %exitcond.not.i.i242, label %daxpy.exit.i243, label %.lr.ph.i.i239, !llvm.loop !42

daxpy.exit.i243:                                  ; preds = %.lr.ph.i.i239, %middle.block672, %bb.ag
  %exitcond150.not.i244 = icmp eq i64 %indvars.iv.next147.i238, 99
  br i1 %exitcond150.not.i244, label %.lr.ph136.i246, label %bb.ae, !llvm.loop !21

.lr.ph136.i246:                                   ; preds = %daxpy.exit.i243, %daxpy.exit110.i255
  %indvars.iv151.i247 = phi i64 [ %indvars.iv.next152.i248, %daxpy.exit110.i255 ], [ 0, %daxpy.exit.i243 ] ; 4 uses
  %indvars.iv.next152.i248 = add nuw nsw i64 %indvars.iv151.i247, 1 ; 2 uses
  %i.aht = sub nuw nsw i64 99, %indvars.iv151.i247 ; 7 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.aht ; 2 uses
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !11
  %i.ahw = getelementptr [4 x i8], ptr @main.a, i64 %i.aht
  %1 = mul nuw nsw i64 %i.aht, 804
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 %1
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !11
  %i.ahz = fdiv float %i.ahv, %i.ahy              ; 4 uses
  store float %i.ahz, ptr %i.ahu, align 4, !tbaa !11
  %.idx386 = mul nuw nsw i64 %i.aht, 804
  %i.aia = getelementptr inbounds nuw i8, ptr @main.a, i64 %.idx386 ; 2 uses
  %i.aib = icmp samesign ugt i64 %indvars.iv151.i247, 98
  %i.aic = fcmp oeq float %i.ahz, 0.000000e+00
  %or.cond41.i104.i250 = or i1 %i.aib, %i.aic
  br i1 %or.cond41.i104.i250, label %daxpy.exit110.i255, label %.lr.ph.i106.i251.preheader

.lr.ph.i106.i251.preheader:                       ; preds = %.lr.ph136.i246
  %min.iters.check644 = icmp samesign ugt i64 %indvars.iv151.i247, 91
  br i1 %min.iters.check644, label %.lr.ph.i106.i251.preheader807, label %vector.ph645

vector.ph645:                                     ; preds = %.lr.ph.i106.i251.preheader
  %n.vec646 = and i64 %i.aht, 120                 ; 3 uses
  %broadcast.splatinsert647 = insertelement <4 x float> poison, float %i.ahz, i64 0
  %broadcast.splat648 = shufflevector <4 x float> %broadcast.splatinsert647, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body649

vector.body649:                                   ; preds = %vector.body649, %vector.ph645
  %index650 = phi i64 [ 0, %vector.ph645 ], [ %index.next655, %vector.body649 ] ; 3 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index650 ; 3 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16 ; 2 uses
  %wide.load651 = load <4 x float>, ptr %i.aid, align 16, !tbaa !11
  %wide.load652 = load <4 x float>, ptr %i.aie, align 16, !tbaa !11
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %index650 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 16
  %wide.load653 = load <4 x float>, ptr %i.aif, align 4, !tbaa !11
  %wide.load654 = load <4 x float>, ptr %i.aig, align 4, !tbaa !11
  %i.aih = fmul <4 x float> %broadcast.splat648, %wide.load653
  %i.aii = fmul <4 x float> %broadcast.splat648, %wide.load654
  %i.aij = fsub <4 x float> %wide.load651, %i.aih
  %i.aik = fsub <4 x float> %wide.load652, %i.aii
  store <4 x float> %i.aij, ptr %i.aid, align 16, !tbaa !11
  store <4 x float> %i.aik, ptr %i.aie, align 16, !tbaa !11
  %index.next655 = add nuw i64 %index650, 8       ; 2 uses
  %i.ail = icmp eq i64 %index.next655, %n.vec646
  br i1 %i.ail, label %middle.block656, label %vector.body649, !llvm.loop !43

middle.block656:                                  ; preds = %vector.body649
  %cmp.n657 = icmp eq i64 %i.aht, %n.vec646
  br i1 %cmp.n657, label %daxpy.exit110.i255, label %.lr.ph.i106.i251.preheader807

.lr.ph.i106.i251.preheader807:                    ; preds = %.lr.ph.i106.i251.preheader, %middle.block656
  %indvars.iv.i107.i252.ph = phi i64 [ 0, %.lr.ph.i106.i251.preheader ], [ %n.vec646, %middle.block656 ]
  br label %.lr.ph.i106.i251

.lr.ph.i106.i251:                                 ; preds = %.lr.ph.i106.i251.preheader807, %.lr.ph.i106.i251
  %indvars.iv.i107.i252 = phi i64 [ %indvars.iv.next.i108.i253, %.lr.ph.i106.i251 ], [ %indvars.iv.i107.i252.ph, %.lr.ph.i106.i251.preheader807 ] ; 3 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i252 ; 2 uses
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !11
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv.i107.i252
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !11
  %i.aiq = fmul float %i.ahz, %i.aip
  %i.air = fsub float %i.ain, %i.aiq
  store float %i.air, ptr %i.aim, align 4, !tbaa !11
  %indvars.iv.next.i108.i253 = add nuw nsw i64 %indvars.iv.i107.i252, 1 ; 2 uses
  %exitcond.not.i109.i254 = icmp eq i64 %indvars.iv.next.i108.i253, %i.aht
  br i1 %exitcond.not.i109.i254, label %daxpy.exit110.i255, label %.lr.ph.i106.i251, !llvm.loop !44

daxpy.exit110.i255:                               ; preds = %.lr.ph.i106.i251, %middle.block656, %.lr.ph136.i246
  %exitcond155.not.i256 = icmp eq i64 %indvars.iv.next152.i248, 100
  br i1 %exitcond155.not.i256, label %dgesl.exit258, label %.lr.ph136.i246, !llvm.loop !24

dgesl.exit258:                                    ; preds = %daxpy.exit110.i255
  %i.ais = add nuw nsw i32 %storemerge86421, 1    ; 2 uses
  %exitcond467.not = icmp eq i32 %i.ais, %i.ago
  br i1 %exitcond467.not, label %._crit_edge422, label %.preheader391, !llvm.loop !45

._crit_edge422:                                   ; preds = %dgesl.exit258, %bb.ad
  %i.ait = tail call i64 @clock() #12
  %i.aiu = sitofp i64 %i.ait to float
  %i.aiv = fdiv float %i.aiu, 1.000000e+06
  %i.aiw = fsub float %i.aiv, %i.agn
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
  br i1 %i.ajt, label %bb.w, label %.preheader52.i259.preheader.preheader, !llvm.loop !46

.preheader52.i259.preheader.preheader:            ; preds = %._crit_edge422
  %i.aju = fdiv float %i.ajr, 5.000000e+00
  store float %i.aju, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  %i.ajv = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ajw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajv, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
  %i.ajx = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ajy = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %i.ajx) #13 ; 0 uses
  %i.ajz = tail call i64 @clock() #12
  %i.aka = sitofp i64 %i.ajz to float
  %i.akb = fdiv nnan float %i.aka, 1.000000e+06
  br label %.preheader52.i259.preheader

.preheader52.i259.preheader:                      ; preds = %.preheader52.i259.preheader.preheader, %matgen.exit283
  %storemerge81424 = phi i32 [ %i.amv, %matgen.exit283 ], [ 0, %.preheader52.i259.preheader.preheader ]
  br label %.preheader52.i259

.preheader52.i259:                                ; preds = %.preheader52.i259.preheader, %._crit_edge.i269
  %indvars.iv64.i260 = phi i64 [ %indvars.iv.next65.i270, %._crit_edge.i269 ], [ 0, %.preheader52.i259.preheader ] ; 2 uses
  %.04455.i261 = phi i32 [ %i.aki, %._crit_edge.i269 ], [ 1325, %.preheader52.i259.preheader ]
  %invariant.gep.i262.idx = mul nuw nsw i64 %indvars.iv64.i260, 800
  %invariant.gep.i262 = getelementptr i8, ptr @main.aa, i64 %invariant.gep.i262.idx ; 2 uses
  br label %bb.ai

.preheader51.i272:                                ; preds = %._crit_edge.i269
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1413 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1416 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1418 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1421 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1424 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1427 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1430 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1433 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1436 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1439 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1442 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1445 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1448 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1451 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1454 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1457 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1460 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1463 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1466 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1469 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1472 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1475 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1478 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1481 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1484 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1486 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1488 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1490 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i273

bb.ai:                                            ; preds = %bb.ai, %.preheader52.i259
  %indvars.iv.i263 = phi i64 [ 0, %.preheader52.i259 ], [ %indvars.iv.next.i267.1, %bb.ai ] ; 3 uses
  %.14553.i264 = phi i32 [ %.04455.i261, %.preheader52.i259 ], [ %i.aki, %bb.ai ] ; 2 uses
  %i.akc = mul nuw nsw i32 %.14553.i264, 3125
  %i.akd = and i32 %i.akc, 65535
  %i.ake = add nsw i32 %i.akd, -32768
  %i.akf = sitofp i32 %i.ake to float
  %i.akg = fmul nnan float %i.akf, f0x38800000
  %gep.i265 = getelementptr [4 x i8], ptr %invariant.gep.i262, i64 %indvars.iv.i263
  store float %i.akg, ptr %gep.i265, align 8, !tbaa !11
  %i.akh = mul nsw i32 %.14553.i264, 761
  %i.aki = and i32 %i.akh, 65535                  ; 3 uses
  %i.akj = add nsw i32 %i.aki, -32768
  %i.akk = sitofp i32 %i.akj to float
  %i.akl = fmul nnan float %i.akk, f0x38800000
  %i.akm = getelementptr [4 x i8], ptr %invariant.gep.i262, i64 %indvars.iv.i263
  %gep.i265.1 = getelementptr i8, ptr %i.akm, i64 4
  store float %i.akl, ptr %gep.i265.1, align 4, !tbaa !11
  %indvars.iv.next.i267.1 = add nuw nsw i64 %indvars.iv.i263, 2 ; 2 uses
  %exitcond.not.i268.1 = icmp eq i64 %indvars.iv.next.i267.1, 100
  br i1 %exitcond.not.i268.1, label %._crit_edge.i269, label %bb.ai, !llvm.loop !13

._crit_edge.i269:                                 ; preds = %bb.ai
  %indvars.iv.next65.i270 = add nuw nsw i64 %indvars.iv64.i260, 1 ; 2 uses
  %exitcond68.not.i271 = icmp eq i64 %indvars.iv.next65.i270, 100
  br i1 %exitcond68.not.i271, label %.preheader51.i272, label %.preheader52.i259, !llvm.loop !15

.preheader.i273:                                  ; preds = %.preheader.i273, %.preheader51.i272
  %i.akn = phi float [ %.promoted1490, %.preheader51.i272 ], [ %i.amu, %.preheader.i273 ]
  %i.ako = phi float [ %.promoted1488, %.preheader51.i272 ], [ %i.ams, %.preheader.i273 ]
  %i.akp = phi float [ %.promoted1486, %.preheader51.i272 ], [ %i.amq, %.preheader.i273 ]
  %i.akq = phi float [ %.promoted1484, %.preheader51.i272 ], [ %i.amo, %.preheader.i273 ]
  %wide.load720.111482 = phi <4 x float> [ %.promoted1481, %.preheader51.i272 ], [ %i.amm, %.preheader.i273 ]
  %wide.load719.111479 = phi <4 x float> [ %.promoted1478, %.preheader51.i272 ], [ %i.aml, %.preheader.i273 ]
  %wide.load720.101476 = phi <4 x float> [ %.promoted1475, %.preheader51.i272 ], [ %i.ami, %.preheader.i273 ]
  %wide.load719.101473 = phi <4 x float> [ %.promoted1472, %.preheader51.i272 ], [ %i.amh, %.preheader.i273 ]
  %wide.load720.91470 = phi <4 x float> [ %.promoted1469, %.preheader51.i272 ], [ %i.ame, %.preheader.i273 ]
  %wide.load719.91467 = phi <4 x float> [ %.promoted1466, %.preheader51.i272 ], [ %i.amd, %.preheader.i273 ]
  %wide.load720.81464 = phi <4 x float> [ %.promoted1463, %.preheader51.i272 ], [ %i.ama, %.preheader.i273 ]
  %wide.load719.81461 = phi <4 x float> [ %.promoted1460, %.preheader51.i272 ], [ %i.alz, %.preheader.i273 ]
  %wide.load720.71458 = phi <4 x float> [ %.promoted1457, %.preheader51.i272 ], [ %i.alw, %.preheader.i273 ]
  %wide.load719.71455 = phi <4 x float> [ %.promoted1454, %.preheader51.i272 ], [ %i.alv, %.preheader.i273 ]
  %wide.load720.61452 = phi <4 x float> [ %.promoted1451, %.preheader51.i272 ], [ %i.als, %.preheader.i273 ]
  %wide.load719.61449 = phi <4 x float> [ %.promoted1448, %.preheader51.i272 ], [ %i.alr, %.preheader.i273 ]
  %wide.load720.51446 = phi <4 x float> [ %.promoted1445, %.preheader51.i272 ], [ %i.alo, %.preheader.i273 ]
  %wide.load719.51443 = phi <4 x float> [ %.promoted1442, %.preheader51.i272 ], [ %i.aln, %.preheader.i273 ]
  %wide.load720.41440 = phi <4 x float> [ %.promoted1439, %.preheader51.i272 ], [ %i.alk, %.preheader.i273 ]
  %wide.load719.41437 = phi <4 x float> [ %.promoted1436, %.preheader51.i272 ], [ %i.alj, %.preheader.i273 ]
  %wide.load720.31434 = phi <4 x float> [ %.promoted1433, %.preheader51.i272 ], [ %i.alg, %.preheader.i273 ]
  %wide.load719.31431 = phi <4 x float> [ %.promoted1430, %.preheader51.i272 ], [ %i.alf, %.preheader.i273 ]
  %wide.load720.21428 = phi <4 x float> [ %.promoted1427, %.preheader51.i272 ], [ %i.alc, %.preheader.i273 ]
  %wide.load719.21425 = phi <4 x float> [ %.promoted1424, %.preheader51.i272 ], [ %i.alb, %.preheader.i273 ]
  %wide.load720.11422 = phi <4 x float> [ %.promoted1421, %.preheader51.i272 ], [ %i.aky, %.preheader.i273 ]
  %wide.load719.11419 = phi <4 x float> [ %.promoted1418, %.preheader51.i272 ], [ %i.akx, %.preheader.i273 ]
end_hunk_1
begin_hunk_2_@main:bb.a
  %indvars.iv104.i334 = phi i64 [ %indvars.iv.i311, %.lr.ph.i332 ], [ %indvars.iv.next105.i343, %daxpy.exit.i342 ] ; 2 uses
  %i.asa = mul nuw nsw i64 %indvars.iv104.i334, 200 ; 2 uses
  %gep.i335 = getelementptr [4 x i8], ptr %invariant.gep.i333, i64 %i.asa ; 2 uses
  %i.asb = load float, ptr %gep.i335, align 4, !tbaa !11 ; 4 uses
  %.pre.i336 = add nuw nsw i64 %i.asa, %indvars.iv107.i310 ; 2 uses
  br i1 %.not.i327, label %._crit_edge.i337, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr @main.aa, i64 %.pre.i336 ; 2 uses
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !11
  store float %i.asd, ptr %gep.i335, align 4, !tbaa !11
  store float %i.asb, ptr %i.asc, align 4, !tbaa !11
  br label %._crit_edge.i337

._crit_edge.i337:                                 ; preds = %bb.ap, %bb.ao
  %i.ase = getelementptr [4 x i8], ptr @main.aa, i64 %.pre.i336
  %i.asf = getelementptr i8, ptr %i.ase, i64 4    ; 2 uses
  %i.asg = fcmp oeq float %i.asb, 0.000000e+00
  br i1 %i.asg, label %daxpy.exit.i342, label %.lr.ph.i.i338.preheader

.lr.ph.i.i338.preheader:                          ; preds = %._crit_edge.i337
  br i1 %min.iters.check758, label %.lr.ph.i.i338.preheader801, label %vector.ph759

vector.ph759:                                     ; preds = %.lr.ph.i.i338.preheader
  %broadcast.splatinsert761 = insertelement <4 x float> poison, float %i.asb, i64 0
  %broadcast.splat762 = shufflevector <4 x float> %broadcast.splatinsert761, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body763

vector.body763:                                   ; preds = %vector.body763, %vector.ph759
  %index764 = phi i64 [ 0, %vector.ph759 ], [ %index.next769, %vector.body763 ] ; 3 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %index764 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 16 ; 2 uses
  %wide.load765 = load <4 x float>, ptr %i.ash, align 4, !tbaa !11
  %wide.load766 = load <4 x float>, ptr %i.asi, align 4, !tbaa !11
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index764 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 16
  %wide.load767 = load <4 x float>, ptr %i.asj, align 4, !tbaa !11
  %wide.load768 = load <4 x float>, ptr %i.ask, align 4, !tbaa !11
  %i.asl = fmul <4 x float> %broadcast.splat762, %wide.load767
  %i.asm = fmul <4 x float> %broadcast.splat762, %wide.load768
  %i.asn = fadd <4 x float> %wide.load765, %i.asl
  %i.aso = fadd <4 x float> %wide.load766, %i.asm
  store <4 x float> %i.asn, ptr %i.ash, align 4, !tbaa !11
  store <4 x float> %i.aso, ptr %i.asi, align 4, !tbaa !11
  %index.next769 = add nuw i64 %index764, 8       ; 2 uses
  %i.asp = icmp eq i64 %index.next769, %n.vec760
  br i1 %i.asp, label %middle.block770, label %vector.body763, !llvm.loop !50

middle.block770:                                  ; preds = %vector.body763
  br i1 %cmp.n771, label %daxpy.exit.i342, label %.lr.ph.i.i338.preheader801

.lr.ph.i.i338.preheader801:                       ; preds = %.lr.ph.i.i338.preheader, %middle.block770
  %indvars.iv.i.i339.ph = phi i64 [ 0, %.lr.ph.i.i338.preheader ], [ %n.vec760, %middle.block770 ]
  br label %.lr.ph.i.i338

.lr.ph.i.i338:                                    ; preds = %.lr.ph.i.i338.preheader801, %.lr.ph.i.i338
  %indvars.iv.i.i339 = phi i64 [ %indvars.iv.next.i.i340, %.lr.ph.i.i338 ], [ %indvars.iv.i.i339.ph, %.lr.ph.i.i338.preheader801 ] ; 3 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %indvars.iv.i.i339 ; 2 uses
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !11
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.i.i339
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !11
  %i.asu = fmul float %i.asb, %i.ast
  %i.asv = fadd float %i.asr, %i.asu
  store float %i.asv, ptr %i.asq, align 4, !tbaa !11
  %indvars.iv.next.i.i340 = add nuw nsw i64 %indvars.iv.i.i339, 1 ; 2 uses
  %exitcond.not.i99.i341 = icmp eq i64 %indvars.iv.next.i.i340, %i.arq
  br i1 %exitcond.not.i99.i341, label %daxpy.exit.i342, label %.lr.ph.i.i338, !llvm.loop !51

daxpy.exit.i342:                                  ; preds = %.lr.ph.i.i338, %middle.block770, %._crit_edge.i337
  %indvars.iv.next105.i343 = add nuw nsw i64 %indvars.iv104.i334, 1 ; 2 uses
  %exitcond.not.i344 = icmp eq i64 %indvars.iv.next105.i343, 100
  br i1 %exitcond.not.i344, label %.loopexit.i323, label %bb.ao, !llvm.loop !32

.loopexit.i323:                                   ; preds = %daxpy.exit.i342, %idamax.exit.loopexit.i321
  %i.asw = phi i32 [ %indvars109.i312, %idamax.exit.loopexit.i321 ], [ %i.aqk, %daxpy.exit.i342 ] ; 2 uses
  %indvars.iv.next.i324 = add nuw nsw i64 %indvars.iv.i311, 1
  %exitcond111.not.i325 = icmp eq i64 %indvars.iv.next108.i322, 99
  br i1 %exitcond111.not.i325, label %.loopexit100.i326, label %.lr.ph103.i309, !llvm.loop !33

.loopexit100.i326:                                ; preds = %.loopexit.i323
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.asx = add nuw nsw i32 %storemerge83427, 1    ; 2 uses
  %exitcond469.not = icmp eq i32 %i.asx, %i.anp
  br i1 %exitcond469.not, label %._crit_edge428, label %.preheader52.i284.preheader, !llvm.loop !52

._crit_edge428:                                   ; preds = %.loopexit100.i326
  %i.asy = load float, ptr getelementptr inbounds nuw (i8, ptr @main.aa, i64 79596), align 4, !tbaa !11
  %i.asz = fcmp oeq float %i.asy, 0.000000e+00
  %i.ata = select i1 %i.asz, i32 99, i32 %i.asw
  store i32 %i.ata, ptr @main.info, align 4, !tbaa !4
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge428, %bb.aj
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
  br i1 %i.atq, label %.preheader, label %._crit_edge433

.preheader:                                       ; preds = %bb.aq, %dgesl.exit368
  %storemerge84432 = phi i32 [ %i.avt, %dgesl.exit368 ], [ 0, %bb.aq ]
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %daxpy.exit.i353
  %indvars.iv146.i346 = phi i64 [ %indvars.iv.next147.i348, %daxpy.exit.i353 ], [ 0, %.preheader ] ; 7 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i346
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !4 ; 2 uses
  %i.att = sext i32 %i.ats to i64
  %i.atu = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.att ; 2 uses
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !11 ; 4 uses
  %i.atw = zext i32 %i.ats to i64
  %.not103.i347 = icmp eq i64 %indvars.iv146.i346, %i.atw
  br i1 %.not103.i347, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i346 ; 2 uses
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !11
  store float %i.aty, ptr %i.atu, align 4, !tbaa !11
  store float %i.atv, ptr %i.atx, align 4, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next147.i348 = add nuw nsw i64 %indvars.iv146.i346, 1 ; 3 uses
  %i.atz = mul nuw nsw i64 %indvars.iv146.i346, 804
  %i.aua = getelementptr i8, ptr @main.aa, i64 %i.atz
  %i.aub = getelementptr i8, ptr %i.aua, i64 4    ; 2 uses
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i348 ; 2 uses
  %i.aud = fcmp oeq float %i.atv, 0.000000e+00
  br i1 %i.aud, label %daxpy.exit.i353, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aue = sub nuw nsw i64 99, %indvars.iv146.i346 ; 3 uses
  %min.iters.check742 = icmp samesign ugt i64 %indvars.iv146.i346, 91
  br i1 %min.iters.check742, label %.lr.ph.i.i349.preheader, label %vector.ph743

vector.ph743:                                     ; preds = %bb.au
  %n.vec744 = and i64 %i.aue, 120                 ; 3 uses
  %broadcast.splatinsert745 = insertelement <4 x float> poison, float %i.atv, i64 0
  %broadcast.splat746 = shufflevector <4 x float> %broadcast.splatinsert745, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body747

vector.body747:                                   ; preds = %vector.body747, %vector.ph743
  %index748 = phi i64 [ 0, %vector.ph743 ], [ %index.next753, %vector.body747 ] ; 3 uses
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %index748 ; 3 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 16 ; 2 uses
  %wide.load749 = load <4 x float>, ptr %i.auf, align 4, !tbaa !11
  %wide.load750 = load <4 x float>, ptr %i.aug, align 4, !tbaa !11
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %index748 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 16
  %wide.load751 = load <4 x float>, ptr %i.auh, align 4, !tbaa !11
  %wide.load752 = load <4 x float>, ptr %i.aui, align 4, !tbaa !11
  %i.auj = fmul <4 x float> %broadcast.splat746, %wide.load751
  %i.auk = fmul <4 x float> %broadcast.splat746, %wide.load752
  %i.aul = fadd <4 x float> %wide.load749, %i.auj
  %i.aum = fadd <4 x float> %wide.load750, %i.auk
  store <4 x float> %i.aul, ptr %i.auf, align 4, !tbaa !11
  store <4 x float> %i.aum, ptr %i.aug, align 4, !tbaa !11
  %index.next753 = add nuw i64 %index748, 8       ; 2 uses
  %i.aun = icmp eq i64 %index.next753, %n.vec744
  br i1 %i.aun, label %middle.block754, label %vector.body747, !llvm.loop !53

middle.block754:                                  ; preds = %vector.body747
  %cmp.n755 = icmp eq i64 %i.aue, %n.vec744
  br i1 %cmp.n755, label %daxpy.exit.i353, label %.lr.ph.i.i349.preheader

.lr.ph.i.i349.preheader:                          ; preds = %bb.au, %middle.block754
  %indvars.iv.i.i350.ph = phi i64 [ 0, %bb.au ], [ %n.vec744, %middle.block754 ]
  br label %.lr.ph.i.i349

.lr.ph.i.i349:                                    ; preds = %.lr.ph.i.i349.preheader, %.lr.ph.i.i349
  %indvars.iv.i.i350 = phi i64 [ %indvars.iv.next.i.i351, %.lr.ph.i.i349 ], [ %indvars.iv.i.i350.ph, %.lr.ph.i.i349.preheader ] ; 3 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %indvars.iv.i.i350 ; 2 uses
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !11
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv.i.i350
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !11
  %i.aus = fmul float %i.atv, %i.aur
  %i.aut = fadd float %i.aup, %i.aus
  store float %i.aut, ptr %i.auo, align 4, !tbaa !11
  %indvars.iv.next.i.i351 = add nuw nsw i64 %indvars.iv.i.i350, 1 ; 2 uses
  %exitcond.not.i.i352 = icmp eq i64 %indvars.iv.next.i.i351, %i.aue
  br i1 %exitcond.not.i.i352, label %daxpy.exit.i353, label %.lr.ph.i.i349, !llvm.loop !54

daxpy.exit.i353:                                  ; preds = %.lr.ph.i.i349, %middle.block754, %bb.at
  %exitcond150.not.i354 = icmp eq i64 %indvars.iv.next147.i348, 99
  br i1 %exitcond150.not.i354, label %.lr.ph136.i356, label %bb.ar, !llvm.loop !21

.lr.ph136.i356:                                   ; preds = %daxpy.exit.i353, %daxpy.exit110.i365
  %indvars.iv151.i357 = phi i64 [ %indvars.iv.next152.i358, %daxpy.exit110.i365 ], [ 0, %daxpy.exit.i353 ] ; 4 uses
  %indvars.iv.next152.i358 = add nuw nsw i64 %indvars.iv151.i357, 1 ; 2 uses
  %i.auu = sub nuw nsw i64 99, %indvars.iv151.i357 ; 7 uses
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.auu ; 2 uses
  %i.auw = load float, ptr %i.auv, align 4, !tbaa !11
  %i.aux = getelementptr [4 x i8], ptr @main.aa, i64 %i.auu
  %2 = mul nuw nsw i64 %i.auu, 800
  %i.auy = getelementptr i8, ptr %i.aux, i64 %2
  %i.auz = load float, ptr %i.auy, align 4, !tbaa !11
  %i.ava = fdiv float %i.auw, %i.auz              ; 4 uses
  store float %i.ava, ptr %i.auv, align 4, !tbaa !11
  %.idx381 = mul nuw nsw i64 %i.auu, 800
  %i.avb = getelementptr inbounds nuw i8, ptr @main.aa, i64 %.idx381 ; 2 uses
  %i.avc = icmp samesign ugt i64 %indvars.iv151.i357, 98
  %i.avd = fcmp oeq float %i.ava, 0.000000e+00
  %or.cond41.i104.i360 = or i1 %i.avc, %i.avd
  br i1 %or.cond41.i104.i360, label %daxpy.exit110.i365, label %.lr.ph.i106.i361.preheader

.lr.ph.i106.i361.preheader:                       ; preds = %.lr.ph136.i356
  %min.iters.check726 = icmp samesign ugt i64 %indvars.iv151.i357, 91
  br i1 %min.iters.check726, label %.lr.ph.i106.i361.preheader802, label %vector.ph727

vector.ph727:                                     ; preds = %.lr.ph.i106.i361.preheader
  %n.vec728 = and i64 %i.auu, 120                 ; 3 uses
  %broadcast.splatinsert729 = insertelement <4 x float> poison, float %i.ava, i64 0
  %broadcast.splat730 = shufflevector <4 x float> %broadcast.splatinsert729, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body731

vector.body731:                                   ; preds = %vector.body731, %vector.ph727
  %index732 = phi i64 [ 0, %vector.ph727 ], [ %index.next737, %vector.body731 ] ; 3 uses
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index732 ; 3 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 16 ; 2 uses
  %wide.load733 = load <4 x float>, ptr %i.ave, align 16, !tbaa !11
  %wide.load734 = load <4 x float>, ptr %i.avf, align 16, !tbaa !11
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %index732 ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 16
  %wide.load735 = load <4 x float>, ptr %i.avg, align 16, !tbaa !11
  %wide.load736 = load <4 x float>, ptr %i.avh, align 16, !tbaa !11
  %i.avi = fmul <4 x float> %broadcast.splat730, %wide.load735
  %i.avj = fmul <4 x float> %broadcast.splat730, %wide.load736
  %i.avk = fsub <4 x float> %wide.load733, %i.avi
  %i.avl = fsub <4 x float> %wide.load734, %i.avj
  store <4 x float> %i.avk, ptr %i.ave, align 16, !tbaa !11
  store <4 x float> %i.avl, ptr %i.avf, align 16, !tbaa !11
  %index.next737 = add nuw i64 %index732, 8       ; 2 uses
  %i.avm = icmp eq i64 %index.next737, %n.vec728
  br i1 %i.avm, label %middle.block738, label %vector.body731, !llvm.loop !55

middle.block738:                                  ; preds = %vector.body731
  %cmp.n739 = icmp eq i64 %i.auu, %n.vec728
  br i1 %cmp.n739, label %daxpy.exit110.i365, label %.lr.ph.i106.i361.preheader802

.lr.ph.i106.i361.preheader802:                    ; preds = %.lr.ph.i106.i361.preheader, %middle.block738
  %indvars.iv.i107.i362.ph = phi i64 [ 0, %.lr.ph.i106.i361.preheader ], [ %n.vec728, %middle.block738 ]
  br label %.lr.ph.i106.i361

.lr.ph.i106.i361:                                 ; preds = %.lr.ph.i106.i361.preheader802, %.lr.ph.i106.i361
  %indvars.iv.i107.i362 = phi i64 [ %indvars.iv.next.i108.i363, %.lr.ph.i106.i361 ], [ %indvars.iv.i107.i362.ph, %.lr.ph.i106.i361.preheader802 ] ; 3 uses
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i362 ; 2 uses
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !11
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %indvars.iv.i107.i362
  %i.avq = load float, ptr %i.avp, align 4, !tbaa !11
  %i.avr = fmul float %i.ava, %i.avq
  %i.avs = fsub float %i.avo, %i.avr
  store float %i.avs, ptr %i.avn, align 4, !tbaa !11
  %indvars.iv.next.i108.i363 = add nuw nsw i64 %indvars.iv.i107.i362, 1 ; 2 uses
  %exitcond.not.i109.i364 = icmp eq i64 %indvars.iv.next.i108.i363, %i.auu
  br i1 %exitcond.not.i109.i364, label %daxpy.exit110.i365, label %.lr.ph.i106.i361, !llvm.loop !56

daxpy.exit110.i365:                               ; preds = %.lr.ph.i106.i361, %middle.block738, %.lr.ph136.i356
  %exitcond155.not.i366 = icmp eq i64 %indvars.iv.next152.i358, 100
  br i1 %exitcond155.not.i366, label %dgesl.exit368, label %.lr.ph136.i356, !llvm.loop !24

dgesl.exit368:                                    ; preds = %daxpy.exit110.i365
  %i.avt = add nuw nsw i32 %storemerge84432, 1    ; 2 uses
  %exitcond470.not = icmp eq i32 %i.avt, %i.atp
  br i1 %exitcond470.not, label %._crit_edge433, label %.preheader, !llvm.loop !57

._crit_edge433:                                   ; preds = %dgesl.exit368, %bb.aq
  %i.avu = tail call i64 @clock() #12
  %i.avv = sitofp i64 %i.avu to float
  %i.avw = fdiv float %i.avv, 1.000000e+06
  %i.avx = fsub float %i.avw, %i.ato
  %i.avy = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.avz = sitofp i32 %i.avy to float
  %i.awa = fdiv float %i.avx, %i.avz              ; 2 uses
  %i.awb = load i32, ptr @main.j, align 4, !tbaa !4 ; 3 uses
  %i.awc = sext i32 %i.awb to i64                 ; 6 uses
  %i.awd = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), i64 %i.awc
  store float %i.awa, ptr %i.awd, align 4, !tbaa !11
  %i.awe = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.awc
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !11
  %i.awg = fadd float %i.awf, %i.awa              ; 3 uses
  %i.awh = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 120), i64 %i.awc
  store float %i.awg, ptr %i.awh, align 4, !tbaa !11
  %i.awi = fpext float %i.awg to double
  %i.awj = fmul double %i.awi, 1.000000e+06
  %i.awk = fdiv double f0x4124F49560000000, %i.awj
  %i.awl = fptrunc double %i.awk to float         ; 3 uses
  %i.awm = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 180), i64 %i.awc
  store float %i.awl, ptr %i.awm, align 4, !tbaa !11
  %i.awn = fdiv float 2.000000e+00, %i.awl
  %i.awo = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), i64 %i.awc
  store float %i.awn, ptr %i.awo, align 4, !tbaa !11
  %i.awp = fdiv float %i.awg, 5.600000e-02
  %i.awq = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), i64 %i.awc
  store float %i.awp, ptr %i.awq, align 4, !tbaa !11
  %i.awr = load float, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.aws = fadd float %i.awr, %i.awl              ; 2 uses
  store float %i.aws, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awt = add nsw i32 %i.awb, 1
  store i32 %i.awt, ptr @main.j, align 4, !tbaa !4
  %i.awu = icmp slt i32 %i.awb, 11
  br i1 %i.awu, label %bb.aj, label %bb.av, !llvm.loop !58

bb.av:                                            ; preds = %._crit_edge433
  %i.awv = fdiv float %i.aws, 5.000000e+00
  store float %i.awv, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.aww = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.awx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aww, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
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
  br i1 %i.a, label %.preheader52.preheader, label %._crit_edge62.split

.preheader52.preheader:                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 7 uses
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %._crit_edge
  %indvars.iv64 = phi i64 [ 0, %.preheader52.preheader ], [ %indvars.iv.next65, %._crit_edge ] ; 2 uses
  %.04455 = phi i32 [ 1325, %.preheader52.preheader ], [ %i.e, %._crit_edge ]
  %i.c = mul nsw i64 %indvars.iv64, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.preheader52, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.14553 = phi i32 [ %.04455, %.preheader52 ], [ %i.e, %bb.b ]
  %i.d = mul nuw nsw i32 %.14553, 3125
  %i.e = and i32 %i.d, 65535                      ; 3 uses
  %i.f = add nsw i32 %i.e, -32768
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul nnan float %i.g, f0x38800000        ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.h, ptr %gep, align 4, !tbaa !11
  %i.i = load float, ptr %4, align 4, !tbaa !11   ; 2 uses
  %i.j = fcmp ogt float %i.h, %i.i
  %. = select i1 %i.j, float %i.h, float %i.i
  store float %., ptr %4, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.preheader.preheader, label %.preheader52, !llvm.loop !15

.preheader.preheader:                             ; preds = %._crit_edge
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
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge60
  %indvars.iv77 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next78, %._crit_edge60 ] ; 2 uses
  %i.t = mul nsw i64 %indvars.iv77, %i.m
  %invariant.gep82 = getelementptr [4 x i8], ptr %0, i64 %i.t ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.s
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
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
  br i1 %cmp.n, label %._crit_edge60, label %scalar.ph.preheader

end_hunk_2
