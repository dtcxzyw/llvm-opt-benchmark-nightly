Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii:bb.a
  %.reass960.us = mul i32 %factor.op.mul959, %i.vs
  %i.vt = sext i32 %.reass960.us to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.vt
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.bh
  %indvars.iv1007 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1008, %bb.bh ] ; 3 uses
  %i.vv = trunc i64 %indvars.iv1007 to i32
  %i.vw = add i32 %i.vc, %i.vv                    ; 2 uses
  %i.vx = sdiv i32 %i.vw, %i.ub
  %i.vy = srem i32 %i.vw, %i.ub
  %i.vz = mul nsw i32 %i.vx, 6
  %i.wa = sext i32 %i.vz to i64                   ; 2 uses
  %.reass954.us = mul i64 %factor.op.mul953.us, %i.wa
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vr, i64 %.reass954.us
  %i.wc = mul nsw i32 %i.vy, 6                    ; 8 uses
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [4 x i8], ptr %i.wb, i64 %i.wd
  %i.wf = or disjoint i32 %i.wc, 1
  %i.wg = load i32, ptr %i.d, align 4             ; 7 uses
  %i.wh = icmp slt i32 %i.wf, %i.wg
  %i.wi = add nsw i32 %i.wc, 2
  %i.wj = icmp slt i32 %i.wi, %i.wg
  %i.wk = add nsw i32 %i.wc, 3
  %i.wl = icmp slt i32 %i.wk, %i.wg
  %i.wm = add nsw i32 %i.wc, 4
  %i.wn = icmp slt i32 %i.wm, %i.wg
  %i.wo = add nsw i32 %i.wc, 5
  %i.wp = icmp slt i32 %i.wo, %i.wg
  %i.wq = add nsw i32 %i.wc, 6
  %i.wr = icmp slt i32 %i.wq, %i.wg
  %i.ws = add nsw i32 %i.wc, 7
  %i.wt = icmp slt i32 %i.ws, %i.wg
  %invariant.op1021 = sub nsw i64 %i.vk, %i.wa
  br label %bb.ap

bb.ap:                                            ; preds = %bb.be, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv999 = phi i64 [ %indvars.iv.next1000, %bb.be ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ] ; 10 uses
  %.0640941.us = phi ptr [ %i.za, %bb.be ], [ %i.we, %_ZN4ncnn3MatD2Ev.exit.us ] ; 9 uses
  %i.wu = icmp slt i64 %indvars.iv999, %invariant.op1021
  br i1 %i.wu, label %bb.aq, label %bb.be

bb.aq:                                            ; preds = %bb.ap
  %i.wv = load float, ptr %.0640941.us, align 4, !tbaa !56 ; 2 uses
  br i1 %i.wh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ww = getelementptr inbounds nuw i8, ptr %.0640941.us, i64 4
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !56
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0636.us = phi nsz float [ %i.wx, %bb.ar ], [ 0.000000e+00, %bb.aq ] ; 2 uses
  br i1 %i.wj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.wy = getelementptr inbounds nuw i8, ptr %.0640941.us, i64 8
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !56
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0634.us = phi nsz float [ %i.wz, %bb.at ], [ 0.000000e+00, %bb.as ] ; 2 uses
  br i1 %i.wl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.xa = getelementptr inbounds nuw i8, ptr %.0640941.us, i64 12
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !56
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0632.us = phi nsz float [ %i.xb, %bb.av ], [ 0.000000e+00, %bb.au ] ; 2 uses
  br i1 %i.wn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.xc = getelementptr inbounds nuw i8, ptr %.0640941.us, i64 16
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !56
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0630.us = phi nsz float [ %i.xd, %bb.ax ], [ 0.000000e+00, %bb.aw ] ; 2 uses
  br i1 %i.wp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.xe = getelementptr inbounds nuw i8, ptr %.0640941.us, i64 20
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !56
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0628.us = phi nsz float [ %i.xf, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 2 uses
  br i1 %i.wr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.xg = getelementptr inbounds nuw i8, ptr %.0640941.us, i64 24
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !56
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0626.us = phi nsz float [ %i.xh, %bb.bb ], [ 0.000000e+00, %bb.ba ] ; 2 uses
  br i1 %i.wt, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.xi = getelementptr inbounds nuw i8, ptr %.0640941.us, i64 28
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !56
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ap
  %.0638.us = phi nsz float [ %i.wv, %bb.bd ], [ %i.wv, %bb.bc ], [ 0.000000e+00, %bb.ap ]
  %.1637.us = phi nsz float [ %.0636.us, %bb.bd ], [ %.0636.us, %bb.bc ], [ 0.000000e+00, %bb.ap ] ; 4 uses
  %.1635.us = phi nsz float [ %.0634.us, %bb.bd ], [ %.0634.us, %bb.bc ], [ 0.000000e+00, %bb.ap ] ; 4 uses
  %.1633.us = phi nsz float [ %.0632.us, %bb.bd ], [ %.0632.us, %bb.bc ], [ 0.000000e+00, %bb.ap ] ; 3 uses
  %.1631.us = phi nsz float [ %.0630.us, %bb.bd ], [ %.0630.us, %bb.bc ], [ 0.000000e+00, %bb.ap ] ; 4 uses
  %.1629.us = phi nsz float [ %.0628.us, %bb.bd ], [ %.0628.us, %bb.bc ], [ 0.000000e+00, %bb.ap ] ; 4 uses
  %.1627.us = phi nsz float [ %.0626.us, %bb.bd ], [ %.0626.us, %bb.bc ], [ 0.000000e+00, %bb.ap ] ; 4 uses
  %.0625.us = phi nsz float [ %i.xj, %bb.bd ], [ 0.000000e+00, %bb.bc ], [ 0.000000e+00, %bb.ap ]
  %.neg880.us = fmul fast float %.1631.us, 4.250000e+00
  %i.xk = fsub fast float %.1635.us, %.neg880.us
  %i.xl = fadd fast float %i.xk, %.1627.us        ; 2 uses
  %.neg881.us = fmul fast float %.1633.us, 4.250000e+00
  %i.xm = fsub fast float %.1637.us, %.neg881.us
  %i.xn = fadd fast float %i.xm, %.1629.us        ; 2 uses
  %i.xo = fmul fast float %.1635.us, 2.500000e-01
  %.neg882.us = fmul fast float %.1631.us, 1.250000e+00
  %i.xp = fsub fast float %i.xo, %.neg882.us
  %i.xq = fadd fast float %i.xp, %.1627.us        ; 2 uses
  %i.xr = fmul fast float %.1637.us, 5.000000e-01
  %i.xs = fmul fast float %.1633.us, 2.500000e+00 ; 2 uses
  %i.xt = fsub fast float %i.xr, %i.xs
  %i.xu = fmul fast float %.1629.us, 2.000000e+00
  %i.xv = fadd fast float %i.xu, %i.xt            ; 2 uses
  %i.xw = fmul fast float %.1635.us, 4.000000e+00
  %i.xx = fmul fast float %.1631.us, 5.000000e+00
  %i.xy = fsub fast float %i.xw, %i.xx
  %i.xz = fadd fast float %i.xy, %.1627.us        ; 2 uses
  %i.ya = fmul fast float %.1637.us, 2.000000e+00
  %i.yb = fsub fast float %i.ya, %i.xs
  %i.yc = fmul fast float %.1629.us, 5.000000e-01
  %i.yd = fadd fast float %i.yc, %i.yb            ; 2 uses
  %i.ye = fsub fast float %.0638.us, %.1627.us
  %i.yf = fsub fast float %.1631.us, %.1635.us
  %i.yg = fmul fast float %i.yf, 5.250000e+00
  %i.yh = fadd fast float %i.ye, %i.yg
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv999
  store float %i.yh, ptr %i.yi, align 4, !tbaa !56
  %i.yj = fadd fast float %i.xl, %i.xn
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %indvars.iv999
  store float %i.yj, ptr %i.yk, align 4, !tbaa !56
  %i.yl = fsub fast float %i.xl, %i.xn
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %indvars.iv999
  store float %i.yl, ptr %i.ym, align 4, !tbaa !56
  %i.yn = fadd fast float %i.xq, %i.xv
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %indvars.iv999
  store float %i.yn, ptr %i.yo, align 4, !tbaa !56
  %i.yp = fsub fast float %i.xq, %i.xv
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv999
  store float %i.yp, ptr %i.yq, align 4, !tbaa !56
  %i.yr = fadd fast float %i.xz, %i.yd
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %indvars.iv999
  store float %i.yr, ptr %i.ys, align 4, !tbaa !56
  %i.yt = fsub fast float %i.xz, %i.yd
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv999
  store float %i.yt, ptr %i.yu, align 4, !tbaa !56
  %i.yv = fsub fast float %.0625.us, %.1637.us
  %i.yw = fsub fast float %.1633.us, %.1629.us
  %i.yx = fmul fast float %i.yw, 5.250000e+00
  %i.yy = fadd fast float %i.yv, %i.yx
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.ui, i64 %indvars.iv999
  store float %i.yy, ptr %i.yz, align 4, !tbaa !56
  %i.za = getelementptr inbounds [4 x i8], ptr %.0640941.us, i64 %i.uk
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1 ; 2 uses
  %exitcond1002.not = icmp eq i64 %indvars.iv.next1000, 8
  br i1 %exitcond1002.not, label %bb.bf, label %bb.ap, !llvm.loop !1248

bb.bf:                                            ; preds = %bb.be
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %indvars.iv1007 ; 8 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.ul
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.un
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.up
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.ur
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.ut
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.uv
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.ux
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %.0615950.us = phi ptr [ %i.aat, %bb.bg ], [ %i.zi, %bb.bf ] ; 2 uses
  %.0616949.us = phi ptr [ %i.aas, %bb.bg ], [ %i.zh, %bb.bf ] ; 2 uses
  %.0617948.us = phi ptr [ %i.aar, %bb.bg ], [ %i.zg, %bb.bf ] ; 2 uses
  %.0618947.us = phi ptr [ %i.aaq, %bb.bg ], [ %i.zf, %bb.bf ] ; 2 uses
  %.0619946.us = phi ptr [ %i.aap, %bb.bg ], [ %i.ze, %bb.bf ] ; 2 uses
  %.0620945.us = phi ptr [ %i.aao, %bb.bg ], [ %i.zd, %bb.bf ] ; 2 uses
  %.0621944.us = phi ptr [ %i.aan, %bb.bg ], [ %i.zc, %bb.bf ] ; 2 uses
  %.0622943.us = phi ptr [ %i.aam, %bb.bg ], [ %i.zb, %bb.bf ] ; 2 uses
  %i.zj = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv1003 ; 5 uses
  %i.zk = load float, ptr %i.zj, align 16, !tbaa !56
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 4
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zj, i64 12
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zj, i64 20
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zj, i64 28
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !56
  %i.zq = load <2 x float>, ptr %i.zl, align 4, !tbaa !56 ; 4 uses
  %i.zr = load <2 x float>, ptr %i.zm, align 4, !tbaa !56 ; 4 uses
  %i.zs = load <2 x float>, ptr %i.zn, align 4, !tbaa !56 ; 5 uses
  %i.zt = fmul fast <2 x float> %i.zr, splat (float 4.250000e+00)
  %i.zu = fsub fast <2 x float> %i.zq, %i.zt
  %i.zv = fadd fast <2 x float> %i.zu, %i.zs      ; 2 uses
  %7 = extractelement <2 x float> %i.zq, i64 1    ; 2 uses
  %8 = extractelement <2 x float> %i.zr, i64 1    ; 2 uses
  %9 = extractelement <2 x float> %i.zq, i64 0    ; 2 uses
  %10 = extractelement <2 x float> %i.zs, i64 0
  %i.zw = fmul fast <2 x float> %i.zq, <float 5.000000e-01, float 2.500000e-01>
  %i.zx = fmul fast <2 x float> %i.zr, <float 2.500000e+00, float 1.250000e+00> ; 2 uses
  %11 = extractelement <2 x float> %i.zs, i64 1   ; 2 uses
  %i.zy = fmul reassoc arcp contract afn <2 x float> %i.zs, <float 2.000000e+00, float 1.000000e+00>
  %i.zz = fadd reassoc nsz arcp contract afn <2 x float> %i.zw, %i.zy
  %i.aaa = fsub reassoc nsz arcp contract afn <2 x float> %i.zz, %i.zx ; 2 uses
  %12 = fmul fast float %7, 4.000000e+00
  %13 = fmul fast float %8, 5.000000e+00
  %14 = fsub fast float %12, %13
  %15 = fadd fast float %14, %11                  ; 2 uses
  %16 = fmul fast float %9, 2.000000e+00
  %17 = extractelement <2 x float> %i.zx, i64 0
  %18 = fsub fast float %16, %17
  %19 = fmul fast float %10, 5.000000e-01
  %i.aab = fadd fast float %19, %18               ; 2 uses
  %20 = fsub fast float %i.zk, %11
  %i.aac = fsub fast float %8, %7
  %21 = fmul fast float %i.aac, 5.250000e+00
  %22 = fadd fast float %20, %21
  store float %22, ptr %.0622943.us, align 4, !tbaa !56
  %i.aad = extractelement <2 x float> %i.zv, i64 0 ; 2 uses
  %i.aae = extractelement <2 x float> %i.zv, i64 1 ; 2 uses
  %i.aaf = fadd fast float %i.aae, %i.aad
  store float %i.aaf, ptr %.0621944.us, align 4, !tbaa !56
  %i.aag = fsub fast float %i.aae, %i.aad
  store float %i.aag, ptr %.0620945.us, align 4, !tbaa !56
  %i.aah = extractelement <2 x float> %i.aaa, i64 0 ; 2 uses
  %i.aai = extractelement <2 x float> %i.aaa, i64 1 ; 2 uses
  %i.aaj = fadd fast float %i.aai, %i.aah
  store float %i.aaj, ptr %.0619946.us, align 4, !tbaa !56
  %i.aak = fsub fast float %i.aai, %i.aah
  store float %i.aak, ptr %.0618947.us, align 4, !tbaa !56
  %23 = fadd fast float %15, %i.aab
  store float %23, ptr %.0617948.us, align 4, !tbaa !56
  %24 = fsub fast float %15, %i.aab
  store float %24, ptr %.0616949.us, align 4, !tbaa !56
  %25 = fsub fast float %i.zp, %9
  %foldExtExtBinop = fsub fast <2 x float> %i.zr, %i.zs
  %i.aal = extractelement <2 x float> %foldExtExtBinop, i64 0
  %26 = fmul fast float %i.aal, 5.250000e+00
  %27 = fadd fast float %25, %26
  store float %27, ptr %.0615950.us, align 4, !tbaa !56
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %.0622943.us, i64 %i.uz
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %.0621944.us, i64 %i.uz
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %.0620945.us, i64 %i.uz
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.0619946.us, i64 %i.uz
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.0618947.us, i64 %i.uz
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.0617948.us, i64 %i.uz
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.0616949.us, i64 %i.uz
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.0615950.us, i64 %i.uz
  %indvars.iv.next1004 = add nuw nsw i64 %indvars.iv1003, 1 ; 2 uses
  %exitcond1006.not = icmp eq i64 %indvars.iv.next1004, 8
  br i1 %exitcond1006.not, label %bb.bh, label %bb.bg, !llvm.loop !1249

bb.bh:                                            ; preds = %bb.bg
  %indvars.iv.next1008 = add nuw nsw i64 %indvars.iv1007, 1 ; 2 uses
  %exitcond1011.not = icmp eq i64 %indvars.iv.next1008, %wide.trip.count1010
  br i1 %exitcond1011.not, label %._crit_edge.us961, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !1250

._crit_edge.us961:                                ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, 1 ; 2 uses
  %i.aau = icmp slt i64 %indvars.iv.next1013, %i.vo
  br i1 %i.aau, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge958, !llvm.loop !1251

._crit_edge958:                                   ; preds = %._crit_edge.us961, %.lr.ph957, %._crit_edge933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !81
  %i.k = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !81
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !81
  %i.n = load i32, ptr %i.d, align 4, !tbaa !81   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.du, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !81    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !81    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !81
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !81
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !89, !noalias !1261 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !90, !noalias !1261 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !103, !noalias !1261
  %i.bi = load ptr, ptr %8, align 8, !tbaa !37, !noalias !1261
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !38, !noalias !1261
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !79, !noalias !1261 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !80, !noalias !1261
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !1261
  store ptr %i.bo, ptr %11, align 8, !tbaa !37, !alias.scope !1261
  store ptr null, ptr %i.v, align 8, !tbaa !35, !alias.scope !1261
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !79, !alias.scope !1261
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !80, !alias.scope !1261
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !36, !alias.scope !1261
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !89, !alias.scope !1261
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !90, !alias.scope !1261
  store i32 1, ptr %i.ac, align 4, !tbaa !103, !alias.scope !1261
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !82, !alias.scope !1261
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !38, !alias.scope !1261
  %i.by = load i32, ptr %i.af, align 8, !tbaa !102, !noalias !1261 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !102, !alias.scope !1261
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !38, !alias.scope !1261
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !81
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !37, !noalias !1262
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !38, !noalias !1262
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !79, !noalias !1262 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !80, !noalias !1262
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !36, !noalias !1262
  %i.cm = load i32, ptr %5, align 4, !tbaa !81
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !35
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !79
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !80
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !36
  store i32 2, ptr %i.aq, align 8, !tbaa !102
  %i.cp = load <4 x i32>, ptr %i.ag, align 4
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !90, !noalias !1262
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !89, !noalias !1262
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !37
  %i.cy = shufflevector <4 x i32> %i.cp, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cy, ptr %i.ar, align 4, !tbaa !81
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !38, !alias.scope !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.bpl = icmp slt i32 %i.bpk, %i.bpg
  %i.bpm = add nsw i32 %i.bpc, 4
  %i.bpn = icmp slt i32 %i.bpm, %i.bpg
  %i.bpo = add nsw i32 %i.bpc, 5
  %i.bpp = icmp slt i32 %i.bpo, %i.bpg
  %i.bpq = add nsw i32 %i.bpc, 6
  %i.bpr = icmp slt i32 %i.bpq, %i.bpg
  %i.bps = add nsw i32 %i.bpc, 7
  %i.bpt = icmp slt i32 %i.bps, %i.bpg
  %invariant.op1040 = sub nsw i64 %i.bok, %i.bpa
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fr, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %bb.fr ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ] ; 10 uses
  %.0640957.us = phi ptr [ %i.bsy, %bb.fr ], [ %i.bpe, %_ZN4ncnn3MatD2Ev.exit.us ] ; 9 uses
  %i.bpu = icmp slt i64 %indvars.iv1012, %invariant.op1040
  br i1 %i.bpu, label %bb.fd, label %bb.fr

bb.fd:                                            ; preds = %bb.fc
  %i.bpv = load i16, ptr %.0640957.us, align 2, !tbaa !117
  %i.bpw = zext i16 %i.bpv to i32
  %i.bpx = shl nuw i32 %i.bpw, 16
  %i.bpy = bitcast i32 %i.bpx to float            ; 2 uses
  br i1 %i.bph, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.bpz = getelementptr inbounds nuw i8, ptr %.0640957.us, i64 2
  %i.bqa = load i16, ptr %i.bpz, align 2, !tbaa !117
  %i.bqb = zext i16 %i.bqa to i32
  %i.bqc = shl nuw i32 %i.bqb, 16
  %i.bqd = bitcast i32 %i.bqc to float
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.0636.us = phi nsz float [ %i.bqd, %bb.fe ], [ 0.000000e+00, %bb.fd ] ; 2 uses
  br i1 %i.bpj, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.bqe = getelementptr inbounds nuw i8, ptr %.0640957.us, i64 4
  %i.bqf = load i16, ptr %i.bqe, align 2, !tbaa !117
  %i.bqg = zext i16 %i.bqf to i32
  %i.bqh = shl nuw i32 %i.bqg, 16
  %i.bqi = bitcast i32 %i.bqh to float
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.0634.us = phi nsz float [ %i.bqi, %bb.fg ], [ 0.000000e+00, %bb.ff ] ; 2 uses
  br i1 %i.bpl, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.bqj = getelementptr inbounds nuw i8, ptr %.0640957.us, i64 6
  %i.bqk = load i16, ptr %i.bqj, align 2, !tbaa !117
  %i.bql = zext i16 %i.bqk to i32
  %i.bqm = shl nuw i32 %i.bql, 16
  %i.bqn = bitcast i32 %i.bqm to float
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.0632.us = phi nsz float [ %i.bqn, %bb.fi ], [ 0.000000e+00, %bb.fh ] ; 2 uses
  br i1 %i.bpn, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.bqo = getelementptr inbounds nuw i8, ptr %.0640957.us, i64 8
  %i.bqp = load i16, ptr %i.bqo, align 2, !tbaa !117
  %i.bqq = zext i16 %i.bqp to i32
  %i.bqr = shl nuw i32 %i.bqq, 16
  %i.bqs = bitcast i32 %i.bqr to float
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.0630.us = phi nsz float [ %i.bqs, %bb.fk ], [ 0.000000e+00, %bb.fj ] ; 2 uses
  br i1 %i.bpp, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.bqt = getelementptr inbounds nuw i8, ptr %.0640957.us, i64 10
  %i.bqu = load i16, ptr %i.bqt, align 2, !tbaa !117
  %i.bqv = zext i16 %i.bqu to i32
  %i.bqw = shl nuw i32 %i.bqv, 16
  %i.bqx = bitcast i32 %i.bqw to float
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.0628.us = phi nsz float [ %i.bqx, %bb.fm ], [ 0.000000e+00, %bb.fl ] ; 2 uses
  br i1 %i.bpr, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.bqy = getelementptr inbounds nuw i8, ptr %.0640957.us, i64 12
  %i.bqz = load i16, ptr %i.bqy, align 2, !tbaa !117
  %i.bra = zext i16 %i.bqz to i32
  %i.brb = shl nuw i32 %i.bra, 16
  %i.brc = bitcast i32 %i.brb to float
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.0626.us = phi nsz float [ %i.brc, %bb.fo ], [ 0.000000e+00, %bb.fn ] ; 2 uses
  br i1 %i.bpt, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.brd = getelementptr inbounds nuw i8, ptr %.0640957.us, i64 14
  %i.bre = load i16, ptr %i.brd, align 2, !tbaa !117
  %i.brf = zext i16 %i.bre to i32
  %i.brg = shl nuw i32 %i.brf, 16
  %i.brh = bitcast i32 %i.brg to float
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %bb.fc
  %.0638.us = phi nsz float [ %i.bpy, %bb.fq ], [ %i.bpy, %bb.fp ], [ 0.000000e+00, %bb.fc ]
  %.1637.us = phi nsz float [ %.0636.us, %bb.fq ], [ %.0636.us, %bb.fp ], [ 0.000000e+00, %bb.fc ] ; 4 uses
  %.1635.us = phi nsz float [ %.0634.us, %bb.fq ], [ %.0634.us, %bb.fp ], [ 0.000000e+00, %bb.fc ] ; 4 uses
  %.1633.us = phi nsz float [ %.0632.us, %bb.fq ], [ %.0632.us, %bb.fp ], [ 0.000000e+00, %bb.fc ] ; 3 uses
  %.1631.us = phi nsz float [ %.0630.us, %bb.fq ], [ %.0630.us, %bb.fp ], [ 0.000000e+00, %bb.fc ] ; 4 uses
  %.1629.us = phi nsz float [ %.0628.us, %bb.fq ], [ %.0628.us, %bb.fp ], [ 0.000000e+00, %bb.fc ] ; 4 uses
  %.1627.us = phi nsz float [ %.0626.us, %bb.fq ], [ %.0626.us, %bb.fp ], [ 0.000000e+00, %bb.fc ] ; 4 uses
  %.0625.us = phi nsz float [ %i.brh, %bb.fq ], [ 0.000000e+00, %bb.fp ], [ 0.000000e+00, %bb.fc ]
  %.neg896.us = fmul fast float %.1631.us, 4.250000e+00
  %i.bri = fsub fast float %.1635.us, %.neg896.us
  %i.brj = fadd fast float %i.bri, %.1627.us      ; 2 uses
  %.neg897.us = fmul fast float %.1633.us, 4.250000e+00
  %i.brk = fsub fast float %.1637.us, %.neg897.us
  %i.brl = fadd fast float %i.brk, %.1629.us      ; 2 uses
  %i.brm = fmul fast float %.1635.us, 2.500000e-01
  %.neg898.us = fmul fast float %.1631.us, 1.250000e+00
  %i.brn = fsub fast float %i.brm, %.neg898.us
  %i.bro = fadd fast float %i.brn, %.1627.us      ; 2 uses
  %i.brp = fmul fast float %.1637.us, 5.000000e-01
  %i.brq = fmul fast float %.1633.us, 2.500000e+00 ; 2 uses
  %i.brr = fsub fast float %i.brp, %i.brq
  %i.brs = fmul fast float %.1629.us, 2.000000e+00
  %i.brt = fadd fast float %i.brs, %i.brr         ; 2 uses
  %i.bru = fmul fast float %.1635.us, 4.000000e+00
  %i.brv = fmul fast float %.1631.us, 5.000000e+00
  %i.brw = fsub fast float %i.bru, %i.brv
  %i.brx = fadd fast float %i.brw, %.1627.us      ; 2 uses
  %i.bry = fmul fast float %.1637.us, 2.000000e+00
  %i.brz = fsub fast float %i.bry, %i.brq
  %i.bsa = fmul fast float %.1629.us, 5.000000e-01
  %i.bsb = fadd fast float %i.bsa, %i.brz         ; 2 uses
  %i.bsc = fsub fast float %.0638.us, %.1627.us
  %i.bsd = fsub fast float %.1631.us, %.1635.us
  %i.bse = fmul fast float %i.bsd, 5.250000e+00
  %i.bsf = fadd fast float %i.bsc, %i.bse
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv1012
  store float %i.bsf, ptr %i.bsg, align 4, !tbaa !56
  %i.bsh = fadd fast float %i.brj, %i.brl
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %i.bnc, i64 %indvars.iv1012
  store float %i.bsh, ptr %i.bsi, align 4, !tbaa !56
  %i.bsj = fsub fast float %i.brj, %i.brl
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.bnd, i64 %indvars.iv1012
  store float %i.bsj, ptr %i.bsk, align 4, !tbaa !56
  %i.bsl = fadd fast float %i.bro, %i.brt
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %i.bne, i64 %indvars.iv1012
  store float %i.bsl, ptr %i.bsm, align 4, !tbaa !56
  %i.bsn = fsub fast float %i.bro, %i.brt
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %indvars.iv1012
  store float %i.bsn, ptr %i.bso, align 4, !tbaa !56
  %i.bsp = fadd fast float %i.brx, %i.bsb
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %i.bng, i64 %indvars.iv1012
  store float %i.bsp, ptr %i.bsq, align 4, !tbaa !56
  %i.bsr = fsub fast float %i.brx, %i.bsb
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.bnh, i64 %indvars.iv1012
  store float %i.bsr, ptr %i.bss, align 4, !tbaa !56
  %i.bst = fsub fast float %.0625.us, %.1637.us
  %i.bsu = fsub fast float %.1633.us, %.1629.us
  %i.bsv = fmul fast float %i.bsu, 5.250000e+00
  %i.bsw = fadd fast float %i.bst, %i.bsv
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %i.bni, i64 %indvars.iv1012
  store float %i.bsw, ptr %i.bsx, align 4, !tbaa !56
  %i.bsy = getelementptr inbounds [2 x i8], ptr %.0640957.us, i64 %i.bnk
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 1 ; 2 uses
  %exitcond1015.not = icmp eq i64 %indvars.iv.next1013, 8
  br i1 %exitcond1015.not, label %bb.fs, label %bb.fc, !llvm.loop !2336

bb.fs:                                            ; preds = %bb.fr
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %i.bou, i64 %indvars.iv1020 ; 8 uses
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %i.bsz, i64 %i.bnl
  %i.btb = getelementptr inbounds nuw [4 x i8], ptr %i.bsz, i64 %i.bnn
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %i.bsz, i64 %i.bnp
  %i.btd = getelementptr inbounds nuw [4 x i8], ptr %i.bsz, i64 %i.bnr
  %i.bte = getelementptr inbounds nuw [4 x i8], ptr %i.bsz, i64 %i.bnt
  %i.btf = getelementptr inbounds nuw [4 x i8], ptr %i.bsz, i64 %i.bnv
  %i.btg = getelementptr inbounds nuw [4 x i8], ptr %i.bsz, i64 %i.bnx
  br label %bb.ft

bb.ft:                                            ; preds = %bb.ft, %bb.fs
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %bb.ft ], [ 0, %bb.fs ] ; 2 uses
  %.0615966.us = phi ptr [ %i.bur, %bb.ft ], [ %i.btg, %bb.fs ] ; 2 uses
  %.0616965.us = phi ptr [ %i.buq, %bb.ft ], [ %i.btf, %bb.fs ] ; 2 uses
  %.0617964.us = phi ptr [ %i.bup, %bb.ft ], [ %i.bte, %bb.fs ] ; 2 uses
  %.0618963.us = phi ptr [ %i.buo, %bb.ft ], [ %i.btd, %bb.fs ] ; 2 uses
  %.0619962.us = phi ptr [ %i.bun, %bb.ft ], [ %i.btc, %bb.fs ] ; 2 uses
  %.0620961.us = phi ptr [ %i.bum, %bb.ft ], [ %i.btb, %bb.fs ] ; 2 uses
  %.0621960.us = phi ptr [ %i.bul, %bb.ft ], [ %i.bta, %bb.fs ] ; 2 uses
  %.0622959.us = phi ptr [ %i.buk, %bb.ft ], [ %i.bsz, %bb.fs ] ; 2 uses
  %i.bth = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv1016 ; 5 uses
  %i.bti = load float, ptr %i.bth, align 16, !tbaa !56
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bth, i64 4
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bth, i64 12
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bth, i64 20
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bth, i64 28
  %i.btn = load float, ptr %i.btm, align 4, !tbaa !56
  %i.bto = load <2 x float>, ptr %i.btj, align 4, !tbaa !56 ; 4 uses
  %i.btp = load <2 x float>, ptr %i.btk, align 4, !tbaa !56 ; 4 uses
  %i.btq = load <2 x float>, ptr %i.btl, align 4, !tbaa !56 ; 5 uses
  %i.btr = fmul fast <2 x float> %i.btp, splat (float 4.250000e+00)
  %i.bts = fsub fast <2 x float> %i.bto, %i.btr
  %i.btt = fadd fast <2 x float> %i.bts, %i.btq   ; 2 uses
  %7 = extractelement <2 x float> %i.bto, i64 1   ; 2 uses
  %8 = extractelement <2 x float> %i.btp, i64 1   ; 2 uses
  %9 = extractelement <2 x float> %i.bto, i64 0   ; 2 uses
  %10 = extractelement <2 x float> %i.btq, i64 0
  %i.btu = fmul fast <2 x float> %i.bto, <float 5.000000e-01, float 2.500000e-01>
  %i.btv = fmul fast <2 x float> %i.btp, <float 2.500000e+00, float 1.250000e+00> ; 2 uses
  %11 = extractelement <2 x float> %i.btq, i64 1  ; 2 uses
  %i.btw = fmul reassoc arcp contract afn <2 x float> %i.btq, <float 2.000000e+00, float 1.000000e+00>
  %i.btx = fadd reassoc nsz arcp contract afn <2 x float> %i.btu, %i.btw
  %i.bty = fsub reassoc nsz arcp contract afn <2 x float> %i.btx, %i.btv ; 2 uses
  %12 = fmul fast float %7, 4.000000e+00
  %13 = fmul fast float %8, 5.000000e+00
  %14 = fsub fast float %12, %13
  %15 = fadd fast float %14, %11                  ; 2 uses
  %16 = fmul fast float %9, 2.000000e+00
  %17 = extractelement <2 x float> %i.btv, i64 0
  %18 = fsub fast float %16, %17
  %19 = fmul fast float %10, 5.000000e-01
  %i.btz = fadd fast float %19, %18               ; 2 uses
  %20 = fsub fast float %i.bti, %11
  %i.bua = fsub fast float %8, %7
  %21 = fmul fast float %i.bua, 5.250000e+00
  %22 = fadd fast float %20, %21
  store float %22, ptr %.0622959.us, align 4, !tbaa !56
  %i.bub = extractelement <2 x float> %i.btt, i64 0 ; 2 uses
  %i.buc = extractelement <2 x float> %i.btt, i64 1 ; 2 uses
  %i.bud = fadd fast float %i.buc, %i.bub
  store float %i.bud, ptr %.0621960.us, align 4, !tbaa !56
  %i.bue = fsub fast float %i.buc, %i.bub
  store float %i.bue, ptr %.0620961.us, align 4, !tbaa !56
  %i.buf = extractelement <2 x float> %i.bty, i64 0 ; 2 uses
  %i.bug = extractelement <2 x float> %i.bty, i64 1 ; 2 uses
  %i.buh = fadd fast float %i.bug, %i.buf
  store float %i.buh, ptr %.0619962.us, align 4, !tbaa !56
  %i.bui = fsub fast float %i.bug, %i.buf
  store float %i.bui, ptr %.0618963.us, align 4, !tbaa !56
  %23 = fadd fast float %15, %i.btz
  store float %23, ptr %.0617964.us, align 4, !tbaa !56
  %24 = fsub fast float %15, %i.btz
  store float %24, ptr %.0616965.us, align 4, !tbaa !56
  %25 = fsub fast float %i.btn, %9
  %foldExtExtBinop = fsub fast <2 x float> %i.btp, %i.btq
  %i.buj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %26 = fmul fast float %i.buj, 5.250000e+00
  %27 = fadd fast float %25, %26
  store float %27, ptr %.0615966.us, align 4, !tbaa !56
  %i.buk = getelementptr inbounds nuw [4 x i8], ptr %.0622959.us, i64 %i.bnz
  %i.bul = getelementptr inbounds nuw [4 x i8], ptr %.0621960.us, i64 %i.bnz
  %i.bum = getelementptr inbounds nuw [4 x i8], ptr %.0620961.us, i64 %i.bnz
  %i.bun = getelementptr inbounds nuw [4 x i8], ptr %.0619962.us, i64 %i.bnz
  %i.buo = getelementptr inbounds nuw [4 x i8], ptr %.0618963.us, i64 %i.bnz
  %i.bup = getelementptr inbounds nuw [4 x i8], ptr %.0617964.us, i64 %i.bnz
  %i.buq = getelementptr inbounds nuw [4 x i8], ptr %.0616965.us, i64 %i.bnz
  %i.bur = getelementptr inbounds nuw [4 x i8], ptr %.0615966.us, i64 %i.bnz
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1 ; 2 uses
  %exitcond1019.not = icmp eq i64 %indvars.iv.next1017, 8
  br i1 %exitcond1019.not, label %bb.fu, label %bb.ft, !llvm.loop !2337

bb.fu:                                            ; preds = %bb.ft
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1 ; 2 uses
  %exitcond1024.not = icmp eq i64 %indvars.iv.next1021, %wide.trip.count1023
  br i1 %exitcond1024.not, label %._crit_edge.us977, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !2338

._crit_edge.us977:                                ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 1 ; 2 uses
  %i.bus = icmp slt i64 %indvars.iv.next1026, %i.boo
  br i1 %i.bus, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge974, !llvm.loop !2339

._crit_edge974:                                   ; preds = %._crit_edge.us977, %.lr.ph973, %._crit_edge949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 %i.j, ptr %i.e, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 1, ptr %i.f, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !81
  %i.k = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !81
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !81
  %i.n = load i32, ptr %i.d, align 4, !tbaa !81   ; 2 uses
  %.not66 = icmp sgt i32 %i.n, %i.m
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %i.du, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.au = sdiv i32 %.067, %i.at
  %i.av = srem i32 %.067, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !81    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !81    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !81
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated63 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !81
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !89, !noalias !2349 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !90, !noalias !2349 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !103, !noalias !2349
  %i.bi = load ptr, ptr %8, align 8, !tbaa !37, !noalias !2349
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !38, !noalias !2349
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !79, !noalias !2349 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !80, !noalias !2349
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !36, !noalias !2349
  store ptr %i.bo, ptr %11, align 8, !tbaa !37, !alias.scope !2349
  store ptr null, ptr %i.v, align 8, !tbaa !35, !alias.scope !2349
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !79, !alias.scope !2349
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !80, !alias.scope !2349
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !36, !alias.scope !2349
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !89, !alias.scope !2349
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !90, !alias.scope !2349
  store i32 1, ptr %i.ac, align 4, !tbaa !103, !alias.scope !2349
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !82, !alias.scope !2349
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !38, !alias.scope !2349
  %i.by = load i32, ptr %i.af, align 8, !tbaa !102, !noalias !2349 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !102, !alias.scope !2349
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.e, label %_ZN4ncnn3Mat7channelEi.exit48

bb.e:                                             ; preds = %bb.d
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !38, !alias.scope !2349
  br label %_ZN4ncnn3Mat7channelEi.exit48

_ZN4ncnn3Mat7channelEi.exit48:                    ; preds = %bb.e, %bb.d
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated63, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.cb = load i32, ptr %4, align 4, !tbaa !81
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !37, !noalias !2350
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !38, !noalias !2350
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !79, !noalias !2350 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !80, !noalias !2350
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !36, !noalias !2350
  %i.cm = load i32, ptr %5, align 4, !tbaa !81
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !35
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !79
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !80
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !36
  store i32 2, ptr %i.aq, align 8, !tbaa !102
  %i.cp = load <4 x i32>, ptr %i.ag, align 4
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !90, !noalias !2350
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !89, !noalias !2350
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !37
  %i.cy = shufflevector <4 x i32> %i.cp, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cy, ptr %i.ar, align 4, !tbaa !81
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !38, !alias.scope !2351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_1
