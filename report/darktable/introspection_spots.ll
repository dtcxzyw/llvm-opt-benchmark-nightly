Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_spots?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_process:bb.a
vector.memcheck414:                               ; preds = %iter.check443
  %i.jj = mul i64 %i.aw, %i.ix
  %scevgep416 = getelementptr i8, ptr %scevgep415, i64 %i.jj
  %i.jk = mul i64 %i.ax, %i.jg
  %scevgep418 = getelementptr i8, ptr %scevgep417, i64 %i.jk
  %bound0419 = icmp ult ptr %i.iz, %scevgep418
  %bound1420 = icmp ult ptr %i.ji, %scevgep416
  %found.conflict421 = and i1 %bound0419, %bound1420
  br i1 %found.conflict421, label %vec.epilog.scalar.ph444.preheader, label %vector.main.loop.iter.check423

vector.main.loop.iter.check423:                   ; preds = %vector.memcheck414
  br i1 %min.iters.check424, label %vec.epilog.ph447, label %vector.ph425

vector.ph425:                                     ; preds = %vector.main.loop.iter.check423
  %broadcast.splatinsert427 = insertelement <8 x float> poison, float %i.it, i64 0
  %broadcast.splat428 = shufflevector <8 x float> %broadcast.splatinsert427, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.ph425, %vector.body429
  %index430 = phi i64 [ 0, %vector.ph425 ], [ %index.next439, %vector.body429 ] ; 3 uses
  %i.jl = getelementptr [4 x i8], ptr %i.iz, i64 %index430 ; 5 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 32     ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jl, i64 64     ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jl, i64 96     ; 2 uses
  %wide.load431 = load <8 x float>, ptr %i.jl, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %wide.load432 = load <8 x float>, ptr %i.jm, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %wide.load433 = load <8 x float>, ptr %i.jn, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %wide.load434 = load <8 x float>, ptr %i.jo, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.ji, i64 %index430 ; 4 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 32
  %i.jr = getelementptr i8, ptr %i.jp, i64 64
  %i.js = getelementptr i8, ptr %i.jp, i64 96
  %wide.load435 = load <8 x float>, ptr %i.jp, align 4, !tbaa !34, !alias.scope !197
  %wide.load436 = load <8 x float>, ptr %i.jq, align 4, !tbaa !34, !alias.scope !197
  %wide.load437 = load <8 x float>, ptr %i.jr, align 4, !tbaa !34, !alias.scope !197
  %wide.load438 = load <8 x float>, ptr %i.js, align 4, !tbaa !34, !alias.scope !197
  %i.jt = fsub reassoc nsz arcp contract afn <8 x float> %wide.load435, %wide.load431
  %i.ju = fsub reassoc nsz arcp contract afn <8 x float> %wide.load436, %wide.load432
  %i.jv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load437, %wide.load433
  %i.jw = fsub reassoc nsz arcp contract afn <8 x float> %wide.load438, %wide.load434
  %i.jx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat428, %i.jt
  %i.jy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat428, %i.ju
  %i.jz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat428, %i.jv
  %i.ka = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat428, %i.jw
  %i.kb = fadd reassoc nsz arcp contract afn <8 x float> %i.jx, %wide.load431
  %i.kc = fadd reassoc nsz arcp contract afn <8 x float> %i.jy, %wide.load432
  %i.kd = fadd reassoc nsz arcp contract afn <8 x float> %i.jz, %wide.load433
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.ka, %wide.load434
  store <8 x float> %i.kb, ptr %i.jl, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.kc, ptr %i.jm, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.kd, ptr %i.jn, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  store <8 x float> %i.ke, ptr %i.jo, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  %index.next439 = add nuw i64 %index430, 32      ; 2 uses
  %i.kf = icmp eq i64 %index.next439, %n.vec426
  br i1 %i.kf, label %middle.block440, label %vector.body429, !llvm.loop !180

middle.block440:                                  ; preds = %vector.body429
  br i1 %cmp.n441, label %..loopexit302_crit_edge.us, label %vec.epilog.iter.check445

vec.epilog.iter.check445:                         ; preds = %middle.block440
  br i1 %min.epilog.iters.check446, label %vec.epilog.scalar.ph444.preheader, label %vec.epilog.ph447, !prof !198

vec.epilog.ph447:                                 ; preds = %vector.main.loop.iter.check423, %vec.epilog.iter.check445
  %vec.epilog.resume.val442 = phi i64 [ %n.vec426, %vec.epilog.iter.check445 ], [ 0, %vector.main.loop.iter.check423 ]
  %broadcast.splatinsert449 = insertelement <4 x float> poison, float %i.it, i64 0
  %broadcast.splat450 = shufflevector <4 x float> %broadcast.splatinsert449, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body451

vec.epilog.vector.body451:                        ; preds = %vec.epilog.vector.body451, %vec.epilog.ph447
  %index452 = phi i64 [ %vec.epilog.resume.val442, %vec.epilog.ph447 ], [ %index.next455, %vec.epilog.vector.body451 ] ; 3 uses
  %i.kg = getelementptr [4 x i8], ptr %i.iz, i64 %index452 ; 2 uses
  %wide.load453 = load <4 x float>, ptr %i.kg, align 4, !tbaa !34, !alias.scope !196, !noalias !197 ; 2 uses
  %i.kh = getelementptr [4 x i8], ptr %i.ji, i64 %index452
  %wide.load454 = load <4 x float>, ptr %i.kh, align 4, !tbaa !34, !alias.scope !197
  %i.ki = fsub reassoc nsz arcp contract afn <4 x float> %wide.load454, %wide.load453
  %i.kj = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat450, %i.ki
  %i.kk = fadd reassoc nsz arcp contract afn <4 x float> %i.kj, %wide.load453
  store <4 x float> %i.kk, ptr %i.kg, align 4, !tbaa !34, !alias.scope !196, !noalias !197
  %index.next455 = add nuw i64 %index452, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next455, %n.vec448
  br i1 %i.kl, label %vec.epilog.middle.block456, label %vec.epilog.vector.body451, !llvm.loop !181

vec.epilog.middle.block456:                       ; preds = %vec.epilog.vector.body451
  br i1 %cmp.n457, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph444.preheader

vec.epilog.scalar.ph444.preheader:                ; preds = %iter.check443, %vector.memcheck414, %vec.epilog.iter.check445, %vec.epilog.middle.block456
  %indvars.iv343.ph = phi i64 [ 0, %iter.check443 ], [ 0, %vector.memcheck414 ], [ %n.vec426, %vec.epilog.iter.check445 ], [ %n.vec448, %vec.epilog.middle.block456 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph444.prol.loopexit, label %vec.epilog.scalar.ph444.prol

vec.epilog.scalar.ph444.prol:                     ; preds = %vec.epilog.scalar.ph444.preheader, %vec.epilog.scalar.ph444.prol
  %indvars.iv343.prol = phi i64 [ %indvars.iv.next344.prol, %vec.epilog.scalar.ph444.prol ], [ %indvars.iv343.ph, %vec.epilog.scalar.ph444.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph444.prol ], [ 0, %vec.epilog.scalar.ph444.preheader ]
  %i.km = getelementptr [4 x i8], ptr %i.iz, i64 %indvars.iv343.prol ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !34 ; 2 uses
  %i.ko = getelementptr [4 x i8], ptr %i.ji, i64 %indvars.iv343.prol
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !34
  %i.kq = fsub reassoc nsz arcp contract afn float %i.kp, %i.kn
  %i.kr = fmul reassoc nsz arcp contract afn float %i.it, %i.kq
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kr, %i.kn
  store float %i.ks, ptr %i.km, align 4, !tbaa !34
  %indvars.iv.next344.prol = add nuw nsw i64 %indvars.iv343.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph444.prol.loopexit, label %vec.epilog.scalar.ph444.prol, !llvm.loop !182

vec.epilog.scalar.ph444.prol.loopexit:            ; preds = %vec.epilog.scalar.ph444.prol, %vec.epilog.scalar.ph444.preheader
  %indvars.iv343.unr = phi i64 [ %indvars.iv343.ph, %vec.epilog.scalar.ph444.preheader ], [ %indvars.iv.next344.prol, %vec.epilog.scalar.ph444.prol ]
  %i.kt = sub nsw i64 %indvars.iv343.ph, %wide.trip.count
  %i.ku = icmp ugt i64 %i.kt, -4
  br i1 %i.ku, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph444

vec.epilog.scalar.ph444:                          ; preds = %vec.epilog.scalar.ph444.prol.loopexit, %vec.epilog.scalar.ph444
  %indvars.iv343 = phi i64 [ %indvars.iv.next344.3, %vec.epilog.scalar.ph444 ], [ %indvars.iv343.unr, %vec.epilog.scalar.ph444.prol.loopexit ] ; 6 uses
  %i.kv = getelementptr [4 x i8], ptr %i.iz, i64 %indvars.iv343 ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !34 ; 2 uses
  %i.kx = getelementptr [4 x i8], ptr %i.ji, i64 %indvars.iv343
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !34
  %i.kz = fsub reassoc nsz arcp contract afn float %i.ky, %i.kw
  %i.la = fmul reassoc nsz arcp contract afn float %i.it, %i.kz
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.kw
  store float %i.lb, ptr %i.kv, align 4, !tbaa !34
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %i.lc = getelementptr [4 x i8], ptr %i.iz, i64 %indvars.iv.next344 ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !34 ; 2 uses
  %i.le = getelementptr [4 x i8], ptr %i.ji, i64 %indvars.iv.next344
  %i.lf = load float, ptr %i.le, align 4, !tbaa !34
  %i.lg = fsub reassoc nsz arcp contract afn float %i.lf, %i.ld
  %i.lh = fmul reassoc nsz arcp contract afn float %i.it, %i.lg
  %i.li = fadd reassoc nsz arcp contract afn float %i.lh, %i.ld
  store float %i.li, ptr %i.lc, align 4, !tbaa !34
  %indvars.iv.next344.1 = add nuw nsw i64 %indvars.iv343, 2 ; 2 uses
  %i.lj = getelementptr [4 x i8], ptr %i.iz, i64 %indvars.iv.next344.1 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !34 ; 2 uses
  %i.ll = getelementptr [4 x i8], ptr %i.ji, i64 %indvars.iv.next344.1
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !34
  %i.ln = fsub reassoc nsz arcp contract afn float %i.lm, %i.lk
  %i.lo = fmul reassoc nsz arcp contract afn float %i.it, %i.ln
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, %i.lk
  store float %i.lp, ptr %i.lj, align 4, !tbaa !34
  %indvars.iv.next344.2 = add nuw nsw i64 %indvars.iv343, 3 ; 2 uses
  %i.lq = getelementptr [4 x i8], ptr %i.iz, i64 %indvars.iv.next344.2 ; 2 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !34 ; 2 uses
  %i.ls = getelementptr [4 x i8], ptr %i.ji, i64 %indvars.iv.next344.2
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !34
  %i.lu = fsub reassoc nsz arcp contract afn float %i.lt, %i.lr
  %i.lv = fmul reassoc nsz arcp contract afn float %i.it, %i.lu
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lv, %i.lr
  store float %i.lw, ptr %i.lq, align 4, !tbaa !34
  %indvars.iv.next344.3 = add nuw nsw i64 %indvars.iv343, 4 ; 2 uses
  %exitcond346.not.3 = icmp eq i64 %indvars.iv.next344.3, %wide.trip.count
  br i1 %exitcond346.not.3, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph444, !llvm.loop !183

..loopexit302_crit_edge.us:                       ; preds = %vec.epilog.scalar.ph444.prol.loopexit, %vec.epilog.scalar.ph444, %middle.block440, %vec.epilog.middle.block456, %bb.q, %bb.p, %bb.o, %.lr.ph317.split.us
  %indvars.iv.next348 = add nsw i64 %indvars.iv347, 1 ; 2 uses
  %i.lx = icmp slt i64 %indvars.iv.next348, %i.hi
  br i1 %i.lx, label %.lr.ph317.split.us, label %.loopexit305

.loopexit305:                                     ; preds = %..loopexit302_crit_edge.us, %.lr.ph317, %bb.n, %bb.m, %bb.k, %bb.l
  %indvars.iv.next351 = add nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.ly = icmp slt i64 %indvars.iv.next351, %i.hl
  br i1 %i.ly, label %bb.k, label %._crit_edge

bb.r:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !201 ; 2 uses
  %.not.i270 = icmp eq ptr %i.ma, null
  br i1 %.not.i270, label %dt_masks_get_mask.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 88
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !203 ; 2 uses
  %.not12.i = icmp eq ptr %i.mc, null
  br i1 %.not12.i, label %dt_masks_get_mask.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.md = call i32 %i.mc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #16, !inline_history !184 ; 0 uses
  %.pre = load i32, ptr %i.k, align 4, !tbaa !38
  %.pre371 = load float, ptr %i.ac, align 4, !tbaa !92
  %.pre372 = load i32, ptr %i.m, align 4, !tbaa !38
  %.pre373 = load i32, ptr %i.j, align 4, !tbaa !38
  %.pre374 = load i32, ptr %i.l, align 4, !tbaa !38
  %i.me = sitofp reassoc nsz arcp contract afn i32 %.pre to float
  %i.mf = sitofp reassoc nsz arcp contract afn i32 %.pre372 to float
  %i.mg = sitofp reassoc nsz arcp contract afn i32 %.pre373 to float
  %i.mh = sitofp reassoc nsz arcp contract afn i32 %.pre374 to float
  br label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.r, %bb.s, %bb.t
  %i.mi = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mh, %bb.t ]
  %i.mj = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mg, %bb.t ]
  %i.mk = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mf, %bb.t ]
  %i.ml = phi float [ %i.bh, %bb.r ], [ %i.bh, %bb.s ], [ %.pre371, %bb.t ] ; 7 uses
  %i.mm = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.me, %bb.t ]
  %i.mn = fmul reassoc nsz arcp contract afn float %i.ml, %i.mm
  %i.mo = fptosi float %i.mn to i32               ; 3 uses
  %i.mp = fmul reassoc nsz arcp contract afn float %i.ml, %i.mk
  %i.mq = fptosi float %i.mp to i32
  %i.mr = fmul reassoc nsz arcp contract afn float %i.ml, %i.mj
  %i.ms = fptosi float %i.mr to i32               ; 3 uses
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ml, %i.mi
  %i.mu = fptosi float %i.mt to i32
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !43 ; 3 uses
  %i.mx = and i32 %i.mw, 2
  %.not.i271 = icmp eq i32 %i.mx, 0
  br i1 %.not.i271, label %bb.u, label %masks_point_calc_delta.exit.i

masks_point_calc_delta.exit.i:                    ; preds = %dt_masks_get_mask.exit
  %i.my = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !41
  %i.na = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.val44.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val45.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val46.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.nb = getelementptr i8, ptr %.val46.i, i64 144
  %i.nc = load <2 x float>, ptr %i.mz, align 4, !tbaa !34
  %i.nd = load <2 x float>, ptr %i.na, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ne = load <2 x i32>, ptr %i.nb, align 16, !tbaa !38
  %i.nf = sitofp <2 x i32> %i.ne to <2 x float>
  %i.ng = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ni = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.nj = fmul reassoc nsz arcp contract afn <4 x float> %i.nh, %i.ni
  %i.nk = shufflevector <2 x float> %i.nc, <2 x float> %i.nd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nl = fmul reassoc nsz arcp contract afn <4 x float> %i.nj, %i.nk
  store <4 x float> %i.nl, ptr %i.c, align 16, !tbaa !34
  %i.nm = sitofp reassoc nsz arcp contract afn i32 %.val44.i to double
  %i.nn = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val45.i, ptr noundef %.val46.i, double noundef %i.nm, i32 noundef 3, ptr noundef nonnull %i.c, i64 noundef 2) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.nn, 0
  %i.no = load <2 x float>, ptr %i.c, align 16
  %i.np = load <2 x float>, ptr %i.aq, align 8
  %i.nq = fsub reassoc nsz arcp contract afn <2 x float> %i.no, %i.np
  %i.nr = fptosi <2 x float> %i.nq to <2 x i32>
  %i.ns = select i1 %.not.i.i, <2 x i32> zeroinitializer, <2 x i32> %i.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %masks_get_delta.exit

bb.u:                                             ; preds = %dt_masks_get_mask.exit
  %i.nt = and i32 %i.mw, 1
  %.not27.i = icmp eq i32 %i.nt, 0
  br i1 %.not27.i, label %bb.v, label %masks_point_calc_delta.exit55.i

masks_point_calc_delta.exit55.i:                  ; preds = %bb.u
  %i.nu = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !41
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.val36.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val37.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val38.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.nx = getelementptr i8, ptr %.val38.i, i64 144
  %i.ny = load <2 x float>, ptr %i.nv, align 4, !tbaa !34
  %i.nz = load <2 x float>, ptr %i.nw, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.oa = load <2 x i32>, ptr %i.nx, align 16, !tbaa !38
  %i.ob = sitofp <2 x i32> %i.oa to <2 x float>
  %i.oc = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.oe = shufflevector <2 x float> %i.ob, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.of = fmul reassoc nsz arcp contract afn <4 x float> %i.od, %i.oe
  %i.og = shufflevector <2 x float> %i.ny, <2 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oh = fmul reassoc nsz arcp contract afn <4 x float> %i.of, %i.og
  store <4 x float> %i.oh, ptr %i.b, align 16, !tbaa !34
  %i.oi = sitofp reassoc nsz arcp contract afn i32 %.val36.i to double
  %i.oj = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val37.i, ptr noundef %.val38.i, double noundef %i.oi, i32 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2) #16 ; 2 uses
  %.not.i54.i = icmp eq i32 %i.oj, 0
  %i.ok = load <2 x float>, ptr %i.b, align 16
  %i.ol = load <2 x float>, ptr %i.ar, align 8
  %i.om = fsub reassoc nsz arcp contract afn <2 x float> %i.ok, %i.ol
  %i.on = fptosi <2 x float> %i.om to <2 x i32>
  %i.oo = select i1 %.not.i54.i, <2 x i32> zeroinitializer, <2 x i32> %i.on
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %masks_get_delta.exit

bb.v:                                             ; preds = %bb.u
  %i.op = and i32 %i.mw, 32
  %.not28.i = icmp eq i32 %i.op, 0
  br i1 %.not28.i, label %masks_get_delta.exit.thread, label %masks_point_calc_delta.exit59.i

masks_point_calc_delta.exit59.i:                  ; preds = %bb.v
  %i.oq = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !41
  %i.os = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.val.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val29.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val30.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.ot = getelementptr i8, ptr %.val30.i, i64 144
  %i.ou = load <2 x float>, ptr %i.or, align 4, !tbaa !34
  %i.ov = load <2 x float>, ptr %i.os, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ow = load <2 x i32>, ptr %i.ot, align 16, !tbaa !38
  %i.ox = sitofp <2 x i32> %i.ow to <2 x float>
  %i.oy = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.pa = shufflevector <2 x float> %i.ox, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pb = fmul reassoc nsz arcp contract afn <4 x float> %i.oz, %i.pa
  %i.pc = shufflevector <2 x float> %i.ou, <2 x float> %i.ov, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pd = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %i.pc
  store <4 x float> %i.pd, ptr %i.a, align 16, !tbaa !34
  %i.pe = sitofp reassoc nsz arcp contract afn i32 %.val.i to double
  %i.pf = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val29.i, ptr noundef %.val30.i, double noundef %i.pe, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 2) #16 ; 2 uses
  %.not.i58.i = icmp eq i32 %i.pf, 0
  %i.pg = load <2 x float>, ptr %i.a, align 16
  %i.ph = load <2 x float>, ptr %i.as, align 8
  %i.pi = fsub reassoc nsz arcp contract afn <2 x float> %i.pg, %i.ph
  %i.pj = fptosi <2 x float> %i.pi to <2 x i32>
  %i.pk = select i1 %.not.i58.i, <2 x i32> zeroinitializer, <2 x i32> %i.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %masks_get_delta.exit

masks_get_delta.exit:                             ; preds = %masks_point_calc_delta.exit.i, %masks_point_calc_delta.exit55.i, %masks_point_calc_delta.exit59.i
  %.0.i272 = phi i32 [ %i.nn, %masks_point_calc_delta.exit.i ], [ %i.pf, %masks_point_calc_delta.exit59.i ], [ %i.oj, %masks_point_calc_delta.exit55.i ]
  %i.pl = phi <2 x i32> [ %i.ns, %masks_point_calc_delta.exit.i ], [ %i.pk, %masks_point_calc_delta.exit59.i ], [ %i.oo, %masks_point_calc_delta.exit55.i ] ; 3 uses
  %.not250.not = icmp eq i32 %.0.i272, 0
  br i1 %.not250.not, label %masks_get_delta.exit.thread, label %bb.w

masks_get_delta.exit.thread:                      ; preds = %bb.v, %masks_get_delta.exit
  %i.pm = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

bb.w:                                             ; preds = %masks_get_delta.exit
  %i.pn = icmp ne <2 x i32> %i.pl, zeroinitializer ; 2 uses
  %i.po = extractelement <2 x i1> %i.pn, i64 0
  %i.pp = extractelement <2 x i1> %i.pn, i64 1
  %or.cond = select i1 %i.po, i1 true, i1 %i.pp
  br i1 %or.cond, label %.preheader306, label %..loopexit307_crit_edge

..loopexit307_crit_edge:                          ; preds = %bb.w
  %.pre375 = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

.preheader306:                                    ; preds = %bb.w
  %i.pq = add i32 %i.mo, -1
  %i.pr = add i32 %i.pq, %i.mq                    ; 2 uses
  %.0223327 = add nsw i32 %i.mo, 1                ; 2 uses
  %i.ps = icmp slt i32 %.0223327, %i.pr
  %.pre376 = load ptr, ptr %i.i, align 8          ; 3 uses
  br i1 %i.ps, label %.lr.ph330, label %.loopexit307

.lr.ph330:                                        ; preds = %.preheader306
  %i.pt = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.pu = add i32 %i.ms, -1
  %i.pv = add i32 %i.pu, %i.mu                    ; 2 uses
  %.0222324 = add i32 %i.ms, 1                    ; 2 uses
  %i.pw = icmp sge i32 %.0222324, %i.pv
  %i.px = load i32, ptr %i.l, align 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.pz = extractelement <2 x i32> %i.pl, i64 0
  %i.qa = sext i32 %i.pz to i64                   ; 2 uses
  %i.qb = sext i32 %.0222324 to i64
  %i.qc = sext i32 %.0223327 to i64
  %i.qd = sext i32 %i.pt to i64                   ; 2 uses
  %i.qe = extractelement <2 x i32> %i.pl, i64 1   ; 2 uses
  %i.qf = sext i32 %i.qe to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph330, %.loopexit303
  %indvars.iv363 = phi i64 [ %i.qc, %.lr.ph330 ], [ %indvars.iv.next364, %.loopexit303 ] ; 7 uses
  %i.qg = icmp slt i64 %indvars.iv363, %i.qd
  br i1 %i.qg, label %.loopexit303, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qh = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.qi = add nsw i32 %i.qh, %i.pt
  %i.qj = sext i32 %i.qi to i64
  %.not251 = icmp slt i64 %indvars.iv363, %i.qj
  br i1 %.not251, label %bb.z, label %.loopexit303

bb.z:                                             ; preds = %bb.y
  %i.qk = sub nsw i64 %indvars.iv363, %i.qf       ; 2 uses
  %i.ql = load i32, ptr %i.am, align 4, !tbaa !93 ; 3 uses
  %i.qm = sext i32 %i.ql to i64
  %i.qn = icmp slt i64 %i.qk, %i.qm
  br i1 %i.qn, label %.loopexit303, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qo = load i32, ptr %i.an, align 4, !tbaa !94
  %i.qp = add nsw i32 %i.qo, %i.ql
  %i.qq = sext i32 %i.qp to i64
  %.not252 = icmp sge i64 %i.qk, %i.qq
  %brmerge338 = select i1 %.not252, i1 true, i1 %i.pw
  br i1 %brmerge338, label %.loopexit303, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.aa
  %i.qr = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.qs = trunc i64 %indvars.iv363 to i32
  %i.qt = sub i32 %i.qs, %i.mo
  %i.qu = sitofp reassoc nsz arcp contract afn i32 %i.qt to float
  %i.qv = sub nsw i64 %indvars.iv363, %i.qd
  %i.qw = sext i32 %i.qr to i64                   ; 2 uses
  %i.qx = add i32 %i.qe, %i.ql
  %i.qy = trunc nsw i64 %indvars.iv363 to i32
  %i.qz = sub i32 %i.qy, %i.qx
  %i.ra = sext i32 %i.qz to i64
  br i1 %i.ap, label %.lr.ph326.split.us, label %.loopexit303

.lr.ph326.split.us:                               ; preds = %.lr.ph326, %..loopexit_crit_edge.us
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %..loopexit_crit_edge.us ], [ %i.qb, %.lr.ph326 ] ; 7 uses
  %i.rb = icmp slt i64 %indvars.iv358, %i.qw
  br i1 %i.rb, label %..loopexit_crit_edge.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph326.split.us
  %i.rc = load i32, ptr %i.af, align 4, !tbaa !96 ; 2 uses
  %i.rd = add nsw i32 %i.rc, %i.qr
  %i.re = sext i32 %i.rd to i64
  %.not253.us = icmp slt i64 %indvars.iv358, %i.re
  br i1 %.not253.us, label %bb.ac, label %..loopexit_crit_edge.us

bb.ac:                                            ; preds = %bb.ab
  %i.rf = sub nsw i64 %indvars.iv358, %i.qa       ; 2 uses
  %i.rg = load i32, ptr %4, align 4, !tbaa !95    ; 2 uses
  %i.rh = sext i32 %i.rg to i64                   ; 2 uses
  %i.ri = icmp slt i64 %i.rf, %i.rh
  br i1 %i.ri, label %..loopexit_crit_edge.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rj = load i32, ptr %i.ao, align 4, !tbaa !96 ; 2 uses
  %i.rk = add nsw i32 %i.rj, %i.rg
  %i.rl = sext i32 %i.rk to i64
  %.not254.us = icmp slt i64 %i.rf, %i.rl
  br i1 %.not254.us, label %iter.check, label %..loopexit_crit_edge.us

iter.check:                                       ; preds = %bb.ad
  %i.rm = load float, ptr %i.ac, align 4, !tbaa !92 ; 2 uses
  %i.rn = fdiv reassoc nsz arcp contract afn float %i.qu, %i.rm
  %i.ro = fptosi float %i.rn to i32
  %i.rp = mul nsw i32 %i.px, %i.ro
  %i.rq = trunc i64 %indvars.iv358 to i32
  %i.rr = sub i32 %i.rq, %i.ms
  %i.rs = sitofp reassoc nsz arcp contract afn i32 %i.rr to float
  %i.rt = fdiv reassoc nsz arcp contract afn float %i.rs, %i.rm
  %i.ru = fptosi float %i.rt to i32
  %i.rv = add nsw i32 %i.rp, %i.ru
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %.pre376, i64 %i.rw
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !34
  %i.rz = load float, ptr %i.py, align 4, !tbaa !204
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rz, %i.ry ; 7 uses
  %i.sb = sext i32 %i.rc to i64
  %i.sc = mul nuw nsw i64 %i.qv, %i.sb
  %i.sd = sub nsw i64 %indvars.iv358, %i.qw
  %i.se = add i64 %i.sd, %i.sc                    ; 2 uses
  %i.sf = mul i64 %i.se, %i.r
  %i.sg = getelementptr [4 x i8], ptr %3, i64 %i.sf ; 8 uses
  %i.sh = sext i32 %i.rj to i64
  %i.si = mul nsw i64 %i.sh, %i.ra
  %i.sj = add nsw i64 %i.qa, %i.rh
  %i.sk = sub nsw i64 %indvars.iv358, %i.sj
  %i.sl = add nsw i64 %i.sk, %i.si                ; 2 uses
  %i.sm = mul i64 %i.sl, %i.r
  %i.sn = getelementptr [4 x i8], ptr %2, i64 %i.sm ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.so = mul i64 %i.au, %i.se
  %scevgep395 = getelementptr i8, ptr %scevgep, i64 %i.so
  %i.sp = mul i64 %i.av, %i.sl
  %scevgep397 = getelementptr i8, ptr %scevgep396, i64 %i.sp
  %bound0 = icmp ult ptr %i.sg, %scevgep397
  %bound1 = icmp ult ptr %i.sn, %scevgep395
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check398, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.sa, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sq = getelementptr [4 x i8], ptr %i.sg, i64 %index ; 5 uses
  %i.sr = getelementptr i8, ptr %i.sq, i64 32     ; 2 uses
  %i.ss = getelementptr i8, ptr %i.sq, i64 64     ; 2 uses
  %i.st = getelementptr i8, ptr %i.sq, i64 96     ; 2 uses
  %wide.load = load <8 x float>, ptr %i.sq, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load399 = load <8 x float>, ptr %i.sr, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load400 = load <8 x float>, ptr %i.ss, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load401 = load <8 x float>, ptr %i.st, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.su = getelementptr [4 x i8], ptr %i.sn, i64 %index ; 4 uses
  %i.sv = getelementptr i8, ptr %i.su, i64 32
  %i.sw = getelementptr i8, ptr %i.su, i64 64
  %i.sx = getelementptr i8, ptr %i.su, i64 96
  %wide.load402 = load <8 x float>, ptr %i.su, align 4, !tbaa !34, !alias.scope !206
  %wide.load403 = load <8 x float>, ptr %i.sv, align 4, !tbaa !34, !alias.scope !206
  %wide.load404 = load <8 x float>, ptr %i.sw, align 4, !tbaa !34, !alias.scope !206
  %wide.load405 = load <8 x float>, ptr %i.sx, align 4, !tbaa !34, !alias.scope !206
  %i.sy = fsub reassoc nsz arcp contract afn <8 x float> %wide.load402, %wide.load
  %i.sz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load403, %wide.load399
  %i.ta = fsub reassoc nsz arcp contract afn <8 x float> %wide.load404, %wide.load400
  %i.tb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load405, %wide.load401
  %i.tc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.sy
  %i.td = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.sz
  %i.te = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.ta
  %i.tf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.tb
  %i.tg = fadd reassoc nsz arcp contract afn <8 x float> %i.tc, %wide.load
  %i.th = fadd reassoc nsz arcp contract afn <8 x float> %i.td, %wide.load399
  %i.ti = fadd reassoc nsz arcp contract afn <8 x float> %i.te, %wide.load400
  %i.tj = fadd reassoc nsz arcp contract afn <8 x float> %i.tf, %wide.load401
  store <8 x float> %i.tg, ptr %i.sq, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.th, ptr %i.sr, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.ti, ptr %i.ss, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tj, ptr %i.st, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tk = icmp eq i64 %index.next, %n.vec
  br i1 %i.tk, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !198

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert407 = insertelement <4 x float> poison, float %i.sa, i64 0
  %broadcast.splat408 = shufflevector <4 x float> %broadcast.splatinsert407, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index409 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next412, %vec.epilog.vector.body ] ; 3 uses
  %i.tl = getelementptr [4 x i8], ptr %i.sg, i64 %index409 ; 2 uses
  %wide.load410 = load <4 x float>, ptr %i.tl, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.tm = getelementptr [4 x i8], ptr %i.sn, i64 %index409
  %wide.load411 = load <4 x float>, ptr %i.tm, align 4, !tbaa !34, !alias.scope !206
  %i.tn = fsub reassoc nsz arcp contract afn <4 x float> %wide.load411, %wide.load410
  %i.to = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat408, %i.tn
  %i.tp = fadd reassoc nsz arcp contract afn <4 x float> %i.to, %wide.load410
  store <4 x float> %i.tp, ptr %i.tl, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  %index.next412 = add nuw i64 %index409, 4       ; 2 uses
  %i.tq = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.tq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !189

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n413, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv353.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec406, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod495.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv353.prol = phi i64 [ %indvars.iv.next354.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv353.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter496 = phi i64 [ %prol.iter496.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.tr = getelementptr [4 x i8], ptr %i.sg, i64 %indvars.iv353.prol ; 2 uses
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !34 ; 2 uses
  %i.tt = getelementptr [4 x i8], ptr %i.sn, i64 %indvars.iv353.prol
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !34
  %i.tv = fsub reassoc nsz arcp contract afn float %i.tu, %i.ts
  %i.tw = fmul reassoc nsz arcp contract afn float %i.sa, %i.tv
  %i.tx = fadd reassoc nsz arcp contract afn float %i.tw, %i.ts
  store float %i.tx, ptr %i.tr, align 4, !tbaa !34
  %indvars.iv.next354.prol = add nuw nsw i64 %indvars.iv353.prol, 1 ; 2 uses
  %prol.iter496.next = add i64 %prol.iter496, 1   ; 2 uses
  %prol.iter496.cmp.not = icmp eq i64 %prol.iter496.next, %xtraiter494
  br i1 %prol.iter496.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !190

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv353.unr = phi i64 [ %indvars.iv353.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next354.prol, %vec.epilog.scalar.ph.prol ]
  %i.ty = sub nsw i64 %indvars.iv353.ph, %wide.trip.count
  %i.tz = icmp ugt i64 %i.ty, -4
  br i1 %i.tz, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv353 = phi i64 [ %indvars.iv.next354.3, %vec.epilog.scalar.ph ], [ %indvars.iv353.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ua = getelementptr [4 x i8], ptr %i.sg, i64 %indvars.iv353 ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !34 ; 2 uses
  %i.uc = getelementptr [4 x i8], ptr %i.sn, i64 %indvars.iv353
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !34
  %i.ue = fsub reassoc nsz arcp contract afn float %i.ud, %i.ub
  %i.uf = fmul reassoc nsz arcp contract afn float %i.sa, %i.ue
  %i.ug = fadd reassoc nsz arcp contract afn float %i.uf, %i.ub
  store float %i.ug, ptr %i.ua, align 4, !tbaa !34
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %i.uh = getelementptr [4 x i8], ptr %i.sg, i64 %indvars.iv.next354 ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !34 ; 2 uses
  %i.uj = getelementptr [4 x i8], ptr %i.sn, i64 %indvars.iv.next354
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !34
  %i.ul = fsub reassoc nsz arcp contract afn float %i.uk, %i.ui
  %i.um = fmul reassoc nsz arcp contract afn float %i.sa, %i.ul
  %i.un = fadd reassoc nsz arcp contract afn float %i.um, %i.ui
  store float %i.un, ptr %i.uh, align 4, !tbaa !34
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2 ; 2 uses
  %i.uo = getelementptr [4 x i8], ptr %i.sg, i64 %indvars.iv.next354.1 ; 2 uses
  %i.up = load float, ptr %i.uo, align 4, !tbaa !34 ; 2 uses
  %i.uq = getelementptr [4 x i8], ptr %i.sn, i64 %indvars.iv.next354.1
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !34
  %i.us = fsub reassoc nsz arcp contract afn float %i.ur, %i.up
  %i.ut = fmul reassoc nsz arcp contract afn float %i.sa, %i.us
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, %i.up
  store float %i.uu, ptr %i.uo, align 4, !tbaa !34
  %indvars.iv.next354.2 = add nuw nsw i64 %indvars.iv353, 3 ; 2 uses
  %i.uv = getelementptr [4 x i8], ptr %i.sg, i64 %indvars.iv.next354.2 ; 2 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !34 ; 2 uses
  %i.ux = getelementptr [4 x i8], ptr %i.sn, i64 %indvars.iv.next354.2
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !34
  %i.uz = fsub reassoc nsz arcp contract afn float %i.uy, %i.uw
  %i.va = fmul reassoc nsz arcp contract afn float %i.sa, %i.uz
  %i.vb = fadd reassoc nsz arcp contract afn float %i.va, %i.uw
  store float %i.vb, ptr %i.uv, align 4, !tbaa !34
  %indvars.iv.next354.3 = add nuw nsw i64 %indvars.iv353, 4 ; 2 uses
  %exitcond357.not.3 = icmp eq i64 %indvars.iv.next354.3, %wide.trip.count356
  br i1 %exitcond357.not.3, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !191

..loopexit_crit_edge.us:                          ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ad, %bb.ac, %bb.ab, %.lr.ph326.split.us
  %indvars.iv.next359 = add nsw i64 %indvars.iv358, 1 ; 2 uses
  %lftr.wideiv361 = trunc i64 %indvars.iv.next359 to i32
  %exitcond362.not = icmp eq i32 %i.pv, %lftr.wideiv361
  br i1 %exitcond362.not, label %.loopexit303, label %.lr.ph326.split.us

.loopexit303:                                     ; preds = %..loopexit_crit_edge.us, %.lr.ph326, %bb.aa, %bb.z, %bb.x, %bb.y
  %indvars.iv.next364 = add nsw i64 %indvars.iv363, 1 ; 2 uses
  %lftr.wideiv366 = trunc i64 %indvars.iv.next364 to i32
  %exitcond367.not = icmp eq i32 %i.pr, %lftr.wideiv366
  br i1 %exitcond367.not, label %.loopexit307, label %bb.x

.loopexit307:                                     ; preds = %.loopexit303, %.preheader306, %..loopexit307_crit_edge, %masks_get_delta.exit.thread
  %.sink = phi ptr [ %i.pm, %masks_get_delta.exit.thread ], [ %.pre375, %..loopexit307_crit_edge ], [ %.pre376, %.preheader306 ], [ %.pre376, %.loopexit303 ]
  call void @free(ptr noundef %.sink) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %bb.ae

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ae

bb.ae:                                            ; preds = %masks_form_is_in_roi.exit.thread, %.loopexit307, %._crit_edge, %.critedge, %masks_form_is_in_roi.exit, %bb.c
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1
  %i.vc = getelementptr inbounds nuw i8, ptr %.0229334, i64 8
  %.0229 = load ptr, ptr %i.vc, align 8, !tbaa !30 ; 2 uses
  %i.vd = icmp samesign ult i64 %indvars.iv368, 63
  %i.ve = icmp ne ptr %.0229, null
  %i.vf = select i1 %i.vd, i1 %i.ve, i1 false
  br i1 %i.vf, label %bb.c, label %.loopexit310

.loopexit310:                                     ; preds = %bb.ae, %.preheader309, %bb.b, %bb.a
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !207
  tail call void @_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init(ptr nofree noundef writeonly captures(none) initializes((676, 700), (704, 712), (752, 760)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr null, ptr %i.a, align 16, !tbaa !208
  %i.b = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 1, i64 noundef 512) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %i.b, ptr %i.c, align 8, !tbaa !98
  %i.d = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 1, i64 noundef 512) #19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.d, ptr %i.e, align 16, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.f, align 4, !tbaa !210
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 512, ptr %i.g, align 8, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr null, ptr %i.h, align 16, !tbaa !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store i32 2, ptr %.sroa.4.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load i32, ptr %i.a, align 16, !tbaa !212
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2760
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !213
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.g = load i32, ptr %i.f, align 16, !tbaa !214
  %.not20 = icmp eq i32 %i.g, 0
  br i1 %.not20, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !99  ; 7 uses
  %.not21 = icmp eq i32 %1, 0
  br i1 %.not21, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = tail call ptr @dt_masks_get_from_id(ptr noundef nonnull %i.c, i32 noundef %i.o) #16 ; 3 uses
  %.not23 = icmp eq ptr %i.p, null
  br i1 %.not23, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !43
  %i.s = and i32 %i.r, 4
  %.not24 = icmp eq i32 %i.s, 0
  br i1 %.not24, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !37
  %.not25 = icmp eq ptr %i.t, null
  br i1 %.not25, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 600 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !143
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !146
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @dt_masks_set_edit_mode(ptr noundef nonnull %0, i32 noundef 1) #16
  %.pr = load i32, ptr %i.u, align 8, !tbaa !143
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !146 ; 2 uses
  %.not26 = icmp eq i32 %.pr, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.ab = phi ptr [ %i.y, %.thread ], [ %i.aa, %bb.h ]
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !147
  %i.af = icmp eq ptr %i.ae, %0
  %i.ag = zext i1 %i.af to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.aa, %bb.h ], [ %i.ab, %bb.i ]
  %i.ai = phi i32 [ 0, %bb.h ], [ %i.ag, %bb.i ]
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ah, i32 noundef %i.ai) #16
  br label %bb.p

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !146
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ak, i32 noundef 0) #16
  br label %bb.p

bb.l:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 2168
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !148 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 172
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !151
  %.not22 = icmp eq i32 %i.ao, 0
  br i1 %.not22, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !152
  %i.ar = icmp eq ptr %i.aq, %0
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @dt_masks_change_form_gui(ptr noundef null) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !153
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.at, i32 noundef 0) #16
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !154
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.av, i32 noundef 0) #16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !155
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ax, i32 noundef 0) #16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !146
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.az, i32 noundef 0) #16
  tail call void @dt_masks_set_edit_mode(ptr noundef nonnull %0, i32 noundef 0) #16
  br label %bb.p

end_hunk_0
