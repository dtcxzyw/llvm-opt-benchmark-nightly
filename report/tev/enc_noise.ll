Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_noise?download=true
inline.NumInlined: 551
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3jxl17GetNoiseParameterERKNS_6Image3IfEEPNS_11NoiseParamsEf:bb.a
  %i.tk = extractelement <4 x float> %i.td, i64 3
  %i.tl = call float @llvm.fmuladd.f32(float %i.tk, float 5.000000e-01, float %i.tj)
  %i.tm = fadd <4 x float> %i.nk, %i.nl           ; 4 uses
  %i.tn = extractelement <4 x float> %i.tm, i64 0
  %i.to = call float @llvm.fmuladd.f32(float %i.tn, float 5.000000e-01, float %i.tl)
  %i.tp = extractelement <4 x float> %i.tm, i64 1
  %i.tq = call float @llvm.fmuladd.f32(float %i.tp, float 5.000000e-01, float %i.to)
  %i.tr = extractelement <4 x float> %i.tm, i64 2
  %i.ts = call float @llvm.fmuladd.f32(float %i.tr, float 5.000000e-01, float %i.tq)
  %i.tt = extractelement <4 x float> %i.tm, i64 3
  %i.tu = call float @llvm.fmuladd.f32(float %i.tt, float 5.000000e-01, float %i.ts)
  %i.tv = fmul float %i.tu, 1.562500e-02          ; 2 uses
  %i.tw = fmul float %i.aam, 1.562500e-02         ; 2 uses
  %i.tx = icmp ult ptr %.0.i.i70, %i.jr
  br i1 %i.tx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.tw, ptr %.0.i.i70, align 4, !tbaa !11, !noalias !67
  %.sroa_idx165.i = getelementptr inbounds nuw i8, ptr %.0.i.i70, i64 4
  store float %i.tv, ptr %.sroa_idx165.i, align 4, !tbaa !11, !noalias !67
  %i.ty = getelementptr inbounds nuw i8, ptr %.0.i.i70, i64 8
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.tz = ptrtoint ptr %.0.i.i70 to i64
  %i.ua = ptrtoint ptr %storemerge.i.i.i79 to i64 ; 2 uses
  %i.ub = sub i64 %i.tz, %i.ua                    ; 2 uses
  %i.uc = ashr exact i64 %i.ub, 3
  %i.ud = add nsw i64 %i.uc, 1                    ; 2 uses
  %i.ue = icmp ugt i64 %i.ud, 2305843009213693951
  br i1 %i.ue, label %bb.h, label %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %.0.i.i70, ptr %i.iz, align 8
  store ptr %i.jr, ptr %i.ja, align 8
  store ptr %storemerge.i.i.i79, ptr %12, align 8
  call void @_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #23
  unreachable

_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i: ; preds = %bb.g
  %i.uf = ptrtoint ptr %i.jr to i64
  %i.ug = sub i64 %i.uf, %i.ua                    ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ug, 9223372036854775800
  %i.uh = ashr exact i64 %i.ug, 2
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.uh, i64 %i.ud)
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.sroa.speculated.i.i.i.i, i64 2305843009213693951 ; 4 uses
  %i.ui = icmp ne i64 %.0.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ui)
  %i.uj = icmp ugt i64 %.0.i.i.i.i, 2305843009213693951
  br i1 %i.uj, label %bb.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #23, !noalias !67
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  %i.uk = shl nuw i64 %.0.i.i.i.i, 3
  %i.ul = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uk) #20, !noalias !67 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.ub ; 5 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %.0.i.i.i.i ; 2 uses
  store float %i.tw, ptr %i.um, align 4, !tbaa !11, !noalias !67
  %.sroa_idx163.i = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  store float %i.tv, ptr %.sroa_idx163.i, align 4, !tbaa !11, !noalias !67
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 8 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i.i70, %storemerge.i.i.i79
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.up = phi ptr [ %i.ur, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.um, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.uq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i70, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %i.uq = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ur = getelementptr inbounds i8, ptr %i.up, i64 -8 ; 3 uses
  %i.us = load i64, ptr %i.uq, align 4, !tbaa !11, !noalias !68
  store i64 %i.us, ptr %i.ur, align 4, !tbaa !11, !noalias !68
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.uq, %storemerge.i.i.i79
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !43

_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.um, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ], [ %i.ur, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %storemerge.i.i.i79, null
  br i1 %.not.i4.i.i.i, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %storemerge.i.i.i79, i64 noundef %i.ug) #22, !noalias !67
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i: ; preds = %bb.j, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, %bb.f
  %storemerge.i.i.i77 = phi ptr [ %storemerge.i.i.i79, %bb.f ], [ %storemerge.i.i.i, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i ], [ %storemerge.i.i.i, %bb.j ]
  %i.ut = phi ptr [ %i.jr, %bb.f ], [ %i.un, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i ], [ %i.un, %bb.j ]
  %.0.i.i = phi ptr [ %i.ty, %bb.f ], [ %i.uo, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i ], [ %i.uo, %bb.j ]
  %.pre213.i = load i32, ptr %0, align 8, !tbaa !61, !noalias !67
  br label %bb.k

.preheader170.i:                                  ; preds = %.preheader170.i, %.preheader171.i
  %.0139190.i = phi i64 [ 0, %.preheader171.i ], [ %i.xw, %.preheader170.i ] ; 3 uses
  %.1144188.i = phi float [ %.0143191.i, %.preheader171.i ], [ %i.xv, %.preheader170.i ]
  %i.uu = or disjoint i64 %.0139190.i, %.0149196.i ; 8 uses
  %i.uv = add nsw i64 %.0139190.i, -1
  %i.uw = icmp ult i64 %i.uv, 8
  %..v.i = select i1 %i.uw, i64 -1, i64 1
  %..i = add nsw i64 %..v.i, %i.uu                ; 6 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %., i64 %..i
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !11, !noalias !67
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %.245, i64 %..i
  %i.va = load float, ptr %i.uz, align 4, !tbaa !11, !noalias !67
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %., i64 %i.uu
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !11, !noalias !67
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.245, i64 %i.uu
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !11, !noalias !67
  %.sink258.i = add nuw nsw i64 %i.uu, 1          ; 6 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.uu
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !11, !noalias !67
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.uu
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !11, !noalias !67
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.sink258.i
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !11, !noalias !67
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %.sink258.i
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !11, !noalias !67
  %i.vn = insertelement <4 x float> poison, float %i.uy, i64 0
  %i.vo = insertelement <4 x float> %i.vn, float %i.vc, i64 1
  %i.vp = insertelement <4 x float> %i.vo, float %i.vg, i64 2
  %i.vq = insertelement <4 x float> %i.vp, float %i.vk, i64 3
  %i.vr = insertelement <4 x float> poison, float %i.va, i64 0
  %i.vs = insertelement <4 x float> %i.vr, float %i.ve, i64 1
  %i.vt = insertelement <4 x float> %i.vs, float %i.vi, i64 2
  %i.vu = insertelement <4 x float> %i.vt, float %i.vm, i64 3
  %i.vv = fadd <4 x float> %i.vq, %i.vu
  %i.vw = fmul <4 x float> %i.vv, splat (float 5.000000e-01) ; 4 uses
  %i.vx = extractelement <4 x float> %i.vw, i64 0
  %i.vy = call float @llvm.fmuladd.f32(float %i.vx, float -2.500000e-01, float 0.000000e+00)
  %i.vz = extractelement <4 x float> %i.vw, i64 1
  %i.wa = fsub float %i.vy, %i.vz
  %i.wb = extractelement <4 x float> %i.vw, i64 3
  %i.wc = call float @llvm.fmuladd.f32(float %i.wb, float -2.500000e-01, float %i.wa)
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %..i
  %i.we = load float, ptr %i.wd, align 4, !tbaa !11, !noalias !67
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %..i
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !11, !noalias !67
  %i.wh = extractelement <4 x float> %i.vw, i64 2
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %.sink258.i
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !11, !noalias !67
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %.sink258.i
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !11, !noalias !67
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.sink244, i64 %..i
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !11, !noalias !67
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.sink242, i64 %..i
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !11, !noalias !67
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.sink244, i64 %i.uu
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !11, !noalias !67
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %.sink242, i64 %i.uu
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !11, !noalias !67
  %i.wu = insertelement <4 x float> poison, float %i.we, i64 0
  %i.wv = insertelement <4 x float> %i.wu, float %i.wj, i64 1
  %i.ww = insertelement <4 x float> %i.wv, float %i.wn, i64 2
  %i.wx = insertelement <4 x float> %i.ww, float %i.wr, i64 3
  %i.wy = insertelement <4 x float> poison, float %i.wg, i64 0
  %i.wz = insertelement <4 x float> %i.wy, float %i.wl, i64 1
  %i.xa = insertelement <4 x float> %i.wz, float %i.wp, i64 2
  %i.xb = insertelement <4 x float> %i.xa, float %i.wt, i64 3
  %i.xc = fadd <4 x float> %i.wx, %i.xb
  %i.xd = fmul <4 x float> %i.xc, splat (float 5.000000e-01) ; 4 uses
  %i.xe = extractelement <4 x float> %i.xd, i64 0
  %i.xf = fsub float %i.wc, %i.xe
  %i.xg = call float @llvm.fmuladd.f32(float %i.wh, float 5.000000e+00, float %i.xf)
  %i.xh = extractelement <4 x float> %i.xd, i64 1
  %i.xi = fsub float %i.xg, %i.xh
  %i.xj = extractelement <4 x float> %i.xd, i64 2
  %i.xk = call float @llvm.fmuladd.f32(float %i.xj, float -2.500000e-01, float %i.xi)
  %i.xl = extractelement <4 x float> %i.xd, i64 3
  %i.xm = fsub float %i.xk, %i.xl
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %.sink258.i
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !11, !noalias !67
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.sink258.i
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !11, !noalias !67
  %i.xr = fadd float %i.xo, %i.xq
  %i.xs = fmul float %i.xr, 5.000000e-01
  %i.xt = call float @llvm.fmuladd.f32(float %i.xs, float -2.500000e-01, float %i.xm)
  %i.xu = call noundef float @llvm.fabs.f32(float %i.xt)
  %i.xv = fadd float %.1144188.i, %i.xu           ; 2 uses
  %i.xw = add nuw nsw i64 %.0139190.i, 1          ; 2 uses
  %exitcond208.not.i = icmp eq i64 %i.xw, 7
  br i1 %exitcond208.not.i, label %.peel.begin, label %.preheader170.i, !llvm.loop !44

.peel.begin:                                      ; preds = %.preheader170.i
  %i.xx = add nuw nsw i64 %.0140193.i, 1          ; 2 uses
  %.247 = select i1 %i.no, i64 -1, i64 1
  %i.xy = add nsw i64 %i.nm, %.247
  %i.xz = mul i64 %i.xy, %i.jx                    ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.xz ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.xz ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %..i.peel
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %..i.peel
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ya, i64 64), "align"(ptr %i.yb, i64 64) ]
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.kk
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !11, !noalias !67
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.kk
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !11, !noalias !67
  %i.yi = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.xz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yi, i64 64) ]
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %..i.peel
  %i.yk = load float, ptr %i.yj, align 8, !tbaa !11, !noalias !67
  %i.yl = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.xz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yl, i64 64) ]
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %..i.peel
  %i.yn = load float, ptr %i.ym, align 8, !tbaa !11, !noalias !67
  %i.yo = load <2 x float>, ptr %i.yc, align 8, !tbaa !11, !noalias !67
  %i.yp = load <2 x float>, ptr %i.yd, align 8, !tbaa !11, !noalias !67
  %i.yq = shufflevector <2 x float> %i.yo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yr = insertelement <4 x float> %i.yq, float %i.yf, i64 2
  %i.ys = insertelement <4 x float> %i.yr, float %i.yk, i64 3
  %i.yt = shufflevector <2 x float> %i.yp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yu = insertelement <4 x float> %i.yt, float %i.yh, i64 2
  %i.yv = insertelement <4 x float> %i.yu, float %i.yn, i64 3
  %i.yw = fadd <4 x float> %i.ys, %i.yv
  %i.yx = fmul <4 x float> %i.yw, splat (float 5.000000e-01) ; 4 uses
  %i.yy = extractelement <4 x float> %i.yx, i64 0
  %i.yz = call float @llvm.fmuladd.f32(float %i.yy, float -2.500000e-01, float 0.000000e+00)
  %i.za = extractelement <4 x float> %i.yx, i64 1
  %i.zb = fsub float %i.yz, %i.za
  %i.zc = extractelement <4 x float> %i.yx, i64 3
  %i.zd = call float @llvm.fmuladd.f32(float %i.zc, float -2.500000e-01, float %i.zb)
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %..i.peel
  %i.zf = load float, ptr %i.ze, align 8, !tbaa !11, !noalias !67
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %..i.peel
  %i.zh = load float, ptr %i.zg, align 8, !tbaa !11, !noalias !67
  %i.zi = fadd float %i.zf, %i.zh
  %i.zj = fmul float %i.zi, 5.000000e-01          ; 2 uses
  %i.zk = fsub float %i.zd, %i.zj
  %i.zl = extractelement <4 x float> %i.yx, i64 2
  %i.zm = call float @llvm.fmuladd.f32(float %i.zl, float 5.000000e+00, float %i.zk)
  %i.zn = fsub float %i.zm, %i.zj
  %.sink206 = select i1 %i.ny, i64 1, i64 -1
  %i.zo = add nsw i64 %i.nm, %.sink206
  %i.zp = mul i64 %i.zo, %i.jx                    ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.zp ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.zp ; 2 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %..i.peel
  %i.zt = load float, ptr %i.zs, align 8, !tbaa !11, !noalias !67
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %..i.peel
  %i.zv = load float, ptr %i.zu, align 8, !tbaa !11, !noalias !67
  %i.zw = fadd float %i.zt, %i.zv
  %i.zx = fmul float %i.zw, 5.000000e-01
  %i.zy = call float @llvm.fmuladd.f32(float %i.zx, float -2.500000e-01, float %i.zn)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zq, i64 64), "align"(ptr %i.zr, i64 64) ]
  %i.zz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.zp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zz, i64 64) ]
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %..i.peel
  %i.aab = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.zp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aab, i64 64) ]
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %..i.peel
  %i.aad = load <2 x float>, ptr %i.aaa, align 8, !tbaa !11, !noalias !67
  %i.aae = load <2 x float>, ptr %i.aac, align 8, !tbaa !11, !noalias !67
  %i.aaf = fadd <2 x float> %i.aad, %i.aae
  %i.aag = fmul <2 x float> %i.aaf, splat (float 5.000000e-01) ; 2 uses
  %i.aah = extractelement <2 x float> %i.aag, i64 1
  %i.aai = fsub float %i.zy, %i.aah
  %i.aaj = extractelement <2 x float> %i.aag, i64 0
  %i.aak = call float @llvm.fmuladd.f32(float %i.aaj, float -2.500000e-01, float %i.aai)
  %i.aal = call noundef float @llvm.fabs.f32(float %i.aak)
  %i.aam = fadd float %i.xv, %i.aal               ; 2 uses
  %exitcond209.not.i = icmp eq i64 %i.xx, 8
  br i1 %exitcond209.not.i, label %bb.e, label %.preheader171.i, !llvm.loop !45

bb.k:                                             ; preds = %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, %.lr.ph.i12
  %storemerge.i.i.i78 = phi ptr [ %storemerge.i.i.i77, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %storemerge.i.i.i79, %.lr.ph.i12 ] ; 3 uses
  %i.aan = phi ptr [ %i.ut, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.jr, %.lr.ph.i12 ] ; 3 uses
  %.0.i.i69 = phi ptr [ %.0.i.i, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %.0.i.i70, %.lr.ph.i12 ] ; 3 uses
  %i.aao = phi i32 [ %.pre213.i, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.js, %.lr.ph.i12 ] ; 4 uses
  %i.aap = add i64 %.1152195.i, 1                 ; 2 uses
  %i.aaq = add nuw nsw i64 %i.jt, 8               ; 2 uses
  %i.aar = zext i32 %i.aao to i64
  %.not160.i = icmp samesign ugt i64 %i.aaq, %i.aar
  br i1 %.not160.i, label %.loopexit175.loopexit.i, label %.lr.ph.i12, !llvm.loop !46

_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit: ; preds = %.loopexit175.i
  %i.aas = ptrtoint ptr %.promoted72102 to i64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.aat = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.not34.i = icmp eq ptr %.promoted76104, %.promoted100
  br i1 %.not34.i, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, label %.lr.ph.i18

bb.l:                                             ; preds = %.lr.ph.i18
  %i.aau = ptrtoint ptr %.promoted100 to i64
  %i.aav = ptrtoint ptr %.promoted76104 to i64
  %i.aaw = sub i64 %i.aau, %i.aav                 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aax = icmp slt i64 %i.aaw, 0
  br i1 %i.aax, label %bb.m, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #23
  unreachable

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i: ; preds = %bb.l
  %i.aay = lshr exact i64 %i.aaw, 3
  %i.aaz = uitofp nneg i64 %i.aay to float
  %i.aba = fdiv float %i.ach, %i.aaz
  %i.abb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaw) #20 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.aaw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.abb, ptr align 4 %.promoted76104, i64 %i.aaw, i1 false)
  %i.abd = fpext float %i.aba to double
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i: ; preds = %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i
  %i.abe = phi ptr [ %i.aat, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ %i.iv, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %i.aat, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abf = phi ptr [ %.promoted76104, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %.promoted76104, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 4 uses
  %i.abg = phi ptr [ %.promoted100, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %.promoted100, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abh = phi i64 [ %i.aas, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ 0, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %i.aas, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abi = phi double [ %i.abd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ +qnan, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ +qnan, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abj = phi ptr [ %i.abc, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 6 uses
  %i.abk = phi ptr [ %i.abb, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 8 uses
  %i.abl = fmul float %2, 1.400000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.abm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.abn = insertelement <4 x double> poison, double %i.abi, i64 0
  %i.abo = shufflevector <4 x double> %i.abn, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x double> %i.abo, ptr %8, align 16, !tbaa !13
  %i.abp = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x double> %i.abo, ptr %i.abp, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !70
  %i.abr = call fastcc noundef double @_ZNK3jxl12_GLOBAL__N_112LossFunction7ComputeERKNS_8optimize5ArrayIdLm8EEEPS4_b(ptr %i.abk, ptr %i.abj, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %4, i1 noundef zeroext false) #24
  %i.abs = load <4 x double>, ptr %4, align 8, !tbaa !13, !noalias !70 ; 7 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.abu = load <4 x double>, ptr %i.abt, align 8, !tbaa !13, !noalias !70 ; 7 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aby = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.abz = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aca = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.594.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.796.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.998.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.acb = shufflevector <4 x double> %i.abu, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.acc = shufflevector <4 x double> %i.abu, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.acd = shufflevector <4 x double> %i.abs, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ace = shufflevector <4 x double> %i.abs, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.acf = shufflevector <4 x double> %i.abs, <4 x double> %i.abu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.n

.lr.ph.i18:                                       ; preds = %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit, %.lr.ph.i18
  %.02636.i = phi float [ %i.ach, %.lr.ph.i18 ], [ 0.000000e+00, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %.sroa.031.035.i = phi ptr [ %i.aci, %.lr.ph.i18 ], [ %.promoted76104, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 2 uses
  %i.acg = load float, ptr %.sroa.031.035.i, align 4, !tbaa !72
  %i.ach = fadd float %.02636.i, %i.acg           ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.031.035.i, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.aci, %.promoted100
  br i1 %.not.i19, label %bb.l, label %.lr.ph.i18

bb.n:                                             ; preds = %bb.z, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  %i.acj = phi i64 [ 1, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.als, %bb.z ]
  %.044255.i.i = phi i64 [ 0, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.1231.i.i, %bb.z ] ; 2 uses
  %.045254.i.i = phi i1 [ true, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ahq, %bb.z ]
  %.047253.i.i = phi double [ 1.000000e+00, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.3.i.i, %bb.z ] ; 4 uses
  %.049252.i.i = phi double [ %i.abr, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.150.i.i, %bb.z ] ; 2 uses
  %.051251.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.152.i.i, %bb.z ]
  %.053250.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.255.i.i, %bb.z ]
  %.057249.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.158.i.i, %bb.z ]
  %i.ack = phi <4 x double> [ %i.abo, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ais, %bb.z ] ; 4 uses
  %i.acl = phi <4 x double> [ %i.abs, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ali, %bb.z ] ; 8 uses
  %i.acm = phi <4 x double> [ %i.abs, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.aiu, %bb.z ]
  %i.acn = phi <4 x double> [ %i.abs, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alj, %bb.z ] ; 8 uses
  %i.aco = phi <4 x double> [ %i.abo, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.aiw, %bb.z ] ; 4 uses
  %i.acp = phi <4 x double> [ %i.abu, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alk, %bb.z ] ; 8 uses
  %i.acq = phi <4 x double> [ %i.abu, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.aiy, %bb.z ]
  %i.acr = phi <4 x double> [ %i.abu, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.all, %bb.z ] ; 8 uses
  %i.acs = phi <2 x double> [ %i.acb, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alm, %bb.z ] ; 2 uses
  %i.act = phi <2 x double> [ %i.acc, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.aln, %bb.z ] ; 2 uses
  %i.acu = phi <2 x double> [ %i.acd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alo, %bb.z ] ; 2 uses
  %i.acv = phi <2 x double> [ %i.ace, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alp, %bb.z ] ; 2 uses
  %i.acw = phi <4 x double> [ %i.abu, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alq, %bb.z ] ; 5 uses
  %i.acx = phi <4 x double> [ %i.abs, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alr, %bb.z ] ; 5 uses
  %i.acy = phi <8 x double> [ %i.acf, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajg, %bb.z ]
  %i.acz = extractelement <4 x double> %i.acr, i64 3 ; 4 uses
  %i.ada = extractelement <4 x double> %i.acr, i64 2 ; 4 uses
  %i.adb = extractelement <4 x double> %i.acr, i64 1 ; 4 uses
  %i.adc = extractelement <4 x double> %i.acr, i64 0 ; 4 uses
  %i.add = extractelement <4 x double> %i.acp, i64 3 ; 4 uses
  %i.ade = extractelement <4 x double> %i.acp, i64 2 ; 4 uses
  %i.adf = extractelement <4 x double> %i.acp, i64 1 ; 4 uses
  %i.adg = extractelement <4 x double> %i.acp, i64 0 ; 4 uses
  %i.adh = extractelement <4 x double> %i.acn, i64 3 ; 4 uses
  %i.adi = extractelement <4 x double> %i.acn, i64 2 ; 4 uses
  %i.adj = extractelement <4 x double> %i.acn, i64 1 ; 4 uses
  %i.adk = extractelement <4 x double> %i.acn, i64 0 ; 4 uses
  %i.adl = extractelement <4 x double> %i.acl, i64 3 ; 4 uses
  %i.adm = extractelement <4 x double> %i.acl, i64 2 ; 4 uses
  %i.adn = extractelement <4 x double> %i.acl, i64 1 ; 4 uses
  %i.ado = extractelement <4 x double> %i.acl, i64 0 ; 4 uses
  br i1 %.045254.i.i, label %bb.o, label %._crit_edge.i.i

bb.o:                                             ; preds = %bb.n
  %i.adp = call double @llvm.fmuladd.f64(double %i.ado, double %i.adk, double 0.000000e+00)
  %i.adq = call double @llvm.fmuladd.f64(double %i.adn, double %i.adj, double %i.adp)
  %i.adr = call double @llvm.fmuladd.f64(double %i.adm, double %i.adi, double %i.adq)
  %i.ads = call double @llvm.fmuladd.f64(double %i.adl, double %i.adh, double %i.adr)
  %i.adt = call double @llvm.fmuladd.f64(double %i.adg, double %i.adc, double %i.ads)
  %i.adu = call double @llvm.fmuladd.f64(double %i.adf, double %i.adb, double %i.adt)
  %i.adv = call double @llvm.fmuladd.f64(double %i.ade, double %i.ada, double %i.adu)
  %i.adw = call noundef double @llvm.fmuladd.f64(double %i.add, double %i.acz, double %i.adv) ; 2 uses
  %i.adx = fcmp ugt double %i.adw, 0.000000e+00
  br i1 %i.adx, label %._crit_edge279.i.i, label %bb.p

._crit_edge279.i.i:                               ; preds = %bb.o
  %i.ady = fneg double %i.adw
  %.pre280.i.i = call double @llvm.fmuladd.f64(double %i.ado, double %i.ado, double 0.000000e+00)
  %.pre281.i.i = call double @llvm.fmuladd.f64(double %i.adn, double %i.adn, double %.pre280.i.i)
  %.pre283.i.i = call double @llvm.fmuladd.f64(double %i.adm, double %i.adm, double %.pre281.i.i)
  %.pre285.i.i = call double @llvm.fmuladd.f64(double %i.adl, double %i.adl, double %.pre283.i.i)
  %.pre287.i.i = call double @llvm.fmuladd.f64(double %i.adg, double %i.adg, double %.pre285.i.i)
  %.pre289.i.i = call double @llvm.fmuladd.f64(double %i.adf, double %i.adf, double %.pre287.i.i)
  %.pre291.i.i = call double @llvm.fmuladd.f64(double %i.ade, double %i.ade, double %.pre289.i.i)
  %.pre293.i.i = call noundef double @llvm.fmuladd.f64(double %i.add, double %i.add, double %.pre291.i.i)
  %i.adz = shufflevector <4 x double> %i.acl, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.aea = shufflevector <4 x double> %i.acl, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.aeb = shufflevector <4 x double> %i.acp, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.aec = shufflevector <4 x double> %i.acp, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aed = call double @llvm.fmuladd.f64(double %i.adk, double %i.adk, double 0.000000e+00)
  %i.aee = call double @llvm.fmuladd.f64(double %i.adj, double %i.adj, double %i.aed)
  %i.aef = call double @llvm.fmuladd.f64(double %i.adi, double %i.adi, double %i.aee)
  %i.aeg = call double @llvm.fmuladd.f64(double %i.adh, double %i.adh, double %i.aef)
  %i.aeh = call double @llvm.fmuladd.f64(double %i.adc, double %i.adc, double %i.aeg)
  %i.aei = call double @llvm.fmuladd.f64(double %i.adb, double %i.adb, double %i.aeh)
  %i.aej = call double @llvm.fmuladd.f64(double %i.ada, double %i.ada, double %i.aei)
  %i.aek = call noundef double @llvm.fmuladd.f64(double %i.acz, double %i.acz, double %i.aej) ; 2 uses
  %i.ael = fneg double %i.aek
  %i.aem = shufflevector <4 x double> %i.acn, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.aen = shufflevector <4 x double> %i.acn, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.aeo = shufflevector <4 x double> %i.acr, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.aep = shufflevector <4 x double> %i.acr, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge279.i.i
  %.pre-phi294.i.i = phi double [ %.pre293.i.i, %._crit_edge279.i.i ], [ %i.aek, %bb.p ] ; 2 uses
  %.sroa.0116.1.i.i = phi double [ %i.ado, %._crit_edge279.i.i ], [ %i.adk, %bb.p ]
  %.sroa.14126.1.i.i = phi double [ %i.adn, %._crit_edge279.i.i ], [ %i.adj, %bb.p ]
  %.sroa.23.1.i.i = phi double [ %i.adm, %._crit_edge279.i.i ], [ %i.adi, %bb.p ]
  %.sroa.32.1.i.i = phi double [ %i.adl, %._crit_edge279.i.i ], [ %i.adh, %bb.p ]
  %.sroa.41.1.i.i = phi double [ %i.adg, %._crit_edge279.i.i ], [ %i.adc, %bb.p ]
  %.sroa.50.1.i.i = phi double [ %i.adf, %._crit_edge279.i.i ], [ %i.adb, %bb.p ]
  %.sroa.59.1.i.i = phi double [ %i.ade, %._crit_edge279.i.i ], [ %i.ada, %bb.p ]
  %.sroa.68.1.i.i = phi double [ %i.add, %._crit_edge279.i.i ], [ %i.acz, %bb.p ]
  %.154.i.i = phi double [ %i.ady, %._crit_edge279.i.i ], [ %i.ael, %bb.p ]
  %i.aeq = phi <4 x double> [ %i.acl, %._crit_edge279.i.i ], [ %i.acn, %bb.p ]
  %i.aer = phi <4 x double> [ %i.acp, %._crit_edge279.i.i ], [ %i.acr, %bb.p ]
  %i.aes = phi <2 x double> [ %i.adz, %._crit_edge279.i.i ], [ %i.aem, %bb.p ]
end_hunk_0
