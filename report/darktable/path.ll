Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/path?download=true
inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_get_mask_roi:bb.a
.epil.preheader712:                               ; preds = %.thread289.i.loopexit.unr-lcssa, %.lr.ph332.i
  %.0224330.i.epil.init = phi i32 [ 0, %.lr.ph332.i ], [ %i.vn, %.thread289.i.loopexit.unr-lcssa ]
  %lcmp.mod716 = icmp ne i32 %xtraiter713, 0
  call void @llvm.assume(i1 %lcmp.mod716)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader712
  %.0224330.i.epil = phi i32 [ %.0224330.i.epil.init, %.epil.preheader712 ], [ %i.vx, %bb.ax ] ; 3 uses
  %epil.iter714 = phi i32 [ 0, %.epil.preheader712 ], [ %epil.iter714.next, %bb.ax ]
  %i.vo = add nuw nsw i32 %i.tx, %.0224330.i.epil
  %i.vp = urem i32 %i.vo, %i.le
  %i.vq = uitofp nsz nneg i32 %.0224330.i.epil to float
  %i.vr = fmul reassoc nsz arcp contract afn float %i.tw, %i.vq
  %i.vs = fadd reassoc nsz arcp contract afn float %i.vr, %i.tv
  %i.vt = shl nuw nsw i32 %i.vp, 1
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.vu ; 2 uses
  store float %i.vs, ptr %i.vv, align 8, !tbaa !12
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store float 0.000000e+00, ptr %i.vw, align 4, !tbaa !12
  %i.vx = add nuw i32 %.0224330.i.epil, 1
  %epil.iter714.next = add i32 %epil.iter714, 1   ; 2 uses
  %epil.iter714.cmp.not = icmp eq i32 %epil.iter714.next, %xtraiter713
  br i1 %epil.iter714.cmp.not, label %.thread289.i, label %bb.ax, !llvm.loop !212

.thread289.i:                                     ; preds = %.thread289.i.loopexit.unr-lcssa, %bb.ax, %bb.av, %select.unfold283.i, %bb.at
  %.8239.i = phi i32 [ %spec.select263.i, %select.unfold283.i ], [ %.6237333.i, %bb.at ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %.thread289.i.loopexit.unr-lcssa ] ; 2 uses
  %.8.i = phi i32 [ %.7.ph.i, %select.unfold283.i ], [ %.6334.i, %bb.at ], [ -1, %bb.av ], [ -1, %bb.ax ], [ -1, %.thread289.i.loopexit.unr-lcssa ] ; 2 uses
  %i.vy = add nuw nsw i32 %.0225335.i, 1          ; 2 uses
  %exitcond353.not.i = icmp eq i32 %i.vy, %i.le
  br i1 %exitcond353.not.i, label %.preheader.i.preheader, label %.preheader303.i

.preheader.i.preheader:                           ; preds = %.thread289.i
  %i.vz = extractelement <2 x float> %i.li, i64 1
  %i.wa = extractelement <2 x float> %i.li, i64 1 ; 6 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.thread299.i
  %.0222345.i = phi i32 [ %i.zj, %.thread299.i ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %.9344.i = phi i32 [ %.11.i, %.thread299.i ], [ %.8.i, %.preheader.i.preheader ] ; 3 uses
  %.9240343.i = phi i32 [ %.11242.i, %.thread299.i ], [ %.8239.i, %.preheader.i.preheader ] ; 2 uses
  %i.wb = add nuw nsw i32 %.0222345.i, %i.lv
  %i.wc = urem i32 %i.wb, %i.le
  %i.wd = icmp slt i32 %.9344.i, 0
  %i.we = shl nuw nsw i32 %i.wc, 1
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !12 ; 2 uses
  br i1 %i.wd, label %bb.ay, label %select.unfold293.i

bb.ay:                                            ; preds = %.preheader.i
  %i.wj = fcmp reassoc nsz arcp contract afn ogt float %i.wi, %i.vz
  br i1 %i.wj, label %select.unfold293.i, label %.thread299.i

select.unfold293.i:                               ; preds = %.preheader.i, %bb.ay
  %.10.ph.i = phi i32 [ %.0222345.i, %bb.ay ], [ %.9344.i, %.preheader.i ] ; 5 uses
  %i.wk = fcmp reassoc nsz arcp contract afn ugt float %i.wi, %i.wa
  %i.wl = add nsw i32 %.0222345.i, -1
  %spec.select265.i = select i1 %i.wk, i32 %.9240343.i, i32 %i.wl ; 5 uses
  %i.wm = icmp sgt i32 %spec.select265.i, -1
  br i1 %i.wm, label %bb.az, label %.thread299.i

bb.az:                                            ; preds = %select.unfold293.i
  %i.wn = add i32 %.10.ph.i, %i.lw
  %i.wo = srem i32 %i.wn, %i.le                   ; 2 uses
  %i.wp = icmp eq i32 %spec.select265.i, %.10.ph.i
  br i1 %i.wp, label %.thread411.i, label %bb.ba

.thread411.i:                                     ; preds = %bb.az
  %.pre386.i = shl nsw i32 %i.wo, 1
  %.pre388.i = sext i32 %.pre386.i to i64
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %.pre388.i
  %i.wr = load float, ptr %i.wq, align 8, !tbaa !12
  br label %.lr.ph342.i

bb.ba:                                            ; preds = %bb.az
  %i.ws = sub nsw i32 %spec.select265.i, %.10.ph.i ; 3 uses
  %i.wt = add nuw nsw i32 %spec.select265.i, %i.lx
  %i.wu = urem i32 %i.wt, %i.le
  %i.wv = shl nuw nsw i32 %i.wu, 1
  %i.ww = zext nneg i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.ww
  %i.wy = load float, ptr %i.wx, align 8, !tbaa !12
  %i.wz = shl nsw i32 %i.wo, 1
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.xa
  %i.xc = load float, ptr %i.xb, align 8, !tbaa !12 ; 2 uses
  %i.xd = fsub reassoc nsz arcp contract afn float %i.wy, %i.xc
  %i.xe = uitofp nneg i32 %i.ws to float
  %i.xf = fdiv reassoc nsz arcp contract afn float %i.xd, %i.xe
  %.not339.i = icmp slt i32 %i.ws, 0
  br i1 %.not339.i, label %.thread299.i, label %.lr.ph342.i

.lr.ph342.i:                                      ; preds = %bb.ba, %.thread411.i
  %reass.sub493.pre-phi = phi i32 [ %i.ws, %bb.ba ], [ 0, %.thread411.i ] ; 2 uses
  %i.xg = phi float [ %i.xc, %bb.ba ], [ %i.wr, %.thread411.i ] ; 5 uses
  %i.xh = phi float [ %i.xf, %bb.ba ], [ 0.000000e+00, %.thread411.i ] ; 5 uses
  %i.xi = add nuw nsw i32 %.10.ph.i, %i.lv        ; 5 uses
  %i.xj = add nuw i32 %reass.sub493.pre-phi, 1    ; 2 uses
  %xtraiter720 = and i32 %i.xj, 3                 ; 3 uses
  %i.xk = icmp samesign ult i32 %reass.sub493.pre-phi, 3
  br i1 %i.xk, label %.epil.preheader719, label %.lr.ph342.i.new

.lr.ph342.i.new:                                  ; preds = %.lr.ph342.i
  %unroll_iter724 = and i32 %i.xj, -4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.lr.ph342.i.new
  %.0221340.i = phi i32 [ 0, %.lr.ph342.i.new ], [ %i.yy, %bb.bb ] ; 6 uses
  %niter725 = phi i32 [ 0, %.lr.ph342.i.new ], [ %niter725.next.3, %bb.bb ]
  %i.xl = add nuw nsw i32 %i.xi, %.0221340.i
  %i.xm = urem i32 %i.xl, %i.le
  %i.xn = uitofp nsz nneg i32 %.0221340.i to float
  %i.xo = fmul reassoc nsz arcp contract afn float %i.xh, %i.xn
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xo, %i.xg
  %i.xq = shl nuw nsw i32 %i.xm, 1
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.xr ; 2 uses
  store float %i.xp, ptr %i.xs, align 8, !tbaa !12
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  store float %i.wa, ptr %i.xt, align 4, !tbaa !12
  %i.xu = or disjoint i32 %.0221340.i, 1          ; 2 uses
  %i.xv = add nuw nsw i32 %i.xi, %i.xu
  %i.xw = urem i32 %i.xv, %i.le
  %i.xx = uitofp nsz nneg i32 %i.xu to float
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xh, %i.xx
  %i.xz = fadd reassoc nsz arcp contract afn float %i.xy, %i.xg
  %i.ya = shl nuw nsw i32 %i.xw, 1
  %i.yb = zext nneg i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.yb ; 2 uses
  store float %i.xz, ptr %i.yc, align 8, !tbaa !12
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  store float %i.wa, ptr %i.yd, align 4, !tbaa !12
  %i.ye = or disjoint i32 %.0221340.i, 2          ; 2 uses
  %i.yf = add nuw nsw i32 %i.xi, %i.ye
  %i.yg = urem i32 %i.yf, %i.le
  %i.yh = uitofp nsz nneg i32 %i.ye to float
  %i.yi = fmul reassoc nsz arcp contract afn float %i.xh, %i.yh
  %i.yj = fadd reassoc nsz arcp contract afn float %i.yi, %i.xg
  %i.yk = shl nuw nsw i32 %i.yg, 1
  %i.yl = zext nneg i32 %i.yk to i64
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.yl ; 2 uses
  store float %i.yj, ptr %i.ym, align 8, !tbaa !12
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  store float %i.wa, ptr %i.yn, align 4, !tbaa !12
  %i.yo = or disjoint i32 %.0221340.i, 3          ; 2 uses
  %i.yp = add nuw nsw i32 %i.xi, %i.yo
  %i.yq = urem i32 %i.yp, %i.le
  %i.yr = uitofp nsz nneg i32 %i.yo to float
  %i.ys = fmul reassoc nsz arcp contract afn float %i.xh, %i.yr
  %i.yt = fadd reassoc nsz arcp contract afn float %i.ys, %i.xg
  %i.yu = shl nuw nsw i32 %i.yq, 1
  %i.yv = zext nneg i32 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.yv ; 2 uses
  store float %i.yt, ptr %i.yw, align 8, !tbaa !12
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  store float %i.wa, ptr %i.yx, align 4, !tbaa !12
  %i.yy = add nuw i32 %.0221340.i, 4              ; 2 uses
  %niter725.next.3 = add i32 %niter725, 4         ; 2 uses
  %niter725.ncmp.3 = icmp eq i32 %niter725.next.3, %unroll_iter724
  br i1 %niter725.ncmp.3, label %.thread299.i.loopexit.unr-lcssa, label %bb.bb

.thread299.i.loopexit.unr-lcssa:                  ; preds = %bb.bb
  %lcmp.mod722.not = icmp eq i32 %xtraiter720, 0
  br i1 %lcmp.mod722.not, label %.thread299.i, label %.epil.preheader719

.epil.preheader719:                               ; preds = %.thread299.i.loopexit.unr-lcssa, %.lr.ph342.i
  %.0221340.i.epil.init = phi i32 [ 0, %.lr.ph342.i ], [ %i.yy, %.thread299.i.loopexit.unr-lcssa ]
  %lcmp.mod723 = icmp ne i32 %xtraiter720, 0
  call void @llvm.assume(i1 %lcmp.mod723)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader719
  %.0221340.i.epil = phi i32 [ %.0221340.i.epil.init, %.epil.preheader719 ], [ %i.zi, %bb.bc ] ; 3 uses
  %epil.iter721 = phi i32 [ 0, %.epil.preheader719 ], [ %epil.iter721.next, %bb.bc ]
  %i.yz = add nuw nsw i32 %i.xi, %.0221340.i.epil
  %i.za = urem i32 %i.yz, %i.le
  %i.zb = uitofp nsz nneg i32 %.0221340.i.epil to float
  %i.zc = fmul reassoc nsz arcp contract afn float %i.xh, %i.zb
  %i.zd = fadd reassoc nsz arcp contract afn float %i.zc, %i.xg
  %i.ze = shl nuw nsw i32 %i.za, 1
  %i.zf = zext nneg i32 %i.ze to i64
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.zf ; 2 uses
  store float %i.zd, ptr %i.zg, align 8, !tbaa !12
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  store float %i.wa, ptr %i.zh, align 4, !tbaa !12
  %i.zi = add nuw i32 %.0221340.i.epil, 1
  %epil.iter721.next = add i32 %epil.iter721, 1   ; 2 uses
  %epil.iter721.cmp.not = icmp eq i32 %epil.iter721.next, %xtraiter720
  br i1 %epil.iter721.cmp.not, label %.thread299.i, label %bb.bc, !llvm.loop !213

.thread299.i:                                     ; preds = %.thread299.i.loopexit.unr-lcssa, %bb.bc, %bb.ba, %select.unfold293.i, %bb.ay
  %.11242.i = phi i32 [ %spec.select265.i, %select.unfold293.i ], [ %.9240343.i, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.bc ], [ -1, %.thread299.i.loopexit.unr-lcssa ]
  %.11.i = phi i32 [ %.10.ph.i, %select.unfold293.i ], [ %.9344.i, %bb.ay ], [ -1, %bb.ba ], [ -1, %bb.bc ], [ -1, %.thread299.i.loopexit.unr-lcssa ]
  %i.zj = add nuw nsw i32 %.0222345.i, 1          ; 2 uses
  %exitcond355.not.i = icmp eq i32 %i.zj, %i.le
  br i1 %exitcond355.not.i, label %_path_crop_to_roi.exit, label %.preheader.i

_path_crop_to_roi.exit:                           ; preds = %bb.ah, %.thread299.i, %bb.af
  %.not321 = phi i1 [ true, %bb.af ], [ false, %.thread299.i ], [ true, %bb.ah ]
  %.not320 = icmp ne i32 %.1285, 0
  %spec.select353 = or i1 %.not320, %.not321      ; 2 uses
  %i.zk = zext i1 %spec.select353 to i32
  %i.zl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.zm = and i32 %i.zl, 4112
  %or.cond354.not = icmp eq i32 %i.zm, 4112
  br i1 %or.cond354.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_path_crop_to_roi.exit
  %i.zn = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.zo = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #25 ; 0 uses
  %i.zp = load i64, ptr %6, align 8, !tbaa !126
  %i.zq = add nsw i64 %i.zp, -1290608000
  %i.zr = sitofp reassoc nsz arcp contract afn i64 %i.zq to double
  %i.zs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !127
  %i.zu = sitofp reassoc nsz arcp contract afn i64 %i.zt to double
  %i.zv = fmul reassoc nnan nsz arcp contract afn double %i.zu, f0x3EB0C6F7A0B5ED8D
  %i.zw = fadd reassoc nsz arcp contract afn double %i.zv, %i.zr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store double %i.zw, ptr %i.a, align 8, !tbaa !137
  %i.zx = fsub reassoc nsz arcp contract afn double %i.zw, %i.kx
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.42, ptr noundef nonnull %i.zn, double noundef %i.zx) #25
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_path_crop_to_roi.exit
  br i1 %spec.select353, label %.preheader409.a, label %bb.bf

.preheader409.a:                                  ; preds = %bb.be
  %i.zy = sext i32 %i.lf to i64
  %i.zz = extractelement <2 x i32> %i.s, i64 1
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = mul nsw i64 %i.aaa, %i.zy              ; 9 uses
  %.not494 = icmp eq i64 %i.aab, 0
  br i1 %.not494, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader409.a
  %min.iters.check672.a = icmp ult i64 %i.aab, 4
  br i1 %min.iters.check672.a, label %.lr.ph461.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check673 = icmp ult i64 %i.aab, 32
  br i1 %min.iters.check673, label %vec.epilog.ph, label %vector.ph674

vector.ph674:                                     ; preds = %vector.main.loop.iter.check
  %i.aac = and i64 %i.aab, 28
  %n.vec675 = and i64 %i.aab, -32                 ; 4 uses
  br label %vector.body676

vector.body676:                                   ; preds = %vector.ph674, %vector.body676
  %index677 = phi i64 [ 0, %vector.ph674 ], [ %index.next678, %vector.body676 ] ; 2 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index677 ; 4 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 32
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 64
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.aad, align 4, !tbaa !12
  store <8 x float> splat (float 1.000000e+00), ptr %i.aae, align 4, !tbaa !12
  store <8 x float> splat (float 1.000000e+00), ptr %i.aaf, align 4, !tbaa !12
  store <8 x float> splat (float 1.000000e+00), ptr %i.aag, align 4, !tbaa !12
  %index.next678 = add nuw i64 %index677, 32      ; 2 uses
  %i.aah = icmp eq i64 %index.next678, %n.vec675
  br i1 %i.aah, label %middle.block679, label %vector.body676, !llvm.loop !214

middle.block679:                                  ; preds = %vector.body676
  %cmp.n680 = icmp eq i64 %i.aab, %n.vec675
  br i1 %cmp.n680, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block679
  %min.epilog.iters.check = icmp eq i64 %i.aac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph461.preheader, label %vec.epilog.ph, !prof !219

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec675, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec681 = and i64 %i.aab, -4                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index682 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next683, %vec.epilog.vector.body ] ; 2 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index682
  store <4 x float> splat (float 1.000000e+00), ptr %i.aai, align 4, !tbaa !12
  %index.next683 = add nuw i64 %index682, 4       ; 2 uses
  %i.aaj = icmp eq i64 %index.next683, %n.vec681
  br i1 %i.aaj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !215

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n684 = icmp eq i64 %i.aab, %n.vec681
  br i1 %cmp.n684, label %.loopexit, label %.lr.ph461.preheader

.lr.ph461.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0268460.ph = phi i64 [ 0, %iter.check ], [ %n.vec675, %vec.epilog.iter.check ], [ %n.vec681, %vec.epilog.middle.block ]
  br label %.lr.ph461

.lr.ph461:                                        ; preds = %.lr.ph461.preheader, %.lr.ph461
  %.0268460 = phi i64 [ %i.aal, %.lr.ph461 ], [ %.0268460.ph, %.lr.ph461.preheader ] ; 2 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0268460
  store float 1.000000e+00, ptr %i.aak, align 4, !tbaa !12
  %i.aal = add nuw i64 %.0268460, 1               ; 2 uses
  %exitcond527.not = icmp eq i64 %i.aal, %i.aab
  br i1 %exitcond527.not, label %.loopexit, label %.lr.ph461, !llvm.loop !216

bb.bf:                                            ; preds = %bb.be
  br i1 %i.bs, label %.lr.ph450, label %._crit_edge451

.lr.ph450:                                        ; preds = %bb.bf
  %i.aam = shl nuw i32 %i.ae, 1                   ; 2 uses
  %i.aan = add i32 %i.aam, -1
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.aao
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !12
  %i.aar = add i32 %i.aam, -2
  %i.aas = sext i32 %i.aar to i64
  %i.aat = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.aas
  %i.aau = load float, ptr %i.aat, align 8, !tbaa !12
  %i.aav = zext nneg i32 %i.lf to i64
  %i.aaw = sext i32 %i.ax to i64
  %wide.trip.count515 = zext nneg i32 %i.ae to i64
  %i.aax = extractelement <2 x i32> %i.s, i64 1
  br label %bb.bg

._crit_edge451:                                   ; preds = %._crit_edge445, %bb.bf
  %i.aay = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !124
  %i.aaz = and i32 %i.aay, 4112
  %or.cond357.not = icmp eq i32 %i.aaz, 4112
  br i1 %or.cond357.not, label %bb.bn, label %bb.bo

bb.bg:                                            ; preds = %.lr.ph450, %._crit_edge445
  %indvars.iv512 = phi i64 [ %i.aaw, %.lr.ph450 ], [ %indvars.iv.next513, %._crit_edge445 ] ; 2 uses
  %.0266447 = phi float [ %i.aaq, %.lr.ph450 ], [ %i.abd, %._crit_edge445 ] ; 3 uses
  %.0267446 = phi float [ %i.aau, %.lr.ph450 ], [ %i.abb, %._crit_edge445 ] ; 2 uses
  %.idx602 = shl nsw i64 %indvars.iv512, 3
  %i.aba = getelementptr inbounds i8, ptr %i.la, i64 %.idx602 ; 2 uses
  %i.abb = load float, ptr %i.aba, align 8, !tbaa !12 ; 3 uses
  %i.abc = getelementptr i8, ptr %i.aba, i64 4
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !12 ; 4 uses
  %i.abe = fcmp reassoc nsz arcp contract afn ogt float %.0266447, %i.abd
  br i1 %i.abe, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0264 = phi nsz float [ %i.abb, %bb.bh ], [ %.0267446, %bb.bg ] ; 2 uses
  %.0263 = phi nsz float [ %i.abd, %bb.bh ], [ %.0266447, %bb.bg ] ; 3 uses
  %.0262 = phi nsz float [ %.0267446, %bb.bh ], [ %i.abb, %bb.bg ]
  %.0261 = phi nsz float [ %.0266447, %bb.bh ], [ %i.abd, %bb.bg ] ; 3 uses
  %i.abf = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %.0263)
  %i.abg = fptosi float %i.abf to i32             ; 2 uses
  %i.abh = sitofp reassoc nsz arcp contract afn i32 %i.abg to float ; 2 uses
  %i.abi = fcmp reassoc nsz arcp contract afn ogt float %.0261, %i.abh
  br i1 %i.abi, label %.lr.ph444, label %._crit_edge445

.lr.ph444:                                        ; preds = %bb.bi
  %i.abj = fsub reassoc nsz arcp contract afn float %.0263, %.0261
  %i.abk = fsub reassoc nsz arcp contract afn float %.0264, %.0262
  %i.abl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.abj
  br label %bb.bj

._crit_edge445:                                   ; preds = %bb.bm, %bb.bi
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %._crit_edge451, label %bb.bg

bb.bj:                                            ; preds = %.lr.ph444, %bb.bm
  %i.abm = phi float [ %i.abh, %.lr.ph444 ], [ %i.aci, %bb.bm ]
  %.0260442 = phi i32 [ %i.abg, %.lr.ph444 ], [ %i.ach, %bb.bm ] ; 4 uses
  %i.abn = fsub reassoc nsz arcp contract afn float %i.abm, %.0263
  %i.abo = fmul reassoc nsz arcp contract afn float %i.abk, %i.abn
  %i.abp = fmul reassoc nsz arcp contract afn float %i.abo, %i.abl
  %i.abq = fadd reassoc nsz arcp contract afn float %i.abp, %.0264 ; 2 uses
  %i.abr = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.abq)
  %i.abs = fptosi float %i.abr to i32             ; 2 uses
  %i.abt = sitofp reassoc nsz arcp contract afn i32 %i.abs to float
  %i.abu = fadd reassoc nsz arcp contract afn float %i.abt, 5.000000e-01
  %i.abv = fcmp reassoc nsz arcp contract afn ole float %i.abu, %i.abq
  %i.abw = zext i1 %i.abv to i32
  %spec.select355 = add nsw i32 %i.abw, %i.abs    ; 3 uses
  %i.abx = icmp slt i32 %spec.select355, 0
  br i1 %i.abx, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aby = icmp slt i32 %spec.select355, %i.lf
  %i.abz = icmp sgt i32 %.0260442, -1
  %or.cond11.not407 = and i1 %i.abz, %i.aby
  %.not332 = icmp slt i32 %.0260442, %i.aax
  %or.cond356 = select i1 %or.cond11.not407, i1 %.not332, i1 false
  br i1 %or.cond356, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.aca = zext nneg i32 %.0260442 to i64
  %i.acb = mul nuw nsw i64 %i.aca, %i.aav
  %i.acc = zext nneg i32 %spec.select355 to i64
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.acb
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %i.acc ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !12
  %i.acg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.acf
  store float %i.acg, ptr %i.ace, align 4, !tbaa !12
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bk, %bb.bl
end_hunk_0
