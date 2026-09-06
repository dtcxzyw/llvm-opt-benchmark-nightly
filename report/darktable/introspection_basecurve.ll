Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 47
begin_hunk_0_@process_fusion:bb.a
  %strided.vec497 = shufflevector <16 x float> %wide.vec493, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.vc = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec494, %strided.vec
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.tm, <4 x i64> %vec.ind ; 2 uses
  %i.vd = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec498 = load <16 x float>, ptr %i.vd, align 4, !tbaa !13, !alias.scope !261, !noalias !262 ; 3 uses
  %strided.vec499 = shufflevector <16 x float> %wide.vec498, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec500 = shufflevector <16 x float> %wide.vec498, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec501 = shufflevector <16 x float> %wide.vec498, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.ve = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec499, %i.vc
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ve, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !261, !noalias !262
  %wide.vec502 = load <16 x float>, ptr %i.vb, align 4, !tbaa !13, !alias.scope !260
  %strided.vec503 = shufflevector <16 x float> %wide.vec502, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.vf = or disjoint <4 x i64> %vec.ind, splat (i64 1)
  %i.vg = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec495, %strided.vec503
  %wide.gep504 = getelementptr inbounds nuw [4 x i8], ptr %i.tm, <4 x i64> %i.vf
  %i.vh = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec500, %i.vg
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.vh, <4 x ptr> align 4 %wide.gep504, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !261, !noalias !262
  %i.vi = or disjoint <4 x i64> %vec.ind, splat (i64 2)
  %i.vj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec496, %strided.vec497
  %wide.gep505 = getelementptr inbounds nuw [4 x i8], ptr %i.tm, <4 x i64> %i.vi
  %i.vk = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec501, %i.vj
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.vk, <4 x ptr> align 4 %wide.gep505, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !261, !noalias !262
  %i.vl = or disjoint <4 x i64> %vec.ind, splat (i64 3) ; 2 uses
  %i.vm = extractelement <4 x i64> %i.vl, i64 0
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.vm
  %wide.vec506 = load <16 x float>, ptr %i.vn, align 4, !tbaa !13, !alias.scope !263
  %strided.vec507 = shufflevector <16 x float> %wide.vec506, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep508 = getelementptr inbounds nuw [4 x i8], ptr %i.tk, <4 x i64> %i.vl ; 2 uses
  %i.vo = extractelement <4 x ptr> %wide.gep508, i64 0
  %wide.vec509 = load <16 x float>, ptr %i.vo, align 4, !tbaa !13, !alias.scope !264, !noalias !265
  %strided.vec510 = shufflevector <16 x float> %wide.vec509, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.vp = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec510, %strided.vec507
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.vp, <4 x ptr> align 4 %wide.gep508, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !264, !noalias !265
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.vq = icmp eq i64 %index.next, %n.vec
  br i1 %i.vq, label %.preheader314.us.preheader, label %vector.body, !llvm.loop !227

.preheader314.us.preheader:                       ; preds = %vector.body, %vector.memcheck, %.lr.ph343.thread
  %.0260341.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph343.thread ], [ %i.uz, %vector.body ]
  br label %.preheader314.us

.preheader314.us:                                 ; preds = %.preheader314.us.preheader, %.preheader314.us
  %.0260341.us = phi i64 [ %i.wv, %.preheader314.us ], [ %.0260341.us.ph, %.preheader314.us.preheader ] ; 6 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %.0260341.us ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 12 ; 3 uses
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !13
  %i.vu = load float, ptr %i.vr, align 4, !tbaa !13
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vu, %i.vt
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %.0260341.us ; 2 uses
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !13
  %i.vy = fadd reassoc nsz arcp contract afn float %i.vx, %i.vv
  store float %i.vy, ptr %i.vw, align 4, !tbaa !13
  %i.vz = load float, ptr %i.vs, align 4, !tbaa !13
  %i.wa = or disjoint i64 %.0260341.us, 1         ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.wa
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !13
  %i.wd = fmul reassoc nsz arcp contract afn float %i.wc, %i.vz
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.wa ; 2 uses
  %i.wf = load float, ptr %i.we, align 4, !tbaa !13
  %i.wg = fadd reassoc nsz arcp contract afn float %i.wf, %i.wd
  store float %i.wg, ptr %i.we, align 4, !tbaa !13
  %i.wh = load float, ptr %i.vs, align 4, !tbaa !13
  %i.wi = or disjoint i64 %.0260341.us, 2         ; 2 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.wi
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !13
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wk, %i.wh
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.wi ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !13
  %i.wo = fadd reassoc nsz arcp contract afn float %i.wn, %i.wl
  store float %i.wo, ptr %i.wm, align 4, !tbaa !13
  %i.wp = or disjoint i64 %.0260341.us, 3         ; 2 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.wp
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !13
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.wp ; 2 uses
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !13
  %i.wu = fadd reassoc nsz arcp contract afn float %i.wt, %i.wr
  store float %i.wu, ptr %i.ws, align 4, !tbaa !13
  %i.wv = add nuw i64 %.0260341.us, 4             ; 2 uses
  %i.ww = icmp ult i64 %i.wv, %i.tg
  br i1 %i.ww, label %.preheader314.us, label %._crit_edge344, !llvm.loop !228

._crit_edge344:                                   ; preds = %.preheader316, %.preheader314.us, %.thread452, %.loopexit457
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.pz, label %.preheader318, label %bb.ag

.preheader316:                                    ; preds = %.preheader316.preheader, %.preheader316
  %.0260341 = phi i64 [ %i.yk, %.preheader316 ], [ %.0260341.ph, %.preheader316.preheader ] ; 7 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.0260341 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 12 ; 3 uses
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !13
  %i.xa = load float, ptr %i.wx, align 4, !tbaa !13
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0260341
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !13
  %i.xd = fsub reassoc nsz arcp contract afn float %i.xa, %i.xc
  %i.xe = fmul reassoc nsz arcp contract afn float %i.xd, %i.wz
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %.0260341 ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !13
  %i.xh = fadd reassoc nsz arcp contract afn float %i.xg, %i.xe
  store float %i.xh, ptr %i.xf, align 4, !tbaa !13
  %i.xi = load float, ptr %i.wy, align 4, !tbaa !13
  %i.xj = or disjoint i64 %.0260341, 1            ; 3 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.xj
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !13
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xj
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !13
  %i.xo = fsub reassoc nsz arcp contract afn float %i.xl, %i.xn
  %i.xp = fmul reassoc nsz arcp contract afn float %i.xo, %i.xi
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.xj ; 2 uses
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !13
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xr, %i.xp
  store float %i.xs, ptr %i.xq, align 4, !tbaa !13
  %i.xt = load float, ptr %i.wy, align 4, !tbaa !13
  %i.xu = or disjoint i64 %.0260341, 2            ; 3 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.xu
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !13
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xu
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !13
  %i.xz = fsub reassoc nsz arcp contract afn float %i.xw, %i.xy
  %i.ya = fmul reassoc nsz arcp contract afn float %i.xz, %i.xt
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.xu ; 2 uses
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !13
  %i.yd = fadd reassoc nsz arcp contract afn float %i.yc, %i.ya
  store float %i.yd, ptr %i.yb, align 4, !tbaa !13
  %i.ye = or disjoint i64 %.0260341, 3            ; 2 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.ye
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !13
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.ye ; 2 uses
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !13
  %i.yj = fadd reassoc nsz arcp contract afn float %i.yi, %i.yg
  store float %i.yj, ptr %i.yh, align 4, !tbaa !13
  %i.yk = add nuw i64 %.0260341, 4                ; 2 uses
  %i.yl = icmp ult i64 %i.yk, %i.tc
  br i1 %i.yl, label %.preheader316, label %._crit_edge344, !llvm.loop !229

.preheader313:                                    ; preds = %._crit_edge350, %.loopexit311
  %indvar762 = phi i64 [ 0, %._crit_edge350 ], [ %indvar.next763, %.loopexit311 ] ; 2 uses
  %indvars.iv403 = phi i64 [ %.pre-phi416, %._crit_edge350 ], [ %indvars.iv.next404, %.loopexit311 ] ; 6 uses
  %i.ym = trunc nuw i64 %indvars.iv403 to i32     ; 2 uses
  %i.yn = icmp sgt i32 %i.ym, 0                   ; 2 uses
  br i1 %i.yn, label %.lr.ph354.preheader, label %.preheader312

.lr.ph354.preheader:                              ; preds = %.preheader313
  %xtraiter764 = and i64 %indvars.iv403, 7        ; 3 uses
  %i.yo = sub i64 %indvar762, %.pre-phi416
  %i.yp = icmp ugt i64 %i.yo, -8
  br i1 %i.yp, label %.lr.ph354.epil.preheader, label %.lr.ph354.preheader.new

.lr.ph354.preheader.new:                          ; preds = %.lr.ph354.preheader
  %unroll_iter771 = and i64 %indvars.iv403, 2147483640
  br label %.lr.ph354

.preheader:                                       ; preds = %.loopexit311
  %i.yq = shl nsw i64 %i.w, 2
  %i.yr = mul i64 %i.yq, %i.y                     ; 4 uses
  %.not373 = icmp eq i64 %i.yr, 0
  br i1 %.not373, label %.loopexit, label %.lr.ph367

.lr.ph367:                                        ; preds = %.preheader
  %i.ys = load ptr, ptr %i.l, align 8, !tbaa !126 ; 6 uses
  %i.yt = add i64 %i.yr, -4                       ; 2 uses
  %i.yu = lshr exact i64 %i.yt, 2
  %i.yv = add nuw nsw i64 %i.yu, 1                ; 2 uses
  %min.iters.check736 = icmp ult i64 %i.yt, 32
  br i1 %min.iters.check736, label %scalar.ph735.preheader, label %vector.memcheck723

scalar.ph735.preheader:                           ; preds = %vector.body739, %vector.memcheck723, %.lr.ph367
  %.0251366.ph = phi i64 [ 0, %vector.memcheck723 ], [ 0, %.lr.ph367 ], [ %i.zb, %vector.body739 ]
  br label %scalar.ph735

vector.memcheck723:                               ; preds = %.lr.ph367
  %i.yw = shl i64 %i.yr, 2                        ; 3 uses
  %scevgep724 = getelementptr i8, ptr %3, i64 %i.yw ; 2 uses
  %i.yx = getelementptr i8, ptr %i.ys, i64 %i.yw
  %scevgep725 = getelementptr i8, ptr %i.yx, i64 -4
  %scevgep726 = getelementptr i8, ptr %2, i64 12
  %scevgep727 = getelementptr i8, ptr %2, i64 %i.yw
  %bound0728 = icmp ult ptr %3, %scevgep725
  %bound1729 = icmp ult ptr %i.ys, %scevgep724
  %found.conflict730 = and i1 %bound0728, %bound1729
  %bound0731 = icmp ult ptr %3, %scevgep727
  %bound1732 = icmp ult ptr %scevgep726, %scevgep724
  %found.conflict733 = and i1 %bound0731, %bound1732
  %conflict.rdx734 = or i1 %found.conflict730, %found.conflict733
  br i1 %conflict.rdx734, label %scalar.ph735.preheader, label %vector.ph737

vector.ph737:                                     ; preds = %vector.memcheck723
  %i.yy = and i64 %i.yv, 3                        ; 2 uses
  %i.yz = icmp eq i64 %i.yy, 0
  %i.za = select i1 %i.yz, i64 4, i64 %i.yy
  %n.vec738 = sub nsw i64 %i.yv, %i.za            ; 2 uses
  %i.zb = shl i64 %n.vec738, 2
  br label %vector.body739

vector.body739:                                   ; preds = %vector.body739, %vector.ph737
  %index740 = phi i64 [ 0, %vector.ph737 ], [ %index.next748, %vector.body739 ] ; 2 uses
  %i.zc = shl nuw i64 %index740, 2                ; 3 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %i.zc
  %wide.vec741 = load <16 x float>, ptr %i.zd, align 4, !tbaa !13, !alias.scope !266 ; 2 uses
  %strided.vec744 = shufflevector <16 x float> %wide.vec741, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zc
  %i.zf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %strided.vec744, <4 x float> zeroinitializer)
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zc
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 12
  %wide.vec745 = load <16 x float>, ptr %i.zh, align 4, !tbaa !13, !alias.scope !267
  %strided.vec746 = shufflevector <16 x float> %wide.vec745, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %6 = shufflevector <16 x float> %wide.vec741, <16 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.zi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %6, <8 x float> zeroinitializer)
  %i.zj = shufflevector <4 x float> %i.zf, <4 x float> %strided.vec746, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec747 = shufflevector <8 x float> %i.zi, <8 x float> %i.zj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec747, ptr %i.ze, align 4, !tbaa !13, !alias.scope !268, !noalias !269
  %index.next748 = add nuw i64 %index740, 4       ; 2 uses
  %i.zk = icmp eq i64 %index.next748, %n.vec738
  br i1 %i.zk, label %scalar.ph735.preheader, label %vector.body739, !llvm.loop !234

.preheader312.loopexit.unr-lcssa:                 ; preds = %.lr.ph354
  %lcmp.mod768.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod768.not, label %.preheader312.loopexit, label %.lr.ph354.epil.preheader

.lr.ph354.epil.preheader:                         ; preds = %.preheader312.loopexit.unr-lcssa, %.lr.ph354.preheader
  %.epil.init767 = phi <2 x i32> [ %i.fz, %.lr.ph354.preheader ], [ %i.aac, %.preheader312.loopexit.unr-lcssa ]
  %lcmp.mod770 = icmp ne i64 %xtraiter764, 0
  tail call void @llvm.assume(i1 %lcmp.mod770)
  br label %.lr.ph354.epil

.lr.ph354.epil:                                   ; preds = %.lr.ph354.epil, %.lr.ph354.epil.preheader
  %i.zl = phi <2 x i32> [ %i.zm, %.lr.ph354.epil ], [ %.epil.init767, %.lr.ph354.epil.preheader ]
  %epil.iter765 = phi i64 [ %epil.iter765.next, %.lr.ph354.epil ], [ 0, %.lr.ph354.epil.preheader ]
  %i.zm = sdiv <2 x i32> %i.zl, splat (i32 2)     ; 2 uses
  %epil.iter765.next = add i64 %epil.iter765, 1   ; 2 uses
  %epil.iter765.cmp.not = icmp eq i64 %epil.iter765.next, %xtraiter764
  br i1 %epil.iter765.cmp.not, label %.preheader312.loopexit, label %.lr.ph354.epil, !llvm.loop !235

.preheader312.loopexit:                           ; preds = %.lr.ph354.epil, %.preheader312.loopexit.unr-lcssa
  %.lcssa = phi <2 x i32> [ %i.aac, %.preheader312.loopexit.unr-lcssa ], [ %i.zm, %.lr.ph354.epil ]
  %i.zn = add nsw <2 x i32> %.lcssa, splat (i32 1) ; 2 uses
  %i.zo = sext <2 x i32> %i.zn to <2 x i64>
  br label %.preheader312

.preheader312:                                    ; preds = %.preheader312.loopexit, %.preheader313
  %i.zp = phi <2 x i32> [ %i.zn, %.preheader312.loopexit ], [ %i.j, %.preheader313 ]
  %i.zq = phi <2 x i64> [ %i.zo, %.preheader312.loopexit ], [ %i.v, %.preheader313 ] ; 3 uses
  %i.zr = extractelement <2 x i64> %i.zq, i64 0   ; 10 uses
  %i.zs = shl nsw i64 %i.zr, 2
  %i.zt = extractelement <2 x i64> %i.zq, i64 1   ; 4 uses
  %i.zu = mul i64 %i.zs, %i.zt                    ; 5 uses
  %.not371 = icmp eq i64 %i.zu, 0                 ; 2 uses
  br i1 %.not371, label %._crit_edge360, label %.lr.ph359

.lr.ph359:                                        ; preds = %.preheader312
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv403
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !126 ; 3 uses
  %i.zx = add i64 %i.zu, -4                       ; 3 uses
  %i.zy = lshr exact i64 %i.zx, 2
  %i.zz = add nuw nsw i64 %i.zy, 1                ; 2 uses
  %i.aaa = icmp eq i64 %i.zx, 0
  br i1 %i.aaa, label %.epil.preheader, label %.lr.ph359.new

.lr.ph359.new:                                    ; preds = %.lr.ph359
  %unroll_iter777 = and i64 %i.zz, 9223372036854775806
  br label %bb.ai

.lr.ph354:                                        ; preds = %.lr.ph354, %.lr.ph354.preheader.new
  %i.aab = phi <2 x i32> [ %i.fz, %.lr.ph354.preheader.new ], [ %i.aac, %.lr.ph354 ]
  %niter772 = phi i64 [ 0, %.lr.ph354.preheader.new ], [ %niter772.next.7, %.lr.ph354 ]
  %i.aac = sdiv <2 x i32> %i.aab, splat (i32 256) ; 3 uses
  %niter772.next.7 = add i64 %niter772, 8         ; 2 uses
  %niter772.ncmp.7 = icmp eq i64 %niter772.next.7, %unroll_iter771
  br i1 %niter772.ncmp.7, label %.preheader312.loopexit.unr-lcssa, label %.lr.ph354

._crit_edge360.loopexit.unr-lcssa:                ; preds = %.loopexit310.1
  %i.aad = and i64 %i.zx, 4
  %lcmp.mod775.not.not = icmp eq i64 %i.aad, 0
  br i1 %lcmp.mod775.not.not, label %.epil.preheader, label %._crit_edge360

.epil.preheader:                                  ; preds = %._crit_edge360.loopexit.unr-lcssa, %.lr.ph359
  %.0255358.epil.init = phi i64 [ 0, %.lr.ph359 ], [ %i.abn, %._crit_edge360.loopexit.unr-lcssa ]
  %lcmp.mod776 = trunc i64 %i.zz to i1
  tail call void @llvm.assume(i1 %lcmp.mod776)
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %.0255358.epil.init ; 4 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 12
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !13 ; 3 uses
  %i.aah = fcmp reassoc nsz arcp contract afn ogt float %i.aag, f0x322BCC77
  br i1 %i.aah, label %.preheader309.epil, label %._crit_edge360

.preheader309.epil:                               ; preds = %.epil.preheader
  %i.aai = load <2 x float>, ptr %i.aae, align 4, !tbaa !13
  %i.aaj = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.aak = shufflevector <2 x float> %i.aaj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aal = fdiv reassoc nsz arcp contract afn <2 x float> %i.aai, %i.aak
  store <2 x float> %i.aal, ptr %i.aae, align 4, !tbaa !13
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aae, i64 8 ; 2 uses
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !13
  %i.aao = fdiv reassoc nsz arcp contract afn float %i.aan, %i.aag
  store float %i.aao, ptr %i.aam, align 4, !tbaa !13
  br label %._crit_edge360

._crit_edge360:                                   ; preds = %._crit_edge360.loopexit.unr-lcssa, %.preheader309.epil, %.epil.preheader, %.preheader312
  %i.aap = icmp sgt i32 %.pre-phi414, %i.ym
  br i1 %i.aap, label %bb.aj, label %.loopexit311

bb.ai:                                            ; preds = %.loopexit310.1, %.lr.ph359.new
  %.0255358 = phi i64 [ 0, %.lr.ph359.new ], [ %i.abn, %.loopexit310.1 ] ; 3 uses
  %niter778 = phi i64 [ 0, %.lr.ph359.new ], [ %niter778.next.1, %.loopexit310.1 ]
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %.0255358 ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !13 ; 3 uses
  %i.aat = fcmp reassoc nsz arcp contract afn ogt float %i.aas, f0x322BCC77
  br i1 %i.aat, label %.preheader309, label %.loopexit310

.preheader309:                                    ; preds = %bb.ai
  %i.aau = load <2 x float>, ptr %i.aaq, align 4, !tbaa !13
  %i.aav = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.aaw = shufflevector <2 x float> %i.aav, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aax = fdiv reassoc nsz arcp contract afn <2 x float> %i.aau, %i.aaw
  store <2 x float> %i.aax, ptr %i.aaq, align 4, !tbaa !13
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8 ; 2 uses
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !13
  %i.aba = fdiv reassoc nsz arcp contract afn float %i.aaz, %i.aas
  store float %i.aba, ptr %i.aay, align 4, !tbaa !13
  br label %.loopexit310

.loopexit310:                                     ; preds = %.preheader309, %bb.ai
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %.0255358 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 28
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !13 ; 3 uses
  %i.abe = fcmp reassoc nsz arcp contract afn ogt float %i.abd, f0x322BCC77
  br i1 %i.abe, label %.preheader309.1, label %.loopexit310.1

.preheader309.1:                                  ; preds = %.loopexit310
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 16 ; 2 uses
  %i.abg = load <2 x float>, ptr %i.abf, align 4, !tbaa !13
  %i.abh = insertelement <2 x float> poison, float %i.abd, i64 0
  %i.abi = shufflevector <2 x float> %i.abh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abj = fdiv reassoc nsz arcp contract afn <2 x float> %i.abg, %i.abi
  store <2 x float> %i.abj, ptr %i.abf, align 4, !tbaa !13
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abb, i64 24 ; 2 uses
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !13
  %i.abm = fdiv reassoc nsz arcp contract afn float %i.abl, %i.abd
  store float %i.abm, ptr %i.abk, align 4, !tbaa !13
  br label %.loopexit310.1

.loopexit310.1:                                   ; preds = %.preheader309.1, %.loopexit310
  %i.abn = add nuw i64 %.0255358, 8               ; 2 uses
  %niter778.next.1 = add i64 %niter778, 2         ; 2 uses
  %niter778.ncmp.1.not = icmp eq i64 %niter778.next.1, %unroll_iter777
  br i1 %niter778.ncmp.1.not, label %._crit_edge360.loopexit.unr-lcssa, label %bb.ai

bb.aj:                                            ; preds = %._crit_edge360
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv403 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !126 ; 4 uses
  %i.abr = add nsw i64 %i.zr, 2305843009213693951
  %i.abs = lshr i64 %i.abr, 1                     ; 2 uses
  %i.abt = add nuw nsw i64 %i.abs, 1
  tail call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef range(i64 -2147483648, 2147483648) %i.zr, i64 noundef range(i64 -2147483648, 2147483648) %i.zt, i64 noundef 4) #26
  %i.abu = icmp ne <2 x i32> %i.zp, zeroinitializer ; 2 uses
  %i.abv = extractelement <2 x i1> %i.abu, i64 0
  %i.abw = extractelement <2 x i1> %i.abu, i64 1
  %or.cond.i294 = and i1 %i.abv, %i.abw
  br i1 %or.cond.i294, label %.preheader32.i295.preheader, label %gauss_expand.exit304

.preheader32.i295.preheader:                      ; preds = %bb.aj
  %i.abx = shl nsw i64 %i.zr, 5
  %i.aby = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.zq, <2 x i64> splat (i64 2))
  %i.abz = add <2 x i64> %i.aby, splat (i64 -1)   ; 2 uses
  %i.aca = extractelement <2 x i64> %i.abz, i64 1
  %i.acb = lshr i64 %i.aca, 1                     ; 2 uses
  %i.acc = mul i64 %i.abx, %i.acb
  %i.acd = extractelement <2 x i64> %i.abz, i64 0
  %i.ace = lshr i64 %i.acd, 1                     ; 2 uses
  %i.acf = shl i64 %i.ace, 5
  %i.acg = getelementptr i8, ptr %scevgep689, i64 %i.acc
  %scevgep692 = getelementptr i8, ptr %i.acg, i64 %i.acf
  %scevgep693 = getelementptr i8, ptr %i.abq, i64 16
  %i.ach = shl i64 %i.abs, 4                      ; 2 uses
  %i.aci = add nsw i64 %i.ach, 16
  %i.acj = mul i64 %i.acb, %i.aci
  %i.ack = shl i64 %i.ace, 4
  %i.acl = getelementptr i8, ptr %scevgep693, i64 %i.acj
  %scevgep694 = getelementptr i8, ptr %i.acl, i64 %i.ack
  %i.acm = tail call i64 @llvm.umax.i64(i64 %i.zr, i64 2)
  %i.acn = add i64 %i.acm, -1
  %i.aco = lshr i64 %i.acn, 1
  %i.acp = add nuw i64 %i.aco, 1                  ; 2 uses
  %min.iters.check701 = icmp ult i64 %i.zr, 7
  %bound0695 = icmp ult ptr %3, %scevgep694
  %bound1696 = icmp ult ptr %i.abq, %scevgep692
  %found.conflict697 = and i1 %bound0695, %bound1696
  %stride.check698 = icmp slt i64 %i.zr, 0
  %i.acq = or i1 %found.conflict697, %stride.check698
  %stride.check699 = icmp slt i64 %i.ach, -16
  %i.acr = or i1 %i.acq, %stride.check699
  %n.vec703 = and i64 %i.acp, -4                  ; 3 uses
  %i.acs = shl i64 %n.vec703, 1
  %cmp.n721 = icmp eq i64 %i.acp, %n.vec703
  br label %.preheader32.i295

.preheader32.i295:                                ; preds = %.preheader32.i295.preheader, %._crit_edge.i302
  %indvars.iv38.i296 = phi i64 [ %indvars.iv.next39.i303, %._crit_edge.i302 ], [ 0, %.preheader32.i295.preheader ] ; 3 uses
  %i.act = lshr exact i64 %indvars.iv38.i296, 1
  %i.acu = mul i64 %i.act, %i.abt                 ; 2 uses
  %i.acv = mul nsw i64 %indvars.iv38.i296, %i.zr  ; 2 uses
  %brmerge788 = select i1 %min.iters.check701, i1 true, i1 %i.acr
  br i1 %brmerge788, label %.preheader.i297.preheader, label %vector.ph702

vector.ph702:                                     ; preds = %.preheader32.i295
end_hunk_0
