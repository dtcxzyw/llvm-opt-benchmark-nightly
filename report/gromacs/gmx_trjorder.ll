Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_trjorder?download=true
inline.NumInlined: 139
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z12gmx_trjorderiPPc:bb.a
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 196
  %wide.vec = load <16 x float>, ptr %i.ut, align 4, !tbaa !89
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec710 = load <16 x float>, ptr %i.uu, align 4, !tbaa !89
  %strided.vec711 = shufflevector <16 x float> %wide.vec710, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec712 = load <16 x float>, ptr %i.uv, align 4, !tbaa !89
  %strided.vec713 = shufflevector <16 x float> %wide.vec712, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec714 = load <16 x float>, ptr %i.uw, align 4, !tbaa !89
  %strided.vec715 = shufflevector <16 x float> %wide.vec714, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.ux = fcmp ole <8 x float> %strided.vec, %broadcast.splat704
  %i.uy = fcmp ole <8 x float> %strided.vec711, %broadcast.splat704
  %i.uz = fcmp ole <8 x float> %strided.vec713, %broadcast.splat704
  %i.va = fcmp ole <8 x float> %strided.vec715, %broadcast.splat704
  %i.vb = zext <8 x i1> %i.ux to <8 x i32>
  %i.vc = zext <8 x i1> %i.uy to <8 x i32>
  %i.vd = zext <8 x i1> %i.uz to <8 x i32>
  %i.ve = zext <8 x i1> %i.va to <8 x i32>
  %i.vf = add <8 x i32> %vec.phi, %i.vb           ; 2 uses
  %i.vg = add <8 x i32> %vec.phi707.a, %i.vc      ; 2 uses
  %i.vh = add <8 x i32> %vec.phi708.a, %i.vd      ; 2 uses
  %i.vi = add <8 x i32> %vec.phi709, %i.ve        ; 2 uses
  %index.next716 = add nuw i64 %index706, 32      ; 2 uses
  %i.vj = icmp eq i64 %index.next716, %n.vec702
  br i1 %i.vj, label %vec.epilog.iter.check723, label %vector.body705, !llvm.loop !97

vec.epilog.iter.check723:                         ; preds = %vector.body705
  %bin.rdx = add <8 x i32> %i.vg, %i.vf
  %bin.rdx718.a = add <8 x i32> %i.vh, %bin.rdx
  %bin.rdx719 = add <8 x i32> %i.vi, %bin.rdx718.a
  %i.vk = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx719) ; 2 uses
  br i1 %min.epilog.iters.check724, label %vec.epilog.scalar.ph722.preheader, label %vec.epilog.ph725, !prof !70

vec.epilog.ph725:                                 ; preds = %vector.main.loop.iter.check699, %vec.epilog.iter.check723
  %vec.epilog.resume.val720 = phi i64 [ %n.vec702, %vec.epilog.iter.check723 ], [ 0, %vector.main.loop.iter.check699 ]
  %bc.merge.rdx = phi i32 [ %i.vk, %vec.epilog.iter.check723 ], [ 0, %vector.main.loop.iter.check699 ]
  %i.vl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body729

vec.epilog.vector.body729:                        ; preds = %vec.epilog.vector.body729, %vec.epilog.ph725
  %index730 = phi i64 [ %vec.epilog.resume.val720, %vec.epilog.ph725 ], [ %index.next734, %vec.epilog.vector.body729 ] ; 2 uses
  %vec.phi731 = phi <4 x i32> [ %i.vl, %vec.epilog.ph725 ], [ %i.vq, %vec.epilog.vector.body729 ]
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %index730
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 4
  %wide.vec732 = load <8 x float>, ptr %i.vn, align 4, !tbaa !89
  %strided.vec733 = shufflevector <8 x float> %wide.vec732, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.vo = fcmp ole <4 x float> %strided.vec733, %broadcast.splat728
  %i.vp = zext <4 x i1> %i.vo to <4 x i32>
  %i.vq = add <4 x i32> %vec.phi731, %i.vp        ; 2 uses
  %index.next734 = add nuw i64 %index730, 4       ; 2 uses
  %i.vr = icmp eq i64 %index.next734, %n.vec726
  br i1 %i.vr, label %vec.epilog.middle.block735, label %vec.epilog.vector.body729, !llvm.loop !98

vec.epilog.middle.block735:                       ; preds = %vec.epilog.vector.body729
  %i.vs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.vq)
  br label %vec.epilog.scalar.ph722.preheader

vec.epilog.scalar.ph722.preheader:                ; preds = %iter.check721, %vec.epilog.iter.check723, %vec.epilog.middle.block735
  %indvars.iv492.ph = phi i64 [ 0, %iter.check721 ], [ %n.vec702, %vec.epilog.iter.check723 ], [ %n.vec726, %vec.epilog.middle.block735 ]
  %.0206390.ph = phi i32 [ 0, %iter.check721 ], [ %i.vk, %vec.epilog.iter.check723 ], [ %i.vs, %vec.epilog.middle.block735 ]
  br label %vec.epilog.scalar.ph722

vec.epilog.scalar.ph722:                          ; preds = %vec.epilog.scalar.ph722.preheader, %vec.epilog.scalar.ph722
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %vec.epilog.scalar.ph722 ], [ %indvars.iv492.ph, %vec.epilog.scalar.ph722.preheader ] ; 2 uses
  %.0206390 = phi i32 [ %.1207, %vec.epilog.scalar.ph722 ], [ %.0206390.ph, %vec.epilog.scalar.ph722.preheader ]
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv492
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !89
  %i.vw = fcmp ole float %i.vv, %.0208316
  %i.vx = zext i1 %i.vw to i32
  %.1207 = add nuw nsw i32 %.0206390, %i.vx       ; 2 uses
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %exitcond496.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count495
  br i1 %exitcond496.not, label %._crit_edge393, label %vec.epilog.scalar.ph722, !llvm.loop !99

._crit_edge393:                                   ; preds = %vec.epilog.scalar.ph722, %.preheader323
  %.0206.lcssa = phi i32 [ 0, %.preheader323 ], [ %.1207, %vec.epilog.scalar.ph722 ]
  %i.vy = load float, ptr %i.i, align 4, !tbaa !73
  %i.vz = fpext float %i.vy to double
  %i.wa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0213313, ptr noundef nonnull @.str.60, double noundef %i.vz, i32 noundef %.0206.lcssa) #17 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit325.thread, %._crit_edge393, %.loopexit325
  br i1 %.not, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.wb = load ptr, ptr @_ZL5order, align 8, !tbaa !66
  invoke void @qsort(ptr noundef %i.wb, i64 noundef %i.en, i64 noundef 8, ptr noundef nonnull @_ZL5ocompPKvS0_)
          to label %.preheader322 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader322:                                    ; preds = %bb.ct
  br i1 %i.de, label %.preheader319.lr.ph, label %.loopexit321

.preheader319.lr.ph:                              ; preds = %.preheader322
  %i.wc = load ptr, ptr @_ZL5order, align 8       ; 3 uses
  %.pre = load i32, ptr @_ZZ12gmx_trjorderiPPcE2na, align 4, !tbaa !9 ; 2 uses
  br i1 %i.ip, label %.preheader319.epil.preheader, label %.preheader319

.preheader319:                                    ; preds = %.preheader319.lr.ph, %._crit_edge397.1
  %i.wd = phi i32 [ %i.xl, %._crit_edge397.1 ], [ %.pre, %.preheader319.lr.ph ] ; 3 uses
  %indvars.iv497 = phi i64 [ %indvars.iv.next498.1, %._crit_edge397.1 ], [ 0, %.preheader319.lr.ph ] ; 4 uses
  %niter803 = phi i64 [ %niter803.next.1, %._crit_edge397.1 ], [ 0, %.preheader319.lr.ph ]
  %i.we = icmp sgt i32 %i.wd, 0
  br i1 %i.we, label %.lr.ph396, label %._crit_edge397

.lr.ph396:                                        ; preds = %.preheader319
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %indvars.iv497
  %i.wg = trunc nuw nsw i64 %indvars.iv497 to i32
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph396, %bb.cu
  %i.wh = phi i32 [ %i.wd, %.lr.ph396 ], [ %i.ws, %bb.cu ]
  %.5192395 = phi i32 [ 0, %.lr.ph396 ], [ %i.wr, %bb.cu ] ; 3 uses
  %i.wi = load i32, ptr %i.wf, align 4, !tbaa !87
  %i.wj = add nsw i32 %i.wi, %.5192395
  %i.wk = mul nsw i32 %i.wh, %i.wg
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [4 x i8], ptr %.0182, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !9
  %i.wo = add nsw i32 %i.wn, %.5192395
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.wp
  store i32 %i.wj, ptr %i.wq, align 4, !tbaa !9
  %i.wr = add nuw nsw i32 %.5192395, 1            ; 2 uses
  %i.ws = load i32, ptr @_ZZ12gmx_trjorderiPPcE2na, align 4, !tbaa !9 ; 3 uses
  %i.wt = icmp slt i32 %i.wr, %i.ws
  br i1 %i.wt, label %bb.cu, label %._crit_edge397, !llvm.loop !100

._crit_edge397:                                   ; preds = %bb.cu, %.preheader319
  %i.wu = phi i32 [ %i.wd, %.preheader319 ], [ %i.ws, %bb.cu ] ; 3 uses
  %i.wv = icmp sgt i32 %i.wu, 0
  br i1 %i.wv, label %.lr.ph396.1, label %._crit_edge397.1

.lr.ph396.1:                                      ; preds = %._crit_edge397
  %indvars.iv.next498 = or disjoint i64 %indvars.iv497, 1 ; 2 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %indvars.iv.next498
  %i.wx = trunc nuw nsw i64 %indvars.iv.next498 to i32
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph396.1
  %i.wy = phi i32 [ %i.wu, %.lr.ph396.1 ], [ %i.xj, %bb.cv ]
  %.5192395.1 = phi i32 [ 0, %.lr.ph396.1 ], [ %i.xi, %bb.cv ] ; 3 uses
  %i.wz = load i32, ptr %i.ww, align 4, !tbaa !87
  %i.xa = add nsw i32 %i.wz, %.5192395.1
  %i.xb = mul nsw i32 %i.wy, %i.wx
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %.0182, i64 %i.xc
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !9
  %i.xf = add nsw i32 %i.xe, %.5192395.1
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.xg
  store i32 %i.xa, ptr %i.xh, align 4, !tbaa !9
  %i.xi = add nuw nsw i32 %.5192395.1, 1          ; 2 uses
  %i.xj = load i32, ptr @_ZZ12gmx_trjorderiPPcE2na, align 4, !tbaa !9 ; 3 uses
  %i.xk = icmp slt i32 %i.xi, %i.xj
  br i1 %i.xk, label %bb.cv, label %._crit_edge397.1, !llvm.loop !100

._crit_edge397.1:                                 ; preds = %bb.cv, %._crit_edge397
  %i.xl = phi i32 [ %i.wu, %._crit_edge397 ], [ %i.xj, %bb.cv ] ; 2 uses
  %indvars.iv.next498.1 = add nuw nsw i64 %indvars.iv497, 2 ; 2 uses
  %niter803.next.1 = add i64 %niter803, 2         ; 2 uses
  %niter803.ncmp.1 = icmp eq i64 %niter803.next.1, %unroll_iter802
  br i1 %niter803.ncmp.1, label %._crit_edge399.unr-lcssa, label %.preheader319, !llvm.loop !101

._crit_edge399.unr-lcssa:                         ; preds = %._crit_edge397.1
  br i1 %lcmp.mod800.not, label %._crit_edge399, label %.preheader319.epil.preheader

.preheader319.epil.preheader:                     ; preds = %._crit_edge399.unr-lcssa, %.preheader319.lr.ph
  %.epil.init799 = phi i32 [ %.pre, %.preheader319.lr.ph ], [ %i.xl, %._crit_edge399.unr-lcssa ] ; 2 uses
  %indvars.iv497.epil.init = phi i64 [ 0, %.preheader319.lr.ph ], [ %indvars.iv.next498.1, %._crit_edge399.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod801)
  %i.xm = icmp sgt i32 %.epil.init799, 0
  br i1 %i.xm, label %.lr.ph396.epil, label %._crit_edge399

.lr.ph396.epil:                                   ; preds = %.preheader319.epil.preheader
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.wc, i64 %indvars.iv497.epil.init
  %i.xo = trunc nuw nsw i64 %indvars.iv497.epil.init to i32
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.lr.ph396.epil
  %i.xp = phi i32 [ %.epil.init799, %.lr.ph396.epil ], [ %i.ya, %bb.cw ]
  %.5192395.epil = phi i32 [ 0, %.lr.ph396.epil ], [ %i.xz, %bb.cw ] ; 3 uses
  %i.xq = load i32, ptr %i.xn, align 4, !tbaa !87
  %i.xr = add nsw i32 %i.xq, %.5192395.epil
  %i.xs = mul nsw i32 %i.xp, %i.xo
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds [4 x i8], ptr %.0182, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !9
  %i.xw = add nsw i32 %i.xv, %.5192395.epil
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.xx
  store i32 %i.xr, ptr %i.xy, align 4, !tbaa !9
  %i.xz = add nuw nsw i32 %.5192395.epil, 1       ; 2 uses
  %i.ya = load i32, ptr @_ZZ12gmx_trjorderiPPcE2na, align 4, !tbaa !9 ; 2 uses
  %i.yb = icmp slt i32 %i.xz, %i.ya
  br i1 %i.yb, label %bb.cw, label %._crit_edge399, !llvm.loop !100

._crit_edge399:                                   ; preds = %.preheader319.epil.preheader, %bb.cw, %._crit_edge399.unr-lcssa
  br i1 %brmerge407, label %.loopexit321, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge399
  %i.yc = load ptr, ptr @_ZL5order, align 8
  %i.yd = load ptr, ptr %i.ie, align 8
  %.pre512 = load i32, ptr @_ZZ12gmx_trjorderiPPcE2na, align 4, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge402
  %17 = phi i32 [ %.pre512, %.preheader.lr.ph ], [ %21, %._crit_edge402 ] ; 2 uses
  %indvars.iv507 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next508, %._crit_edge402 ] ; 2 uses
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %iter.check677, label %._crit_edge402

iter.check677:                                    ; preds = %.preheader
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %indvars.iv507 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !89
  %i.yh = call noundef float @sqrtf(float noundef %i.yg) #17 ; 3 uses
  %19 = load i32, ptr %i.ye, align 4, !tbaa !87
  %i.yi = load i32, ptr @_ZZ12gmx_trjorderiPPcE2na, align 4, !tbaa !9 ; 6 uses
  %i.yj = sext i32 %19 to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.yi, i32 1)
  %wide.trip.count505 = zext nneg i32 %smax to i64 ; 6 uses
  %invariant.gep631 = getelementptr [52 x i8], ptr %i.yd, i64 %i.yj ; 6 uses
  %min.iters.check652 = icmp slt i32 %i.yi, 4
  br i1 %min.iters.check652, label %vec.epilog.scalar.ph678.preheader, label %vector.main.loop.iter.check653

vector.main.loop.iter.check653:                   ; preds = %iter.check677
  %min.iters.check654 = icmp slt i32 %i.yi, 32
  br i1 %min.iters.check654, label %vec.epilog.ph681, label %vector.ph655

vector.ph655:                                     ; preds = %vector.main.loop.iter.check653
  %20 = and i64 %wide.trip.count505, 28
  %n.vec656 = and i64 %wide.trip.count505, 2147483616 ; 4 uses
  %broadcast.splatinsert657 = insertelement <8 x float> poison, float %i.yh, i64 0
  %broadcast.splat658 = shufflevector <8 x float> %broadcast.splatinsert657, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body659

vector.body659:                                   ; preds = %vector.body659, %vector.ph655
  %index660 = phi i64 [ 0, %vector.ph655 ], [ %index.next672, %vector.body659 ]
  %vec.ind661 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph655 ], [ %vec.ind.next673, %vector.body659 ] ; 5 uses
  %step.add662 = add nuw <8 x i64> %vec.ind661, splat (i64 8)
  %step.add.2663 = add nuw <8 x i64> %vec.ind661, splat (i64 16)
  %step.add.3664 = add nuw <8 x i64> %vec.ind661, splat (i64 24)
  %wide.gep = getelementptr [52 x i8], ptr %invariant.gep631, <8 x i64> %vec.ind661
  %wide.gep665.a = getelementptr [52 x i8], ptr %invariant.gep631, <8 x i64> %step.add662
  %wide.gep666.a = getelementptr [52 x i8], ptr %invariant.gep631, <8 x i64> %step.add.2663
  %wide.gep667.a = getelementptr [52 x i8], ptr %invariant.gep631, <8 x i64> %step.add.3664
  %wide.gep668.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.gep669.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep665.a, i64 20
  %wide.gep670.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep666.a, i64 20
  %wide.gep671 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep667.a, i64 20
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat658, <8 x ptr> align 4 %wide.gep668.a, <8 x i1> splat (i1 true)), !tbaa !102
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat658, <8 x ptr> align 4 %wide.gep669.a, <8 x i1> splat (i1 true)), !tbaa !102
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat658, <8 x ptr> align 4 %wide.gep670.a, <8 x i1> splat (i1 true)), !tbaa !102
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %broadcast.splat658, <8 x ptr> align 4 %wide.gep671, <8 x i1> splat (i1 true)), !tbaa !102
  %index.next672 = add nuw i64 %index660, 32      ; 2 uses
  %vec.ind.next673 = add nuw <8 x i64> %vec.ind661, splat (i64 32)
  %i.yk = icmp eq i64 %index.next672, %n.vec656
  br i1 %i.yk, label %middle.block674, label %vector.body659, !llvm.loop !105

middle.block674:                                  ; preds = %vector.body659
  %cmp.n675 = icmp eq i64 %n.vec656, %wide.trip.count505
  br i1 %cmp.n675, label %._crit_edge402, label %vec.epilog.iter.check679

vec.epilog.iter.check679:                         ; preds = %middle.block674
  %min.epilog.iters.check680 = icmp eq i64 %20, 0
  br i1 %min.epilog.iters.check680, label %vec.epilog.scalar.ph678.preheader, label %vec.epilog.ph681, !prof !70

vec.epilog.ph681:                                 ; preds = %vector.main.loop.iter.check653, %vec.epilog.iter.check679
  %vec.epilog.resume.val676 = phi i64 [ %n.vec656, %vec.epilog.iter.check679 ], [ 0, %vector.main.loop.iter.check653 ] ; 2 uses
  %n.vec682 = and i64 %wide.trip.count505, 2147483644 ; 3 uses
  %broadcast.splatinsert683 = insertelement <4 x float> poison, float %i.yh, i64 0
  %broadcast.splat684 = shufflevector <4 x float> %broadcast.splatinsert683, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert685 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val676, i64 0
  %broadcast.splat686 = shufflevector <4 x i64> %broadcast.splatinsert685, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction687 = or disjoint <4 x i64> %broadcast.splat686, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph681
  %index689 = phi i64 [ %vec.epilog.resume.val676, %vec.epilog.ph681 ], [ %index.next693, %vec.epilog.vector.body688 ]
  %vec.ind690 = phi <4 x i64> [ %induction687, %vec.epilog.ph681 ], [ %vec.ind.next694, %vec.epilog.vector.body688 ] ; 2 uses
  %wide.gep691.a = getelementptr [52 x i8], ptr %invariant.gep631, <4 x i64> %vec.ind690
  %wide.gep692 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep691.a, i64 20
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %broadcast.splat684, <4 x ptr> align 4 %wide.gep692, <4 x i1> splat (i1 true)), !tbaa !102
  %index.next693 = add nuw i64 %index689, 4       ; 2 uses
  %vec.ind.next694 = add nuw nsw <4 x i64> %vec.ind690, splat (i64 4)
  %i.yl = icmp eq i64 %index.next693, %n.vec682
  br i1 %i.yl, label %vec.epilog.middle.block695, label %vec.epilog.vector.body688, !llvm.loop !106

vec.epilog.middle.block695:                       ; preds = %vec.epilog.vector.body688
  %cmp.n696 = icmp eq i64 %n.vec682, %wide.trip.count505
  br i1 %cmp.n696, label %._crit_edge402, label %vec.epilog.scalar.ph678.preheader

vec.epilog.scalar.ph678.preheader:                ; preds = %iter.check677, %vec.epilog.iter.check679, %vec.epilog.middle.block695
  %indvars.iv502.ph = phi i64 [ 0, %iter.check677 ], [ %n.vec656, %vec.epilog.iter.check679 ], [ %n.vec682, %vec.epilog.middle.block695 ]
  br label %vec.epilog.scalar.ph678

vec.epilog.scalar.ph678:                          ; preds = %vec.epilog.scalar.ph678.preheader, %vec.epilog.scalar.ph678
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %vec.epilog.scalar.ph678 ], [ %indvars.iv502.ph, %vec.epilog.scalar.ph678.preheader ] ; 2 uses
  %gep632 = getelementptr [52 x i8], ptr %invariant.gep631, i64 %indvars.iv502
  %i.ym = getelementptr inbounds nuw i8, ptr %gep632, i64 20
  store float %i.yh, ptr %i.ym, align 4, !tbaa !102
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %wide.trip.count505
  br i1 %exitcond506.not, label %._crit_edge402, label %vec.epilog.scalar.ph678, !llvm.loop !107

._crit_edge402:                                   ; preds = %vec.epilog.scalar.ph678, %middle.block674, %vec.epilog.middle.block695, %.preheader
  %21 = phi i32 [ %17, %.preheader ], [ %i.yi, %middle.block674 ], [ %i.yi, %vec.epilog.middle.block695 ], [ %i.yi, %vec.epilog.scalar.ph678 ]
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next508, %wide.trip.count510
  br i1 %exitcond511.not, label %.loopexit321, label %.preheader, !llvm.loop !108

.loopexit321:                                     ; preds = %._crit_edge402, %.preheader322, %._crit_edge399
  %i.yn = load float, ptr %i.i, align 4, !tbaa !73
  %i.yo = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.yp = invoke noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef nonnull %.0212, i32 noundef %i.br, ptr noundef %i.er, ptr noundef nonnull %i.bc, i32 noundef 0, float noundef %i.yn, ptr noundef nonnull %i.h, ptr noundef %i.yo, ptr noundef null, ptr noundef null)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.cx:                                            ; preds = %bb.cs, %.loopexit321
  %i.yq = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.yr = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.ys = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.yt = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.yq, ptr noundef %i.yr, ptr noundef nonnull %i.i, ptr noundef %i.ys, ptr noundef nonnull %i.h)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.yt, label %bb.ce, label %bb.cz, !llvm.loop !111

bb.cz:                                            ; preds = %bb.cy
  %i.yu = load ptr, ptr %i.c, align 8, !tbaa !109
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.yu)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz
  br i1 %.not, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef nonnull %.0212)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.not233 = icmp eq ptr %.0213313, null
  br i1 %.not233, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef nonnull %.0213313)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dd, %bb.dc
  invoke void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef %i.hv)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %bb.de, %bb.b
  %i.yv = getelementptr inbounds nuw i8, ptr %5, i64 256 ; 2 uses
  %i.yw = load ptr, ptr %i.yv, align 16, !tbaa !112 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.yw, %i.yy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.df, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ze, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.yw, %bb.df ] ; 3 uses
  %i.yz = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.zb = icmp eq ptr %i.yz, %i.za
  br i1 %i.zb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.zc = load i64, ptr %i.za, align 8, !tbaa !29
  %i.zd = add i64 %i.zc, 1
  call void @_ZdlPvm(ptr noundef %i.yz, i64 noundef %i.zd) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ze = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ze, %i.yy
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !114

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.yv, align 16, !tbaa !112
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.df
  %i.zf = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.yw, %bb.df ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.zf, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.zg = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.zh = load ptr, ptr %i.zg, align 16, !tbaa !115
  %i.zi = ptrtoint ptr %i.zh to i64
  %i.zj = ptrtoint ptr %i.zf to i64
  %i.zk = sub i64 %i.zi, %i.zj
  call void @_ZdlPvm(ptr noundef nonnull %i.zf, i64 noundef %i.zk) #18
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.dg
  %i.zl = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !112 ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.zo = load ptr, ptr %i.zn, align 16, !tbaa !113 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.zm, %i.zo
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN8t_filenmD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.1 = phi ptr [ %i.zu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1 ], [ %i.zm, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %i.zp = load ptr, ptr %.05.i.i.i.i.1, align 8, !tbaa !26 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 16 ; 2 uses
  %i.zr = icmp eq ptr %i.zp, %i.zq
  br i1 %i.zr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1
  %i.zs = load i64, ptr %i.zq, align 8, !tbaa !29
  %i.zt = add i64 %i.zs, 1
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zt) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1
  %i.zu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 32 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.zu, %i.zo
  br i1 %.not.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !114

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.pr.i.i.1 = load ptr, ptr %i.zl, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, %_ZN8t_filenmD2Ev.exit
  %i.zv = phi ptr [ %.pr.i.i.1, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1 ], [ %i.zm, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.1 = icmp eq ptr %i.zv, null
  br i1 %.not.i.i1.i.i.1, label %_ZN8t_filenmD2Ev.exit.1, label %bb.dh

bb.dh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.zw = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !115
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = ptrtoint ptr %i.zv to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  call void @_ZdlPvm(ptr noundef nonnull %i.zv, i64 noundef %i.aaa) #18
  br label %_ZN8t_filenmD2Ev.exit.1

_ZN8t_filenmD2Ev.exit.1:                          ; preds = %bb.dh, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.aab = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 16, !tbaa !112 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i.i.i.2 = icmp eq ptr %i.aac, %i.aae
  br i1 %.not4.i.i.i.i.2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %_ZN8t_filenmD2Ev.exit.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2
  %.05.i.i.i.i.2 = phi ptr [ %i.aak, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2 ], [ %i.aac, %_ZN8t_filenmD2Ev.exit.1 ] ; 3 uses
  %i.aaf = load ptr, ptr %.05.i.i.i.i.2, align 8, !tbaa !26 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 16 ; 2 uses
  %i.aah = icmp eq ptr %i.aaf, %i.aag
  br i1 %i.aah, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2
  %i.aai = load i64, ptr %i.aag, align 8, !tbaa !29
  %i.aaj = add i64 %i.aai, 1
  call void @_ZdlPvm(ptr noundef %i.aaf, i64 noundef %i.aaj) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2
  %i.aak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 32 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq ptr %i.aak, %i.aae
  br i1 %.not.i.i.i.i.2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2, label %.lr.ph.i.i.i.i.2, !llvm.loop !114

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2
  %.pr.i.i.2 = load ptr, ptr %i.aab, align 16, !tbaa !112
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2, %_ZN8t_filenmD2Ev.exit.1
  %i.aal = phi ptr [ %.pr.i.i.2, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2 ], [ %i.aac, %_ZN8t_filenmD2Ev.exit.1 ] ; 3 uses
  %.not.i.i1.i.i.2 = icmp eq ptr %i.aal, null
  br i1 %.not.i.i1.i.i.2, label %_ZN8t_filenmD2Ev.exit.2, label %bb.di

bb.di:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2
  %i.aam = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.aan = load ptr, ptr %i.aam, align 16, !tbaa !115
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = ptrtoint ptr %i.aal to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  call void @_ZdlPvm(ptr noundef nonnull %i.aal, i64 noundef %i.aaq) #18
  br label %_ZN8t_filenmD2Ev.exit.2

_ZN8t_filenmD2Ev.exit.2:                          ; preds = %bb.di, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2
  %i.aar = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !112 ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.aau = load ptr, ptr %i.aat, align 16, !tbaa !113 ; 2 uses
  %.not4.i.i.i.i.3 = icmp eq ptr %i.aas, %i.aau
  br i1 %.not4.i.i.i.i.3, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.3, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %_ZN8t_filenmD2Ev.exit.2, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.3
  %.05.i.i.i.i.3 = phi ptr [ %i.aba, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.3 ], [ %i.aas, %_ZN8t_filenmD2Ev.exit.2 ] ; 3 uses
  %i.aav = load ptr, ptr %.05.i.i.i.i.3, align 8, !tbaa !26 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.3, i64 16 ; 2 uses
  %i.aax = icmp eq ptr %i.aav, %i.aaw
  br i1 %i.aax, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.3
  %i.aay = load i64, ptr %i.aaw, align 8, !tbaa !29
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aaz) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.3

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.3: ; preds = %.lr.ph.i.i.i.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.3
  %i.aba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.3, i64 32 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %i.aba, %i.aau
  br i1 %.not.i.i.i.i.3, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.3, label %.lr.ph.i.i.i.i.3, !llvm.loop !114

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.3: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.3
  %.pr.i.i.3 = load ptr, ptr %i.aar, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.3
end_hunk_0
begin_hunk_1_@_ZNSt10filesystem7__cxx114pathD2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !29
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(68) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(68) %1) #17 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.b, ptr %i.a, align 8, !tbaa !116
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !26
  %i.f = load i64, ptr %i.a, align 8, !tbaa !116
  store i64 %i.f, ptr %i.c, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.h, ptr %i.g, align 1, !tbaa !29
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !75
  %i.k = load ptr, ptr %0, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #17
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !29
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z6fn2ftpPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare noundef ptr @_Z8open_trxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZL5ocompPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !89
  %i.e = fcmp olt float %i.b, %i.d
  %. = select i1 %i.e, i32 -1, i32 1
  ret i32 %.
}

declare noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9close_trxP11t_trxstatus(ptr noundef) local_unnamed_addr #3

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef) local_unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #12

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"_ZTS8t_filenm", !6, i64 0, !12, i64 8, !12, i64 16, !14, i64 24, !15, i64 32}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!20 = !{!11, !12, i64 8}
!21 = !{!11, !12, i64 16}
!22 = !{!11, !14, i64 24}
!23 = !{!12, !12, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !13, i64 0}
!26 = !{!27, !12, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !14, i64 8, !7, i64 16}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 float", !13, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"bool", !7, i64 0}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 int", !13, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS16gmx_output_env_t", !13, i64 0}
!40 = !{!41, !6, i64 2344}
!41 = !{!"_ZTS10t_topology", !42, i64 0, !44, i64 8, !48, i64 2344, !54, i64 2416, !33, i64 2440, !55, i64 2448}
!42 = !{!"p2 omnipotent char", !43, i64 0}
!43 = !{!"any p2 pointer", !13, i64 0}
!44 = !{!"_ZTS6t_idef", !6, i64 0, !6, i64 4, !13, i64 8, !45, i64 16, !46, i64 24, !45, i64 32, !45, i64 40, !47, i64 48, !6, i64 2328}
!45 = !{!"p1 _ZTS9t_iparams", !13, i64 0}
!46 = !{!"float", !7, i64 0}
!47 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !7, i64 0}
!48 = !{!"_ZTS7t_atoms", !6, i64 0, !49, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !6, i64 40, !52, i64 48, !53, i64 56, !33, i64 64, !33, i64 65, !33, i64 66, !33, i64 67, !33, i64 68}
!49 = !{!"p1 _ZTS6t_atom", !13, i64 0}
!50 = !{!"p3 omnipotent char", !51, i64 0}
!51 = !{!"any p3 pointer", !43, i64 0}
!52 = !{!"p1 _ZTS9t_resinfo", !13, i64 0}
!53 = !{!"p1 _ZTS9t_pdbinfo", !13, i64 0}
!54 = !{!"_ZTS7t_block", !6, i64 0, !37, i64 8, !6, i64 16}
!55 = !{!"_ZTS8t_symtab", !6, i64 0, !56, i64 8}
!56 = !{!"p1 _ZTS8t_symbuf", !13, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!41, !49, i64 2352}
!60 = !{!61, !6, i64 24}
!61 = !{!"_ZTS6t_atom", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !62, i64 16, !62, i64 18, !63, i64 20, !6, i64 24, !6, i64 28, !7, i64 32}
!62 = !{!"short", !7, i64 0}
!63 = !{!"_ZTS12ParticleType", !7, i64 0}
!64 = distinct !{!64, !58}
!65 = distinct !{!65, !58}
!66 = !{!13, !13, i64 0}
!67 = distinct !{!67, !58, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 28}
!71 = distinct !{!71, !58, !68, !69}
!72 = distinct !{!72, !58, !69, !68}
!73 = !{!46, !46, i64 0}
!74 = !{!28, !12, i64 0}
!75 = !{!27, !14, i64 8}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!78 = !{!53, !53, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"_ZTS7PbcType", !7, i64 0}
!81 = !{!61, !46, i64 0}
!82 = distinct !{!82, !58}
!83 = distinct !{!83, !58}
!84 = distinct !{!84, !58}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!88, !6, i64 0}
!88 = !{!"_ZTS7t_order", !6, i64 0, !46, i64 4}
!89 = !{!88, !46, i64 4}
!90 = distinct !{!90, !58}
!91 = distinct !{!91, !58}
!92 = distinct !{!92, !58}
!93 = distinct !{!93, !58}
!94 = distinct !{!94, !58}
!95 = distinct !{!95, !58}
!96 = distinct !{!96, !86}
!97 = distinct !{!97, !58, !68, !69}
!98 = distinct !{!98, !58, !68, !69}
!99 = distinct !{!99, !58, !69, !68}
!100 = distinct !{!100, !58}
!101 = distinct !{!101, !58}
!102 = !{!103, !46, i64 20}
!103 = !{!"_ZTS9t_pdbinfo", !104, i64 0, !6, i64 4, !7, i64 8, !7, i64 9, !46, i64 16, !46, i64 20, !33, i64 24, !7, i64 28}
!104 = !{!"_ZTS13PdbRecordType", !7, i64 0}
!105 = distinct !{!105, !58, !68, !69}
!106 = distinct !{!106, !58, !68, !69}
!107 = distinct !{!107, !58, !69, !68}
!108 = distinct !{!108, !58}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 _ZTS11t_trxstatus", !13, i64 0}
!111 = distinct !{!111, !58}
!112 = !{!18, !19, i64 0}
!113 = !{!18, !19, i64 8}
!114 = distinct !{!114, !58}
!115 = !{!18, !19, i64 16}
!116 = !{!14, !14, i64 0}
end_hunk_1
