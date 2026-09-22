Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixerrgb?download=true
inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_extract_patches:bb.a
  %i.uu = shufflevector <4 x float> %i.ut, <4 x float> %i.uq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.uv = insertelement <4 x float> poison, float %i.qg, i64 0
  %i.uw = insertelement <4 x float> %i.uv, float %i.qq, i64 1
  %i.ux = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.qs, i64 0
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.uz = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.uy
  %i.va = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.lt, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.vc = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.qk, i64 0
  %i.vd = shufflevector <4 x float> %i.vc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %.preheader.preheader

.preheader24.preheader:                           ; preds = %.preheader24.preheader.preheader, %.preheader24.preheader
  %.025058 = phi i64 [ %i.xy, %.preheader24.preheader ], [ %.025058.ph, %.preheader24.preheader.preheader ] ; 3 uses
  %.025157 = phi float [ %i.xw, %.preheader24.preheader ], [ %.025157.ph, %.preheader24.preheader.preheader ]
  %.025356 = phi float [ %i.xx, %.preheader24.preheader ], [ %.025356.ph, %.preheader24.preheader.preheader ]
  %.idx288 = shl i64 %.025058, 4
  %i.ve = getelementptr inbounds nuw i8, ptr %4, i64 %.idx288 ; 3 uses
  %.sroa.0117.0.copyload = load float, ptr %i.ve, align 4, !tbaa !12 ; 3 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %.sroa.4118.0.copyload = load float, ptr %.sroa.4118.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %.sroa.5119.0.copyload = load float, ptr %.sroa.5119.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %i.vf = getelementptr inbounds nuw [48 x i8], ptr %i.lu, i64 %.025058 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 112
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 116
  %i.vi = load float, ptr %i.vg, align 4, !tbaa !12
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vi, 8.620690e-03
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, f0x3E0D3DCB ; 6 uses
  %i.vl = fcmp reassoc nsz arcp contract afn ogt float %i.vk, f0x3E53DCB1
  %i.vm = fmul reassoc nsz arcp contract afn float %i.vk, %i.vk
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, %i.vk
  %i.vo = fmul reassoc nsz arcp contract afn float %i.vk, f0x3E038026
  %i.vp = fadd reassoc nsz arcp contract afn float %i.vo, f0xBC911AA6
  %i.vq = select reassoc nsz arcp contract afn i1 %i.vl, float %i.vn, float %i.vp ; 3 uses
  %i.vr = load <2 x float>, ptr %i.vh, align 4, !tbaa !12
  %i.vs = fmul reassoc nsz arcp contract afn <2 x float> %i.vr, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.vt = insertelement <2 x float> poison, float %i.vk, i64 0
  %i.vu = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vv = fadd reassoc nsz arcp contract afn <2 x float> %i.vu, %i.vs
  %i.vw = fsub reassoc nsz arcp contract afn <2 x float> %i.vu, %i.vs
  %i.vx = shufflevector <2 x float> %i.vv, <2 x float> %i.vw, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.vy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vx, splat (float f0x3E53DCB1)
  %i.vz = fmul reassoc nsz arcp contract afn <2 x float> %i.vx, %i.vx
  %i.wa = fmul reassoc nsz arcp contract afn <2 x float> %i.vz, %i.vx
  %i.wb = fmul reassoc nsz arcp contract afn <2 x float> %i.vx, splat (float f0x3E038026)
  %i.wc = fadd reassoc nsz arcp contract afn <2 x float> %i.wb, splat (float f0xBC911AA6)
  %i.wd = select <2 x i1> %i.vy, <2 x float> %i.wa, <2 x float> %i.wc ; 2 uses
  %i.we = extractelement <2 x float> %i.wd, i64 0
  %i.wf = fmul reassoc nsz arcp contract afn float %i.we, 9.642000e-01 ; 3 uses
  %i.wg = extractelement <2 x float> %i.wd, i64 1
  %i.wh = fmul reassoc nsz arcp contract afn float %i.wg, f0x3F532CA5 ; 3 uses
  %i.wi = fmul reassoc nsz arcp contract afn float %i.mb, %.sroa.0117.0.copyload
  %i.wj = fmul reassoc nsz arcp contract afn float %i.md, %.sroa.4118.0.copyload
  %i.wk = fadd reassoc nsz arcp contract afn float %i.wj, %i.wi
  %i.wl = fmul reassoc nsz arcp contract afn float %i.mf, %.sroa.5119.0.copyload
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wk, %i.wl
  %i.wn = fmul reassoc nsz arcp contract afn float %i.mh, %.sroa.0117.0.copyload
  %i.wo = fmul reassoc nsz arcp contract afn float %i.mj, %.sroa.4118.0.copyload
  %i.wp = fadd reassoc nsz arcp contract afn float %i.wo, %i.wn
  %i.wq = fmul reassoc nsz arcp contract afn float %i.ml, %.sroa.5119.0.copyload
  %i.wr = fadd reassoc nsz arcp contract afn float %i.wp, %i.wq
  %i.ws = fmul reassoc nsz arcp contract afn float %i.mn, %.sroa.0117.0.copyload
  %i.wt = fmul reassoc nsz arcp contract afn float %i.mp, %.sroa.4118.0.copyload
  %i.wu = fadd reassoc nsz arcp contract afn float %i.wt, %i.ws
  %i.wv = fmul reassoc nsz arcp contract afn float %i.mr, %.sroa.5119.0.copyload
  %i.ww = fadd reassoc nsz arcp contract afn float %i.wu, %i.wv
  %i.wx = fmul reassoc nsz arcp contract afn float %i.wf, %i.mb
  %i.wy = fmul reassoc nsz arcp contract afn float %i.md, %i.vq
  %i.wz = fadd reassoc nsz arcp contract afn float %i.wx, %i.wy
  %i.xa = fmul reassoc nsz arcp contract afn float %i.mf, %i.wh
  %i.xb = fadd reassoc nsz arcp contract afn float %i.wz, %i.xa
  %i.xc = fmul reassoc nsz arcp contract afn float %i.mh, %i.wf
  %i.xd = fmul reassoc nsz arcp contract afn float %i.mj, %i.vq
  %i.xe = fadd reassoc nsz arcp contract afn float %i.xd, %i.xc
  %i.xf = fmul reassoc nsz arcp contract afn float %i.ml, %i.wh
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xe, %i.xf
  %i.xh = fmul reassoc nsz arcp contract afn float %i.mn, %i.wf
  %i.xi = fmul reassoc nsz arcp contract afn float %i.mp, %i.vq
  %i.xj = fadd reassoc nsz arcp contract afn float %i.xi, %i.xh
  %i.xk = fmul reassoc nsz arcp contract afn float %i.mr, %i.wh
  %i.xl = fadd reassoc nsz arcp contract afn float %i.xj, %i.xk
  %i.xm = fmul reassoc nsz arcp contract afn float %i.wm, %i.pu
  %i.xn = fadd reassoc nsz arcp contract afn float %i.xm, %i.lt
  %i.xo = fmul reassoc nsz arcp contract afn float %i.wr, %i.pv
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xo, %i.lt
  %i.xq = fmul reassoc nsz arcp contract afn float %i.ww, %i.pw
  %i.xr = fadd reassoc nsz arcp contract afn float %i.xq, %i.lt
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xn, %.025157
  %i.xt = fadd reassoc nsz arcp contract afn float %i.xb, %.025356
  %i.xu = fadd reassoc nsz arcp contract afn float %i.xp, %i.xs
  %i.xv = fadd reassoc nsz arcp contract afn float %i.xg, %i.xt
  %i.xw = fadd reassoc nsz arcp contract afn float %i.xr, %i.xu ; 2 uses
  %i.xx = fadd reassoc nsz arcp contract afn float %i.xl, %i.xv ; 2 uses
  %i.xy = add nuw i64 %.025058, 1                 ; 2 uses
  %exitcond98.not = icmp eq i64 %i.xy, %i.lw
  br i1 %exitcond98.not, label %.lr.ph75, label %.preheader24.preheader, !llvm.loop !437

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %.preheader.preheader
  %.024373 = phi i64 [ %i.abe, %.preheader.preheader ], [ %.024373.ph, %.preheader.preheader.preheader ] ; 3 uses
  %.024472 = phi float [ %i.abd, %.preheader.preheader ], [ %.024472.ph, %.preheader.preheader.preheader ]
  %slprdx.acc = phi <4 x float> [ %slprdx.acc281, %.preheader.preheader ], [ %slprdx.acc.ph, %.preheader.preheader.preheader ]
  %.idx = shl i64 %.024373, 4
  %i.xz = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.ya = getelementptr inbounds nuw [48 x i8], ptr %i.lu, i64 %.024373 ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 112
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 116
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !12
  %i.ye = load float, ptr %i.yb, align 4, !tbaa !12
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ya, i64 120
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !12
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yd, 2.000000e-03
  %i.yi = fmul reassoc nsz arcp contract afn float %i.ye, 8.620690e-03
  %i.yj = fadd reassoc nsz arcp contract afn float %i.yi, f0x3E0D3DCB ; 7 uses
  %i.yk = fmul reassoc nsz arcp contract afn float %i.yg, 5.000000e-03
  %i.yl = fadd reassoc nsz arcp contract afn float %i.yj, %i.yh ; 5 uses
  %i.ym = fcmp reassoc nsz arcp contract afn ogt float %i.yl, f0x3E53DCB1
  %i.yn = fmul reassoc nsz arcp contract afn float %i.yl, %i.yl
  %i.yo = fmul reassoc nsz arcp contract afn float %i.yn, %i.yl
  %i.yp = fmul reassoc nsz arcp contract afn float %i.yl, f0x3E038026
  %i.yq = fadd reassoc nsz arcp contract afn float %i.yp, f0xBC911AA6
  %i.yr = select reassoc nsz arcp contract afn i1 %i.ym, float %i.yo, float %i.yq
  %i.ys = fcmp reassoc nsz arcp contract afn ogt float %i.yj, f0x3E53DCB1
  %i.yt = fmul reassoc nsz arcp contract afn float %i.yj, %i.yj
  %i.yu = fmul reassoc nsz arcp contract afn float %i.yt, %i.yj
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yj, f0x3E038026
  %i.yw = fadd reassoc nsz arcp contract afn float %i.yv, f0xBC911AA6
  %i.yx = select reassoc nsz arcp contract afn i1 %i.ys, float %i.yu, float %i.yw ; 3 uses
  %i.yy = fsub reassoc nsz arcp contract afn float %i.yj, %i.yk ; 5 uses
  %i.yz = fcmp reassoc nsz arcp contract afn ogt float %i.yy, f0x3E53DCB1
  %i.za = fmul reassoc nsz arcp contract afn float %i.yy, %i.yy
  %i.zb = fmul reassoc nsz arcp contract afn float %i.za, %i.yy
  %i.zc = fmul reassoc nsz arcp contract afn float %i.yy, f0x3E038026
  %i.zd = fadd reassoc nsz arcp contract afn float %i.zc, f0xBC911AA6
  %i.ze = select reassoc nsz arcp contract afn i1 %i.yz, float %i.zb, float %i.zd
  %i.zf = fmul reassoc nsz arcp contract afn float %i.yr, 9.642000e-01 ; 3 uses
  %i.zg = fmul reassoc nsz arcp contract afn float %i.ze, f0x3F532CA5 ; 3 uses
  %i.zh = fmul reassoc nsz arcp contract afn float %i.zf, %i.uj
  %i.zi = fmul reassoc nsz arcp contract afn float %i.qm, %i.yx
  %i.zj = fadd reassoc nsz arcp contract afn float %i.zh, %i.zi
  %i.zk = fmul reassoc nsz arcp contract afn float %i.qc, %i.zg
  %i.zl = fadd reassoc nsz arcp contract afn float %i.zj, %i.zk
  %i.zm = fmul reassoc nsz arcp contract afn float %i.uk, %i.zf
  %i.zn = fmul reassoc nsz arcp contract afn float %i.qo, %i.yx
  %i.zo = fadd reassoc nsz arcp contract afn float %i.zn, %i.zm
  %i.zp = fmul reassoc nsz arcp contract afn float %i.qg, %i.zg
  %i.zq = fadd reassoc nsz arcp contract afn float %i.zo, %i.zp
  %i.zr = fmul reassoc nsz arcp contract afn float %i.ul, %i.zf
  %i.zs = fmul reassoc nsz arcp contract afn float %i.qr, %i.yx
  %i.zt = fadd reassoc nsz arcp contract afn float %i.zs, %i.zr
  %i.zu = fmul reassoc nsz arcp contract afn float %i.qq, %i.zg
  %i.zv = fadd reassoc nsz arcp contract afn float %i.zt, %i.zu
  %i.zw = fsub reassoc nsz arcp contract afn float %i.zl, %i.pz
  %i.zx = fsub reassoc nsz arcp contract afn float %i.zq, %i.pz
  %i.zy = load <2 x float>, ptr %i.xz, align 4, !tbaa !12 ; 2 uses
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aaa = fmul reassoc nsz arcp contract afn <4 x float> %i.zz, %i.ur
  %i.aab = shufflevector <2 x float> %i.zy, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aac = shufflevector <4 x float> %i.aab, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.aad = fmul reassoc nsz arcp contract afn <4 x float> %i.aac, %i.uu
  %i.aae = fadd reassoc nsz arcp contract afn <4 x float> %i.aad, %i.aaa
  %i.aaf = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.aag = fmul reassoc nsz arcp contract afn float %i.qc, %.sroa.5.0.copyload
  %i.aah = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.aag, i64 0
  %i.aai = shufflevector <2 x float> %i.aaf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.aaj = fmul reassoc nsz arcp contract afn <4 x float> %i.uw, %i.aai
  %i.aak = shufflevector <4 x float> %i.aah, <4 x float> %i.aaj, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aal = fadd reassoc nsz arcp contract afn <4 x float> %i.aae, %i.aak
  %i.aam = fmul reassoc nsz arcp contract afn <4 x float> %i.aal, %i.uz
  %i.aan = fadd reassoc nsz arcp contract afn <4 x float> %i.aam, %i.vb ; 4 uses
  %i.aao = fsub reassoc nsz arcp contract afn <4 x float> %i.aan, %i.vd ; 2 uses
  %i.aap = insertelement <4 x float> %i.aao, float 1.000000e+00, i64 3
  %i.aaq = fmul reassoc nsz arcp contract afn <4 x float> %i.aao, %i.aap
  %i.aar = extractelement <4 x float> %i.aan, i64 0
  %i.aas = fsub reassoc nsz arcp contract afn float %i.aar, %i.pz
  %i.aat = fmul reassoc nsz arcp contract afn float %i.zw, %i.aas
  %i.aau = fadd reassoc nsz arcp contract afn float %i.aat, %.024472
  %i.aav = extractelement <4 x float> %i.aan, i64 1
  %i.aaw = fsub reassoc nsz arcp contract afn float %i.aav, %i.pz
  %i.aax = fmul reassoc nsz arcp contract afn float %i.zx, %i.aaw
  %i.aay = fadd reassoc nsz arcp contract afn float %i.aax, %i.aau
  %slprdx.acc281 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %i.aaq ; 2 uses
  %i.aaz = fsub reassoc nsz arcp contract afn float %i.zv, %i.pz
  %i.aba = extractelement <4 x float> %i.aan, i64 2
  %i.abb = fsub reassoc nsz arcp contract afn float %i.aba, %i.pz
  %i.abc = fmul reassoc nsz arcp contract afn float %i.aaz, %i.abb
  %i.abd = fadd reassoc nsz arcp contract afn float %i.abc, %i.aay ; 2 uses
  %i.abe = add nuw i64 %.024373, 1                ; 2 uses
  %exitcond101.not = icmp eq i64 %i.abe, %i.lw
  br i1 %exitcond101.not, label %._crit_edge76, label %.preheader.preheader, !llvm.loop !438

._crit_edge76:                                    ; preds = %.preheader.preheader, %._crit_edge61.thread
  %i.abf = phi float [ %i.ma, %._crit_edge61.thread ], [ %i.pz, %.preheader.preheader ]
  %i.abg = phi float [ %i.lz, %._crit_edge61.thread ], [ %i.qk, %.preheader.preheader ]
  %i.abh = phi float [ %i.ly, %._crit_edge61.thread ], [ %i.py, %.preheader.preheader ] ; 2 uses
  %slprdx.exit = phi <4 x float> [ poison, %._crit_edge61.thread ], [ %slprdx.acc281, %.preheader.preheader ]
  %.0244.lcssa = phi float [ 0.000000e+00, %._crit_edge61.thread ], [ %i.abd, %.preheader.preheader ]
  %i.abi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit)
  %slprdx.sel = select i1 %.not80.not, float 0.000000e+00, float %i.abi
  %i.abj = fmul reassoc nsz arcp contract afn float %.0244.lcssa, %i.abh
  %i.abk = fmul reassoc nsz arcp contract afn float %slprdx.sel, %i.abh
  %i.abl = fdiv reassoc nsz arcp contract afn float %i.abj, %i.abk ; 3 uses
  %i.abm = fmul reassoc nsz arcp contract afn float %i.abl, %i.abg
  %i.abn = fsub reassoc nsz arcp contract afn float %i.abf, %i.abm
  %i.abo = fneg reassoc nsz arcp contract afn float %i.abl
  %i.abp = fdiv reassoc nsz arcp contract afn float %i.abn, %i.abo
  %.sroa.0239.0.vec.insert = insertelement <2 x float> poison, float %i.abp, i64 0
  %.sroa.0239.4.vec.insert = insertelement <2 x float> %.sroa.0239.0.vec.insert, float %i.abl, i64 1
  ret <2 x float> %.sroa.0239.4.vec.insert
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_compute_patches_delta_E(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 16, !tbaa !101 ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = uitofp reassoc nsz arcp contract afn i64 %i.b to float
  %i.d = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.c
  br label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  %.0127.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.em, %bb.v ]
  %.0125.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %spec.select135, %bb.v ]
  store float %.0127.lcssa, ptr %3, align 4, !tbaa !12
  store float %.0125.lcssa, ptr %4, align 4, !tbaa !12
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.0124145 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %bb.v ] ; 4 uses
  %.0125144 = phi float [ 0.000000e+00, %.lr.ph ], [ %spec.select135, %bb.v ] ; 2 uses
  %.0127143 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.em, %bb.v ]
  %.idx = shl i64 %.0124145, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %i.f = fmul reassoc nsz arcp contract afn float %.sroa.0.0.copyload, f0x3F84C0A6 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn ogt float %i.f, f0x3C111AA7
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.f) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = fmul reassoc nsz arcp contract afn float %.sroa.0.0.copyload, f0x410137F7
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, f0x3E0D3DCB
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi reassoc nsz arcp contract afn float [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %.sroa.4.0.copyload, f0x3C111AA7
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = fmul reassoc nsz arcp contract afn float %.sroa.4.0.copyload, f0x40F92F69
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, f0x3E0D3DCB
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %.sroa.4.0.copyload) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi reassoc nsz arcp contract afn float [ %i.o, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  %i.q = fmul reassoc nsz arcp contract afn float %.sroa.5.0.copyload, f0x3F9B2B9B ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, f0x3C111AA7
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = fmul reassoc nsz arcp contract afn float %.sroa.5.0.copyload, f0x41170A26
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.j:                                             ; preds = %bb.h
  %i.u = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.q) #33
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.j, %bb.i
  %i.v = phi reassoc nsz arcp contract afn float [ %i.u, %bb.j ], [ %i.t, %bb.i ]
  %i.w = fmul reassoc nsz arcp contract afn float %i.p, 1.160000e+02
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, -1.600000e+01 ; 2 uses
  %i.y = fsub reassoc nsz arcp contract afn float %i.k, %i.p
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 5.000000e+02 ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn float %i.v, %i.p
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, -2.000000e+02 ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0124145 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.x
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, %i.x
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, 5.000000e-01
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 3 uses
  %i.am = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aj, float noundef %i.al) #33
  %i.an = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.z, float noundef %i.ab) #33
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.am
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 5.000000e-01 ; 3 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.aq ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.ar
  %i.at = fdiv reassoc nsz arcp contract afn float %i.as, %i.ap ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, f0x4FB5E621
  %i.av = fdiv reassoc nsz arcp contract afn float %i.at, %i.au
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.av) ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, 5.000000e-01
  %i.ay = fsub reassoc nsz arcp contract afn float 1.500000e+00, %i.ax ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.aj ; 2 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ay, %i.z ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.az, float noundef %i.al) #33 ; 4 uses
  %i.bc = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ba, float noundef %i.ab) #33 ; 4 uses
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn float %i.bc, %i.bb ; 2 uses
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.al, float %i.az)
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ab, float %i.ba)
  %i.bh = fcmp reassoc nsz arcp contract afn oeq float %i.bb, 0.000000e+00 ; 2 uses
  %spec.select = select nsz i1 %i.bh, float 0.000000e+00, float %i.bf ; 3 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bc, 0.000000e+00 ; 2 uses
  %.0120 = select nsz i1 %i.bi, float 0.000000e+00, float %i.bg ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %spec.select, 0.000000e+00
  %i.bk = fsub reassoc nsz arcp contract afn float f0x40C90FDB, %spec.select
  %.1122 = select nsz i1 %i.bj, float %i.bk, float %spec.select
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %.0120, 0.000000e+00
  %i.bm = fsub reassoc nsz arcp contract afn float f0x40C90FDB, %.0120
  %.1 = select nsz i1 %i.bl, float %i.bm, float %.0120
  %i.bn = fmul reassoc nsz arcp contract afn float %.1122, f0x42652EE0 ; 4 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %.1, f0x42652EE0 ; 4 uses
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bo, %i.bn ; 5 uses
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %or.cond = or i1 %i.bh, %i.bi                   ; 2 uses
  br i1 %or.cond, label %bb.o, label %bb.k

bb.k:                                             ; preds = %dt_XYZ_to_Lab.exit
  %i.br = fcmp reassoc nsz arcp contract afn ugt float %i.bq, 1.800000e+02
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.bq, 1.800000e+02 ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ole float %i.bo, %i.bn
  %or.cond133.not = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond133.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bp, 3.600000e+02
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bo, %i.bn
  %or.cond134 = select i1 %i.bs, i1 %i.bv, i1 false
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bp, -3.600000e+02
  %spec.select136 = select nsz i1 %or.cond134, float %i.bw, float %i.bp
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_XYZ_to_Lab.exit, %bb.k, %bb.m
  %.0119 = phi nsz float [ %spec.select136, %bb.n ], [ %i.bp, %bb.k ], [ %i.bu, %bb.m ], [ 0.000000e+00, %dt_XYZ_to_Lab.exit ] ; 2 uses
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.0119) ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bc, %i.bb
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.by)
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, 2.000000e+00
  %i.cb = fmul reassoc nsz arcp contract afn float %.0119, f0x3C0EFA36
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.cb)
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ca, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn float %i.bn, %i.bo ; 7 uses
  br i1 %or.cond, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = fcmp reassoc nsz arcp contract afn ugt float %i.bx, 1.800000e+02
  br i1 %i.cf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = fmul reassoc nsz arcp contract afn float %i.ce, 5.000000e-01
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.bx, 1.800000e+02 ; 2 uses
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ce, 3.600000e+02
  %or.cond5 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.ce, 5.000000e-01
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, 1.800000e+02
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cl = fcmp reassoc nsz arcp contract afn oge float %i.ce, 3.600000e+02
  %or.cond7 = select i1 %i.ch, i1 %i.cl, i1 false
  br i1 %or.cond7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = fmul reassoc nnan nsz arcp contract afn float %i.ce, 5.000000e-01
end_hunk_0
