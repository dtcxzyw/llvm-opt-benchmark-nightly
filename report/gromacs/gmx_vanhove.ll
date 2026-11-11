Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_vanhove?download=true
inline.NumInlined: 322
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z11gmx_vanhoveiPPc:bb.a

bb.ca:                                            ; preds = %._crit_edge627
  %i.uj = sext i32 %.0241 to i64
  %i.uk = getelementptr inbounds [4 x i8], ptr %.0548, i64 %i.uj ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !10
  %i.um = add nsw i32 %i.ul, 1
  store i32 %i.um, ptr %i.uk, align 4, !tbaa !10
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge627
  br i1 %.not330, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.0547, i64 %i.rl ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !10
  %i.up = add nsw i32 %i.uo, 1
  store i32 %i.up, ptr %i.un, align 4, !tbaa !10
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bp, %bb.cc, %bb.cb
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next745, %indvars.iv762
  br i1 %exitcond748.not, label %._crit_edge632, label %bb.bp, !llvm.loop !43

._crit_edge632:                                   ; preds = %bb.cd, %.loopexit562
  %i.uq = load ptr, ptr %i.h, align 8, !tbaa !16
  %.not325 = icmp ne ptr %i.uq, null
  %i.ur = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4 ; 2 uses
  %i.us = icmp sgt i32 %i.ur, 0
  %or.cond686 = select i1 %.not325, i1 %i.us, i1 false
  br i1 %or.cond686, label %.lr.ph648, label %.loopexit561

.lr.ph648:                                        ; preds = %._crit_edge632
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %.1543, i64 %indvars.iv762
  %.pre830 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE6fshift, align 4, !tbaa !10
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph648, %bb.ch
  %i.uu = phi i32 [ %i.ur, %.lr.ph648 ], [ %i.xl, %bb.ch ]
  %i.uv = phi i32 [ %.pre830, %.lr.ph648 ], [ %i.xm, %bb.ch ] ; 2 uses
  %indvars.iv759 = phi i64 [ 0, %.lr.ph648 ], [ %indvars.iv.next760, %bb.ch ] ; 3 uses
  %.4268646 = phi i32 [ %.3267650, %.lr.ph648 ], [ %.7271, %bb.ch ] ; 3 uses
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 3 uses
  %i.uw = trunc nuw nsw i64 %indvars.iv.next760 to i32
  %i.ux = mul nsw i32 %i.uv, %i.uw
  %i.uy = sub nsw i32 %i.kv, %i.ux                ; 2 uses
  %i.uz = icmp sgt i32 %i.uy, -1
  br i1 %i.uz, label %.preheader557, label %bb.ch

.preheader557:                                    ; preds = %bb.ce
  %i.va = load i32, ptr %i.n, align 4, !tbaa !10
  %i.vb = icmp sgt i32 %i.va, 0
  br i1 %i.vb, label %.lr.ph644, label %._crit_edge645

.lr.ph644:                                        ; preds = %.preheader557
  %i.vc = zext nneg i32 %i.uy to i64
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %.1543, i64 %i.vc
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.0549, i64 %indvars.iv759
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph644, %.loopexit
  %.3250643 = phi i32 [ 0, %.lr.ph644 ], [ %i.xf, %.loopexit ] ; 3 uses
  %.5269642 = phi i32 [ %.4268646, %.lr.ph644 ], [ %.6270, %.loopexit ] ; 7 uses
  %i.vf = load ptr, ptr %i.ut, align 8, !tbaa !84
  %i.vg = sext i32 %.3250643 to i64               ; 2 uses
  %i.vh = getelementptr inbounds [12 x i8], ptr %i.vf, i64 %i.vg ; 2 uses
  %i.vi = load ptr, ptr %i.vd, align 8, !tbaa !84
  %i.vj = getelementptr inbounds [12 x i8], ptr %i.vi, i64 %i.vg ; 2 uses
  %i.vk = load <2 x float>, ptr %i.vj, align 4, !tbaa !82
  %i.vl = load <2 x float>, ptr %i.vh, align 4, !tbaa !82
  %i.vm = fsub <2 x float> %i.vk, %i.vl           ; 2 uses
  %i.vn = fmul <2 x float> %i.vm, %i.vm           ; 2 uses
  %shift1164 = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1165 = fadd <2 x float> %i.vn, %shift1164
  %i.vo = extractelement <2 x float> %foldExtExtBinop1165, i64 0
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !82
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !82
  %i.vt = fsub float %i.vq, %i.vs                 ; 2 uses
  %i.vu = fmul float %i.vt, %i.vt
  %i.vv = fadd float %i.vo, %i.vu
  %sqrt552 = call float @llvm.sqrt.f32(float %i.vv)
  %i.vw = fmul float %i.hn, %sqrt552
  %i.vx = call float @llvm.rint.f32(float %i.vw)
  %i.vy = fptosi float %i.vx to i32               ; 4 uses
  %.not326 = icmp sgt i32 %.5269642, %i.vy
  br i1 %.not326, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vz = srem i32 %i.vy, 10
  %i.wa = sub i32 %i.vy, %i.vz
  %i.wb = add i32 %i.wa, 11                       ; 6 uses
  %i.wc = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !10
  %i.wd = icmp sgt i32 %i.wc, 0
  br i1 %i.wd, label %.lr.ph638, label %.loopexit

.lr.ph638:                                        ; preds = %bb.cg
  %i.we = sext i32 %i.wb to i64                   ; 2 uses
  %i.wf = icmp slt i32 %.5269642, %i.wb
  %.fr641 = freeze i1 %i.wf
  br i1 %.fr641, label %.lr.ph638.split.us.preheader, label %.lr.ph638.split

.lr.ph638.split.us.preheader:                     ; preds = %.lr.ph638
  %i.wg = sext i32 %.5269642 to i64
  %i.wh = shl nsw i64 %i.wg, 2
  %i.wi = add i32 %.5269642, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.wb, i32 %i.wi) ; 2 uses
  %i.wj = xor i32 %.5269642, -1
  %i.wk = add i32 %smax, %i.wj
  %i.wl = zext i32 %i.wk to i64
  %i.wm = shl nuw nsw i64 %i.wl, 2
  %i.wn = add nuw nsw i64 %i.wm, 4
  br label %.lr.ph638.split.us

.lr.ph638.split.us:                               ; preds = %.lr.ph638.split.us.preheader, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us
  %indvars.iv755 = phi i64 [ 0, %.lr.ph638.split.us.preheader ], [ %indvars.iv.next756, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us ] ; 2 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %.0549, i64 %indvars.iv755 ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !86
  %i.wq = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.54, i32 noundef 388, ptr noundef %i.wp, i64 noundef range(i64 -2147483629, 2147483648) %i.we, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us:     ; preds = %.lr.ph638.split.us
  store ptr %i.wq, ptr %i.wo, align 8, !tbaa !86
  %scevgep = getelementptr i8, ptr %i.wq, i64 %i.wh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.wn, i1 false), !tbaa !10
  %indvars.iv.next756 = add nuw nsw i64 %indvars.iv755, 1 ; 2 uses
  %i.wr = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !10
  %i.ws = sext i32 %i.wr to i64
  %i.wt = icmp slt i64 %indvars.iv.next756, %i.ws
  br i1 %i.wt, label %.lr.ph638.split.us, label %.loopexit, !llvm.loop !44

.lr.ph638.split:                                  ; preds = %.lr.ph638, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit ], [ 0, %.lr.ph638 ] ; 2 uses
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.0549, i64 %indvars.iv749 ; 2 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !86
  %i.ww = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.54, i32 noundef 388, ptr noundef %i.wv, i64 noundef range(i64 -2147483629, 2147483648) %i.we, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit:        ; preds = %.lr.ph638.split
  store ptr %i.ww, ptr %i.wu, align 8, !tbaa !86
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %i.wx = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !10
  %i.wy = sext i32 %i.wx to i64
  %i.wz = icmp slt i64 %indvars.iv.next750, %i.wy
  br i1 %i.wz, label %.lr.ph638.split, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us, %bb.cg, %bb.cf
  %.6270 = phi i32 [ %.5269642, %bb.cf ], [ %i.wb, %bb.cg ], [ %i.wb, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us ], [ %i.wb, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit ] ; 2 uses
  %.6253 = phi i32 [ %.3250643, %bb.cf ], [ %.3250643, %bb.cg ], [ %smax, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us ], [ %.5269642, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit ]
  %i.xa = load ptr, ptr %i.ve, align 8, !tbaa !86
  %i.xb = sext i32 %i.vy to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.xa, i64 %i.xb ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !10
  %i.xe = add nsw i32 %i.xd, 1
  store i32 %i.xe, ptr %i.xc, align 4, !tbaa !10
  %i.xf = add nsw i32 %.6253, 1                   ; 2 uses
  %i.xg = load i32, ptr %i.n, align 4, !tbaa !10
  %i.xh = icmp slt i32 %i.xf, %i.xg
  br i1 %i.xh, label %bb.cf, label %._crit_edge645, !llvm.loop !45

._crit_edge645:                                   ; preds = %.loopexit, %.preheader557
  %.5269.lcssa = phi i32 [ %.4268646, %.preheader557 ], [ %.6270, %.loopexit ]
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %.0546, i64 %indvars.iv759 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !10
  %i.xk = add nsw i32 %i.xj, 1
  store i32 %i.xk, ptr %i.xi, align 4, !tbaa !10
  %.pre829 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE6fshift, align 4, !tbaa !10
  %.pre831 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !10
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ce, %._crit_edge645
  %i.xl = phi i32 [ %.pre831, %._crit_edge645 ], [ %i.uu, %bb.ce ] ; 2 uses
  %i.xm = phi i32 [ %.pre829, %._crit_edge645 ], [ %i.uv, %bb.ce ]
  %.7271 = phi i32 [ %.5269.lcssa, %._crit_edge645 ], [ %.4268646, %bb.ce ] ; 2 uses
  %i.xn = sext i32 %i.xl to i64
  %i.xo = icmp slt i64 %indvars.iv.next760, %i.xn
  br i1 %i.xo, label %bb.ce, label %.loopexit561, !llvm.loop !46

.loopexit561:                                     ; preds = %bb.ch, %._crit_edge632
  %.8272 = phi i32 [ %.3267650, %._crit_edge632 ], [ %.7271, %bb.ch ] ; 3 uses
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1 ; 2 uses
  %exitcond771.not = icmp eq i64 %indvars.iv.next763, %wide.trip.count770
  br i1 %exitcond771.not, label %bb.ci, label %bb.bc, !llvm.loop !47

bb.ci:                                            ; preds = %.loopexit561
  %i.xp = load ptr, ptr @stderr, align 8, !tbaa !78
  %fputc = call i32 @fputc(i32 10, ptr %i.xp)     ; 0 uses
  %i.xq = load ptr, ptr %i.f, align 8, !tbaa !16
  %.not297 = icmp eq ptr %i.xq, null
  br i1 %.not297, label %bb.cv, label %.preheader553

.preheader553:                                    ; preds = %bb.ci
  %i.xr = icmp sgt i32 %.1244, 0                  ; 2 uses
  br i1 %i.xr, label %.lr.ph661, label %._crit_edge662

.lr.ph661:                                        ; preds = %.preheader553
  %i.xs = load i32, ptr %i.n, align 4, !tbaa !10
  %i.xt = icmp sgt i32 %.0242, 0
  %wide.trip.count780 = zext nneg i32 %.1244 to i64
  %.pre833 = load float, ptr @_ZZ11gmx_vanhoveiPPcE4rbin, align 4, !tbaa !82
  %wide.trip.count775 = zext i32 %.0242 to i64    ; 2 uses
  %xtraiter1209 = and i64 %wide.trip.count775, 3  ; 3 uses
  %i.xu = icmp ult i32 %.0242, 4
  %unroll_iter1214 = and i64 %wide.trip.count775, 2147483644
  %lcmp.mod1211.not = icmp eq i64 %xtraiter1209, 0
  %lcmp.mod1213 = icmp ne i64 %xtraiter1209, 0
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph661, %._crit_edge657
  %26 = phi float [ %.pre833, %.lr.ph661 ], [ %27, %._crit_edge657 ] ; 2 uses
  %indvars.iv777 = phi i64 [ 0, %.lr.ph661 ], [ %indvars.iv.next778, %._crit_edge657 ] ; 5 uses
  %.0230660 = phi float [ 0.000000e+00, %.lr.ph661 ], [ %.1231.lcssa, %._crit_edge657 ] ; 3 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %.0548, i64 %indvars.iv777
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !10
  %i.xx = mul nsw i32 %i.xs, %i.xw
  %i.xy = sitofp i32 %i.xx to float
  %i.xz = fmul float %26, %i.xy
  %i.ya = fdiv float 1.000000e+00, %i.xz          ; 5 uses
  br i1 %i.xt, label %.lr.ph656, label %._crit_edge657

.lr.ph656:                                        ; preds = %bb.cj
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %.0551, i64 %indvars.iv777
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !84 ; 5 uses
  br i1 %i.xu, label %.epil.preheader1208, label %.lr.ph656.new

.lr.ph656.new:                                    ; preds = %.lr.ph656, %.lr.ph656.new
  %indvars.iv772 = phi i64 [ %indvars.iv.next773.3, %.lr.ph656.new ], [ 0, %.lr.ph656 ] ; 6 uses
  %.1231654 = phi float [ %.2232.3, %.lr.ph656.new ], [ %.0230660, %.lr.ph656 ] ; 2 uses
  %niter1215 = phi i64 [ %niter1215.next.3, %.lr.ph656.new ], [ 0, %.lr.ph656 ]
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv772 ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !82
  %i.yf = fmul float %i.ya, %i.ye                 ; 3 uses
  store float %i.yf, ptr %i.yd, align 4, !tbaa !82
  %i.yg = fcmp ule float %i.yf, %.1231654
  %i.yh = or i64 %indvars.iv772, %indvars.iv777
  %or.cond5.not = icmp eq i64 %i.yh, 0
  %or.cond339 = or i1 %or.cond5.not, %i.yg
  %.2232 = select i1 %or.cond339, float %.1231654, float %i.yf ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv772
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4 ; 2 uses
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !82
  %i.yl = fmul float %i.ya, %i.yk                 ; 3 uses
  store float %i.yl, ptr %i.yj, align 4, !tbaa !82
  %.inv = fcmp ogt float %i.yl, %.2232
  %.2232.1 = select i1 %.inv, float %i.yl, float %.2232 ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv772
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8 ; 2 uses
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !82
  %i.yp = fmul float %i.ya, %i.yo                 ; 3 uses
  store float %i.yp, ptr %i.yn, align 4, !tbaa !82
  %.inv1221 = fcmp ogt float %i.yp, %.2232.1
  %.2232.2 = select i1 %.inv1221, float %i.yp, float %.2232.1 ; 2 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv772
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 12 ; 2 uses
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !82
  %i.yt = fmul float %i.ya, %i.ys                 ; 3 uses
  store float %i.yt, ptr %i.yr, align 4, !tbaa !82
  %.inv1222 = fcmp ogt float %i.yt, %.2232.2
  %.2232.3 = select i1 %.inv1222, float %i.yt, float %.2232.2 ; 3 uses
  %indvars.iv.next773.3 = add nuw nsw i64 %indvars.iv772, 4 ; 2 uses
  %niter1215.next.3 = add i64 %niter1215, 4       ; 2 uses
  %niter1215.ncmp.3 = icmp eq i64 %niter1215.next.3, %unroll_iter1214
  br i1 %niter1215.ncmp.3, label %._crit_edge657.loopexit.unr-lcssa, label %.lr.ph656.new, !llvm.loop !48

._crit_edge657.loopexit.unr-lcssa:                ; preds = %.lr.ph656.new
  br i1 %lcmp.mod1211.not, label %._crit_edge657.loopexit, label %.epil.preheader1208

.epil.preheader1208:                              ; preds = %._crit_edge657.loopexit.unr-lcssa, %.lr.ph656
  %indvars.iv772.epil.init = phi i64 [ 0, %.lr.ph656 ], [ %indvars.iv.next773.3, %._crit_edge657.loopexit.unr-lcssa ]
  %.1231654.epil.init = phi float [ %.0230660, %.lr.ph656 ], [ %.2232.3, %._crit_edge657.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1213)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.epil.preheader1208
  %indvars.iv772.epil = phi i64 [ %indvars.iv772.epil.init, %.epil.preheader1208 ], [ %indvars.iv.next773.epil, %bb.ck ] ; 3 uses
  %.1231654.epil = phi float [ %.1231654.epil.init, %.epil.preheader1208 ], [ %.2232.epil, %bb.ck ] ; 2 uses
  %epil.iter1210 = phi i64 [ 0, %.epil.preheader1208 ], [ %epil.iter1210.next, %bb.ck ]
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv772.epil ; 2 uses
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !82
  %i.yw = fmul float %i.ya, %i.yv                 ; 3 uses
  store float %i.yw, ptr %i.yu, align 4, !tbaa !82
  %i.yx = fcmp ule float %i.yw, %.1231654.epil
  %i.yy = or i64 %indvars.iv772.epil, %indvars.iv777
  %or.cond5.not.epil = icmp eq i64 %i.yy, 0
  %or.cond339.epil = or i1 %or.cond5.not.epil, %i.yx
  %.2232.epil = select i1 %or.cond339.epil, float %.1231654.epil, float %i.yw ; 2 uses
  %indvars.iv.next773.epil = add nuw nsw i64 %indvars.iv772.epil, 1
  %epil.iter1210.next = add i64 %epil.iter1210, 1 ; 2 uses
  %epil.iter1210.cmp.not = icmp eq i64 %epil.iter1210.next, %xtraiter1209
  br i1 %epil.iter1210.cmp.not, label %._crit_edge657.loopexit, label %bb.ck, !llvm.loop !49

._crit_edge657.loopexit:                          ; preds = %bb.ck, %._crit_edge657.loopexit.unr-lcssa
  %.2232.lcssa = phi float [ %.2232.3, %._crit_edge657.loopexit.unr-lcssa ], [ %.2232.epil, %bb.ck ]
  %.pre832 = load float, ptr @_ZZ11gmx_vanhoveiPPcE4rbin, align 4, !tbaa !82
  br label %._crit_edge657

._crit_edge657:                                   ; preds = %._crit_edge657.loopexit, %bb.cj
  %27 = phi float [ %26, %bb.cj ], [ %.pre832, %._crit_edge657.loopexit ]
  %.1231.lcssa = phi float [ %.0230660, %bb.cj ], [ %.2232.lcssa, %._crit_edge657.loopexit ] ; 2 uses
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1 ; 2 uses
  %exitcond781.not = icmp eq i64 %indvars.iv.next778, %wide.trip.count780
  br i1 %exitcond781.not, label %._crit_edge662, label %bb.cj, !llvm.loop !50

._crit_edge662:                                   ; preds = %._crit_edge657, %.preheader553
  %.0230.lcssa = phi float [ 0.000000e+00, %.preheader553 ], [ %.1231.lcssa, %._crit_edge657 ] ; 2 uses
  %i.yz = load ptr, ptr @stdout, align 8, !tbaa !78
  %i.za = load ptr, ptr %.0551, align 8, !tbaa !84
  %i.zb = load float, ptr %i.za, align 4, !tbaa !82
  %i.zc = fpext float %i.zb to double
  %i.zd = fpext float %.0230.lcssa to double
  %i.ze = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yz, ptr noundef nonnull @.str.70, double noundef %i.zc, double noundef %i.zd) #21 ; 0 uses
  %i.zf = load float, ptr @_ZZ11gmx_vanhoveiPPcE4mmax, align 4, !tbaa !82 ; 2 uses
  %i.zg = fcmp ogt float %i.zf, 0.000000e+00
  %spec.select = select i1 %i.zg, float %i.zf, float %.0230.lcssa
  %i.zh = sext i32 %.1244 to i64
  %i.zi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.54, i32 noundef 425, i64 noundef range(i64 -2147483648, 2147483648) %i.zh, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360.preheader: ; preds = %._crit_edge662
  br i1 %i.xr, label %iter.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge

iter.check:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360.preheader
  %wide.trip.count785 = zext nneg i32 %.1244 to i64 ; 9 uses
  %min.iters.check = icmp ult i32 %.1244, 4
  br i1 %min.iters.check, label %.lr.ph665.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zj = shl nuw nsw i64 %wide.trip.count785, 2
  %i.zk = getelementptr i8, ptr %i.zi, i64 %i.zj
  %bound0 = icmp ult ptr %i.zi, getelementptr inbounds nuw (i8, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, i64 4)
  %bound1 = icmp ugt ptr %i.zk, @_ZZ11gmx_vanhoveiPPcE4sbin
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph665.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1103 = icmp ult i32 %.1244, 32
  br i1 %min.iters.check1103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zl = and i64 %wide.trip.count785, 28
  %n.vec = and i64 %wide.trip.count785, 2147483616 ; 4 uses
  %i.zm = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82, !alias.scope !92 ; 2 uses
  %i.zn = fcmp oeq float %i.zm, 0.000000e+00
  %i.zo = select i1 %i.zn, float %i.hl, float %i.zm
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.zo, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.zp = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.zq = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.zr = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.zs = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.zt = fmul <8 x float> %broadcast.splat, %i.zp
  %i.zu = fmul <8 x float> %broadcast.splat, %i.zq
  %i.zv = fmul <8 x float> %broadcast.splat, %i.zr
  %i.zw = fmul <8 x float> %broadcast.splat, %i.zs
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %index ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 32
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zx, i64 96
  store <8 x float> %i.zt, ptr %i.zx, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  store <8 x float> %i.zu, ptr %i.zy, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  store <8 x float> %i.zv, ptr %i.zz, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  store <8 x float> %i.zw, ptr %i.aaa, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.aab = icmp eq i64 %index.next, %n.vec
  br i1 %i.aab, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count785
  br i1 %cmp.n, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph665.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec1104 = and i64 %wide.trip.count785, 2147483644 ; 3 uses
  %i.aac = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82, !alias.scope !92 ; 2 uses
  %i.aad = fcmp oeq float %i.aac, 0.000000e+00
  %i.aae = select i1 %i.aad, float %i.hl, float %i.aac
  %broadcast.splatinsert1109 = insertelement <4 x float> poison, float %i.aae, i64 0
  %broadcast.splat1110 = shufflevector <4 x float> %broadcast.splatinsert1109, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaf = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %i.aaf, i64 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat1106, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1111, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1108 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next1112, %vec.epilog.vector.body ] ; 2 uses
  %i.aag = uitofp nneg <4 x i32> %vec.ind1108 to <4 x float>
  %i.aah = fmul <4 x float> %broadcast.splat1110, %i.aag
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %index1107
  store <4 x float> %i.aah, ptr %i.aai, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  %index.next1111 = add nuw i64 %index1107, 4     ; 2 uses
  %vec.ind.next1112 = add <4 x i32> %vec.ind1108, splat (i32 4)
  %i.aaj = icmp eq i64 %index.next1111, %n.vec1104
  br i1 %i.aaj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !55

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1113 = icmp eq i64 %n.vec1104, %wide.trip.count785
  br i1 %cmp.n1113, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge, label %.lr.ph665.preheader

.lr.ph665.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv782.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1104, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter1216 = and i64 %wide.trip.count785, 3  ; 2 uses
  %lcmp.mod1217.not = icmp eq i64 %xtraiter1216, 0
  br i1 %lcmp.mod1217.not, label %.lr.ph665.prol.loopexit, label %.lr.ph665.prol

.lr.ph665.prol:                                   ; preds = %.lr.ph665.preheader, %.lr.ph665.prol
  %indvars.iv782.prol = phi i64 [ %indvars.iv.next783.prol, %.lr.ph665.prol ], [ %indvars.iv782.ph, %.lr.ph665.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph665.prol ], [ 0, %.lr.ph665.preheader ]
  %i.aak = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.aal = fcmp oeq float %i.aak, 0.000000e+00
  %i.aam = trunc nuw nsw i64 %indvars.iv782.prol to i32
  %i.aan = uitofp nneg i32 %i.aam to float
  %..prol = select i1 %i.aal, float %i.hl, float %i.aak
  %i.aao = fmul float %..prol, %i.aan
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv782.prol
  store float %i.aao, ptr %i.aap, align 4, !tbaa !82
  %indvars.iv.next783.prol = add nuw nsw i64 %indvars.iv782.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1216
  br i1 %prol.iter.cmp.not, label %.lr.ph665.prol.loopexit, label %.lr.ph665.prol, !llvm.loop !56

.lr.ph665.prol.loopexit:                          ; preds = %.lr.ph665.prol, %.lr.ph665.preheader
  %indvars.iv782.unr = phi i64 [ %indvars.iv782.ph, %.lr.ph665.preheader ], [ %indvars.iv.next783.prol, %.lr.ph665.prol ]
  %i.aaq = sub nsw i64 %indvars.iv782.ph, %wide.trip.count785
  %i.aar = icmp ugt i64 %i.aaq, -4
  br i1 %i.aar, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge, label %.lr.ph665

.lr.ph665:                                        ; preds = %.lr.ph665.prol.loopexit, %.lr.ph665
  %indvars.iv782 = phi i64 [ %indvars.iv.next783.3, %.lr.ph665 ], [ %indvars.iv782.unr, %.lr.ph665.prol.loopexit ] ; 6 uses
  %i.aas = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.aat = fcmp oeq float %i.aas, 0.000000e+00
  %i.aau = trunc nuw nsw i64 %indvars.iv782 to i32
  %i.aav = uitofp nneg i32 %i.aau to float
  %. = select i1 %i.aat, float %i.hl, float %i.aas
  %i.aaw = fmul float %., %i.aav
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv782
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !82
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1 ; 2 uses
  %i.aay = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.aaz = fcmp oeq float %i.aay, 0.000000e+00
  %i.aba = trunc nuw nsw i64 %indvars.iv.next783 to i32
  %i.abb = uitofp nneg i32 %i.aba to float
  %..1 = select i1 %i.aaz, float %i.hl, float %i.aay
  %i.abc = fmul float %..1, %i.abb
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next783
  store float %i.abc, ptr %i.abd, align 4, !tbaa !82
  %indvars.iv.next783.1 = add nuw nsw i64 %indvars.iv782, 2 ; 2 uses
  %i.abe = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.abf = fcmp oeq float %i.abe, 0.000000e+00
  %i.abg = trunc nuw nsw i64 %indvars.iv.next783.1 to i32
  %i.abh = uitofp nneg i32 %i.abg to float
  %..2 = select i1 %i.abf, float %i.hl, float %i.abe
  %i.abi = fmul float %..2, %i.abh
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next783.1
  store float %i.abi, ptr %i.abj, align 4, !tbaa !82
  %indvars.iv.next783.2 = add nuw nsw i64 %indvars.iv782, 3 ; 2 uses
  %i.abk = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.abl = fcmp oeq float %i.abk, 0.000000e+00
  %i.abm = trunc nuw nsw i64 %indvars.iv.next783.2 to i32
  %i.abn = uitofp nneg i32 %i.abm to float
  %..3 = select i1 %i.abl, float %i.hl, float %i.abk
  %i.abo = fmul float %..3, %i.abn
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next783.2
  store float %i.abo, ptr %i.abp, align 4, !tbaa !82
  %indvars.iv.next783.3 = add nuw nsw i64 %indvars.iv782, 4 ; 2 uses
  %exitcond786.not.3 = icmp eq i64 %indvars.iv.next783.3, %wide.trip.count785
  br i1 %exitcond786.not.3, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge, label %.lr.ph665, !llvm.loop !57

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge: ; preds = %.lr.ph665.prol.loopexit, %.lr.ph665, %middle.block, %vec.epilog.middle.block, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360.preheader
  %i.abq = add i32 %.0242, 1                      ; 4 uses
  %i.abr = sext i32 %i.abq to i64
  %i.abs = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.54, i32 noundef 437, i64 noundef range(i64 -2147483648, 2147483648) %i.abr, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 14 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge
  %.not298666 = icmp slt i32 %.0242, 0
  br i1 %.not298666, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362._crit_edge, label %iter.check1140

iter.check1140:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362.preheader
  %wide.trip.count790 = zext i32 %i.abq to i64    ; 9 uses
  %min.iters.check1119 = icmp ult i32 %i.abq, 4
  br i1 %min.iters.check1119, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362.preheader1167, label %vector.memcheck1120

vector.memcheck1120:                              ; preds = %iter.check1140
  %i.abt = shl nuw nsw i64 %wide.trip.count790, 2
end_hunk_0
