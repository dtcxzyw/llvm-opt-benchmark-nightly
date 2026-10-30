Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSConverter?download=true
inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  store ptr null, ptr %i.uu, align 8
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ud, i64 1056 ; 3 uses
  store i32 0, ptr %i.uv, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ud, i64 1064 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.ud, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uw, i8 0, i64 16, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ra, i64 1056
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ra, i64 1048 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 8            ; 2 uses
  %i.vb = add i32 %i.va, 1
  store i32 %i.vb, ptr %i.uz, align 8
  %i.vc = zext i32 %i.va to i64
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.vc
  store ptr %i.ud, ptr %i.vd, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.vf = load i64, ptr %i.ve, align 8            ; 4 uses
  %i.vg = icmp ugt i64 %i.vf, 1023
  br i1 %i.vg, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.vh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.vi = trunc nuw nsw i64 %i.vf to i32
  store i32 %i.vi, ptr %i.ud, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ud, i64 4 ; 2 uses
  %i.vk = load ptr, ptr %i.vh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vj, ptr align 1 %i.vk, i64 %i.vf, i1 false)
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vf
  store i8 0, ptr %i.vl, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271: ; preds = %bb.au, %bb.av
  %i.vm = load ptr, ptr %i.ou, align 8            ; 2 uses
  %i.vn = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.vo = icmp eq ptr %i.vm, %i.vn
  br i1 %i.vo, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271
  %i.vp = ptrtoint ptr %i.vn to i64
  %i.vq = ptrtoint ptr %i.vm to i64
  %i.vr = sub i64 %i.vp, %i.vq
  %i.vs = sdiv exact i64 %i.vr, 24                ; 2 uses
  %i.vt = trunc i64 %i.vs to i32
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ud, i64 1028 ; 2 uses
  store i32 %i.vt, ptr %i.vu, align 4
  %i.vv = and i64 %i.vs, 4294967295               ; 3 uses
  %i.vw = mul nuw nsw i64 %i.vv, 24
  %i.vx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vw) #28
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ax:                                            ; preds = %bb.aw
  %i.vy = icmp eq i64 %i.vv, 0
  br i1 %i.vy, label %.loopexit395, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %i.vx, i64 %i.vv
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %i.wa = phi ptr [ %i.vx, %bb.ay ], [ %i.wc, %bb.az ] ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wa, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.wb, align 4
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 24 ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.vz
  br i1 %i.wd, label %.loopexit395, label %bb.az

.loopexit395:                                     ; preds = %bb.az, %bb.ax
  %i.we = getelementptr inbounds nuw i8, ptr %i.ud, i64 1032
  store ptr %i.vx, ptr %i.we, align 8
  %i.wf = load ptr, ptr %i.ou, align 8
  %i.wg = load i32, ptr %i.vu, align 4
  %i.wh = zext i32 %i.wg to i64
  %i.wi = mul nuw nsw i64 %i.wh, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.vx, ptr nonnull align 8 %i.wf, i64 %i.wi, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit395, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit271
  %i.wj = load ptr, ptr %i.kw, align 8            ; 2 uses
  %i.wk = load ptr, ptr %i.kx, align 8            ; 2 uses
  %i.wl = icmp eq ptr %i.wj, %i.wk
  br i1 %i.wl, label %.loopexit393, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = ptrtoint ptr %i.wj to i64
  %i.wo = sub i64 %i.wm, %i.wn
  %i.wp = ashr exact i64 %i.wo, 5                 ; 3 uses
  %i.wq = trunc i64 %i.wp to i32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ud, i64 1040 ; 3 uses
  store i32 %i.wq, ptr %i.wr, align 8
  %i.ws = and i64 %i.wp, 4294967295               ; 4 uses
  %i.wt = shl nuw nsw i64 %i.ws, 5
  %i.wu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.wt) #28
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.bc:                                            ; preds = %bb.bb
  %i.wv = icmp eq i64 %i.ws, 0
  br i1 %i.wv, label %.loopexit394, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ww = getelementptr inbounds nuw [32 x i8], ptr %i.wu, i64 %i.ws
  %i.wx = add nuw nsw i64 %i.ws, 576460752303423487
  %i.wy = and i64 %i.wx, 576460752303423487
  %xtraiter = and i64 %i.wp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bd, %.prol.preheader
  %i.wz = phi ptr [ %i.xc, %.prol.preheader ], [ %i.wu, %bb.bd ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bd ]
  store double 0.000000e+00, ptr %i.wz, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xa, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  store i32 1, ptr %i.xb, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !36

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bd
  %.unr = phi ptr [ %i.wu, %bb.bd ], [ %i.xc, %.prol.preheader ]
  %i.xd = icmp samesign ult i64 %i.wy, 7
  br i1 %i.xd, label %.loopexit394, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.xe = phi ptr [ %i.yc, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.xe, align 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xf, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 24
  store i32 1, ptr %i.xg, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  store double 0.000000e+00, ptr %i.xh, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xe, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xi, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xe, i64 56
  store i32 1, ptr %i.xj, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 64
  store double 0.000000e+00, ptr %i.xk, align 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xe, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xl, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 88
  store i32 1, ptr %i.xm, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xe, i64 96
  store double 0.000000e+00, ptr %i.xn, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xe, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xo, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xe, i64 120
  store i32 1, ptr %i.xp, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xe, i64 128
  store double 0.000000e+00, ptr %i.xq, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xe, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xr, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xe, i64 152
  store i32 1, ptr %i.xs, align 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xe, i64 160
  store double 0.000000e+00, ptr %i.xt, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xe, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xu, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xe, i64 184
  store i32 1, ptr %i.xv, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xe, i64 192
  store double 0.000000e+00, ptr %i.xw, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xe, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.xx, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xe, i64 216
  store i32 1, ptr %i.xy, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xe, i64 224
  store double 0.000000e+00, ptr %i.xz, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xe, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ya, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xe, i64 248
  store i32 1, ptr %i.yb, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xe, i64 256 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.ww
  br i1 %i.yd, label %.loopexit394, label %.new

.loopexit394:                                     ; preds = %.prol.loopexit, %.new, %bb.bc
  store ptr %i.wu, ptr %i.uu, align 8
  %i.ye = load i32, ptr %i.wr, align 8            ; 2 uses
  %.not469 = icmp eq i32 %i.ye, 0
  br i1 %.not469, label %.loopexit393, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel.a

_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel.a:    ; preds = %.loopexit394
  %i.yf = load ptr, ptr %i.kw, align 8            ; 3 uses
  %.sroa.6.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %.sroa.6.0.copyload.peel = load <2 x float>, ptr %.sroa.6.0..sroa_idx.peel, align 8 ; 5 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %.sroa.0.0.copyload.peel = load <2 x float>, ptr %i.yg, align 8 ; 4 uses
  %i.yh = load double, ptr %i.yf, align 8
  store double %i.yh, ptr %i.wu, align 8
  %.sroa.0.4.vec.extract289.peel = extractelement <2 x float> %.sroa.0.0.copyload.peel, i64 1 ; 2 uses
  %foldExtExtBinop588 = fmul <2 x float> %.sroa.6.0.copyload.peel, %.sroa.6.0.copyload.peel
  %i.yi = extractelement <2 x float> %foldExtExtBinop588, i64 0
  %i.yj = call float @llvm.fmuladd.f32(float %.sroa.0.4.vec.extract289.peel, float %.sroa.0.4.vec.extract289.peel, float %i.yi)
  %.sroa.15.12.vec.extract303.peel = extractelement <2 x float> %.sroa.6.0.copyload.peel, i64 1 ; 2 uses
  %i.yk = call float @llvm.fmuladd.f32(float %.sroa.15.12.vec.extract303.peel, float %.sroa.15.12.vec.extract303.peel, float %i.yj)
  %.sroa.0.0.vec.extract281.peel = extractelement <2 x float> %.sroa.0.0.copyload.peel, i64 0 ; 2 uses
  %i.yl = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract281.peel, float %.sroa.0.0.vec.extract281.peel, float %i.yk) ; 2 uses
  %i.ym = fcmp une float %i.yl, 0.000000e+00
  br i1 %i.ym, label %7, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

7:                                                ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel.a
  %sqrt.i.peel = call float @llvm.sqrt.f32(float %i.yl)
  %8 = fdiv float 1.000000e+00, %sqrt.i.peel
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = fmul <2 x float> %.sroa.6.0.copyload.peel, %10
  %12 = fmul <2 x float> %.sroa.0.0.copyload.peel, %10
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel

_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel:      ; preds = %7, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel.a
  %.sroa.13.1.peel = phi <2 x float> [ %11, %7 ], [ %.sroa.6.0.copyload.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel.a ] ; 2 uses
  %.sroa.0.1.peel = phi <2 x float> [ %12, %7 ], [ %.sroa.0.0.copyload.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel.a ] ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  store <2 x float> %.sroa.0.1.peel, ptr %13, align 8
  %.sroa.13.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  store <2 x float> %.sroa.13.1.peel, ptr %.sroa.13.0..sroa_idx.peel, align 8
  %.not549 = icmp eq i32 %i.ye, 1
  br i1 %.not549, label %.loopexit393, label %.lr.ph463.peel.next

.lr.ph463.peel.next:                              ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit
  %indvars.iv483 = phi i64 [ %indvars.iv.next476, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ 1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.0.0381460 = phi <2 x float> [ %.sroa.0.1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ %.sroa.0.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 4 uses
  %.sroa.15.0459 = phi <2 x float> [ %.sroa.13.1, %_ZN13aiQuaterniontIfE9NormalizeEv.exit ], [ %.sroa.13.1.peel, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel ] ; 5 uses
  %i.yn = load ptr, ptr %i.kw, align 8
  %i.yo = getelementptr inbounds nuw [32 x i8], ptr %i.yn, i64 %indvars.iv483 ; 3 uses
  %.sroa.15.12.vec.extract = extractelement <2 x float> %.sroa.15.0459, i64 1
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  %i.yr = fneg float %.sroa.15.12.vec.extract
  %i.ys = load <2 x float>, ptr %i.yp, align 4    ; 4 uses
  %i.yt = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.yu = load <2 x float>, ptr %i.yq, align 4    ; 6 uses
  %i.yv = shufflevector <2 x float> %.sroa.0.0381460, <2 x float> %.sroa.15.0459, <2 x i32> <i32 1, i32 2>
  %i.yw = fneg <2 x float> %i.yv                  ; 2 uses
  %i.yx = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yy = fmul <2 x float> %.sroa.15.0459, %i.yx
  %i.yz = shufflevector <2 x float> %.sroa.0.0381460, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.za = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yz, <2 x float> %i.ys, <2 x float> %i.yy)
  %i.zb = shufflevector <2 x float> %.sroa.15.0459, <2 x float> %.sroa.0.0381460, <2 x i32> <i32 1, i32 3>
  %i.zc = shufflevector <2 x float> %i.yu, <2 x float> %i.ys, <2 x i32> <i32 1, i32 2>
  %i.zd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zb, <2 x float> %i.zc, <2 x float> %i.za)
  %i.ze = shufflevector <2 x float> %i.yt, <2 x float> %i.yu, <2 x i32> <i32 0, i32 3>
  %i.zf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yw, <2 x float> %i.ze, <2 x float> %i.zd) ; 5 uses
  %i.zg = shufflevector <2 x float> %.sroa.0.0381460, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zh = fneg <2 x float> %i.yu
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> %i.yu, <2 x i32> <i32 1, i32 2>
  %i.zj = fmul <2 x float> %i.zg, %i.zi
  %i.zk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yz, <2 x float> %i.yu, <2 x float> %i.zj)
  %i.zl = shufflevector <2 x float> %i.yw, <2 x float> %.sroa.15.0459, <2 x i32> <i32 1, i32 2>
  %i.zm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zl, <2 x float> %i.ys, <2 x float> %i.zk)
  %i.zn = insertelement <2 x float> poison, float %i.yr, i64 0
  %i.zo = shufflevector <2 x float> %i.zn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zo, <2 x float> %i.yt, <2 x float> %i.zm) ; 4 uses
  %i.zq = load double, ptr %i.yo, align 8
  %i.zr = load ptr, ptr %i.uu, align 8
  %i.zs = getelementptr inbounds nuw [32 x i8], ptr %i.zr, i64 %indvars.iv483
  store double %i.zq, ptr %i.zs, align 8
  %foldExtExtBinop590 = fmul <2 x float> %i.zf, %i.zf
  %i.zt = extractelement <2 x float> %foldExtExtBinop590, i64 0
  %i.zu = extractelement <2 x float> %i.zp, i64 1 ; 2 uses
  %i.zv = call float @llvm.fmuladd.f32(float %i.zu, float %i.zu, float %i.zt)
  %i.zw = extractelement <2 x float> %i.zf, i64 1 ; 2 uses
  %i.zx = call float @llvm.fmuladd.f32(float %i.zw, float %i.zw, float %i.zv)
  %i.zy = extractelement <2 x float> %i.zp, i64 0 ; 2 uses
  %i.zz = call float @llvm.fmuladd.f32(float %i.zy, float %i.zy, float %i.zx) ; 2 uses
  %i.aaa = fcmp une float %i.zz, 0.000000e+00
  br i1 %i.aaa, label %14, label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

14:                                               ; preds = %.lr.ph463.peel.next
  %sqrt.i = call float @llvm.sqrt.f32(float %i.zz)
  %15 = fdiv float 1.000000e+00, %sqrt.i
  %16 = insertelement <2 x float> poison, float %15, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %18 = fmul <2 x float> %i.zf, %17
  %19 = fmul <2 x float> %i.zp, %17
  br label %_ZN13aiQuaterniontIfE9NormalizeEv.exit

_ZN13aiQuaterniontIfE9NormalizeEv.exit:           ; preds = %14, %.lr.ph463.peel.next
  %.sroa.13.1 = phi <2 x float> [ %18, %14 ], [ %i.zf, %.lr.ph463.peel.next ] ; 2 uses
  %.sroa.0.1 = phi <2 x float> [ %19, %14 ], [ %i.zp, %.lr.ph463.peel.next ] ; 2 uses
  %20 = load ptr, ptr %i.uu, align 8
  %21 = getelementptr inbounds nuw [32 x i8], ptr %20, i64 %indvars.iv483 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> %.sroa.0.1, ptr %22, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 16
  store <2 x float> %.sroa.13.1, ptr %.sroa.13.0..sroa_idx, align 8
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %23 = load i32, ptr %i.wr, align 8
  %24 = zext i32 %23 to i64
  %25 = icmp samesign ult i64 %indvars.iv.next476, %24
  br i1 %25, label %.lr.ph463.peel.next, label %.loopexit393, !llvm.loop !37

.loopexit393:                                     ; preds = %_ZN13aiQuaterniontIfE9NormalizeEv.exit, %_ZN13aiQuaterniontIfE9NormalizeEv.exit.peel, %.loopexit394, %bb.ba
  %i.aab = load ptr, ptr %i.nd, align 8           ; 2 uses
  %i.aac = load ptr, ptr %i.ne, align 8           ; 2 uses
  %i.aad = icmp eq ptr %i.aab, %i.aac
  br i1 %i.aad, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %.loopexit393
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = ptrtoint ptr %i.aab to i64
  %i.aag = sub i64 %i.aae, %i.aaf
  %i.aah = sdiv exact i64 %i.aag, 24              ; 2 uses
  %i.aai = trunc i64 %i.aah to i32
  store i32 %i.aai, ptr %i.uv, align 8
  %i.aaj = and i64 %i.aah, 4294967295             ; 3 uses
  %i.aak = mul nuw nsw i64 %i.aaj, 24
  %i.aal = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aak) #28
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bf:                                            ; preds = %bb.be
  %i.aam = icmp eq i64 %i.aaj, 0
  br i1 %i.aam, label %.loopexit392, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %i.aal, i64 %i.aaj
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %i.aao = phi ptr [ %i.aal, %bb.bg ], [ %i.aaq, %bb.bh ] ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aao, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.aap, align 4
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 24 ; 2 uses
  %i.aar = icmp eq ptr %i.aaq, %i.aan
  br i1 %i.aar, label %.loopexit392, label %bb.bh

.loopexit392:                                     ; preds = %bb.bh, %bb.bf
  store ptr %i.aal, ptr %i.uw, align 8
  %i.aas = load ptr, ptr %i.nd, align 8
  %i.aat = load i32, ptr %i.uv, align 8
  %i.aau = zext i32 %i.aat to i64
  %i.aav = mul nuw nsw i64 %i.aau, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aal, ptr nonnull align 8 %i.aas, i64 %i.aav, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit393, %.loopexit392, %bb.ai
  %i.aaw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8
  %i.aaz = load ptr, ptr %i.aaw, align 8
  %i.aba = ptrtoint ptr %i.aay to i64
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = sub i64 %i.aba, %i.abb
  %i.abd = lshr exact i64 %i.abc, 3               ; 2 uses
  %i.abe = trunc i64 %i.abd to i32                ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %2, i64 1104
  store i32 %i.abe, ptr %i.abf, align 8
  %i.abg = icmp eq i32 %i.abe, 0
  br i1 %i.abg, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.abh = load ptr, ptr %i.aax, align 8
  %i.abi = load ptr, ptr %i.aaw, align 8
  %i.abj = ptrtoint ptr %i.abh to i64
  %i.abk = ptrtoint ptr %i.abi to i64
  %i.abl = sub i64 %i.abj, %i.abk
  %i.abm = call i64 @llvm.smax.i64(i64 %i.abl, i64 -1)
  %i.abn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abm) #28
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  %i.abo = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 4 uses
  store ptr %i.abn, ptr %i.abo, align 8
  %wide.trip.count = and i64 %i.abd, 4294967295
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bo
  %indvars.iv487 = phi i64 [ 0, %bb.bk ], [ %indvars.iv.next488, %bb.bo ] ; 5 uses
  %i.abp = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #28
          to label %bb.bm unwind label %.loopexit391 ; 3 uses

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.abp)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.abq = load ptr, ptr %i.abo, align 8
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.abq, i64 %indvars.iv487
  store ptr %i.abp, ptr %i.abr, align 8
  %i.abs = load ptr, ptr %i.abo, align 8
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv487
  %i.abu = load ptr, ptr %i.abt, align 8
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 1096
  store ptr %2, ptr %i.abv, align 8
  %i.abw = load ptr, ptr %i.abo, align 8
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.abw, i64 %indvars.iv487
  %i.aby = load ptr, ptr %i.abx, align 8
  %i.abz = load ptr, ptr %i.aaw, align 8
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %indvars.iv487
  %i.acb = load ptr, ptr %i.aca, align 8
  invoke void @_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %i.aby, ptr noundef %i.acb, ptr nonnull align 4 poison)
          to label %bb.bo unwind label %.loopexit391

bb.bo:                                            ; preds = %bb.bn
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next488, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bl, !llvm.loop !38

.loopexit391:                                     ; preds = %bb.bl, %bb.bn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit404 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.e, %bb.an, %bb.bj, %._crit_edge458, %bb.aw, %bb.bb, %bb.be, %bb.al, %bb.ak
  %.sroa.28.0420 = phi ptr [ %.sroa.17368.0422, %bb.e ], [ %.sroa.28.0.lcssa561, %bb.an ], [ %.sroa.28.0.lcssa561, %bb.bj ], [ %.sroa.28.0.lcssa561, %._crit_edge458 ], [ %.sroa.28.0.lcssa561, %bb.aw ], [ %.sroa.28.0.lcssa561, %bb.bb ], [ %.sroa.28.0.lcssa561, %bb.be ], [ %.sroa.28.0.lcssa561, %bb.al ], [ %.sroa.28.0.lcssa561, %bb.ak ]
  %.sroa.0357.0412 = phi ptr [ %.sroa.0357.0423, %bb.e ], [ %.sroa.0357.0.lcssa567, %bb.an ], [ %.sroa.0357.0.lcssa567, %bb.bj ], [ %.sroa.0357.0.lcssa567, %._crit_edge458 ], [ %.sroa.0357.0.lcssa567, %bb.aw ], [ %.sroa.0357.0.lcssa567, %bb.bb ], [ %.sroa.0357.0.lcssa567, %bb.be ], [ %.sroa.0357.0.lcssa567, %bb.al ], [ %.sroa.0357.0.lcssa567, %bb.ak ]
  %lpad.loopexit.split-lp405 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

bb.bp:                                            ; preds = %bb.bm
  %i.acc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.abp, i64 noundef 1144) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.bo, %bb.bi
  %i.acd = ptrtoint ptr %.sroa.28.0.lcssa561 to i64
  %i.ace = ptrtoint ptr %.sroa.0357.0.lcssa567 to i64
  %i.acf = sub i64 %i.acd, %i.ace
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.0.lcssa567, i64 noundef %i.acf) #26
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit278:                 ; preds = %.loopexit391, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %bb.bp
  %.sroa.28.0417 = phi ptr [ %.sroa.28.0.lcssa561, %.body ], [ %.sroa.28.1, %.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.28.0.lcssa561, %bb.bp ], [ %.sroa.28.0.lcssa561, %.loopexit391 ], [ %.sroa.17368.0422, %.loopexit.split-lp.loopexit ], [ %.sroa.28.0420, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0357.0409 = phi ptr [ %.sroa.0357.0.lcssa567, %.body ], [ %.sroa.0357.1, %.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0357.0.lcssa567, %bb.bp ], [ %.sroa.0357.0.lcssa567, %.loopexit391 ], [ %.sroa.0357.0423, %.loopexit.split-lp.loopexit ], [ %.sroa.0357.0412, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn251 = phi { ptr, i32 } [ %.pn235, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp400.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.acc, %bb.bp ], [ %lpad.loopexit, %.loopexit391 ], [ %lpad.loopexit404, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp405, %.loopexit.split-lp.loopexit.split-lp ]
  %i.acg = ptrtoint ptr %.sroa.28.0417 to i64
  %i.ach = ptrtoint ptr %.sroa.0357.0409 to i64
  %i.aci = sub i64 %i.acg, %i.ach
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0357.0409, i64 noundef %i.aci) #26
  resume { ptr, i32 } %.pn251
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 7 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 4 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.y = fneg <4 x float> %i.x                    ; 4 uses
  %i.z = extractelement <4 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.v, i64 0  ; 7 uses
  %i.ab = extractelement <2 x float> %i.u, i64 0  ; 3 uses
  %i.ac = fneg float %i.ab                        ; 4 uses
  %i.ad = extractelement <4 x float> %i.y, i64 3  ; 3 uses
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.am = fmul float %i.t, %i.al
  %i.an = fmul float %i.t, %i.aj
  %i.ao = fmul float %i.an, %i.z
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.am, float %i.e, float %i.ao)
  %i.aq = extractelement <2 x float> %i.ah, i64 0
  %i.ar = fmul float %i.a, %i.aq                  ; 2 uses
  %i.as = fmul float %i.aj, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.aa, float %i.ap)
  %i.au = fmul float %i.ar, %i.ac
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.e, float %i.at)
  %foldExtExtBinop = fmul <2 x float> %i.ah, %i.ae
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@cosf
; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store double 0.000000e+00, ptr %.08.i.i.i.prol, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  store i32 1, ptr %i.q, align 8
  %i.r = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !64

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store double 0.000000e+00, ptr %.08.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  store i32 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store double 0.000000e+00, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store i32 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  store double 0.000000e+00, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store i32 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  store double 0.000000e+00, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  store i32 1, ptr %i.ae, align 8
  %i.af = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ag, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp ult i64 %i.n, %1
  br i1 %i.ah, label %bb.d, label %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #27
  unreachable

_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ai = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 288230376151711743) ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 5
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i30.prol ], [ %i.am, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit ]
  store double 0.000000e+00, ptr %.08.i.i.i31.prol, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24
  store i32 1, ptr %i.ao, align 8
  %i.ap = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !66

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.am, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.aq, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ap, %.lr.ph.i.i.i30.prol ]
  %i.ar = icmp ult i64 %1, 4
  br i1 %i.ar, label %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.be, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 13 uses
  %.057.i.i.i32 = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store double 0.000000e+00, ptr %.08.i.i.i31, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  store i32 1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  store double 0.000000e+00, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store i32 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  store double 0.000000e+00, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  store i32 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  store double 0.000000e+00, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  store i32 1, ptr %i.bc, align 8
  %i.bd = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 128
  %.not.i.i.i33.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !65

_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i37 ], [ %i.al, %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 32, i1 false), !alias.scope !71
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i38 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i37, !llvm.loop !70

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.bh = load ptr, ptr %i.h, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #26
  br label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit41

_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit41: ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.al, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %1
  store ptr %i.bk, ptr %i.a, align 8
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bl, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP9aiQuatKeymS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit41, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !3}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, !3}
!22 = distinct !{!22, !3}
!23 = distinct !{!23, !3}
!24 = distinct !{!24, !3}
!25 = distinct !{!25, !3}
!26 = distinct !{!26, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!27 = distinct !{!27, !26, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!28 = distinct !{!28, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!29 = distinct !{!29, !28, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!30 = distinct !{!30, i1 true, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!31 = distinct !{!31, !30, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!32 = distinct !{!32, !3}
!33 = distinct !{!33, !3}
!34 = distinct !{!34, !3}
!35 = distinct !{!35, !3}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !3, !42}
!38 = distinct !{!38, !3}
!39 = !{!27}
!40 = !{!29, !27}
!41 = !{!31}
!42 = !{!"llvm.loop.peeled.count", i32 1}
!43 = distinct !{!43, !3}
!44 = distinct !{!44, !3}
!45 = distinct !{!45, !3}
!46 = distinct !{!46, !3}
!47 = distinct !{!47, !3}
!48 = distinct !{!48, !3}
!49 = distinct !{!49, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!50 = distinct !{!50, !49, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!52 = distinct !{!52, !51, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!53 = distinct !{!53, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!54 = distinct !{!54, !53, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!55 = !{!50}
!56 = !{!52}
!57 = !{!54}
!58 = !{!54, !52, !50}
!59 = distinct !{!59, !3}
!60 = distinct !{null, null, null, null, null, null, null, null}
!61 = distinct !{!61, !3}
!62 = distinct !{null, null, null}
!63 = distinct !{null}
!64 = distinct !{!64, !6}
!65 = distinct !{!65, !3}
!66 = distinct !{!66, !6}
!67 = distinct !{!67, i1 true, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_"}
!68 = distinct !{!68, !67, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!69 = distinct !{!69, !67, !"_ZSt19__relocate_object_aI9aiQuatKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!70 = distinct !{!70, !3}
!71 = !{!69, !68}
end_hunk_1
