Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_vanhove?download=true
inline.NumInlined: 322
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z11gmx_vanhoveiPPc:bb.a

bb.ca:                                            ; preds = %._crit_edge626
  %i.uk = sext i32 %.0241 to i64
  %i.ul = getelementptr inbounds [4 x i8], ptr %.0548, i64 %i.uk ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !10
  %i.un = add nsw i32 %i.um, 1
  store i32 %i.un, ptr %i.ul, align 4, !tbaa !10
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge626
  br i1 %.not330, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.0547, i64 %i.rl ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !10
  %i.uq = add nsw i32 %i.up, 1
  store i32 %i.uq, ptr %i.uo, align 4, !tbaa !10
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bp, %bb.cc, %bb.cb
  %indvars.iv.next744 = add nuw nsw i64 %indvars.iv743, 1 ; 2 uses
  %exitcond747.not = icmp eq i64 %indvars.iv.next744, %indvars.iv761
  br i1 %exitcond747.not, label %._crit_edge631, label %bb.bp, !llvm.loop !43

._crit_edge631:                                   ; preds = %bb.cd, %.loopexit561
  %i.ur = load ptr, ptr %i.h, align 8, !tbaa !16
  %.not325 = icmp ne ptr %i.ur, null
  %i.us = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4 ; 2 uses
  %i.ut = icmp sgt i32 %i.us, 0
  %or.cond685 = select i1 %.not325, i1 %i.ut, i1 false
  br i1 %or.cond685, label %.lr.ph647, label %.loopexit560

.lr.ph647:                                        ; preds = %._crit_edge631
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %.1543, i64 %indvars.iv761
  %.pre829 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE6fshift, align 4, !tbaa !10
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph647, %bb.ch
  %i.uv = phi i32 [ %i.us, %.lr.ph647 ], [ %i.xn, %bb.ch ]
  %i.uw = phi i32 [ %.pre829, %.lr.ph647 ], [ %i.xo, %bb.ch ] ; 2 uses
  %indvars.iv758 = phi i64 [ 0, %.lr.ph647 ], [ %indvars.iv.next759, %bb.ch ] ; 3 uses
  %.4268645 = phi i32 [ %.3267649, %.lr.ph647 ], [ %.7271, %bb.ch ] ; 3 uses
  %indvars.iv.next759 = add nuw nsw i64 %indvars.iv758, 1 ; 3 uses
  %i.ux = trunc nuw nsw i64 %indvars.iv.next759 to i32
  %i.uy = mul nsw i32 %i.uw, %i.ux
  %i.uz = sub nsw i32 %i.kv, %i.uy                ; 2 uses
  %i.va = icmp sgt i32 %i.uz, -1
  br i1 %i.va, label %.preheader556, label %bb.ch

.preheader556:                                    ; preds = %bb.ce
  %i.vb = load i32, ptr %i.n, align 4, !tbaa !10
  %i.vc = icmp sgt i32 %i.vb, 0
  br i1 %i.vc, label %.lr.ph643, label %._crit_edge644

.lr.ph643:                                        ; preds = %.preheader556
  %i.vd = zext nneg i32 %i.uz to i64
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %.1543, i64 %i.vd
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %.0549, i64 %indvars.iv758
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph643, %.loopexit
  %.3250642 = phi i32 [ 0, %.lr.ph643 ], [ %i.xh, %.loopexit ] ; 3 uses
  %.5269641 = phi i32 [ %.4268645, %.lr.ph643 ], [ %.6270, %.loopexit ] ; 7 uses
  %i.vg = load ptr, ptr %i.uu, align 8, !tbaa !84
  %i.vh = sext i32 %.3250642 to i64               ; 2 uses
  %i.vi = getelementptr inbounds [12 x i8], ptr %i.vg, i64 %i.vh ; 2 uses
  %i.vj = load ptr, ptr %i.ve, align 8, !tbaa !84
  %i.vk = getelementptr inbounds [12 x i8], ptr %i.vj, i64 %i.vh ; 2 uses
  %i.vl = load <2 x float>, ptr %i.vk, align 4, !tbaa !82
  %i.vm = load <2 x float>, ptr %i.vi, align 4, !tbaa !82
  %i.vn = fsub <2 x float> %i.vl, %i.vm           ; 2 uses
  %i.vo = fmul <2 x float> %i.vn, %i.vn           ; 2 uses
  %shift1163 = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1164 = fadd <2 x float> %i.vo, %shift1163
  %i.vp = extractelement <2 x float> %foldExtExtBinop1164, i64 0
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !82
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !82
  %i.vu = fsub float %i.vr, %i.vt                 ; 2 uses
  %i.vv = fmul float %i.vu, %i.vu
  %i.vw = fadd float %i.vp, %i.vv
  %i.vx = call noundef float @sqrtf(float noundef %i.vw) #21
  %i.vy = fmul float %i.hn, %i.vx
  %i.vz = call float @llvm.rint.f32(float %i.vy)
  %i.wa = fptosi float %i.vz to i32               ; 4 uses
  %.not326 = icmp sgt i32 %.5269641, %i.wa
  br i1 %.not326, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wb = srem i32 %i.wa, 10
  %i.wc = sub i32 %i.wa, %i.wb
  %i.wd = add i32 %i.wc, 11                       ; 6 uses
  %i.we = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !10
  %i.wf = icmp sgt i32 %i.we, 0
  br i1 %i.wf, label %.lr.ph637, label %.loopexit

.lr.ph637:                                        ; preds = %bb.cg
  %i.wg = sext i32 %i.wd to i64                   ; 2 uses
  %i.wh = icmp slt i32 %.5269641, %i.wd
  %.fr640 = freeze i1 %i.wh
  br i1 %.fr640, label %.lr.ph637.split.us.preheader, label %.lr.ph637.split

.lr.ph637.split.us.preheader:                     ; preds = %.lr.ph637
  %i.wi = sext i32 %.5269641 to i64
  %i.wj = shl nsw i64 %i.wi, 2
  %i.wk = add i32 %.5269641, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.wd, i32 %i.wk) ; 2 uses
  %i.wl = xor i32 %.5269641, -1
  %i.wm = add i32 %smax, %i.wl
  %i.wn = zext i32 %i.wm to i64
  %i.wo = shl nuw nsw i64 %i.wn, 2
  %i.wp = add nuw nsw i64 %i.wo, 4
  br label %.lr.ph637.split.us

.lr.ph637.split.us:                               ; preds = %.lr.ph637.split.us.preheader, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us
  %indvars.iv754 = phi i64 [ 0, %.lr.ph637.split.us.preheader ], [ %indvars.iv.next755, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us ] ; 2 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %.0549, i64 %indvars.iv754 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !86
  %i.ws = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.54, i32 noundef 388, ptr noundef %i.wr, i64 noundef range(i64 -2147483629, 2147483648) %i.wg, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us:     ; preds = %.lr.ph637.split.us
  store ptr %i.ws, ptr %i.wq, align 8, !tbaa !86
  %scevgep = getelementptr i8, ptr %i.ws, i64 %i.wj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.wp, i1 false), !tbaa !10
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1 ; 2 uses
  %i.wt = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !10
  %i.wu = sext i32 %i.wt to i64
  %i.wv = icmp slt i64 %indvars.iv.next755, %i.wu
  br i1 %i.wv, label %.lr.ph637.split.us, label %.loopexit, !llvm.loop !44

.lr.ph637.split:                                  ; preds = %.lr.ph637, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit
  %indvars.iv748 = phi i64 [ %indvars.iv.next749, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit ], [ 0, %.lr.ph637 ] ; 2 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %.0549, i64 %indvars.iv748 ; 2 uses
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !86
  %i.wy = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.54, i32 noundef 388, ptr noundef %i.wx, i64 noundef range(i64 -2147483629, 2147483648) %i.wg, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit:        ; preds = %.lr.ph637.split
  store ptr %i.wy, ptr %i.ww, align 8, !tbaa !86
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %i.wz = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !10
  %i.xa = sext i32 %i.wz to i64
  %i.xb = icmp slt i64 %indvars.iv.next749, %i.xa
  br i1 %i.xb, label %.lr.ph637.split, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us, %bb.cg, %bb.cf
  %.6270 = phi i32 [ %.5269641, %bb.cf ], [ %i.wd, %bb.cg ], [ %i.wd, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us ], [ %i.wd, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit ] ; 2 uses
  %.6253 = phi i32 [ %.3250642, %bb.cf ], [ %.3250642, %bb.cg ], [ %smax, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit.us ], [ %.5269641, %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit ]
  %i.xc = load ptr, ptr %i.vf, align 8, !tbaa !86
  %i.xd = sext i32 %i.wa to i64
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.xc, i64 %i.xd ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !10
  %i.xg = add nsw i32 %i.xf, 1
  store i32 %i.xg, ptr %i.xe, align 4, !tbaa !10
  %i.xh = add nsw i32 %.6253, 1                   ; 2 uses
  %i.xi = load i32, ptr %i.n, align 4, !tbaa !10
  %i.xj = icmp slt i32 %i.xh, %i.xi
  br i1 %i.xj, label %bb.cf, label %._crit_edge644, !llvm.loop !45

._crit_edge644:                                   ; preds = %.loopexit, %.preheader556
  %.5269.lcssa = phi i32 [ %.4268645, %.preheader556 ], [ %.6270, %.loopexit ]
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.0546, i64 %indvars.iv758 ; 2 uses
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !10
  %i.xm = add nsw i32 %i.xl, 1
  store i32 %i.xm, ptr %i.xk, align 4, !tbaa !10
  %.pre828 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE6fshift, align 4, !tbaa !10
  %.pre830 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !10
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ce, %._crit_edge644
  %i.xn = phi i32 [ %.pre830, %._crit_edge644 ], [ %i.uv, %bb.ce ] ; 2 uses
  %i.xo = phi i32 [ %.pre828, %._crit_edge644 ], [ %i.uw, %bb.ce ]
  %.7271 = phi i32 [ %.5269.lcssa, %._crit_edge644 ], [ %.4268645, %bb.ce ] ; 2 uses
  %i.xp = sext i32 %i.xn to i64
  %i.xq = icmp slt i64 %indvars.iv.next759, %i.xp
  br i1 %i.xq, label %bb.ce, label %.loopexit560, !llvm.loop !46

.loopexit560:                                     ; preds = %bb.ch, %._crit_edge631
  %.8272 = phi i32 [ %.3267649, %._crit_edge631 ], [ %.7271, %bb.ch ] ; 3 uses
  %indvars.iv.next762 = add nuw nsw i64 %indvars.iv761, 1 ; 2 uses
  %exitcond770.not = icmp eq i64 %indvars.iv.next762, %wide.trip.count769
  br i1 %exitcond770.not, label %bb.ci, label %bb.bc, !llvm.loop !47

bb.ci:                                            ; preds = %.loopexit560
  %i.xr = load ptr, ptr @stderr, align 8, !tbaa !78
  %fputc = call i32 @fputc(i32 10, ptr %i.xr)     ; 0 uses
  %i.xs = load ptr, ptr %i.f, align 8, !tbaa !16
  %.not297 = icmp eq ptr %i.xs, null
  br i1 %.not297, label %bb.cv, label %.preheader552

.preheader552:                                    ; preds = %bb.ci
  %i.xt = icmp sgt i32 %.1244, 0                  ; 2 uses
  br i1 %i.xt, label %.lr.ph660, label %._crit_edge661

.lr.ph660:                                        ; preds = %.preheader552
  %i.xu = load i32, ptr %i.n, align 4, !tbaa !10
  %i.xv = icmp sgt i32 %.0242, 0
  %wide.trip.count779 = zext nneg i32 %.1244 to i64
  %.pre832 = load float, ptr @_ZZ11gmx_vanhoveiPPcE4rbin, align 4, !tbaa !82
  %wide.trip.count774 = zext i32 %.0242 to i64    ; 2 uses
  %xtraiter1208 = and i64 %wide.trip.count774, 3  ; 3 uses
  %i.xw = icmp ult i32 %.0242, 4
  %unroll_iter1213 = and i64 %wide.trip.count774, 2147483644
  %lcmp.mod1210.not = icmp eq i64 %xtraiter1208, 0
  %lcmp.mod1212 = icmp ne i64 %xtraiter1208, 0
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph660, %._crit_edge656
  %26 = phi float [ %.pre832, %.lr.ph660 ], [ %27, %._crit_edge656 ] ; 2 uses
  %indvars.iv776 = phi i64 [ 0, %.lr.ph660 ], [ %indvars.iv.next777, %._crit_edge656 ] ; 5 uses
  %.0230659 = phi float [ 0.000000e+00, %.lr.ph660 ], [ %.1231.lcssa, %._crit_edge656 ] ; 3 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %.0548, i64 %indvars.iv776
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !10
  %i.xz = mul nsw i32 %i.xu, %i.xy
  %i.ya = sitofp i32 %i.xz to float
  %i.yb = fmul float %26, %i.ya
  %i.yc = fdiv float 1.000000e+00, %i.yb          ; 5 uses
  br i1 %i.xv, label %.lr.ph655, label %._crit_edge656

.lr.ph655:                                        ; preds = %bb.cj
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %.0551, i64 %indvars.iv776
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !84 ; 5 uses
  br i1 %i.xw, label %.epil.preheader1207, label %.lr.ph655.new

.lr.ph655.new:                                    ; preds = %.lr.ph655, %.lr.ph655.new
  %indvars.iv771 = phi i64 [ %indvars.iv.next772.3, %.lr.ph655.new ], [ 0, %.lr.ph655 ] ; 6 uses
  %.1231653 = phi float [ %.2232.3, %.lr.ph655.new ], [ %.0230659, %.lr.ph655 ] ; 2 uses
  %niter1214 = phi i64 [ %niter1214.next.3, %.lr.ph655.new ], [ 0, %.lr.ph655 ]
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv771 ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !82
  %i.yh = fmul float %i.yc, %i.yg                 ; 3 uses
  store float %i.yh, ptr %i.yf, align 4, !tbaa !82
  %i.yi = fcmp ule float %i.yh, %.1231653
  %i.yj = or i64 %indvars.iv771, %indvars.iv776
  %or.cond5.not = icmp eq i64 %i.yj, 0
  %or.cond339 = or i1 %or.cond5.not, %i.yi
  %.2232 = select i1 %or.cond339, float %.1231653, float %i.yh ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv771
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 4 ; 2 uses
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !82
  %i.yn = fmul float %i.yc, %i.ym                 ; 3 uses
  store float %i.yn, ptr %i.yl, align 4, !tbaa !82
  %.inv = fcmp ogt float %i.yn, %.2232
  %.2232.1 = select i1 %.inv, float %i.yn, float %.2232 ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv771
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 8 ; 2 uses
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !82
  %i.yr = fmul float %i.yc, %i.yq                 ; 3 uses
  store float %i.yr, ptr %i.yp, align 4, !tbaa !82
  %.inv1220 = fcmp ogt float %i.yr, %.2232.1
  %.2232.2 = select i1 %.inv1220, float %i.yr, float %.2232.1 ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv771
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 12 ; 2 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !82
  %i.yv = fmul float %i.yc, %i.yu                 ; 3 uses
  store float %i.yv, ptr %i.yt, align 4, !tbaa !82
  %.inv1221 = fcmp ogt float %i.yv, %.2232.2
  %.2232.3 = select i1 %.inv1221, float %i.yv, float %.2232.2 ; 3 uses
  %indvars.iv.next772.3 = add nuw nsw i64 %indvars.iv771, 4 ; 2 uses
  %niter1214.next.3 = add i64 %niter1214, 4       ; 2 uses
  %niter1214.ncmp.3 = icmp eq i64 %niter1214.next.3, %unroll_iter1213
  br i1 %niter1214.ncmp.3, label %._crit_edge656.loopexit.unr-lcssa, label %.lr.ph655.new, !llvm.loop !48

._crit_edge656.loopexit.unr-lcssa:                ; preds = %.lr.ph655.new
  br i1 %lcmp.mod1210.not, label %._crit_edge656.loopexit, label %.epil.preheader1207

.epil.preheader1207:                              ; preds = %._crit_edge656.loopexit.unr-lcssa, %.lr.ph655
  %indvars.iv771.epil.init = phi i64 [ 0, %.lr.ph655 ], [ %indvars.iv.next772.3, %._crit_edge656.loopexit.unr-lcssa ]
  %.1231653.epil.init = phi float [ %.0230659, %.lr.ph655 ], [ %.2232.3, %._crit_edge656.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1212)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.epil.preheader1207
  %indvars.iv771.epil = phi i64 [ %indvars.iv771.epil.init, %.epil.preheader1207 ], [ %indvars.iv.next772.epil, %bb.ck ] ; 3 uses
  %.1231653.epil = phi float [ %.1231653.epil.init, %.epil.preheader1207 ], [ %.2232.epil, %bb.ck ] ; 2 uses
  %epil.iter1209 = phi i64 [ 0, %.epil.preheader1207 ], [ %epil.iter1209.next, %bb.ck ]
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv771.epil ; 2 uses
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !82
  %i.yy = fmul float %i.yc, %i.yx                 ; 3 uses
  store float %i.yy, ptr %i.yw, align 4, !tbaa !82
  %i.yz = fcmp ule float %i.yy, %.1231653.epil
  %i.za = or i64 %indvars.iv771.epil, %indvars.iv776
  %or.cond5.not.epil = icmp eq i64 %i.za, 0
  %or.cond339.epil = or i1 %or.cond5.not.epil, %i.yz
  %.2232.epil = select i1 %or.cond339.epil, float %.1231653.epil, float %i.yy ; 2 uses
  %indvars.iv.next772.epil = add nuw nsw i64 %indvars.iv771.epil, 1
  %epil.iter1209.next = add i64 %epil.iter1209, 1 ; 2 uses
  %epil.iter1209.cmp.not = icmp eq i64 %epil.iter1209.next, %xtraiter1208
  br i1 %epil.iter1209.cmp.not, label %._crit_edge656.loopexit, label %bb.ck, !llvm.loop !49

._crit_edge656.loopexit:                          ; preds = %bb.ck, %._crit_edge656.loopexit.unr-lcssa
  %.2232.lcssa = phi float [ %.2232.3, %._crit_edge656.loopexit.unr-lcssa ], [ %.2232.epil, %bb.ck ]
  %.pre831 = load float, ptr @_ZZ11gmx_vanhoveiPPcE4rbin, align 4, !tbaa !82
  br label %._crit_edge656

._crit_edge656:                                   ; preds = %._crit_edge656.loopexit, %bb.cj
  %27 = phi float [ %26, %bb.cj ], [ %.pre831, %._crit_edge656.loopexit ]
  %.1231.lcssa = phi float [ %.0230659, %bb.cj ], [ %.2232.lcssa, %._crit_edge656.loopexit ] ; 2 uses
  %indvars.iv.next777 = add nuw nsw i64 %indvars.iv776, 1 ; 2 uses
  %exitcond780.not = icmp eq i64 %indvars.iv.next777, %wide.trip.count779
  br i1 %exitcond780.not, label %._crit_edge661, label %bb.cj, !llvm.loop !50

._crit_edge661:                                   ; preds = %._crit_edge656, %.preheader552
  %.0230.lcssa = phi float [ 0.000000e+00, %.preheader552 ], [ %.1231.lcssa, %._crit_edge656 ] ; 2 uses
  %i.zb = load ptr, ptr @stdout, align 8, !tbaa !78
  %i.zc = load ptr, ptr %.0551, align 8, !tbaa !84
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !82
  %i.ze = fpext float %i.zd to double
  %i.zf = fpext float %.0230.lcssa to double
  %i.zg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zb, ptr noundef nonnull @.str.70, double noundef %i.ze, double noundef %i.zf) #21 ; 0 uses
  %i.zh = load float, ptr @_ZZ11gmx_vanhoveiPPcE4mmax, align 4, !tbaa !82 ; 2 uses
  %i.zi = fcmp ogt float %i.zh, 0.000000e+00
  %spec.select = select i1 %i.zi, float %i.zh, float %.0230.lcssa
  %i.zj = sext i32 %.1244 to i64
  %i.zk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.54, i32 noundef 425, i64 noundef range(i64 -2147483648, 2147483648) %i.zj, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360.preheader: ; preds = %._crit_edge661
  br i1 %i.xt, label %iter.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge

iter.check:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360.preheader
  %wide.trip.count784 = zext nneg i32 %.1244 to i64 ; 9 uses
  %min.iters.check = icmp ult i32 %.1244, 4
  br i1 %min.iters.check, label %.lr.ph664.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zl = shl nuw nsw i64 %wide.trip.count784, 2
  %i.zm = getelementptr i8, ptr %i.zk, i64 %i.zl
  %bound0 = icmp ult ptr %i.zk, getelementptr inbounds nuw (i8, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, i64 4)
  %bound1 = icmp ugt ptr %i.zm, @_ZZ11gmx_vanhoveiPPcE4sbin
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph664.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1102 = icmp ult i32 %.1244, 32
  br i1 %min.iters.check1102, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zn = and i64 %wide.trip.count784, 28
  %n.vec = and i64 %wide.trip.count784, 2147483616 ; 4 uses
  %i.zo = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82, !alias.scope !92 ; 2 uses
  %i.zp = fcmp oeq float %i.zo, 0.000000e+00
  %i.zq = select i1 %i.zp, float %i.hl, float %i.zo
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.zq, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.zr = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.zs = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.zt = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.zu = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.zv = fmul <8 x float> %broadcast.splat, %i.zr
  %i.zw = fmul <8 x float> %broadcast.splat, %i.zs
  %i.zx = fmul <8 x float> %broadcast.splat, %i.zt
  %i.zy = fmul <8 x float> %broadcast.splat, %i.zu
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %index ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 32
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zz, i64 64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 96
  store <8 x float> %i.zv, ptr %i.zz, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  store <8 x float> %i.zw, ptr %i.aaa, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  store <8 x float> %i.zx, ptr %i.aab, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  store <8 x float> %i.zy, ptr %i.aac, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.aad = icmp eq i64 %index.next, %n.vec
  br i1 %i.aad, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count784
  br i1 %cmp.n, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph664.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec1103 = and i64 %wide.trip.count784, 2147483644 ; 3 uses
  %i.aae = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82, !alias.scope !92 ; 2 uses
  %i.aaf = fcmp oeq float %i.aae, 0.000000e+00
  %i.aag = select i1 %i.aaf, float %i.hl, float %i.aae
  %broadcast.splatinsert1108 = insertelement <4 x float> poison, float %i.aag, i64 0
  %broadcast.splat1109 = shufflevector <4 x float> %broadcast.splatinsert1108, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aah = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert1104 = insertelement <4 x i32> poison, i32 %i.aah, i64 0
  %broadcast.splat1105 = shufflevector <4 x i32> %broadcast.splatinsert1104, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat1105, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1106 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1110, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1107 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next1111, %vec.epilog.vector.body ] ; 2 uses
  %i.aai = uitofp nneg <4 x i32> %vec.ind1107 to <4 x float>
  %i.aaj = fmul <4 x float> %broadcast.splat1109, %i.aai
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %index1106
  store <4 x float> %i.aaj, ptr %i.aak, align 4, !tbaa !82, !alias.scope !93, !noalias !92
  %index.next1110 = add nuw i64 %index1106, 4     ; 2 uses
  %vec.ind.next1111 = add <4 x i32> %vec.ind1107, splat (i32 4)
  %i.aal = icmp eq i64 %index.next1110, %n.vec1103
  br i1 %i.aal, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !55

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1112 = icmp eq i64 %n.vec1103, %wide.trip.count784
  br i1 %cmp.n1112, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge, label %.lr.ph664.preheader

.lr.ph664.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv781.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1103, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter1215 = and i64 %wide.trip.count784, 3  ; 2 uses
  %lcmp.mod1216.not = icmp eq i64 %xtraiter1215, 0
  br i1 %lcmp.mod1216.not, label %.lr.ph664.prol.loopexit, label %.lr.ph664.prol

.lr.ph664.prol:                                   ; preds = %.lr.ph664.preheader, %.lr.ph664.prol
  %indvars.iv781.prol = phi i64 [ %indvars.iv.next782.prol, %.lr.ph664.prol ], [ %indvars.iv781.ph, %.lr.ph664.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph664.prol ], [ 0, %.lr.ph664.preheader ]
  %i.aam = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.aan = fcmp oeq float %i.aam, 0.000000e+00
  %i.aao = trunc nuw nsw i64 %indvars.iv781.prol to i32
  %i.aap = uitofp nneg i32 %i.aao to float
  %..prol = select i1 %i.aan, float %i.hl, float %i.aam
  %i.aaq = fmul float %..prol, %i.aap
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv781.prol
  store float %i.aaq, ptr %i.aar, align 4, !tbaa !82
  %indvars.iv.next782.prol = add nuw nsw i64 %indvars.iv781.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1215
  br i1 %prol.iter.cmp.not, label %.lr.ph664.prol.loopexit, label %.lr.ph664.prol, !llvm.loop !56

.lr.ph664.prol.loopexit:                          ; preds = %.lr.ph664.prol, %.lr.ph664.preheader
  %indvars.iv781.unr = phi i64 [ %indvars.iv781.ph, %.lr.ph664.preheader ], [ %indvars.iv.next782.prol, %.lr.ph664.prol ]
  %i.aas = sub nsw i64 %indvars.iv781.ph, %wide.trip.count784
  %i.aat = icmp ugt i64 %i.aas, -4
  br i1 %i.aat, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge, label %.lr.ph664

.lr.ph664:                                        ; preds = %.lr.ph664.prol.loopexit, %.lr.ph664
  %indvars.iv781 = phi i64 [ %indvars.iv.next782.3, %.lr.ph664 ], [ %indvars.iv781.unr, %.lr.ph664.prol.loopexit ] ; 6 uses
  %i.aau = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.aav = fcmp oeq float %i.aau, 0.000000e+00
  %i.aaw = trunc nuw nsw i64 %indvars.iv781 to i32
  %i.aax = uitofp nneg i32 %i.aaw to float
  %. = select i1 %i.aav, float %i.hl, float %i.aau
  %i.aay = fmul float %., %i.aax
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv781
  store float %i.aay, ptr %i.aaz, align 4, !tbaa !82
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %i.aba = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.abb = fcmp oeq float %i.aba, 0.000000e+00
  %i.abc = trunc nuw nsw i64 %indvars.iv.next782 to i32
  %i.abd = uitofp nneg i32 %i.abc to float
  %..1 = select i1 %i.abb, float %i.hl, float %i.aba
  %i.abe = fmul float %..1, %i.abd
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv.next782
  store float %i.abe, ptr %i.abf, align 4, !tbaa !82
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv781, 2 ; 2 uses
  %i.abg = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.abh = fcmp oeq float %i.abg, 0.000000e+00
  %i.abi = trunc nuw nsw i64 %indvars.iv.next782.1 to i32
  %i.abj = uitofp nneg i32 %i.abi to float
  %..2 = select i1 %i.abh, float %i.hl, float %i.abg
  %i.abk = fmul float %..2, %i.abj
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv.next782.1
  store float %i.abk, ptr %i.abl, align 4, !tbaa !82
  %indvars.iv.next782.2 = add nuw nsw i64 %indvars.iv781, 3 ; 2 uses
  %i.abm = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !82 ; 2 uses
  %i.abn = fcmp oeq float %i.abm, 0.000000e+00
  %i.abo = trunc nuw nsw i64 %indvars.iv.next782.2 to i32
  %i.abp = uitofp nneg i32 %i.abo to float
  %..3 = select i1 %i.abn, float %i.hl, float %i.abm
  %i.abq = fmul float %..3, %i.abp
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv.next782.2
  store float %i.abq, ptr %i.abr, align 4, !tbaa !82
  %indvars.iv.next782.3 = add nuw nsw i64 %indvars.iv781, 4 ; 2 uses
  %exitcond785.not.3 = icmp eq i64 %indvars.iv.next782.3, %wide.trip.count784
  br i1 %exitcond785.not.3, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge, label %.lr.ph664, !llvm.loop !57

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge: ; preds = %.lr.ph664.prol.loopexit, %.lr.ph664, %middle.block, %vec.epilog.middle.block, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360.preheader
  %i.abs = add i32 %.0242, 1                      ; 4 uses
  %i.abt = sext i32 %i.abs to i64
  %i.abu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.54, i32 noundef 437, i64 noundef range(i64 -2147483648, 2147483648) %i.abt, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 14 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362.preheader: ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit360._crit_edge
  %.not298665 = icmp slt i32 %.0242, 0
  br i1 %.not298665, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362._crit_edge, label %iter.check1140

iter.check1140:                                   ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362.preheader
  %wide.trip.count789 = zext i32 %i.abs to i64    ; 9 uses
  %min.iters.check1118 = icmp ult i32 %i.abs, 4
  br i1 %min.iters.check1118, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit362.preheader1166, label %vector.memcheck1119

vector.memcheck1119:                              ; preds = %iter.check1140
  %i.abv = shl nuw nsw i64 %wide.trip.count789, 2
end_hunk_0
