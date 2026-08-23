Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Calignm1?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Calignm1:bb.a
  %wide.trip.count551 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter813 = and i64 %wide.trip.count551, 1
  %i.wk = icmp slt i32 %i.wi, 2
  br i1 %i.wk, label %.preheader377.epil.preheader, label %.preheader377.lr.ph.new

.preheader377.lr.ph.new:                          ; preds = %.preheader377.lr.ph
  %unroll_iter817 = and i64 %wide.trip.count551, 2147483646
  br label %.preheader377

.lr.ph422:                                        ; preds = %.lr.ph422.preheader, %._crit_edge423
  %indvars.iv542 = phi i64 [ 0, %.lr.ph422.preheader ], [ %indvars.iv.next543, %._crit_edge423 ] ; 3 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv542
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !26
  %i.wn = fptrunc double %i.wm to float           ; 4 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv542
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !8
  %i.wq = fmul float %i.wn, 0.000000e+00          ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph422, %bb.j
  %indvars.iv537 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next538, %bb.j ] ; 4 uses
  %.0302420 = phi i32 [ 0, %.lr.ph422 ], [ %spec.store.select, %bb.j ] ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 %indvars.iv537
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !11
  %i.wt = icmp eq i8 %i.ws, 45
  %i.wu = icmp ne i64 %indvars.iv537, %i.wd
  %narrow = select i1 %i.wu, i1 %i.wt, i1 false   ; 3 uses
  %spec.store.select = zext i1 %narrow to i32
  %i.wv = xor i32 %.0302420, 1                    ; 2 uses
  %i.ww = uitofp nneg i32 %i.wv to float          ; 2 uses
  %i.wx = select i1 %narrow, float %i.ww, float 0.000000e+00
  %i.wy = fmul float %i.wx, %i.wn
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %indvars.iv537
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !38 ; 3 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !43 ; 4 uses
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !50
  %i.xd = tail call float @llvm.fmuladd.f32(float %i.wy, float %i.wb, float %i.xc)
  store float %i.xd, ptr %i.xb, align 4, !tbaa !50
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !43 ; 3 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !50
  %i.xh = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wb, float %i.xg)
  store float %i.xh, ptr %i.xf, align 4, !tbaa !50
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !43 ; 3 uses
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !50
  %i.xl = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wb, float %i.xk)
  store float %i.xl, ptr %i.xj, align 4, !tbaa !50
  %i.xm = add nuw nsw i32 %i.wv, %.0302420
  %i.xn = uitofp nneg i32 %i.xm to float
  %i.xo = select i1 %narrow, float 0.000000e+00, float %i.xn
  %i.xp = fmul float %i.xo, %i.wn
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xb, i64 4 ; 2 uses
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !50
  %i.xs = tail call float @llvm.fmuladd.f32(float %i.xp, float %i.wb, float %i.xr)
  store float %i.xs, ptr %i.xq, align 4, !tbaa !50
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xf, i64 4 ; 2 uses
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !50
  %i.xv = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wb, float %i.xu)
  store float %i.xv, ptr %i.xt, align 4, !tbaa !50
  %i.xw = fmul float %i.wn, %i.ww
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xb, i64 8 ; 2 uses
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !50
  %i.xz = tail call float @llvm.fmuladd.f32(float %i.xw, float %i.wb, float %i.xy)
  store float %i.xz, ptr %i.xx, align 4, !tbaa !50
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xj, i64 8 ; 2 uses
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !50
  %i.yc = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wb, float %i.yb)
  store float %i.yc, ptr %i.ya, align 4, !tbaa !50
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count540
  br i1 %exitcond541.not, label %._crit_edge423, label %bb.j, !llvm.loop !58

._crit_edge423:                                   ; preds = %bb.j
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %wide.trip.count545
  br i1 %exitcond546.not, label %.preheader378, label %.lr.ph422, !llvm.loop !59

.preheader377:                                    ; preds = %.preheader377, %.preheader377.lr.ph.new
  %indvar = phi i64 [ 0, %.preheader377.lr.ph.new ], [ %indvar.next.1, %.preheader377 ] ; 5 uses
  %niter818 = phi i64 [ 0, %.preheader377.lr.ph.new ], [ %niter818.next.1, %.preheader377 ]
  %i.yd = shl nuw nsw i64 %indvar, 2
  %i.ye = add nuw nsw i64 %i.yd, 8                ; 2 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvar
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !43
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre669, i64 %indvar
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yg, i8 0, i64 %i.ye, i1 false), !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yi, i8 0, i64 %i.ye, i1 false), !tbaa !50
  %indvar.next = or disjoint i64 %indvar, 1       ; 3 uses
  %i.yj = shl nuw nsw i64 %indvar.next, 2
  %i.yk = add nuw nsw i64 %i.yj, 8                ; 2 uses
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvar.next
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !43
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre669, i64 %indvar.next
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ym, i8 0, i64 %i.yk, i1 false), !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yo, i8 0, i64 %i.yk, i1 false), !tbaa !50
  %indvar.next.1 = add nuw nsw i64 %indvar, 2     ; 2 uses
  %niter818.next.1 = add i64 %niter818, 2         ; 2 uses
  %niter818.ncmp.1 = icmp eq i64 %niter818.next.1, %unroll_iter817
  br i1 %niter818.ncmp.1, label %.preheader376.loopexit.unr-lcssa, label %.preheader377, !llvm.loop !60

.preheader376.loopexit.unr-lcssa:                 ; preds = %.preheader377
  %lcmp.mod815.not = icmp eq i64 %xtraiter813, 0
  br i1 %lcmp.mod815.not, label %.preheader376, label %.preheader377.epil.preheader

.preheader377.epil.preheader:                     ; preds = %.preheader376.loopexit.unr-lcssa, %.preheader377.lr.ph
  %indvar.epil.init = phi i64 [ 0, %.preheader377.lr.ph ], [ %indvar.next.1, %.preheader376.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod816 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod816)
  %i.yp = shl nuw nsw i64 %indvar.epil.init, 2
  %i.yq = add nuw nsw i64 %i.yp, 8                ; 2 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvar.epil.init
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !43
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre669, i64 %indvar.epil.init
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ys, i8 0, i64 %i.yq, i1 false), !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yu, i8 0, i64 %i.yq, i1 false), !tbaa !50
  br label %.preheader376

.preheader376:                                    ; preds = %.preheader377.epil.preheader, %.preheader376.loopexit.unr-lcssa, %.preheader378
  %.pre626.pre.pre670 = phi ptr [ %.pre626.pre.pre, %.preheader378 ], [ %.pre626.pre.pre669, %.preheader376.loopexit.unr-lcssa ], [ %.pre626.pre.pre669, %.preheader377.epil.preheader ] ; 5 uses
  %i.yv = phi i32 [ %i.wg, %.preheader378 ], [ %i.wi, %.preheader376.loopexit.unr-lcssa ], [ %i.wi, %.preheader377.epil.preheader ]
  br i1 %.not387, label %.preheader375, label %.lr.ph438

.lr.ph438:                                        ; preds = %.preheader376
  %i.yw = load ptr, ptr @Calignm1.gl, align 8
  br i1 %.not342407, label %._crit_edge447, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %.lr.ph438
  %i.yx = add nuw nsw i64 %i.ag, 1
  %i.yy = add nuw i32 %4, 1
  %wide.trip.count561 = zext i32 %i.yy to i64
  %wide.trip.count556 = and i64 %i.yx, 4294967295
  br label %.lr.ph434

.preheader375:                                    ; preds = %._crit_edge435, %.preheader376
  br i1 %.not342407, label %._crit_edge447, label %.preheader374.lr.ph

.preheader374.lr.ph:                              ; preds = %.preheader375
  %i.yz = load ptr, ptr @Calignm1.gl, align 8
  %i.za = add nuw nsw i64 %i.ag, 1
  %wide.trip.count580 = and i64 %i.za, 4294967295
  br label %.preheader374

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %._crit_edge435
  %indvars.iv558 = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvars.iv.next559, %._crit_edge435 ] ; 3 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv558
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !26
  %i.zd = fptrunc double %i.zc to float           ; 2 uses
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv558
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !8
  %i.zg = load i32, ptr @penalty, align 4
  %i.zh = sitofp i32 %i.zg to float               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph434, %bb.n
  %indvars.iv553 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next554, %bb.n ] ; 4 uses
  %.0303432 = phi i32 [ 0, %.lr.ph434 ], [ %.1304, %bb.n ]
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 %indvars.iv553 ; 2 uses
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !11
  %i.zk = icmp eq i8 %i.zj, 45
  br i1 %i.zk, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.zl = add nsw i32 %.0303432, 1                ; 3 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv553
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !43
  %i.zo = sext i32 %i.zl to i64                   ; 2 uses
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.zn, i64 %i.zo ; 2 uses
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !50
  %i.zr = tail call float @llvm.fmuladd.f32(float %i.zd, float %i.zh, float %i.zq)
  store float %i.zr, ptr %i.zp, align 4, !tbaa !50
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zi, i64 1
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !11
  %.not361 = icmp eq i8 %i.zt, 45
  br i1 %.not361, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %indvars.iv553
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !43
  %i.zw = getelementptr inbounds [4 x i8], ptr %i.zv, i64 %i.zo ; 2 uses
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !50
  %i.zy = tail call float @llvm.fmuladd.f32(float %i.zd, float %i.zh, float %i.zx)
  store float %i.zy, ptr %i.zw, align 4, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.1304 = phi i32 [ %i.zl, %bb.m ], [ %i.zl, %bb.l ], [ 0, %bb.k ]
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %exitcond557.not = icmp eq i64 %indvars.iv.next554, %wide.trip.count556
  br i1 %exitcond557.not, label %._crit_edge435, label %bb.k, !llvm.loop !61

._crit_edge435:                                   ; preds = %bb.n
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %exitcond562.not = icmp eq i64 %indvars.iv.next559, %wide.trip.count561
  br i1 %exitcond562.not, label %.preheader375, label %.lr.ph434, !llvm.loop !62

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge444
  %indvars.iv575 = phi i64 [ 1, %.preheader374.lr.ph ], [ %indvars.iv.next576, %._crit_edge444 ] ; 2 uses
  %indvars.iv570 = phi i64 [ 0, %.preheader374.lr.ph ], [ %indvars.iv.next571, %._crit_edge444 ] ; 8 uses
  %i.zz = shl i64 %indvars.iv575, 2
  %.not359439 = icmp eq i64 %indvars.iv570, 0
  br i1 %.not359439, label %._crit_edge444, label %.lr.ph441

.lr.ph441:                                        ; preds = %.preheader374
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv570
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !43 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %.pre625 = load float, ptr %.phi.trans.insert, align 4, !tbaa !50 ; 2 uses
  %xtraiter820 = and i64 %indvars.iv570, 3        ; 3 uses
  %i.aac = icmp samesign ult i64 %indvars.iv570, 4
  br i1 %i.aac, label %.epil.preheader819, label %.lr.ph441.new

.lr.ph441.new:                                    ; preds = %.lr.ph441
  %unroll_iter824 = and i64 %indvars.iv570, 9223372036854775804
  br label %bb.p

.lr.ph443.unr-lcssa:                              ; preds = %bb.p
  %lcmp.mod822.not = icmp eq i64 %xtraiter820, 0
  br i1 %lcmp.mod822.not, label %.lr.ph443, label %.epil.preheader819

.epil.preheader819:                               ; preds = %.lr.ph443.unr-lcssa, %.lr.ph441
  %.epil.init = phi float [ %.pre625, %.lr.ph441 ], [ %i.aay, %.lr.ph443.unr-lcssa ]
  %indvars.iv563.epil.init = phi i64 [ 1, %.lr.ph441 ], [ %indvars.iv.next564.3, %.lr.ph443.unr-lcssa ]
  %lcmp.mod823 = icmp ne i64 %xtraiter820, 0
  tail call void @llvm.assume(i1 %lcmp.mod823)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader819
  %i.aad = phi float [ %.epil.init, %.epil.preheader819 ], [ %i.aag, %bb.o ]
  %indvars.iv563.epil = phi i64 [ %indvars.iv563.epil.init, %.epil.preheader819 ], [ %indvars.iv.next564.epil, %bb.o ]
  %epil.iter821 = phi i64 [ 0, %.epil.preheader819 ], [ %epil.iter821.next, %bb.o ]
  %indvars.iv.next564.epil = add nuw nsw i64 %indvars.iv563.epil, 1 ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next564.epil ; 2 uses
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !50
  %i.aag = fadd float %i.aad, %i.aaf              ; 2 uses
  store float %i.aag, ptr %i.aae, align 4, !tbaa !50
  %epil.iter821.next = add i64 %epil.iter821, 1   ; 2 uses
  %epil.iter821.cmp.not = icmp eq i64 %epil.iter821.next, %xtraiter820
  br i1 %epil.iter821.cmp.not, label %.lr.ph443, label %bb.o, !llvm.loop !63

.lr.ph443:                                        ; preds = %bb.o, %.lr.ph443.unr-lcssa
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %indvars.iv570
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !43 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aai, i64 %i.zz
  %load_initial = load float, ptr %scevgep, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph441.new
  %i.aaj = phi float [ %.pre625, %.lr.ph441.new ], [ %i.aay, %bb.p ]
  %indvars.iv563 = phi i64 [ 1, %.lr.ph441.new ], [ %indvars.iv.next564.3, %bb.p ] ; 4 uses
  %niter825 = phi i64 [ 0, %.lr.ph441.new ], [ %niter825.next.3, %bb.p ]
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv563
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 4 ; 2 uses
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !50
  %i.aan = fadd float %i.aaj, %i.aam              ; 2 uses
  store float %i.aan, ptr %i.aal, align 4, !tbaa !50
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv563
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8 ; 2 uses
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !50
  %i.aar = fadd float %i.aan, %i.aaq              ; 2 uses
  store float %i.aar, ptr %i.aap, align 4, !tbaa !50
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv563
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 12 ; 2 uses
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !50
  %i.aav = fadd float %i.aar, %i.aau              ; 2 uses
  store float %i.aav, ptr %i.aat, align 4, !tbaa !50
  %indvars.iv.next564.3 = add nuw nsw i64 %indvars.iv563, 4 ; 3 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv.next564.3 ; 2 uses
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !50
  %i.aay = fadd float %i.aav, %i.aax              ; 3 uses
  store float %i.aay, ptr %i.aaw, align 4, !tbaa !50
  %niter825.next.3 = add nuw i64 %niter825, 4     ; 2 uses
  %niter825.ncmp.3 = icmp eq i64 %niter825.next.3, %unroll_iter824
  br i1 %niter825.ncmp.3, label %.lr.ph443.unr-lcssa, label %bb.p, !llvm.loop !64

bb.q:                                             ; preds = %.lr.ph443, %bb.q
  %store_forwarded = phi float [ %load_initial, %.lr.ph443 ], [ %i.abb, %bb.q ]
  %indvars.iv572 = phi i64 [ %indvars.iv570, %.lr.ph443 ], [ %indvars.iv.next573, %bb.q ] ; 3 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %indvars.iv572 ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !50
  %i.abb = fadd float %store_forwarded, %i.aba    ; 2 uses
  store float %i.abb, ptr %i.aaz, align 4, !tbaa !50
  %indvars.iv.next573 = add nsw i64 %indvars.iv572, -1
  %i.abc = icmp sgt i64 %indvars.iv572, 1
  br i1 %i.abc, label %bb.q, label %._crit_edge444, !llvm.loop !65

._crit_edge444:                                   ; preds = %bb.q, %.preheader374
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 2 uses
  %indvars.iv.next576 = add nuw i64 %indvars.iv575, 1
  %exitcond581.not = icmp eq i64 %indvars.iv.next571, %wide.trip.count580
  br i1 %exitcond581.not, label %._crit_edge447, label %.preheader374, !llvm.loop !66

._crit_edge447:                                   ; preds = %._crit_edge444, %.lr.ph438, %.preheader375
  %i.abd = load ptr, ptr @Calignm1.v, align 8, !tbaa !38 ; 11 uses
  store ptr %i.abd, ptr @Calignm1.w, align 8, !tbaa !38
  %i.abe = load ptr, ptr @Calignm1.g, align 8, !tbaa !40 ; 6 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !38
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !43 ; 2 uses
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !50
  %i.abi = load ptr, ptr %i.abd, align 8, !tbaa !43 ; 8 uses
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !50
  %i.abk = fadd float %i.abh, %i.abj
  store float %i.abk, ptr %i.abi, align 4, !tbaa !50
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abg, i64 4 ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !50
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !38
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !43 ; 2 uses
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !50
  %i.abs = fadd float %i.abm, %i.abr
  %i.abt = getelementptr inbounds nuw i8, ptr %.pre626.pre.pre670, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !43
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !50
  %i.abx = fadd float %i.abs, %i.abw
  %i.aby = load float, ptr %i.uw, align 4, !tbaa !50
  %i.abz = fadd float %i.abx, %i.aby
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !43 ; 2 uses
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !50
  %i.acd = fadd float %i.abz, %i.acc
  store float %i.acd, ptr %i.acb, align 4, !tbaa !50
  br i1 %i.fd, label %.lr.ph451, label %._crit_edge452

.lr.ph451:                                        ; preds = %._crit_edge447
  %i.ace = load ptr, ptr @Calignm1.gl, align 8, !tbaa !38
  %smax585 = tail call i32 @llvm.smax.i32(i32 %i.yv, i32 3)
  %wide.trip.count586 = zext nneg i32 %smax585 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph451, %bb.r
  %i.acf = phi ptr [ %i.abq, %.lr.ph451 ], [ %i.ada, %bb.r ]
  %indvars.iv582 = phi i64 [ 2, %.lr.ph451 ], [ %indvars.iv.next583, %bb.r ] ; 6 uses
  %.0305449 = phi float [ 0.000000e+00, %.lr.ph451 ], [ %i.acs, %bb.r ]
  %i.acg = add nsw i64 %indvars.iv582, -1         ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 4
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !50
  %i.acj = getelementptr [8 x i8], ptr %i.ace, i64 %indvars.iv582
  %i.ack = getelementptr i8, ptr %i.acj, i64 -16
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !43
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.acg
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !50
  %i.aco = fadd float %i.aci, %i.acn
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.acg
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !50
  %i.acr = fadd float %i.aco, %i.acq
  %i.acs = fadd float %.0305449, %i.acr           ; 2 uses
  %i.act = load float, ptr %i.abl, align 4, !tbaa !50
  %i.acu = load float, ptr %i.uw, align 4, !tbaa !50
  %i.acv = fadd float %i.act, %i.acu
  %i.acw = fadd float %i.acs, %i.acv
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv582
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !38
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !43 ; 2 uses
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !50
  %i.adc = fadd float %i.acw, %i.adb
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %.pre626.pre.pre670, i64 %indvars.iv582
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !43
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 3 uses
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.next583
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !50
  %i.adh = fadd float %i.adc, %i.adg
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %indvars.iv582
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !43 ; 2 uses
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !50
  %i.adl = fadd float %i.adh, %i.adk
  store float %i.adl, ptr %i.adj, align 4, !tbaa !50
  %exitcond587.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count586
  br i1 %exitcond587.not, label %._crit_edge452, label %bb.r, !llvm.loop !67

._crit_edge452:                                   ; preds = %bb.r, %._crit_edge447
  %i.adm = load i32, ptr @penalty, align 4, !tbaa !4
  %i.adn = sitofp i32 %i.adm to float             ; 4 uses
  %i.ado = load i32, ptr getelementptr inbounds nuw (i8, ptr @n_dis, i64 2496), align 16, !tbaa !4
  %i.adp = sitofp i32 %i.ado to float             ; 4 uses
  %i.adq = fmul float %.0.lcssa, %i.adp
  %i.adr = tail call float @llvm.fmuladd.f32(float %i.adn, float %.0.lcssa, float %i.adq)
  %i.ads = getelementptr i8, ptr %i.abi, i64 4    ; 2 uses
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !50
  %i.adu = fadd float %i.adt, %i.adr
  store float %i.adu, ptr %i.ads, align 4, !tbaa !50
  %.not348453 = icmp slt i32 %i.aj, 2
  br i1 %.not348453, label %.preheader372, label %.lr.ph457.preheader

.lr.ph457.preheader:                              ; preds = %._crit_edge452
  %i.adv = add nuw nsw i64 %i.ai, 1               ; 3 uses
  %wide.trip.count591 = and i64 %i.adv, 4294967295 ; 2 uses
  %xtraiter826 = and i64 %i.adv, 1                ; 2 uses
  %i.adw = icmp eq i64 %wide.trip.count591, 3
  br i1 %i.adw, label %.lr.ph457.epil.preheader, label %.lr.ph457.preheader.new

.lr.ph457.preheader.new:                          ; preds = %.lr.ph457.preheader
  %i.adx = add nsw i64 %wide.trip.count591, -2
  %unroll_iter830 = sub nsw i64 %i.adx, %xtraiter826
  br label %.lr.ph457

.preheader372:                                    ; preds = %._crit_edge452
  br i1 %.not343410, label %.preheader371, label %.lr.ph460

.lr.ph460.loopexit.unr-lcssa:                     ; preds = %.lr.ph457
  %lcmp.mod828.not = icmp eq i64 %xtraiter826, 0
  br i1 %lcmp.mod828.not, label %.lr.ph460, label %.lr.ph457.epil.preheader

.lr.ph457.epil.preheader:                         ; preds = %.lr.ph460.loopexit.unr-lcssa, %.lr.ph457.preheader
  %indvars.iv588.epil.init = phi i64 [ 2, %.lr.ph457.preheader ], [ %indvars.iv.next589.1, %.lr.ph460.loopexit.unr-lcssa ]
  %.1306455.epil.init = phi float [ 0.000000e+00, %.lr.ph457.preheader ], [ %i.aen, %.lr.ph460.loopexit.unr-lcssa ]
  %lcmp.mod829 = trunc i64 %i.adv to i1
  tail call void @llvm.assume(i1 %lcmp.mod829)
  %i.ady = tail call float @llvm.fmuladd.f32(float %i.adp, float %.0.lcssa, float %.1306455.epil.init)
  %i.adz = tail call float @llvm.fmuladd.f32(float %i.adn, float %.0.lcssa, float %i.ady)
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %indvars.iv588.epil.init ; 2 uses
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !50
  %i.aec = fadd float %i.adz, %i.aeb
  store float %i.aec, ptr %i.aea, align 4, !tbaa !50
  br label %.lr.ph460

.lr.ph460:                                        ; preds = %.lr.ph457.epil.preheader, %.lr.ph460.loopexit.unr-lcssa, %.preheader372
  %i.aed = load ptr, ptr @Calignm1.m, align 8, !tbaa !43
  %i.aee = load ptr, ptr @Calignm1.mp, align 8, !tbaa !16
  %i.aef = shl i64 %i.ai, 2
  %i.aeg = add nuw nsw i64 %i.aef, 4
  %i.aeh = and i64 %i.aeg, 17179869180            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aed, i8 0, i64 %i.aeh, i1 false), !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aee, i8 0, i64 %i.aeh, i1 false), !tbaa !4
  br label %.preheader371

.lr.ph457:                                        ; preds = %.lr.ph457, %.lr.ph457.preheader.new
  %indvars.iv588 = phi i64 [ 2, %.lr.ph457.preheader.new ], [ %indvars.iv.next589.1, %.lr.ph457 ] ; 3 uses
  %.1306455 = phi float [ 0.000000e+00, %.lr.ph457.preheader.new ], [ %i.aen, %.lr.ph457 ]
  %niter831 = phi i64 [ 0, %.lr.ph457.preheader.new ], [ %niter831.next.1, %.lr.ph457 ]
  %i.aei = tail call float @llvm.fmuladd.f32(float %i.adp, float %.0.lcssa, float %.1306455) ; 2 uses
  %i.aej = tail call float @llvm.fmuladd.f32(float %i.adn, float %.0.lcssa, float %i.aei)
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %indvars.iv588 ; 2 uses
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !50
  %i.aem = fadd float %i.aej, %i.ael
  store float %i.aem, ptr %i.aek, align 4, !tbaa !50
  %i.aen = tail call float @llvm.fmuladd.f32(float %i.adp, float %.0.lcssa, float %i.aei) ; 3 uses
  %i.aeo = tail call float @llvm.fmuladd.f32(float %i.adn, float %.0.lcssa, float %i.aen)
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.abi, i64 %indvars.iv588
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 4 ; 2 uses
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !50
  %i.aes = fadd float %i.aeo, %i.aer
  store float %i.aes, ptr %i.aeq, align 4, !tbaa !50
  %indvars.iv.next589.1 = add nuw nsw i64 %indvars.iv588, 2 ; 2 uses
  %niter831.next.1 = add i64 %niter831, 2         ; 2 uses
  %niter831.ncmp.1 = icmp eq i64 %niter831.next.1, %unroll_iter830
  br i1 %niter831.ncmp.1, label %.lr.ph460.loopexit.unr-lcssa, label %.lr.ph457, !llvm.loop !68

.preheader371:                                    ; preds = %.lr.ph460, %.preheader372
  %.not350468 = icmp slt i32 %i.ah, 1
  br i1 %.not350468, label %._crit_edge471, label %.lr.ph470

.lr.ph470:                                        ; preds = %.preheader371
  %.not358461 = icmp slt i32 %i.aj, 1
  %i.aet = load ptr, ptr @Calignm1.m, align 8     ; 4 uses
  %i.aeu = load ptr, ptr @Calignm1.mp, align 8    ; 6 uses
  %i.aev = load ptr, ptr @Calignm1.gl, align 8
  %i.aew = load ptr, ptr @Calignm1.ijp, align 8
  br i1 %.not358461, label %._crit_edge471, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %.lr.ph470
  %i.aex = add nuw nsw i64 %i.ai, 1
  %i.aey = add nuw nsw i64 %i.ag, 1
  %wide.trip.count605 = and i64 %i.aey, 4294967295
  %wide.trip.count599 = and i64 %i.aex, 4294967295 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aet, i64 4
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aet, i64 4 ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %exitcond600.peel.not = icmp eq i64 %wide.trip.count599, 2
  %i.afe = insertelement <2 x float> poison, float %.0.lcssa, i64 0
  %i.aff = shufflevector <2 x float> %i.afe, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph464.preheader, %._crit_edge465
  %indvars.iv602 = phi i64 [ 1, %.lr.ph464.preheader ], [ %indvars.iv.next603, %._crit_edge465 ] ; 11 uses
  %i.afg = getelementptr [8 x i8], ptr %i.abd, i64 %indvars.iv602 ; 2 uses
  %i.afh = getelementptr i8, ptr %i.afg, i64 -8
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv602 ; 2 uses
  %i.afj = add nsw i64 %indvars.iv602, -1         ; 3 uses
  %i.afk = getelementptr inbounds [8 x i8], ptr %i.abd, i64 %i.afj
  %i.afl = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %i.afj ; 3 uses
  %i.afm = icmp samesign ugt i64 %indvars.iv602, 1 ; 2 uses
  %i.afn = add nsw i64 %indvars.iv602, -2         ; 4 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %i.afn ; 2 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.afj ; 2 uses
end_hunk_0
