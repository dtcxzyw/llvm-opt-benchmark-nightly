Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair?download=true
inline.NumInlined: 2205
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZZN6embree4sse218BVHNHairBuilderSAHILi4ENS_7CurveNvILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_SJ_:bb.a
bb.co:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.vu, ptr %i.vt, align 16
  %i.wi = shl i64 %i.vp, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.so, i64 32 ; 2 uses
  %i.wk = load i64, ptr %i.wj, align 32           ; 2 uses
  %i.wl = icmp ugt i64 %i.wi, %i.wk
  br i1 %i.wl, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.wm = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.sp, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 %i.wk, ptr %i.e, align 8
  %i.wn = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.sp, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 2 uses
  store ptr %i.wn, ptr %i.wo, align 8
  %i.wp = load i64, ptr %i.vz, align 8
  %i.wq = load i64, ptr %i.vt, align 16
  %i.wr = sub i64 %i.wp, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.so, i64 48 ; 6 uses
  %i.wt = load i64, ptr %i.ws, align 16
  %i.wu = add i64 %i.wt, %i.wr                    ; 2 uses
  store i64 %i.wu, ptr %i.ws, align 16
  %i.wv = load i64, ptr %i.e, align 8             ; 2 uses
  store i64 %i.wv, ptr %i.vz, align 8
  store i64 %i.vp, ptr %i.vt, align 16
  %.not23.i.i = icmp ugt i64 %i.vp, %i.wv
  br i1 %.not23.i.i, label %bb.cs, label %bb.cr, !prof !56

bb.cr:                                            ; preds = %bb.cq
  store i64 %i.wu, ptr %i.ws, align 16
  br label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  store i64 0, ptr %i.vt, align 16
  %i.ww = load i64, ptr %i.wj, align 32
  store i64 %i.ww, ptr %i.e, align 8
  %i.wx = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.sp, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.wx, ptr %i.wo, align 8
  %i.wy = load i64, ptr %i.vz, align 8
  %i.wz = load i64, ptr %i.vt, align 16
  %i.xa = sub i64 %i.wy, %i.wz
  %i.xb = load i64, ptr %i.ws, align 16
  %i.xc = add i64 %i.xb, %i.xa                    ; 2 uses
  store i64 %i.xc, ptr %i.ws, align 16
  %i.xd = load i64, ptr %i.e, align 8             ; 2 uses
  store i64 %i.xd, ptr %i.vz, align 8
  store i64 %i.vp, ptr %i.vt, align 16
  %.not24.i.i = icmp ugt i64 %i.vp, %i.xd
  br i1 %.not24.i.i, label %bb.cu, label %bb.ct, !prof !56

bb.ct:                                            ; preds = %bb.cs
  store i64 %i.xc, ptr %i.ws, align 16
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  store i64 0, ptr %i.vt, align 16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cr
  %.0.i.i = phi ptr [ %i.wn, %bb.cr ], [ %i.wx, %bb.ct ], [ null, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i: ; preds = %bb.cv, %bb.cp, %bb.cn
  %.1.i.i = phi ptr [ %i.wh, %bb.cn ], [ %i.wm, %bb.cp ], [ %.0.i.i, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not623 = icmp eq i64 %i.sf, 0
  br i1 %.not623, label %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit, label %.lr.ph608

.lr.ph608:                                        ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i
  %i.xe = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.xf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.xg = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.xh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.xi = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.xj = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.xk = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.xl = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.xm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.xn = getelementptr inbounds nuw i8, ptr %12, i64 24
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph608, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit69
  %.0.i49607 = phi i64 [ 0, %.lr.ph608 ], [ %i.ags, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit69 ] ; 2 uses
  %.0532606 = phi i64 [ %i.p, %.lr.ph608 ], [ %.1533.lcssa, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit69 ] ; 6 uses
  %i.xo = getelementptr inbounds nuw [122 x i8], ptr %.1.i.i, i64 %.0.i49607 ; 5 uses
  %i.xp = load i64, ptr %i.n, align 8
  %i.xq = load ptr, ptr %i.ru, align 8
  %i.xr = add i64 %.0532606, 4
  %i.xs = call noundef i64 @llvm.umin.i64(i64 %i.xr, i64 %i.xp) ; 3 uses
  %i.xt = sub i64 %i.xs, %.0532606
  %i.xu = trunc i64 %i.xt to i8                   ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 1 ; 4 uses
  store i8 %i.xu, ptr %i.xv, align 1
  %i.xw = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.0532606 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 12
  %i.xy = load i32, ptr %i.xx, align 4            ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xo, i64 2
  store i32 %i.xy, ptr %i.xz, align 4
  %i.ya = zext i32 %i.xy to i64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xq, i64 488 ; 4 uses
  %i.yc = load ptr, ptr %i.yb, align 8
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.ya
  %i.ye = load ptr, ptr %i.yd, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 60
  %i.yg = load i32, ptr %i.yf, align 4
  %i.yh = trunc i32 %i.yg to i8
  store i8 %i.yh, ptr %i.xo, align 2
  %.not624 = icmp eq i8 %i.xu, 0
  br i1 %.not624, label %._crit_edge598, label %.lr.ph597

._crit_edge598:                                   ; preds = %.lr.ph597, %bb.cw
  %.sroa.0320.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.cw ], [ %i.zs, %.lr.ph597 ] ; 4 uses
  %.sroa.8324.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.cw ], [ %i.zu, %.lr.ph597 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store <4 x float> %.sroa.0320.0.lcssa, ptr %10, align 16
  %i.yi = fsub <4 x float> %.sroa.8324.0.lcssa, %.sroa.0320.0.lcssa ; 2 uses
  %i.yj = fmul <4 x float> %i.yi, <float f0x3FDDB3D7, float f0x3FDDB3D7, float f0x3FDDB3D7, float poison>
  %i.yk = fdiv <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float poison>, %i.yj ; 3 uses
  %.sroa.0319.0.vec.extract = extractelement <4 x float> %i.yk, i64 0 ; 2 uses
  %.sroa.0319.4.vec.extract = extractelement <4 x float> %i.yk, i64 1 ; 2 uses
  %i.yl = fcmp olt float %.sroa.0319.0.vec.extract, %.sroa.0319.4.vec.extract
  %i.ym = select i1 %i.yl, float %.sroa.0319.0.vec.extract, float %.sroa.0319.4.vec.extract ; 2 uses
  %.sroa.0319.8.vec.extract = extractelement <4 x float> %i.yk, i64 2 ; 2 uses
  %i.yn = fcmp olt float %i.ym, %.sroa.0319.8.vec.extract
  %i.yo = select i1 %i.yn, float %i.ym, float %.sroa.0319.8.vec.extract
  %i.yp = fcmp oeq <4 x float> %i.yi, zeroinitializer
  %i.yq = bitcast <4 x i1> %i.yp to i4
  %i.yr = and i4 %i.yq, 7
  %i.ys = icmp eq i4 %i.yr, 7
  %.054.i67 = select i1 %i.ys, float 0.000000e+00, float %i.yo ; 2 uses
  %i.yt = extractelement <4 x float> %.sroa.0320.0.lcssa, i64 2
  %i.yu = load i8, ptr %i.xv, align 1
  %i.yv = zext i8 %i.yu to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xo, i64 6 ; 17 uses
  %i.yx = mul nuw nsw i64 %i.yv, 25               ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.yx ; 2 uses
  %i.yz = shufflevector <4 x float> %.sroa.0320.0.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.yz, ptr %i.yy, align 4
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store float %i.yt, ptr %i.za, align 4
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.yx
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 18
  store float %.054.i67, ptr %i.zc, align 4
  %i.zd = icmp ult i64 %.0532606, %i.xs
  br i1 %i.zd, label %.lr.ph604, label %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit69

.lr.ph597:                                        ; preds = %bb.cw, %.lr.ph597
  %.0.i66595 = phi i64 [ %i.zv, %.lr.ph597 ], [ 0, %bb.cw ] ; 2 uses
  %.sroa.8324.0594 = phi <4 x float> [ %i.zu, %.lr.ph597 ], [ splat (float -inf), %bb.cw ]
  %.sroa.0320.0593 = phi <4 x float> [ %i.zs, %.lr.ph597 ], [ splat (float +inf), %bb.cw ]
  %i.ze = getelementptr [32 x i8], ptr %i.xw, i64 %.0.i66595 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 12
  %i.zg = load i32, ptr %i.zf, align 4
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 28
  %i.zi = load i32, ptr %i.zh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.zj = zext i32 %i.zg to i64
  %i.zk = load ptr, ptr %i.yb, align 8
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.zj
  %i.zm = load ptr, ptr %i.zl, align 8            ; 2 uses
  %i.zn = zext i32 %i.zi to i64
  %i.zo = load ptr, ptr %i.zm, align 16
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 456
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %9, ptr noundef nonnull align 16 dereferenceable(88) %i.zm, i64 noundef %i.zn), !inline_history !25
  %i.zr = load <4 x float>, ptr %9, align 16, !noalias !386
  %i.zs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0320.0593, <4 x float> %i.zr) ; 2 uses
  %i.zt = load <4 x float>, ptr %i.xe, align 16, !noalias !387
  %i.zu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8324.0594, <4 x float> %i.zt) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.zv = add nuw nsw i64 %.0.i66595, 1           ; 2 uses
  %i.zw = load i8, ptr %i.xv, align 1
  %i.zx = zext i8 %i.zw to i64
  %i.zy = icmp samesign ult i64 %i.zv, %i.zx
  br i1 %i.zy, label %.lr.ph597, label %._crit_edge598, !llvm.loop !26

.lr.ph604:                                        ; preds = %._crit_edge598, %.lr.ph604
  %.053.i68602 = phi i64 [ %i.ago, %.lr.ph604 ], [ 0, %._crit_edge598 ] ; 18 uses
  %.1533601 = phi i64 [ %i.agp, %.lr.ph604 ], [ %.0532606, %._crit_edge598 ] ; 2 uses
  %i.zz = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.1533601 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 12
  %i.aab = load i32, ptr %i.aaa, align 4
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 28
  %i.aad = load i32, ptr %i.aac, align 4          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.aae = zext i32 %i.aab to i64                 ; 2 uses
  %i.aaf = load ptr, ptr %i.yb, align 8
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %i.aae
  %i.aah = load ptr, ptr %i.aag, align 8          ; 2 uses
  %i.aai = zext i32 %i.aad to i64                 ; 2 uses
  %i.aaj = load ptr, ptr %i.aah, align 16
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 424
  %i.aal = load ptr, ptr %i.aak, align 8
  call void %i.aal(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LinearSpace3") align 16 %11, ptr noundef nonnull align 16 dereferenceable(88) %i.aah, i64 noundef %i.aai), !inline_history !25
  %i.aam = load <4 x float>, ptr %11, align 16, !noalias !388
  %i.aan = fmul <4 x float> %i.aam, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0295.0.vec.extract = extractelement <4 x float> %i.aan, i64 0 ; 2 uses
  %i.aao = call float @llvm.trunc.f32(float %.sroa.0295.0.vec.extract)
  %.sroa.0295.4.vec.extract = extractelement <4 x float> %i.aan, i64 1 ; 2 uses
  %i.aap = call float @llvm.trunc.f32(float %.sroa.0295.4.vec.extract)
  %.sroa.0295.8.vec.extract = extractelement <4 x float> %i.aan, i64 2 ; 2 uses
  %i.aaq = call float @llvm.trunc.f32(float %.sroa.0295.8.vec.extract)
  %i.aar = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aao, i64 0
  %i.aas = insertelement <4 x float> %i.aar, float %i.aap, i64 1 ; 2 uses
  %i.aat = insertelement <4 x float> %i.aas, float %i.aaq, i64 2 ; 3 uses
  %i.aau = load <4 x float>, ptr %i.xf, align 16, !noalias !389
  %i.aav = fmul <4 x float> %i.aau, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0293.0.vec.extract = extractelement <4 x float> %i.aav, i64 0 ; 2 uses
  %i.aaw = call float @llvm.trunc.f32(float %.sroa.0293.0.vec.extract)
  %.sroa.0293.4.vec.extract = extractelement <4 x float> %i.aav, i64 1 ; 2 uses
  %i.aax = call float @llvm.trunc.f32(float %.sroa.0293.4.vec.extract)
  %.sroa.0293.8.vec.extract = extractelement <4 x float> %i.aav, i64 2 ; 2 uses
  %i.aay = call float @llvm.trunc.f32(float %.sroa.0293.8.vec.extract)
  %i.aaz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aaw, i64 0
  %i.aba = insertelement <4 x float> %i.aaz, float %i.aax, i64 1 ; 2 uses
  %i.abb = insertelement <4 x float> %i.aba, float %i.aay, i64 2 ; 3 uses
  %i.abc = load <4 x float>, ptr %i.xg, align 16, !noalias !390
  %i.abd = fmul <4 x float> %i.abc, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0291.0.vec.extract = extractelement <4 x float> %i.abd, i64 0 ; 2 uses
  %i.abe = call float @llvm.trunc.f32(float %.sroa.0291.0.vec.extract)
  %.sroa.0291.4.vec.extract = extractelement <4 x float> %i.abd, i64 1 ; 2 uses
  %i.abf = call float @llvm.trunc.f32(float %.sroa.0291.4.vec.extract)
  %.sroa.0291.8.vec.extract = extractelement <4 x float> %i.abd, i64 2 ; 2 uses
  %i.abg = call float @llvm.trunc.f32(float %.sroa.0291.8.vec.extract)
  %i.abh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.abe, i64 0
  %i.abi = insertelement <4 x float> %i.abh, float %i.abf, i64 1 ; 2 uses
  %i.abj = insertelement <4 x float> %i.abi, float %i.abg, i64 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.abk = load ptr, ptr %i.yb, align 8
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %i.aae
  %i.abm = load ptr, ptr %i.abl, align 8          ; 2 uses
  %i.abn = fmul <4 x float> %i.aat, %i.aat        ; 3 uses
  %i.abo = shufflevector <4 x float> %i.abn, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.abp = shufflevector <4 x float> %i.abn, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.abq = fadd <4 x float> %i.abn, %i.abo
  %i.abr = fadd <4 x float> %i.abp, %i.abq
  %i.abs = extractelement <4 x float> %i.abr, i64 0
  %sqrt539 = call float @llvm.sqrt.f32(float %i.abs) ; 2 uses
  %i.abt = fmul <4 x float> %i.abb, %i.abb        ; 3 uses
  %i.abu = shufflevector <4 x float> %i.abt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.abv = shufflevector <4 x float> %i.abt, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.abw = fadd <4 x float> %i.abt, %i.abu
  %i.abx = fadd <4 x float> %i.abv, %i.abw
  %i.aby = extractelement <4 x float> %i.abx, i64 0
  %sqrt538 = call float @llvm.sqrt.f32(float %i.aby) ; 2 uses
  %i.abz = fmul <4 x float> %i.abj, %i.abj        ; 3 uses
  %i.aca = shufflevector <4 x float> %i.abz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.acb = shufflevector <4 x float> %i.abz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.acc = fadd <4 x float> %i.abz, %i.aca
  %i.acd = fadd <4 x float> %i.acb, %i.acc
  %i.ace = extractelement <4 x float> %i.acd, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.ace) ; 2 uses
  %i.acf = fcmp olt float %sqrt539, %sqrt538
  %i.acg = select i1 %i.acf, float %sqrt538, float %sqrt539 ; 2 uses
  %i.ach = fcmp olt float %i.acg, %sqrt
  %i.aci = select i1 %i.ach, float %sqrt, float %i.acg
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.acj = shufflevector <4 x float> %i.aas, <4 x float> %i.abi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ack = shufflevector <4 x float> %i.aat, <4 x float> %i.abj, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.acl = shufflevector <4 x float> %i.aba, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.acm = shufflevector <4 x float> %i.abb, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.acn = shufflevector <4 x float> %i.acj, <4 x float> %i.acl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aco = shufflevector <4 x float> %i.acj, <4 x float> %i.acl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.acp = shufflevector <4 x float> %i.ack, <4 x float> %i.acm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.acn, ptr %13, align 16, !alias.scope !391
  store <4 x float> %i.aco, ptr %i.xh, align 16, !alias.scope !391
  store <4 x float> %i.acp, ptr %i.xi, align 16, !alias.scope !391
  %i.acq = load ptr, ptr %i.abm, align 16
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 472
  %i.acs = load ptr, ptr %i.acr, align 8
  call void %i.acs(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %12, ptr noundef nonnull align 16 dereferenceable(88) %i.abm, ptr noundef nonnull align 16 dereferenceable(16) %10, float noundef %.054.i67, float noundef %i.aci, ptr noundef nonnull align 16 dereferenceable(48) %13, i64 noundef %i.aai, i64 noundef 0), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.act = fptosi float %.sroa.0295.0.vec.extract to i8
  %i.acu = load i8, ptr %i.xv, align 1
  %i.acv = zext i8 %i.acu to i64                  ; 15 uses
  %i.acw = shl nuw nsw i64 %i.acv, 2
  %i.acx = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 %.053.i68602
  store i8 %i.act, ptr %i.acy, align 1
  %i.acz = fptosi float %.sroa.0295.4.vec.extract to i8
  %i.ada = mul nuw nsw i64 %i.acv, 5
  %i.adb = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 %.053.i68602
  store i8 %i.acz, ptr %i.adc, align 1
  %i.add = fptosi float %.sroa.0295.8.vec.extract to i8
  %i.ade = mul nuw nsw i64 %i.acv, 6
  %i.adf = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.ade
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %.053.i68602
  store i8 %i.add, ptr %i.adg, align 1
  %i.adh = load float, ptr %12, align 16
  %i.adi = call noundef float @llvm.floor.f32(float %i.adh) ; 2 uses
  %i.adj = fcmp olt float %i.adi, 3.276700e+04
  %i.adk = select i1 %i.adj, float %i.adi, float 3.276700e+04 ; 2 uses
  %i.adl = fcmp olt float %i.adk, -3.276700e+04
  %i.adm = select i1 %i.adl, float -3.276700e+04, float %i.adk
  %i.adn = fptosi float %i.adm to i16
  %i.ado = mul nuw nsw i64 %i.acv, 7
  %i.adp = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.ado
  %i.adq = getelementptr inbounds nuw [2 x i8], ptr %i.adp, i64 %.053.i68602
  store i16 %i.adn, ptr %i.adq, align 2
  %i.adr = load float, ptr %i.xj, align 16
  %i.ads = call noundef float @llvm.ceil.f32(float %i.adr) ; 2 uses
  %i.adt = fcmp olt float %i.ads, 3.276700e+04
  %i.adu = select i1 %i.adt, float %i.ads, float 3.276700e+04 ; 2 uses
  %i.adv = fcmp olt float %i.adu, -3.276700e+04
  %i.adw = select i1 %i.adv, float -3.276700e+04, float %i.adu
  %i.adx = fptosi float %i.adw to i16
  %i.ady = mul nuw nsw i64 %i.acv, 9
  %i.adz = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.ady
  %i.aea = getelementptr inbounds nuw [2 x i8], ptr %i.adz, i64 %.053.i68602
  store i16 %i.adx, ptr %i.aea, align 2
  %i.aeb = fptosi float %.sroa.0293.0.vec.extract to i8
  %i.aec = mul nuw nsw i64 %i.acv, 11
  %i.aed = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aec
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 %.053.i68602
  store i8 %i.aeb, ptr %i.aee, align 1
  %i.aef = fptosi float %.sroa.0293.4.vec.extract to i8
  %i.aeg = mul nuw nsw i64 %i.acv, 12
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aeg
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %.053.i68602
  store i8 %i.aef, ptr %i.aei, align 1
  %i.aej = fptosi float %.sroa.0293.8.vec.extract to i8
  %i.aek = mul nuw nsw i64 %i.acv, 13
  %i.ael = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aek
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 %.053.i68602
  store i8 %i.aej, ptr %i.aem, align 1
  %i.aen = load float, ptr %i.xk, align 4
  %i.aeo = call noundef float @llvm.floor.f32(float %i.aen) ; 2 uses
  %i.aep = fcmp olt float %i.aeo, 3.276700e+04
  %i.aeq = select i1 %i.aep, float %i.aeo, float 3.276700e+04 ; 2 uses
  %i.aer = fcmp olt float %i.aeq, -3.276700e+04
  %i.aes = select i1 %i.aer, float -3.276700e+04, float %i.aeq
  %i.aet = fptosi float %i.aes to i16
  %i.aeu = mul nuw nsw i64 %i.acv, 14
  %i.aev = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aeu
  %i.aew = getelementptr inbounds nuw [2 x i8], ptr %i.aev, i64 %.053.i68602
  store i16 %i.aet, ptr %i.aew, align 2
  %i.aex = load float, ptr %i.xl, align 4
  %i.aey = call noundef float @llvm.ceil.f32(float %i.aex) ; 2 uses
  %i.aez = fcmp olt float %i.aey, 3.276700e+04
  %i.afa = select i1 %i.aez, float %i.aey, float 3.276700e+04 ; 2 uses
  %i.afb = fcmp olt float %i.afa, -3.276700e+04
  %i.afc = select i1 %i.afb, float -3.276700e+04, float %i.afa
  %i.afd = fptosi float %i.afc to i16
  %i.afe = shl nuw nsw i64 %i.acv, 4
  %i.aff = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.afe
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %i.aff, i64 %.053.i68602
  store i16 %i.afd, ptr %i.afg, align 2
  %i.afh = fptosi float %.sroa.0291.0.vec.extract to i8
  %i.afi = mul nuw nsw i64 %i.acv, 18
  %i.afj = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.afi
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 %.053.i68602
  store i8 %i.afh, ptr %i.afk, align 1
  %i.afl = fptosi float %.sroa.0291.4.vec.extract to i8
  %i.afm = mul nuw nsw i64 %i.acv, 19
  %i.afn = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.afm
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 %.053.i68602
  store i8 %i.afl, ptr %i.afo, align 1
  %i.afp = fptosi float %.sroa.0291.8.vec.extract to i8
  %i.afq = mul nuw nsw i64 %i.acv, 20
  %i.afr = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 %.053.i68602
  store i8 %i.afp, ptr %i.afs, align 1
  %i.aft = load float, ptr %i.xm, align 8
  %i.afu = call noundef float @llvm.floor.f32(float %i.aft) ; 2 uses
  %i.afv = fcmp olt float %i.afu, 3.276700e+04
  %i.afw = select i1 %i.afv, float %i.afu, float 3.276700e+04 ; 2 uses
  %i.afx = fcmp olt float %i.afw, -3.276700e+04
  %i.afy = select i1 %i.afx, float -3.276700e+04, float %i.afw
  %i.afz = fptosi float %i.afy to i16
  %i.aga = mul nuw nsw i64 %i.acv, 21
  %i.agb = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.aga
  %i.agc = getelementptr inbounds nuw [2 x i8], ptr %i.agb, i64 %.053.i68602
  store i16 %i.afz, ptr %i.agc, align 2
  %i.agd = load float, ptr %i.xn, align 8
  %i.age = call noundef float @llvm.ceil.f32(float %i.agd) ; 2 uses
  %i.agf = fcmp olt float %i.age, 3.276700e+04
  %i.agg = select i1 %i.agf, float %i.age, float 3.276700e+04 ; 2 uses
  %i.agh = fcmp olt float %i.agg, -3.276700e+04
  %i.agi = select i1 %i.agh, float -3.276700e+04, float %i.agg
  %i.agj = fptosi float %i.agi to i16
  %i.agk = mul nuw nsw i64 %i.acv, 23
  %i.agl = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.agk
  %i.agm = getelementptr inbounds nuw [2 x i8], ptr %i.agl, i64 %.053.i68602
  store i16 %i.agj, ptr %i.agm, align 2
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %.053.i68602
  store i32 %i.aad, ptr %i.agn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.ago = add nuw nsw i64 %.053.i68602, 1
  %i.agp = add nuw i64 %.1533601, 1               ; 3 uses
  %i.agq = icmp samesign ult i64 %.053.i68602, 3
  %i.agr = icmp ult i64 %i.agp, %i.xs
  %or.cond = select i1 %i.agq, i1 %i.agr, i1 false
  br i1 %or.cond, label %.lr.ph604, label %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit69, !llvm.loop !27

_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit69: ; preds = %.lr.ph604, %._crit_edge598
  %.1533.lcssa = phi i64 [ %.0532606, %._crit_edge598 ], [ %i.agp, %.lr.ph604 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.ags = add nuw nsw i64 %.0.i49607, 1          ; 2 uses
  %exitcond637.not = icmp eq i64 %i.ags, %i.sf
  br i1 %exitcond637.not, label %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit, label %bb.cw, !llvm.loop !28

_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit: ; preds = %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit69, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i
  %i.agt = ptrtoint ptr %.1.i.i to i64
  %i.agu = call noundef i64 @llvm.umin.i64(i64 %i.sf, i64 7)
  %i.agv = or i64 %i.agu, %i.agt
  %i.agw = or i64 %i.agv, 8
  br label %_ZN6embree7CurveNvILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit

bb.cx:                                            ; preds = %bb.bx
  %i.agx = and i32 %i.sb, 28
  %i.agy = icmp eq i32 %i.agx, 12
  %i.agz = add i64 %i.q, 3
  %i.aha = lshr i64 %i.agz, 2                     ; 6 uses
  %i.ahb = lshr i64 %i.q, 2                       ; 2 uses
  %i.ahc = and i64 %i.q, 3                        ; 3 uses
  %.not.i74 = icmp eq i64 %i.ahc, 0               ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ahe = load ptr, ptr %i.ahd, align 8          ; 18 uses
  %i.ahf = load ptr, ptr %3, align 8              ; 16 uses
  br i1 %i.agy, label %bb.cy, label %bb.dp

bb.cy:                                            ; preds = %bb.cx
  %i.ahg = mul i64 %i.ahb, 122
  %i.ahh = mul nuw nsw i64 %i.ahc, 25
  %i.ahi = add nuw nsw i64 %i.ahh, 22
  %i.ahj = select i1 %.not.i74, i64 0, i64 %i.ahi
  %i.ahk = add i64 %i.ahj, %i.ahg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ahk, ptr %i.b, align 8
  %i.ahl = load ptr, ptr %i.ahe, align 64         ; 17 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8 ; 6 uses
  %i.ahn = load atomic ptr, ptr %i.ahm seq_cst, align 8
  %i.aho = icmp eq ptr %i.ahn, %i.ahf
  br i1 %i.aho, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i55, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  store ptr %i.ahl, ptr %20, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i8 1, ptr %i.ahp, align 8
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.ahl)
  %i.ahq = load atomic ptr, ptr %i.ahm seq_cst, align 8
  %.not.i15.i50 = icmp eq ptr %i.ahq, null
  br i1 %.not.i15.i50, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 104
  %i.ahs = load i64, ptr %i.ahr, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 168
  %i.ahu = load i64, ptr %i.aht, align 8
  %i.ahv = add i64 %i.ahu, %i.ahs
  %i.ahw = load atomic ptr, ptr %i.ahm seq_cst, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 280
  %i.ahy = atomicrmw add ptr %i.ahx, i64 %i.ahv seq_cst, align 8 ; 0 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahl, i64 88
  %i.aia = load i64, ptr %i.ahz, align 8
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahl, i64 80
  %i.aic = load i64, ptr %i.aib, align 16
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahl, i64 152
  %i.aie = load i64, ptr %i.aid, align 8
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahl, i64 144
  %i.aig = load i64, ptr %i.aif, align 16
  %i.aih = add i64 %i.aia, %i.aie
  %i.aii = add i64 %i.aic, %i.aig
  %i.aij = sub i64 %i.aih, %i.aii
  %i.aik = load atomic ptr, ptr %i.ahm seq_cst, align 8
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 288
  %i.aim = atomicrmw add ptr %i.ail, i64 %i.aij seq_cst, align 8 ; 0 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ahl, i64 112
  %i.aio = load i64, ptr %i.ain, align 16
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ahl, i64 176
  %i.aiq = load i64, ptr %i.aip, align 16
  %i.air = add i64 %i.aiq, %i.aio
  %i.ais = load atomic ptr, ptr %i.ahm seq_cst, align 8
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 296
  %i.aiu = atomicrmw add ptr %i.ait, i64 %i.air seq_cst, align 8 ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahl, i64 72
  %.not.i143 = icmp eq ptr %i.ahf, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aiv, i8 0, i64 48, i1 false)
  br i1 %.not.i143, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit144.thread, label %bb.dc

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit144.thread: ; preds = %bb.db
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ahl, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aiw, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit146

bb.dc:                                            ; preds = %bb.db
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ahl, i64 96
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16 ; 2 uses
  %i.aiz = load i64, ptr %i.aiy, align 8
  store i64 %i.aiz, ptr %i.aix, align 32
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ahl, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aja, i8 0, i64 48, i1 false)
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ahl, i64 160
  %i.ajc = load i64, ptr %i.aiy, align 8
  store i64 %i.ajc, ptr %i.ajb, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit146

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit146: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit144.thread, %bb.dc
  store atomic ptr %i.ahf, ptr %i.ahm seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ahl, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %19, align 8
  %i.ajd = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 1, ptr %i.ajd, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i53 unwind label %bb.de

.noexc.i53:                                       ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit146
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ahf, i64 304
  invoke void @_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aje, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i54 unwind label %bb.dd

bb.dd:                                            ; preds = %.noexc.i53
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %.body.i51

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i54: ; preds = %.noexc.i53
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i55

bb.de:                                            ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit146
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i51

.body.i51:                                        ; preds = %bb.de, %bb.dd
  %eh.lpad-body.i52 = phi { ptr, i32 } [ %i.ajg, %bb.de ], [ %i.ajf, %bb.dd ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %common.resume

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i55: ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i54, %bb.cy
  %i.ajh = load i64, ptr %i.b, align 8            ; 8 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ahe, i64 40 ; 2 uses
  %i.ajj = load i64, ptr %i.aji, align 8
  %i.ajk = add i64 %i.ajj, %i.ajh
  store i64 %i.ajk, ptr %i.aji, align 8
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16 ; 9 uses
  %i.ajm = load i64, ptr %i.ajl, align 16         ; 3 uses
  %i.ajn = sub i64 0, %i.ajm
  %i.ajo = and i64 %i.ajn, 15                     ; 2 uses
  %i.ajp = add i64 %i.ajm, %i.ajh
  %i.ajq = add i64 %i.ajp, %i.ajo                 ; 3 uses
  store i64 %i.ajq, ptr %i.ajl, align 16
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ahe, i64 24 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZZN6embree4sse218BVHNHairBuilderSAHILi4ENS_7CurveNvILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_SJ_:bb.a
bb.dg:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i55
  store i64 %i.ajm, ptr %i.ajl, align 16
  %i.aka = shl i64 %i.ajh, 2
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ahe, i64 32 ; 2 uses
  %i.akc = load i64, ptr %i.akb, align 32         ; 2 uses
  %i.akd = icmp ugt i64 %i.aka, %i.akc
  br i1 %i.akd, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ake = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.ahf, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i57

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 %i.akc, ptr %i.c, align 8
  %i.akf = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.ahf, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8 ; 2 uses
  store ptr %i.akf, ptr %i.akg, align 8
  %i.akh = load i64, ptr %i.ajr, align 8
  %i.aki = load i64, ptr %i.ajl, align 16
  %i.akj = sub i64 %i.akh, %i.aki
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ahe, i64 48 ; 6 uses
  %i.akl = load i64, ptr %i.akk, align 16
  %i.akm = add i64 %i.akl, %i.akj                 ; 2 uses
  store i64 %i.akm, ptr %i.akk, align 16
  %i.akn = load i64, ptr %i.c, align 8            ; 2 uses
  store i64 %i.akn, ptr %i.ajr, align 8
  store i64 %i.ajh, ptr %i.ajl, align 16
  %.not23.i.i60 = icmp ugt i64 %i.ajh, %i.akn
  br i1 %.not23.i.i60, label %bb.dk, label %bb.dj, !prof !56

bb.dj:                                            ; preds = %bb.di
  store i64 %i.akm, ptr %i.akk, align 16
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di
  store i64 0, ptr %i.ajl, align 16
  %i.ako = load i64, ptr %i.akb, align 32
  store i64 %i.ako, ptr %i.c, align 8
  %i.akp = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.ahf, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.akp, ptr %i.akg, align 8
  %i.akq = load i64, ptr %i.ajr, align 8
  %i.akr = load i64, ptr %i.ajl, align 16
  %i.aks = sub i64 %i.akq, %i.akr
  %i.akt = load i64, ptr %i.akk, align 16
  %i.aku = add i64 %i.akt, %i.aks                 ; 2 uses
  store i64 %i.aku, ptr %i.akk, align 16
  %i.akv = load i64, ptr %i.c, align 8            ; 2 uses
  store i64 %i.akv, ptr %i.ajr, align 8
  store i64 %i.ajh, ptr %i.ajl, align 16
  %.not24.i.i62 = icmp ugt i64 %i.ajh, %i.akv
  br i1 %.not24.i.i62, label %bb.dm, label %bb.dl, !prof !56

bb.dl:                                            ; preds = %bb.dk
  store i64 %i.aku, ptr %i.akk, align 16
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  store i64 0, ptr %i.ajl, align 16
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dj
  %.0.i.i61 = phi ptr [ %i.akf, %bb.dj ], [ %i.akp, %bb.dl ], [ null, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i57

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i57: ; preds = %bb.dn, %bb.dh, %bb.df
  %.1.i.i58 = phi ptr [ %i.ajz, %bb.df ], [ %i.ake, %bb.dh ], [ %.0.i.i61, %bb.dn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not621 = icmp eq i64 %i.aha, 0
  br i1 %.not621, label %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit63, label %.lr.ph592

.lr.ph592:                                        ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i57
  %i.akw = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.akx = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.aky = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.akz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ala = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.alb = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.alc = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ald = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.ale = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.alf = getelementptr inbounds nuw i8, ptr %17, i64 24
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph592, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.0.i59591 = phi i64 [ 0, %.lr.ph592 ], [ %i.auk, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ] ; 2 uses
  %.0530590 = phi i64 [ %i.p, %.lr.ph592 ], [ %.1531.lcssa, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ] ; 6 uses
  %i.alg = getelementptr inbounds nuw [122 x i8], ptr %.1.i.i58, i64 %.0.i59591 ; 5 uses
  %i.alh = load i64, ptr %i.n, align 8
  %i.ali = load ptr, ptr %i.ru, align 8
  %i.alj = add i64 %.0530590, 4
  %i.alk = call noundef i64 @llvm.umin.i64(i64 %i.alj, i64 %i.alh) ; 3 uses
  %i.all = sub i64 %i.alk, %.0530590
  %i.alm = trunc i64 %i.all to i8                 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alg, i64 1 ; 4 uses
  store i8 %i.alm, ptr %i.aln, align 1
  %i.alo = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.0530590 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 12
  %i.alq = load i32, ptr %i.alp, align 4          ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alg, i64 2
  store i32 %i.alq, ptr %i.alr, align 4
  %i.als = zext i32 %i.alq to i64
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ali, i64 488 ; 4 uses
  %i.alu = load ptr, ptr %i.alt, align 8
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.als
  %i.alw = load ptr, ptr %i.alv, align 8
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 60
  %i.aly = load i32, ptr %i.alx, align 4
  %i.alz = trunc i32 %i.aly to i8
  store i8 %i.alz, ptr %i.alg, align 2
  %.not622 = icmp eq i8 %i.alm, 0
  br i1 %.not622, label %._crit_edge582, label %.lr.ph581

._crit_edge582:                                   ; preds = %.lr.ph581, %bb.do
  %.sroa.0264.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.do ], [ %i.ank, %.lr.ph581 ] ; 4 uses
  %.sroa.8.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.do ], [ %i.anm, %.lr.ph581 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  store <4 x float> %.sroa.0264.0.lcssa, ptr %15, align 16
  %i.ama = fsub <4 x float> %.sroa.8.0.lcssa, %.sroa.0264.0.lcssa ; 2 uses
  %i.amb = fmul <4 x float> %i.ama, <float f0x3FDDB3D7, float f0x3FDDB3D7, float f0x3FDDB3D7, float poison>
  %i.amc = fdiv <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float poison>, %i.amb ; 3 uses
  %.sroa.0263.0.vec.extract = extractelement <4 x float> %i.amc, i64 0 ; 2 uses
  %.sroa.0263.4.vec.extract = extractelement <4 x float> %i.amc, i64 1 ; 2 uses
  %i.amd = fcmp olt float %.sroa.0263.0.vec.extract, %.sroa.0263.4.vec.extract
  %i.ame = select i1 %i.amd, float %.sroa.0263.0.vec.extract, float %.sroa.0263.4.vec.extract ; 2 uses
  %.sroa.0263.8.vec.extract = extractelement <4 x float> %i.amc, i64 2 ; 2 uses
  %i.amf = fcmp olt float %i.ame, %.sroa.0263.8.vec.extract
  %i.amg = select i1 %i.amf, float %i.ame, float %.sroa.0263.8.vec.extract
  %i.amh = fcmp oeq <4 x float> %i.ama, zeroinitializer
  %i.ami = bitcast <4 x i1> %i.amh to i4
  %i.amj = and i4 %i.ami, 7
  %i.amk = icmp eq i4 %i.amj, 7
  %.054.i = select i1 %i.amk, float 0.000000e+00, float %i.amg ; 2 uses
  %i.aml = extractelement <4 x float> %.sroa.0264.0.lcssa, i64 2
  %i.amm = load i8, ptr %i.aln, align 1
  %i.amn = zext i8 %i.amm to i64
  %i.amo = getelementptr inbounds nuw i8, ptr %i.alg, i64 6 ; 17 uses
  %i.amp = mul nuw nsw i64 %i.amn, 25             ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.amp ; 2 uses
  %i.amr = shufflevector <4 x float> %.sroa.0264.0.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.amr, ptr %i.amq, align 4
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  store float %i.aml, ptr %i.ams, align 4
  %i.amt = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.amp
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 18
  store float %.054.i, ptr %i.amu, align 4
  %i.amv = icmp ult i64 %.0530590, %i.alk
  br i1 %i.amv, label %.lr.ph588, label %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

.lr.ph581:                                        ; preds = %bb.do, %.lr.ph581
  %.0.i65579 = phi i64 [ %i.ann, %.lr.ph581 ], [ 0, %bb.do ] ; 2 uses
  %.sroa.8.0578 = phi <4 x float> [ %i.anm, %.lr.ph581 ], [ splat (float -inf), %bb.do ]
  %.sroa.0264.0577 = phi <4 x float> [ %i.ank, %.lr.ph581 ], [ splat (float +inf), %bb.do ]
  %i.amw = getelementptr [32 x i8], ptr %i.alo, i64 %.0.i65579 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 12
  %i.amy = load i32, ptr %i.amx, align 4
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amw, i64 28
  %i.ana = load i32, ptr %i.amz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  %i.anb = zext i32 %i.amy to i64
  %i.anc = load ptr, ptr %i.alt, align 8
  %i.and = getelementptr inbounds nuw [8 x i8], ptr %i.anc, i64 %i.anb
  %i.ane = load ptr, ptr %i.and, align 8          ; 2 uses
  %i.anf = zext i32 %i.ana to i64
  %i.ang = load ptr, ptr %i.ane, align 16
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 456
  %i.ani = load ptr, ptr %i.anh, align 8
  call void %i.ani(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %14, ptr noundef nonnull align 16 dereferenceable(88) %i.ane, i64 noundef %i.anf), !inline_history !25
  %i.anj = load <4 x float>, ptr %14, align 16, !noalias !392
  %i.ank = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0264.0577, <4 x float> %i.anj) ; 2 uses
  %i.anl = load <4 x float>, ptr %i.akw, align 16, !noalias !393
  %i.anm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.0578, <4 x float> %i.anl) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  %i.ann = add nuw nsw i64 %.0.i65579, 1          ; 2 uses
  %i.ano = load i8, ptr %i.aln, align 1
  %i.anp = zext i8 %i.ano to i64
  %i.anq = icmp samesign ult i64 %i.ann, %i.anp
  br i1 %i.anq, label %.lr.ph581, label %._crit_edge582, !llvm.loop !26

.lr.ph588:                                        ; preds = %._crit_edge582, %.lr.ph588
  %.053.i586 = phi i64 [ %i.aug, %.lr.ph588 ], [ 0, %._crit_edge582 ] ; 18 uses
  %.1531585 = phi i64 [ %i.auh, %.lr.ph588 ], [ %.0530590, %._crit_edge582 ] ; 2 uses
  %i.anr = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.1531585 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 12
  %i.ant = load i32, ptr %i.ans, align 4
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anr, i64 28
  %i.anv = load i32, ptr %i.anu, align 4          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  %i.anw = zext i32 %i.ant to i64                 ; 2 uses
  %i.anx = load ptr, ptr %i.alt, align 8
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %i.anx, i64 %i.anw
  %i.anz = load ptr, ptr %i.any, align 8          ; 2 uses
  %i.aoa = zext i32 %i.anv to i64                 ; 2 uses
  %i.aob = load ptr, ptr %i.anz, align 16
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 424
  %i.aod = load ptr, ptr %i.aoc, align 8
  call void %i.aod(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LinearSpace3") align 16 %16, ptr noundef nonnull align 16 dereferenceable(88) %i.anz, i64 noundef %i.aoa), !inline_history !25
  %i.aoe = load <4 x float>, ptr %16, align 16, !noalias !394
  %i.aof = fmul <4 x float> %i.aoe, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0243.0.vec.extract = extractelement <4 x float> %i.aof, i64 0 ; 2 uses
  %i.aog = call float @llvm.trunc.f32(float %.sroa.0243.0.vec.extract)
  %.sroa.0243.4.vec.extract = extractelement <4 x float> %i.aof, i64 1 ; 2 uses
  %i.aoh = call float @llvm.trunc.f32(float %.sroa.0243.4.vec.extract)
  %.sroa.0243.8.vec.extract = extractelement <4 x float> %i.aof, i64 2 ; 2 uses
  %i.aoi = call float @llvm.trunc.f32(float %.sroa.0243.8.vec.extract)
  %i.aoj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aog, i64 0
  %i.aok = insertelement <4 x float> %i.aoj, float %i.aoh, i64 1 ; 2 uses
  %i.aol = insertelement <4 x float> %i.aok, float %i.aoi, i64 2 ; 3 uses
  %i.aom = load <4 x float>, ptr %i.akx, align 16, !noalias !395
  %i.aon = fmul <4 x float> %i.aom, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0241.0.vec.extract = extractelement <4 x float> %i.aon, i64 0 ; 2 uses
  %i.aoo = call float @llvm.trunc.f32(float %.sroa.0241.0.vec.extract)
  %.sroa.0241.4.vec.extract = extractelement <4 x float> %i.aon, i64 1 ; 2 uses
  %i.aop = call float @llvm.trunc.f32(float %.sroa.0241.4.vec.extract)
  %.sroa.0241.8.vec.extract = extractelement <4 x float> %i.aon, i64 2 ; 2 uses
  %i.aoq = call float @llvm.trunc.f32(float %.sroa.0241.8.vec.extract)
  %i.aor = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aoo, i64 0
  %i.aos = insertelement <4 x float> %i.aor, float %i.aop, i64 1 ; 2 uses
  %i.aot = insertelement <4 x float> %i.aos, float %i.aoq, i64 2 ; 3 uses
  %i.aou = load <4 x float>, ptr %i.aky, align 16, !noalias !396
  %i.aov = fmul <4 x float> %i.aou, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0239.0.vec.extract = extractelement <4 x float> %i.aov, i64 0 ; 2 uses
  %i.aow = call float @llvm.trunc.f32(float %.sroa.0239.0.vec.extract)
  %.sroa.0239.4.vec.extract = extractelement <4 x float> %i.aov, i64 1 ; 2 uses
  %i.aox = call float @llvm.trunc.f32(float %.sroa.0239.4.vec.extract)
  %.sroa.0239.8.vec.extract = extractelement <4 x float> %i.aov, i64 2 ; 2 uses
  %i.aoy = call float @llvm.trunc.f32(float %.sroa.0239.8.vec.extract)
  %i.aoz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aow, i64 0
  %i.apa = insertelement <4 x float> %i.aoz, float %i.aox, i64 1 ; 2 uses
  %i.apb = insertelement <4 x float> %i.apa, float %i.aoy, i64 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.apc = load ptr, ptr %i.alt, align 8
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.apc, i64 %i.anw
  %i.ape = load ptr, ptr %i.apd, align 8          ; 2 uses
  %i.apf = fmul <4 x float> %i.aol, %i.aol        ; 3 uses
  %i.apg = shufflevector <4 x float> %i.apf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aph = shufflevector <4 x float> %i.apf, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.api = fadd <4 x float> %i.apf, %i.apg
  %i.apj = fadd <4 x float> %i.aph, %i.api
  %i.apk = extractelement <4 x float> %i.apj, i64 0
  %sqrt542 = call float @llvm.sqrt.f32(float %i.apk) ; 2 uses
  %i.apl = fmul <4 x float> %i.aot, %i.aot        ; 3 uses
  %i.apm = shufflevector <4 x float> %i.apl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.apn = shufflevector <4 x float> %i.apl, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.apo = fadd <4 x float> %i.apl, %i.apm
  %i.app = fadd <4 x float> %i.apn, %i.apo
  %i.apq = extractelement <4 x float> %i.app, i64 0
  %sqrt541 = call float @llvm.sqrt.f32(float %i.apq) ; 2 uses
  %i.apr = fmul <4 x float> %i.apb, %i.apb        ; 3 uses
  %i.aps = shufflevector <4 x float> %i.apr, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.apt = shufflevector <4 x float> %i.apr, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.apu = fadd <4 x float> %i.apr, %i.aps
  %i.apv = fadd <4 x float> %i.apt, %i.apu
  %i.apw = extractelement <4 x float> %i.apv, i64 0
  %sqrt540 = call float @llvm.sqrt.f32(float %i.apw) ; 2 uses
  %i.apx = fcmp olt float %sqrt542, %sqrt541
  %i.apy = select i1 %i.apx, float %sqrt541, float %sqrt542 ; 2 uses
  %i.apz = fcmp olt float %i.apy, %sqrt540
  %i.aqa = select i1 %i.apz, float %sqrt540, float %i.apy
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.aqb = shufflevector <4 x float> %i.aok, <4 x float> %i.apa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aqc = shufflevector <4 x float> %i.aol, <4 x float> %i.apb, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aqd = shufflevector <4 x float> %i.aos, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aqe = shufflevector <4 x float> %i.aot, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aqf = shufflevector <4 x float> %i.aqb, <4 x float> %i.aqd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aqg = shufflevector <4 x float> %i.aqb, <4 x float> %i.aqd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aqh = shufflevector <4 x float> %i.aqc, <4 x float> %i.aqe, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.aqf, ptr %18, align 16, !alias.scope !397
  store <4 x float> %i.aqg, ptr %i.akz, align 16, !alias.scope !397
  store <4 x float> %i.aqh, ptr %i.ala, align 16, !alias.scope !397
  %i.aqi = load ptr, ptr %i.ape, align 16
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 472
  %i.aqk = load ptr, ptr %i.aqj, align 8
  call void %i.aqk(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %17, ptr noundef nonnull align 16 dereferenceable(88) %i.ape, ptr noundef nonnull align 16 dereferenceable(16) %15, float noundef %.054.i, float noundef %i.aqa, ptr noundef nonnull align 16 dereferenceable(48) %18, i64 noundef %i.aoa, i64 noundef 0), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  %i.aql = fptosi float %.sroa.0243.0.vec.extract to i8
  %i.aqm = load i8, ptr %i.aln, align 1
  %i.aqn = zext i8 %i.aqm to i64                  ; 15 uses
  %i.aqo = shl nuw nsw i64 %i.aqn, 2
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.aqo
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.053.i586
  store i8 %i.aql, ptr %i.aqq, align 1
  %i.aqr = fptosi float %.sroa.0243.4.vec.extract to i8
  %i.aqs = mul nuw nsw i64 %i.aqn, 5
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.aqs
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %.053.i586
  store i8 %i.aqr, ptr %i.aqu, align 1
  %i.aqv = fptosi float %.sroa.0243.8.vec.extract to i8
  %i.aqw = mul nuw nsw i64 %i.aqn, 6
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.aqw
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 %.053.i586
  store i8 %i.aqv, ptr %i.aqy, align 1
  %i.aqz = load float, ptr %17, align 16
  %i.ara = call noundef float @llvm.floor.f32(float %i.aqz) ; 2 uses
  %i.arb = fcmp olt float %i.ara, 3.276700e+04
  %i.arc = select i1 %i.arb, float %i.ara, float 3.276700e+04 ; 2 uses
  %i.ard = fcmp olt float %i.arc, -3.276700e+04
  %i.are = select i1 %i.ard, float -3.276700e+04, float %i.arc
  %i.arf = fptosi float %i.are to i16
  %i.arg = mul nuw nsw i64 %i.aqn, 7
  %i.arh = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.arg
  %i.ari = getelementptr inbounds nuw [2 x i8], ptr %i.arh, i64 %.053.i586
  store i16 %i.arf, ptr %i.ari, align 2
  %i.arj = load float, ptr %i.alb, align 16
  %i.ark = call noundef float @llvm.ceil.f32(float %i.arj) ; 2 uses
  %i.arl = fcmp olt float %i.ark, 3.276700e+04
  %i.arm = select i1 %i.arl, float %i.ark, float 3.276700e+04 ; 2 uses
  %i.arn = fcmp olt float %i.arm, -3.276700e+04
  %i.aro = select i1 %i.arn, float -3.276700e+04, float %i.arm
  %i.arp = fptosi float %i.aro to i16
  %i.arq = mul nuw nsw i64 %i.aqn, 9
  %i.arr = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.arq
  %i.ars = getelementptr inbounds nuw [2 x i8], ptr %i.arr, i64 %.053.i586
  store i16 %i.arp, ptr %i.ars, align 2
  %i.art = fptosi float %.sroa.0241.0.vec.extract to i8
  %i.aru = mul nuw nsw i64 %i.aqn, 11
  %i.arv = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.aru
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 %.053.i586
  store i8 %i.art, ptr %i.arw, align 1
  %i.arx = fptosi float %.sroa.0241.4.vec.extract to i8
  %i.ary = mul nuw nsw i64 %i.aqn, 12
  %i.arz = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.ary
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 %.053.i586
  store i8 %i.arx, ptr %i.asa, align 1
  %i.asb = fptosi float %.sroa.0241.8.vec.extract to i8
  %i.asc = mul nuw nsw i64 %i.aqn, 13
  %i.asd = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.asc
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 %.053.i586
  store i8 %i.asb, ptr %i.ase, align 1
  %i.asf = load float, ptr %i.alc, align 4
  %i.asg = call noundef float @llvm.floor.f32(float %i.asf) ; 2 uses
  %i.ash = fcmp olt float %i.asg, 3.276700e+04
  %i.asi = select i1 %i.ash, float %i.asg, float 3.276700e+04 ; 2 uses
  %i.asj = fcmp olt float %i.asi, -3.276700e+04
  %i.ask = select i1 %i.asj, float -3.276700e+04, float %i.asi
  %i.asl = fptosi float %i.ask to i16
  %i.asm = mul nuw nsw i64 %i.aqn, 14
  %i.asn = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.asm
  %i.aso = getelementptr inbounds nuw [2 x i8], ptr %i.asn, i64 %.053.i586
  store i16 %i.asl, ptr %i.aso, align 2
  %i.asp = load float, ptr %i.ald, align 4
  %i.asq = call noundef float @llvm.ceil.f32(float %i.asp) ; 2 uses
  %i.asr = fcmp olt float %i.asq, 3.276700e+04
  %i.ass = select i1 %i.asr, float %i.asq, float 3.276700e+04 ; 2 uses
  %i.ast = fcmp olt float %i.ass, -3.276700e+04
  %i.asu = select i1 %i.ast, float -3.276700e+04, float %i.ass
  %i.asv = fptosi float %i.asu to i16
  %i.asw = shl nuw nsw i64 %i.aqn, 4
  %i.asx = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.asw
  %i.asy = getelementptr inbounds nuw [2 x i8], ptr %i.asx, i64 %.053.i586
  store i16 %i.asv, ptr %i.asy, align 2
  %i.asz = fptosi float %.sroa.0239.0.vec.extract to i8
  %i.ata = mul nuw nsw i64 %i.aqn, 18
  %i.atb = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.ata
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 %.053.i586
  store i8 %i.asz, ptr %i.atc, align 1
  %i.atd = fptosi float %.sroa.0239.4.vec.extract to i8
  %i.ate = mul nuw nsw i64 %i.aqn, 19
  %i.atf = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.ate
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 %.053.i586
  store i8 %i.atd, ptr %i.atg, align 1
  %i.ath = fptosi float %.sroa.0239.8.vec.extract to i8
  %i.ati = mul nuw nsw i64 %i.aqn, 20
  %i.atj = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.ati
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 %.053.i586
  store i8 %i.ath, ptr %i.atk, align 1
  %i.atl = load float, ptr %i.ale, align 8
  %i.atm = call noundef float @llvm.floor.f32(float %i.atl) ; 2 uses
  %i.atn = fcmp olt float %i.atm, 3.276700e+04
  %i.ato = select i1 %i.atn, float %i.atm, float 3.276700e+04 ; 2 uses
  %i.atp = fcmp olt float %i.ato, -3.276700e+04
  %i.atq = select i1 %i.atp, float -3.276700e+04, float %i.ato
  %i.atr = fptosi float %i.atq to i16
  %i.ats = mul nuw nsw i64 %i.aqn, 21
  %i.att = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.ats
  %i.atu = getelementptr inbounds nuw [2 x i8], ptr %i.att, i64 %.053.i586
  store i16 %i.atr, ptr %i.atu, align 2
  %i.atv = load float, ptr %i.alf, align 8
  %i.atw = call noundef float @llvm.ceil.f32(float %i.atv) ; 2 uses
  %i.atx = fcmp olt float %i.atw, 3.276700e+04
  %i.aty = select i1 %i.atx, float %i.atw, float 3.276700e+04 ; 2 uses
  %i.atz = fcmp olt float %i.aty, -3.276700e+04
  %i.aua = select i1 %i.atz, float -3.276700e+04, float %i.aty
  %i.aub = fptosi float %i.aua to i16
  %i.auc = mul nuw nsw i64 %i.aqn, 23
  %i.aud = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.auc
  %i.aue = getelementptr inbounds nuw [2 x i8], ptr %i.aud, i64 %.053.i586
  store i16 %i.aub, ptr %i.aue, align 2
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.amo, i64 %.053.i586
  store i32 %i.anv, ptr %i.auf, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  %i.aug = add nuw nsw i64 %.053.i586, 1
  %i.auh = add nuw i64 %.1531585, 1               ; 3 uses
  %i.aui = icmp samesign ult i64 %.053.i586, 3
  %i.auj = icmp ult i64 %i.auh, %i.alk
  %or.cond534 = select i1 %i.aui, i1 %i.auj, i1 false
  br i1 %or.cond534, label %.lr.ph588, label %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit, !llvm.loop !27

_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit: ; preds = %.lr.ph588, %._crit_edge582
  %.1531.lcssa = phi i64 [ %.0530590, %._crit_edge582 ], [ %i.auh, %.lr.ph588 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %i.auk = add nuw nsw i64 %.0.i59591, 1          ; 2 uses
  %exitcond636.not = icmp eq i64 %i.auk, %i.aha
  br i1 %exitcond636.not, label %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit63, label %bb.do, !llvm.loop !28

_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit63: ; preds = %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i57
  %i.aul = ptrtoint ptr %.1.i.i58 to i64
  %i.aum = call noundef i64 @llvm.umin.i64(i64 %i.aha, i64 7)
  %i.aun = or i64 %i.aum, %i.aul
  %i.auo = or i64 %i.aun, 8
  br label %_ZN6embree7CurveNvILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit

bb.dp:                                            ; preds = %bb.cx
  %i.aup = mul i64 %i.ahb, 378
  %reass.mul = mul nuw nsw i64 %i.ahc, 89
  %i.auq = add nuw nsw i64 %reass.mul, 22
  %i.aur = select i1 %.not.i74, i64 0, i64 %i.auq
  %i.aus = add i64 %i.aur, %i.aup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.aus, ptr %i.g, align 8
  %i.aut = load ptr, ptr %i.ahe, align 64         ; 17 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 8 ; 6 uses
  %i.auv = load atomic ptr, ptr %i.auu seq_cst, align 8
  %i.auw = icmp eq ptr %i.auv, %i.ahf
  br i1 %i.auw, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #11
  store ptr %i.aut, ptr %28, align 8
  %i.aux = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i8 1, ptr %i.aux, align 8
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.aut)
  %i.auy = load atomic ptr, ptr %i.auu seq_cst, align 8
  %.not.i32 = icmp eq ptr %i.auy, null
  br i1 %.not.i32, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aut, i64 104
  %i.ava = load i64, ptr %i.auz, align 8
  %i.avb = getelementptr inbounds nuw i8, ptr %i.aut, i64 168
  %i.avc = load i64, ptr %i.avb, align 8
  %i.avd = add i64 %i.avc, %i.ava
  %i.ave = load atomic ptr, ptr %i.auu seq_cst, align 8
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 280
  %i.avg = atomicrmw add ptr %i.avf, i64 %i.avd seq_cst, align 8 ; 0 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aut, i64 88
  %i.avi = load i64, ptr %i.avh, align 8
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aut, i64 80
  %i.avk = load i64, ptr %i.avj, align 16
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aut, i64 152
  %i.avm = load i64, ptr %i.avl, align 8
  %i.avn = getelementptr inbounds nuw i8, ptr %i.aut, i64 144
  %i.avo = load i64, ptr %i.avn, align 16
  %i.avp = add i64 %i.avi, %i.avm
  %i.avq = add i64 %i.avk, %i.avo
  %i.avr = sub i64 %i.avp, %i.avq
  %i.avs = load atomic ptr, ptr %i.auu seq_cst, align 8
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 288
  %i.avu = atomicrmw add ptr %i.avt, i64 %i.avr seq_cst, align 8 ; 0 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.aut, i64 112
  %i.avw = load i64, ptr %i.avv, align 16
  %i.avx = getelementptr inbounds nuw i8, ptr %i.aut, i64 176
  %i.avy = load i64, ptr %i.avx, align 16
  %i.avz = add i64 %i.avy, %i.avw
  %i.awa = load atomic ptr, ptr %i.auu seq_cst, align 8
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 296
  %i.awc = atomicrmw add ptr %i.awb, i64 %i.avz seq_cst, align 8 ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.awd = getelementptr inbounds nuw i8, ptr %i.aut, i64 72
  %.not.i154 = icmp eq ptr %i.ahf, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.awd, i8 0, i64 48, i1 false)
  br i1 %.not.i154, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit155.thread, label %bb.dt

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit155.thread: ; preds = %bb.ds
  %i.awe = getelementptr inbounds nuw i8, ptr %i.aut, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.awe, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit157

bb.dt:                                            ; preds = %bb.ds
  %i.awf = getelementptr inbounds nuw i8, ptr %i.aut, i64 96
  %i.awg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16 ; 2 uses
  %i.awh = load i64, ptr %i.awg, align 8
  store i64 %i.awh, ptr %i.awf, align 32
  %i.awi = getelementptr inbounds nuw i8, ptr %i.aut, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.awi, i8 0, i64 48, i1 false)
  %i.awj = getelementptr inbounds nuw i8, ptr %i.aut, i64 160
  %i.awk = load i64, ptr %i.awg, align 8
  store i64 %i.awk, ptr %i.awj, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit157

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit157: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit155.thread, %bb.dt
  store atomic ptr %i.ahf, ptr %i.auu seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.aut, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %23, align 8
  %i.awl = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i8 1, ptr %i.awl, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc41 unwind label %bb.dw

.noexc41:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit157
  %i.awm = getelementptr inbounds nuw i8, ptr %i.ahf, i64 304
  invoke void @_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.awm, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %.noexc41
  %i.awn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  br label %.body42

bb.dv:                                            ; preds = %.noexc41
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %28) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit

bb.dw:                                            ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit157
  %i.awo = landingpad { ptr, i32 }
          cleanup
  br label %.body42

.body42:                                          ; preds = %bb.du, %bb.dw
  %eh.lpad-body43 = phi { ptr, i32 } [ %i.awo, %bb.dw ], [ %i.awn, %bb.du ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %28) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11
  br label %common.resume

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit: ; preds = %bb.dp, %bb.dv
  %i.awp = load i64, ptr %i.g, align 8            ; 8 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.ahe, i64 40 ; 2 uses
  %i.awr = load i64, ptr %i.awq, align 8
  %i.aws = add i64 %i.awr, %i.awp
  store i64 %i.aws, ptr %i.awq, align 8
  %i.awt = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16 ; 9 uses
  %i.awu = load i64, ptr %i.awt, align 16         ; 3 uses
  %i.awv = sub i64 0, %i.awu
  %i.aww = and i64 %i.awv, 15                     ; 2 uses
  %i.awx = add i64 %i.awu, %i.awp
  %i.awy = add i64 %i.awx, %i.aww                 ; 3 uses
  store i64 %i.awy, ptr %i.awt, align 16
  %i.awz = getelementptr inbounds nuw i8, ptr %i.ahe, i64 24 ; 5 uses
  %i.axa = load i64, ptr %i.awz, align 8
  %.not.i26 = icmp ugt i64 %i.awy, %i.axa
  br i1 %.not.i26, label %bb.dy, label %bb.dx, !prof !56

bb.dx:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  %i.axb = getelementptr inbounds nuw i8, ptr %i.ahe, i64 48 ; 2 uses
  %i.axc = load i64, ptr %i.axb, align 16
  %i.axd = add i64 %i.axc, %i.aww
  store i64 %i.axd, ptr %i.axb, align 16
  %i.axe = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.axf = load ptr, ptr %i.axe, align 8
  %i.axg = sub i64 %i.awy, %i.awp
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.axg
end_hunk_1
begin_hunk_2_@_ZZN6embree4sse218BVHNHairBuilderSAHILi4ENS_7CurveNvILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_SJ_:bb.a
  %i.ayr = or i64 %i.ayq, 8
  br label %_ZN6embree7CurveNvILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit

bb.eg:                                            ; preds = %.lr.ph575, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit73
  %.0.i15574 = phi i64 [ 0, %.lr.ph575 ], [ %i.bkb, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit73 ] ; 2 uses
  %.0528573 = phi i64 [ %i.p, %.lr.ph575 ], [ %.1529.lcssa, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit73 ] ; 9 uses
  %i.ays = getelementptr inbounds nuw [378 x i8], ptr %.1.i27, i64 %.0.i15574 ; 6 uses
  %i.ayt = load i64, ptr %i.n, align 8
  %i.ayu = add i64 %.0528573, 4                   ; 2 uses
  %i.ayv = call noundef i64 @llvm.umin.i64(i64 %i.ayu, i64 %i.ayt) ; 3 uses
  %i.ayw = sub i64 %i.ayv, %.0528573              ; 2 uses
  %.not619 = icmp eq i64 %i.ayv, %.0528573
  br i1 %.not619, label %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit, label %.lr.ph562

.lr.ph562:                                        ; preds = %bb.eg
  %i.ayx = load ptr, ptr %i.ru, align 8
  %i.ayy = getelementptr [32 x i8], ptr %1, i64 %.0528573
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayx, i64 488
  %i.aza = mul i64 %i.ayw, 25
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ays, i64 %i.aza
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 22
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph562, %bb.eh
  %.0.i64561 = phi i64 [ 0, %.lr.ph562 ], [ %i.bbb, %bb.eh ] ; 3 uses
  %i.azd = getelementptr [32 x i8], ptr %i.ayy, i64 %.0.i64561 ; 2 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 12
  %i.azf = load i32, ptr %i.aze, align 4
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azd, i64 28
  %i.azh = load i32, ptr %i.azg, align 4
  %i.azi = zext i32 %i.azf to i64
  %i.azj = load ptr, ptr %i.ayz, align 8
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.azj, i64 %i.azi
  %i.azl = load ptr, ptr %i.azk, align 8          ; 4 uses
  %i.azm = zext i32 %i.azh to i64
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azl, i64 88
  %i.azo = load ptr, ptr %i.azn, align 8
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azl, i64 104
  %i.azq = load i64, ptr %i.azp, align 8
  %i.azr = mul i64 %i.azq, %i.azm
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azo, i64 %i.azr
  %i.azt = load i32, ptr %i.azs, align 4          ; 4 uses
  %.idx.i78 = shl i64 %.0.i64561, 6
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azc, i64 %.idx.i78 ; 4 uses
  %i.azv = zext i32 %i.azt to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azl, i64 144 ; 4 uses
  %i.azx = load ptr, ptr %i.azw, align 8, !noalias !398
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azl, i64 160 ; 4 uses
  %i.azz = load i64, ptr %i.azy, align 8, !noalias !398
  %i.baa = mul i64 %i.azz, %i.azv
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azx, i64 %i.baa
  %i.bac = load <4 x float>, ptr %i.bab, align 16, !noalias !398
  store <4 x float> %i.bac, ptr %i.azu, align 1
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azu, i64 16
  %i.bae = add i32 %i.azt, 1
  %i.baf = zext i32 %i.bae to i64
  %i.bag = load ptr, ptr %i.azw, align 8, !noalias !399
  %i.bah = load i64, ptr %i.azy, align 8, !noalias !399
  %i.bai = mul i64 %i.bah, %i.baf
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bag, i64 %i.bai
  %i.bak = load <4 x float>, ptr %i.baj, align 16, !noalias !399
  store <4 x float> %i.bak, ptr %i.bad, align 1
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azu, i64 32
  %i.bam = add i32 %i.azt, 2
  %i.ban = zext i32 %i.bam to i64
  %i.bao = load ptr, ptr %i.azw, align 8, !noalias !400
  %i.bap = load i64, ptr %i.azy, align 8, !noalias !400
  %i.baq = mul i64 %i.bap, %i.ban
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bao, i64 %i.baq
  %i.bas = load <4 x float>, ptr %i.bar, align 16, !noalias !400
  store <4 x float> %i.bas, ptr %i.bal, align 1
  %i.bat = getelementptr inbounds nuw i8, ptr %i.azu, i64 48
  %i.bau = add i32 %i.azt, 3
  %i.bav = zext i32 %i.bau to i64
  %i.baw = load ptr, ptr %i.azw, align 8, !noalias !401
  %i.bax = load i64, ptr %i.azy, align 8, !noalias !401
  %i.bay = mul i64 %i.bax, %i.bav
  %i.baz = getelementptr inbounds nuw i8, ptr %i.baw, i64 %i.bay
  %i.bba = load <4 x float>, ptr %i.baz, align 16, !noalias !401
  store <4 x float> %i.bba, ptr %i.bat, align 1
  %i.bbb = add nuw i64 %.0.i64561, 1              ; 2 uses
  %exitcond634.not = icmp eq i64 %i.bbb, %i.ayw
  br i1 %exitcond634.not, label %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit, label %bb.eh, !llvm.loop !372

_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit: ; preds = %bb.eh
  %.pre = load i64, ptr %i.n, align 8
  %.pre688 = call noundef i64 @llvm.umin.i64(i64 %i.ayu, i64 %.pre) ; 2 uses
  %.pre689 = sub i64 %.pre688, %.0528573
  %i.bbc = trunc i64 %.pre689 to i8
  br label %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit: ; preds = %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit, %bb.eg
  %.pre-phi690 = phi i8 [ %i.bbc, %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ], [ 0, %bb.eg ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre688, %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ], [ %i.ayv, %bb.eg ] ; 2 uses
  %i.bbd = load ptr, ptr %i.ru, align 8
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.ays, i64 1 ; 4 uses
  store i8 %.pre-phi690, ptr %i.bbe, align 1
  %i.bbf = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.0528573 ; 2 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 12
  %i.bbh = load i32, ptr %i.bbg, align 4          ; 2 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.ays, i64 2
  store i32 %i.bbh, ptr %i.bbi, align 4
  %i.bbj = zext i32 %i.bbh to i64
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbd, i64 488 ; 4 uses
  %i.bbl = load ptr, ptr %i.bbk, align 8
  %i.bbm = getelementptr inbounds nuw [8 x i8], ptr %i.bbl, i64 %i.bbj
  %i.bbn = load ptr, ptr %i.bbm, align 8
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 60
  %i.bbp = load i32, ptr %i.bbo, align 4
  %i.bbq = trunc i32 %i.bbp to i8
  store i8 %i.bbq, ptr %i.ays, align 2
  %.not620 = icmp eq i8 %.pre-phi690, 0
  br i1 %.not620, label %._crit_edge, label %.lr.ph566

._crit_edge:                                      ; preds = %.lr.ph566, %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.sroa.0377.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ %i.bdb, %.lr.ph566 ] ; 4 uses
  %.sroa.8381.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ %i.bdd, %.lr.ph566 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store <4 x float> %.sroa.0377.0.lcssa, ptr %5, align 16
  %i.bbr = fsub <4 x float> %.sroa.8381.0.lcssa, %.sroa.0377.0.lcssa ; 2 uses
  %i.bbs = fmul <4 x float> %i.bbr, <float f0x3FDDB3D7, float f0x3FDDB3D7, float f0x3FDDB3D7, float poison>
  %i.bbt = fdiv <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float poison>, %i.bbs ; 3 uses
  %.sroa.0376.0.vec.extract = extractelement <4 x float> %i.bbt, i64 0 ; 2 uses
  %.sroa.0376.4.vec.extract = extractelement <4 x float> %i.bbt, i64 1 ; 2 uses
  %i.bbu = fcmp olt float %.sroa.0376.0.vec.extract, %.sroa.0376.4.vec.extract
  %i.bbv = select i1 %i.bbu, float %.sroa.0376.0.vec.extract, float %.sroa.0376.4.vec.extract ; 2 uses
  %.sroa.0376.8.vec.extract = extractelement <4 x float> %i.bbt, i64 2 ; 2 uses
  %i.bbw = fcmp olt float %i.bbv, %.sroa.0376.8.vec.extract
  %i.bbx = select i1 %i.bbw, float %i.bbv, float %.sroa.0376.8.vec.extract
  %i.bby = fcmp oeq <4 x float> %i.bbr, zeroinitializer
  %i.bbz = bitcast <4 x i1> %i.bby to i4
  %i.bca = and i4 %i.bbz, 7
  %i.bcb = icmp eq i4 %i.bca, 7
  %.054.i71 = select i1 %i.bcb, float 0.000000e+00, float %i.bbx ; 2 uses
  %i.bcc = extractelement <4 x float> %.sroa.0377.0.lcssa, i64 2
  %i.bcd = load i8, ptr %i.bbe, align 1
  %i.bce = zext i8 %i.bcd to i64
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.ays, i64 6 ; 17 uses
  %i.bcg = mul nuw nsw i64 %i.bce, 25             ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bcg ; 2 uses
  %i.bci = shufflevector <4 x float> %.sroa.0377.0.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bci, ptr %i.bch, align 4
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bch, i64 8
  store float %i.bcc, ptr %i.bcj, align 4
  %i.bck = getelementptr inbounds nuw i8, ptr %i.ays, i64 %i.bcg
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 18
  store float %.054.i71, ptr %i.bcl, align 4
  %i.bcm = icmp ult i64 %.0528573, %.pre-phi
  br i1 %i.bcm, label %.lr.ph571, label %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit73

.lr.ph566:                                        ; preds = %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit, %.lr.ph566
  %.0.i70565 = phi i64 [ %i.bde, %.lr.ph566 ], [ 0, %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ] ; 2 uses
  %.sroa.8381.0564 = phi <4 x float> [ %i.bdd, %.lr.ph566 ], [ splat (float -inf), %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ]
  %.sroa.0377.0563 = phi <4 x float> [ %i.bdb, %.lr.ph566 ], [ splat (float +inf), %_ZN6embree7CurveNvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ]
  %i.bcn = getelementptr [32 x i8], ptr %i.bbf, i64 %.0.i70565 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 12
  %i.bcp = load i32, ptr %i.bco, align 4
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcn, i64 28
  %i.bcr = load i32, ptr %i.bcq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.bcs = zext i32 %i.bcp to i64
  %i.bct = load ptr, ptr %i.bbk, align 8
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.bct, i64 %i.bcs
  %i.bcv = load ptr, ptr %i.bcu, align 8          ; 2 uses
  %i.bcw = zext i32 %i.bcr to i64
  %i.bcx = load ptr, ptr %i.bcv, align 16
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 456
  %i.bcz = load ptr, ptr %i.bcy, align 8
  call void %i.bcz(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %4, ptr noundef nonnull align 16 dereferenceable(88) %i.bcv, i64 noundef %i.bcw), !inline_history !25
  %i.bda = load <4 x float>, ptr %4, align 16, !noalias !402
  %i.bdb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0377.0563, <4 x float> %i.bda) ; 2 uses
  %i.bdc = load <4 x float>, ptr %i.aye, align 16, !noalias !403
  %i.bdd = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8381.0564, <4 x float> %i.bdc) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.bde = add nuw nsw i64 %.0.i70565, 1          ; 2 uses
  %i.bdf = load i8, ptr %i.bbe, align 1
  %i.bdg = zext i8 %i.bdf to i64
  %i.bdh = icmp samesign ult i64 %i.bde, %i.bdg
  br i1 %i.bdh, label %.lr.ph566, label %._crit_edge, !llvm.loop !26

.lr.ph571:                                        ; preds = %._crit_edge, %.lr.ph571
  %.053.i72569 = phi i64 [ %i.bjx, %.lr.ph571 ], [ 0, %._crit_edge ] ; 18 uses
  %.1529568 = phi i64 [ %i.bjy, %.lr.ph571 ], [ %.0528573, %._crit_edge ] ; 2 uses
  %i.bdi = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.1529568 ; 2 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 12
  %i.bdk = load i32, ptr %i.bdj, align 4
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdi, i64 28
  %i.bdm = load i32, ptr %i.bdl, align 4          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.bdn = zext i32 %i.bdk to i64                 ; 2 uses
  %i.bdo = load ptr, ptr %i.bbk, align 8
  %i.bdp = getelementptr inbounds nuw [8 x i8], ptr %i.bdo, i64 %i.bdn
  %i.bdq = load ptr, ptr %i.bdp, align 8          ; 2 uses
  %i.bdr = zext i32 %i.bdm to i64                 ; 2 uses
  %i.bds = load ptr, ptr %i.bdq, align 16
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 424
  %i.bdu = load ptr, ptr %i.bdt, align 8
  call void %i.bdu(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LinearSpace3") align 16 %6, ptr noundef nonnull align 16 dereferenceable(88) %i.bdq, i64 noundef %i.bdr), !inline_history !25
  %i.bdv = load <4 x float>, ptr %6, align 16, !noalias !404
  %i.bdw = fmul <4 x float> %i.bdv, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0352.0.vec.extract = extractelement <4 x float> %i.bdw, i64 0 ; 2 uses
  %i.bdx = call float @llvm.trunc.f32(float %.sroa.0352.0.vec.extract)
  %.sroa.0352.4.vec.extract = extractelement <4 x float> %i.bdw, i64 1 ; 2 uses
  %i.bdy = call float @llvm.trunc.f32(float %.sroa.0352.4.vec.extract)
  %.sroa.0352.8.vec.extract = extractelement <4 x float> %i.bdw, i64 2 ; 2 uses
  %i.bdz = call float @llvm.trunc.f32(float %.sroa.0352.8.vec.extract)
  %i.bea = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bdx, i64 0
  %i.beb = insertelement <4 x float> %i.bea, float %i.bdy, i64 1 ; 2 uses
  %i.bec = insertelement <4 x float> %i.beb, float %i.bdz, i64 2 ; 3 uses
  %i.bed = load <4 x float>, ptr %i.ayf, align 16, !noalias !405
  %i.bee = fmul <4 x float> %i.bed, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0350.0.vec.extract = extractelement <4 x float> %i.bee, i64 0 ; 2 uses
  %i.bef = call float @llvm.trunc.f32(float %.sroa.0350.0.vec.extract)
  %.sroa.0350.4.vec.extract = extractelement <4 x float> %i.bee, i64 1 ; 2 uses
  %i.beg = call float @llvm.trunc.f32(float %.sroa.0350.4.vec.extract)
  %.sroa.0350.8.vec.extract = extractelement <4 x float> %i.bee, i64 2 ; 2 uses
  %i.beh = call float @llvm.trunc.f32(float %.sroa.0350.8.vec.extract)
  %i.bei = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bef, i64 0
  %i.bej = insertelement <4 x float> %i.bei, float %i.beg, i64 1 ; 2 uses
  %i.bek = insertelement <4 x float> %i.bej, float %i.beh, i64 2 ; 3 uses
  %i.bel = load <4 x float>, ptr %i.ayg, align 16, !noalias !406
  %i.bem = fmul <4 x float> %i.bel, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0348.0.vec.extract = extractelement <4 x float> %i.bem, i64 0 ; 2 uses
  %i.ben = call float @llvm.trunc.f32(float %.sroa.0348.0.vec.extract)
  %.sroa.0348.4.vec.extract = extractelement <4 x float> %i.bem, i64 1 ; 2 uses
  %i.beo = call float @llvm.trunc.f32(float %.sroa.0348.4.vec.extract)
  %.sroa.0348.8.vec.extract = extractelement <4 x float> %i.bem, i64 2 ; 2 uses
  %i.bep = call float @llvm.trunc.f32(float %.sroa.0348.8.vec.extract)
  %i.beq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ben, i64 0
  %i.ber = insertelement <4 x float> %i.beq, float %i.beo, i64 1 ; 2 uses
  %i.bes = insertelement <4 x float> %i.ber, float %i.bep, i64 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bet = load ptr, ptr %i.bbk, align 8
  %i.beu = getelementptr inbounds nuw [8 x i8], ptr %i.bet, i64 %i.bdn
  %i.bev = load ptr, ptr %i.beu, align 8          ; 2 uses
  %i.bew = fmul <4 x float> %i.bec, %i.bec        ; 3 uses
  %i.bex = shufflevector <4 x float> %i.bew, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bey = shufflevector <4 x float> %i.bew, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bez = fadd <4 x float> %i.bew, %i.bex
  %i.bfa = fadd <4 x float> %i.bey, %i.bez
  %i.bfb = extractelement <4 x float> %i.bfa, i64 0
  %sqrt545 = call float @llvm.sqrt.f32(float %i.bfb) ; 2 uses
  %i.bfc = fmul <4 x float> %i.bek, %i.bek        ; 3 uses
  %i.bfd = shufflevector <4 x float> %i.bfc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bfe = shufflevector <4 x float> %i.bfc, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bff = fadd <4 x float> %i.bfc, %i.bfd
  %i.bfg = fadd <4 x float> %i.bfe, %i.bff
  %i.bfh = extractelement <4 x float> %i.bfg, i64 0
  %sqrt544 = call float @llvm.sqrt.f32(float %i.bfh) ; 2 uses
  %i.bfi = fmul <4 x float> %i.bes, %i.bes        ; 3 uses
  %i.bfj = shufflevector <4 x float> %i.bfi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bfk = shufflevector <4 x float> %i.bfi, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bfl = fadd <4 x float> %i.bfi, %i.bfj
  %i.bfm = fadd <4 x float> %i.bfk, %i.bfl
  %i.bfn = extractelement <4 x float> %i.bfm, i64 0
  %sqrt543 = call float @llvm.sqrt.f32(float %i.bfn) ; 2 uses
  %i.bfo = fcmp olt float %sqrt545, %sqrt544
  %i.bfp = select i1 %i.bfo, float %sqrt544, float %sqrt545 ; 2 uses
  %i.bfq = fcmp olt float %i.bfp, %sqrt543
  %i.bfr = select i1 %i.bfq, float %sqrt543, float %i.bfp
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.bfs = shufflevector <4 x float> %i.beb, <4 x float> %i.ber, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bft = shufflevector <4 x float> %i.bec, <4 x float> %i.bes, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.bfu = shufflevector <4 x float> %i.bej, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bfv = shufflevector <4 x float> %i.bek, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.bfw = shufflevector <4 x float> %i.bfs, <4 x float> %i.bfu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bfx = shufflevector <4 x float> %i.bfs, <4 x float> %i.bfu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bfy = shufflevector <4 x float> %i.bft, <4 x float> %i.bfv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.bfw, ptr %8, align 16, !alias.scope !407
  store <4 x float> %i.bfx, ptr %i.ayh, align 16, !alias.scope !407
  store <4 x float> %i.bfy, ptr %i.ayi, align 16, !alias.scope !407
  %i.bfz = load ptr, ptr %i.bev, align 16
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 472
  %i.bgb = load ptr, ptr %i.bga, align 8
  call void %i.bgb(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %7, ptr noundef nonnull align 16 dereferenceable(88) %i.bev, ptr noundef nonnull align 16 dereferenceable(16) %5, float noundef %.054.i71, float noundef %i.bfr, ptr noundef nonnull align 16 dereferenceable(48) %8, i64 noundef %i.bdr, i64 noundef 0), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.bgc = fptosi float %.sroa.0352.0.vec.extract to i8
  %i.bgd = load i8, ptr %i.bbe, align 1
  %i.bge = zext i8 %i.bgd to i64                  ; 15 uses
  %i.bgf = shl nuw nsw i64 %i.bge, 2
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bgf
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 %.053.i72569
  store i8 %i.bgc, ptr %i.bgh, align 1
  %i.bgi = fptosi float %.sroa.0352.4.vec.extract to i8
  %i.bgj = mul nuw nsw i64 %i.bge, 5
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bgj
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 %.053.i72569
  store i8 %i.bgi, ptr %i.bgl, align 1
  %i.bgm = fptosi float %.sroa.0352.8.vec.extract to i8
  %i.bgn = mul nuw nsw i64 %i.bge, 6
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bgn
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgo, i64 %.053.i72569
  store i8 %i.bgm, ptr %i.bgp, align 1
  %i.bgq = load float, ptr %7, align 16
  %i.bgr = call noundef float @llvm.floor.f32(float %i.bgq) ; 2 uses
  %i.bgs = fcmp olt float %i.bgr, 3.276700e+04
  %i.bgt = select i1 %i.bgs, float %i.bgr, float 3.276700e+04 ; 2 uses
  %i.bgu = fcmp olt float %i.bgt, -3.276700e+04
  %i.bgv = select i1 %i.bgu, float -3.276700e+04, float %i.bgt
  %i.bgw = fptosi float %i.bgv to i16
  %i.bgx = mul nuw nsw i64 %i.bge, 7
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bgx
  %i.bgz = getelementptr inbounds nuw [2 x i8], ptr %i.bgy, i64 %.053.i72569
  store i16 %i.bgw, ptr %i.bgz, align 2
  %i.bha = load float, ptr %i.ayj, align 16
  %i.bhb = call noundef float @llvm.ceil.f32(float %i.bha) ; 2 uses
  %i.bhc = fcmp olt float %i.bhb, 3.276700e+04
  %i.bhd = select i1 %i.bhc, float %i.bhb, float 3.276700e+04 ; 2 uses
  %i.bhe = fcmp olt float %i.bhd, -3.276700e+04
  %i.bhf = select i1 %i.bhe, float -3.276700e+04, float %i.bhd
  %i.bhg = fptosi float %i.bhf to i16
  %i.bhh = mul nuw nsw i64 %i.bge, 9
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bhh
  %i.bhj = getelementptr inbounds nuw [2 x i8], ptr %i.bhi, i64 %.053.i72569
  store i16 %i.bhg, ptr %i.bhj, align 2
  %i.bhk = fptosi float %.sroa.0350.0.vec.extract to i8
  %i.bhl = mul nuw nsw i64 %i.bge, 11
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bhl
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 %.053.i72569
  store i8 %i.bhk, ptr %i.bhn, align 1
  %i.bho = fptosi float %.sroa.0350.4.vec.extract to i8
  %i.bhp = mul nuw nsw i64 %i.bge, 12
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bhp
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 %.053.i72569
  store i8 %i.bho, ptr %i.bhr, align 1
  %i.bhs = fptosi float %.sroa.0350.8.vec.extract to i8
  %i.bht = mul nuw nsw i64 %i.bge, 13
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bht
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %.053.i72569
  store i8 %i.bhs, ptr %i.bhv, align 1
  %i.bhw = load float, ptr %i.ayk, align 4
  %i.bhx = call noundef float @llvm.floor.f32(float %i.bhw) ; 2 uses
  %i.bhy = fcmp olt float %i.bhx, 3.276700e+04
  %i.bhz = select i1 %i.bhy, float %i.bhx, float 3.276700e+04 ; 2 uses
  %i.bia = fcmp olt float %i.bhz, -3.276700e+04
  %i.bib = select i1 %i.bia, float -3.276700e+04, float %i.bhz
  %i.bic = fptosi float %i.bib to i16
  %i.bid = mul nuw nsw i64 %i.bge, 14
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bid
  %i.bif = getelementptr inbounds nuw [2 x i8], ptr %i.bie, i64 %.053.i72569
  store i16 %i.bic, ptr %i.bif, align 2
  %i.big = load float, ptr %i.ayl, align 4
  %i.bih = call noundef float @llvm.ceil.f32(float %i.big) ; 2 uses
  %i.bii = fcmp olt float %i.bih, 3.276700e+04
  %i.bij = select i1 %i.bii, float %i.bih, float 3.276700e+04 ; 2 uses
  %i.bik = fcmp olt float %i.bij, -3.276700e+04
  %i.bil = select i1 %i.bik, float -3.276700e+04, float %i.bij
  %i.bim = fptosi float %i.bil to i16
  %i.bin = shl nuw nsw i64 %i.bge, 4
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bin
  %i.bip = getelementptr inbounds nuw [2 x i8], ptr %i.bio, i64 %.053.i72569
  store i16 %i.bim, ptr %i.bip, align 2
  %i.biq = fptosi float %.sroa.0348.0.vec.extract to i8
  %i.bir = mul nuw nsw i64 %i.bge, 18
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bir
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 %.053.i72569
  store i8 %i.biq, ptr %i.bit, align 1
  %i.biu = fptosi float %.sroa.0348.4.vec.extract to i8
  %i.biv = mul nuw nsw i64 %i.bge, 19
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.biv
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biw, i64 %.053.i72569
  store i8 %i.biu, ptr %i.bix, align 1
  %i.biy = fptosi float %.sroa.0348.8.vec.extract to i8
  %i.biz = mul nuw nsw i64 %i.bge, 20
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.biz
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 %.053.i72569
  store i8 %i.biy, ptr %i.bjb, align 1
  %i.bjc = load float, ptr %i.aym, align 8
  %i.bjd = call noundef float @llvm.floor.f32(float %i.bjc) ; 2 uses
  %i.bje = fcmp olt float %i.bjd, 3.276700e+04
  %i.bjf = select i1 %i.bje, float %i.bjd, float 3.276700e+04 ; 2 uses
  %i.bjg = fcmp olt float %i.bjf, -3.276700e+04
  %i.bjh = select i1 %i.bjg, float -3.276700e+04, float %i.bjf
  %i.bji = fptosi float %i.bjh to i16
  %i.bjj = mul nuw nsw i64 %i.bge, 21
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bjj
  %i.bjl = getelementptr inbounds nuw [2 x i8], ptr %i.bjk, i64 %.053.i72569
  store i16 %i.bji, ptr %i.bjl, align 2
  %i.bjm = load float, ptr %i.ayn, align 8
  %i.bjn = call noundef float @llvm.ceil.f32(float %i.bjm) ; 2 uses
  %i.bjo = fcmp olt float %i.bjn, 3.276700e+04
  %i.bjp = select i1 %i.bjo, float %i.bjn, float 3.276700e+04 ; 2 uses
  %i.bjq = fcmp olt float %i.bjp, -3.276700e+04
  %i.bjr = select i1 %i.bjq, float -3.276700e+04, float %i.bjp
  %i.bjs = fptosi float %i.bjr to i16
  %i.bjt = mul nuw nsw i64 %i.bge, 23
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bcf, i64 %i.bjt
  %i.bjv = getelementptr inbounds nuw [2 x i8], ptr %i.bju, i64 %.053.i72569
  store i16 %i.bjs, ptr %i.bjv, align 2
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %i.bcf, i64 %.053.i72569
  store i32 %i.bdm, ptr %i.bjw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bjx = add nuw nsw i64 %.053.i72569, 1
  %i.bjy = add nuw i64 %.1529568, 1               ; 3 uses
  %i.bjz = icmp samesign ult i64 %.053.i72569, 3
  %i.bka = icmp ult i64 %i.bjy, %.pre-phi
  %or.cond535 = select i1 %i.bjz, i1 %i.bka, i1 false
  br i1 %or.cond535, label %.lr.ph571, label %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit73, !llvm.loop !27

_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit73: ; preds = %.lr.ph571, %._crit_edge
  %.1529.lcssa = phi i64 [ %.0528573, %._crit_edge ], [ %i.bjy, %.lr.ph571 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.bkb = add nuw nsw i64 %.0.i15574, 1          ; 2 uses
  %exitcond635.not = icmp eq i64 %i.bkb, %i.aha
  br i1 %exitcond635.not, label %._crit_edge576, label %bb.eg, !llvm.loop !385

_ZN6embree7CurveNvILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit: ; preds = %._crit_edge576, %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit63, %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit, %bb.a, %_ZN6embree7PointMiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit, %_ZN6embree6LineMiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit
  %.sroa.0.0 = phi i64 [ %i.gv, %_ZN6embree7PointMiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit ], [ %i.rt, %_ZN6embree6LineMiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit ], [ 8, %bb.a ], [ %i.ayr, %._crit_edge576 ], [ %i.agw, %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit ], [ %i.auo, %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit63 ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 16 dereferenceable(80) %2, ptr noundef nonnull align 16 dereferenceable(80) %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i64, ptr %i.b, align 16             ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8              ; 6 uses
  %i.f = add i64 %i.e, %i.c
  %i.g = lshr i64 %i.f, 1                         ; 12 uses
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.g, %i.c
  %.neg = add i64 %i.c, 1
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.k = load <4 x float>, ptr %i.j, align 16, !noalias !420 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load <4 x float>, ptr %i.l, align 16, !noalias !421 ; 2 uses
  %i.n = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.k) ; 2 uses
  %i.o = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.m) ; 2 uses
  %i.p = fadd <4 x float> %i.k, %i.m              ; 2 uses
  %i.q = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.p) ; 2 uses
  %i.r = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.p) ; 2 uses
  %i.s = add nuw nsw i64 %i.c, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa40.unr = phi <4 x float> [ poison, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa39.unr = phi <4 x float> [ poison, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.lcssa38.unr = phi <4 x float> [ poison, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.lcssa37.unr = phi <4 x float> [ poison, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.02166.i.unr = phi i64 [ %i.c, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.sroa.028.065.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.sroa.630.064.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.sroa.1032.063.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.sroa.1434.062.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %i.t = icmp eq i64 %i.g, %.neg
  br i1 %i.t, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.sroa.1434.0.lcssa.i = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.lcssa37.unr, %.lr.ph.i.prol.loopexit ], [ %i.be, %.lr.ph.i ]
  %.sroa.1032.0.lcssa.i = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.lcssa38.unr, %.lr.ph.i.prol.loopexit ], [ %i.bd, %.lr.ph.i ]
  %.sroa.630.0.lcssa.i = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.lcssa39.unr, %.lr.ph.i.prol.loopexit ], [ %i.bb, %.lr.ph.i ]
  %.sroa.028.0.lcssa.i = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.lcssa40.unr, %.lr.ph.i.prol.loopexit ], [ %i.ba, %.lr.ph.i ]
  store <4 x float> %.sroa.028.0.lcssa.i, ptr %2, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> %.sroa.630.0.lcssa.i, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x float> %.sroa.1032.0.lcssa.i, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> %.sroa.1434.0.lcssa.i, ptr %i.w, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.c, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.g, ptr %i.y, align 8
  %i.z = icmp ult i64 %i.g, %i.e
  br i1 %i.z, label %.lr.ph76.i.preheader, label %_ZN6embree4sse220performFallbackSplitEPNS_7PrimRefERKNS0_13PrimInfoRangeERS3_S6_.exit

.lr.ph76.i.preheader:                             ; preds = %._crit_edge.i
  %i.aa = sub nuw i64 %i.e, %i.g
  %.neg43 = add nuw i64 %i.g, 1
  %xtraiter41 = and i64 %i.aa, 1
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol

.lr.ph76.i.prol:                                  ; preds = %.lr.ph76.i.preheader
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !422 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load <4 x float>, ptr %i.ad, align 16, !noalias !423 ; 2 uses
  %i.af = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ac) ; 2 uses
  %i.ag = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ae) ; 2 uses
  %i.ah = fadd <4 x float> %i.ac, %i.ae           ; 2 uses
  %i.ai = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ah) ; 2 uses
  %i.aj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ah) ; 2 uses
  %i.ak = add nuw i64 %i.g, 1
  br label %.lr.ph76.i.prol.loopexit

.lr.ph76.i.prol.loopexit:                         ; preds = %.lr.ph76.i.prol, %.lr.ph76.i.preheader
  %.lcssa36.unr = phi <4 x float> [ poison, %.lr.ph76.i.preheader ], [ %i.af, %.lr.ph76.i.prol ]
  %.lcssa35.unr = phi <4 x float> [ poison, %.lr.ph76.i.preheader ], [ %i.ag, %.lr.ph76.i.prol ]
  %.lcssa34.unr = phi <4 x float> [ poison, %.lr.ph76.i.preheader ], [ %i.ai, %.lr.ph76.i.prol ]
  %.lcssa.unr = phi <4 x float> [ poison, %.lr.ph76.i.preheader ], [ %i.aj, %.lr.ph76.i.prol ]
  %.074.i.unr = phi i64 [ %i.g, %.lr.ph76.i.preheader ], [ %i.ak, %.lr.ph76.i.prol ]
  %.sroa.0.073.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.preheader ], [ %i.af, %.lr.ph76.i.prol ]
  %.sroa.6.072.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.preheader ], [ %i.ag, %.lr.ph76.i.prol ]
  %.sroa.10.071.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.preheader ], [ %i.ai, %.lr.ph76.i.prol ]
  %.sroa.14.070.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.preheader ], [ %i.aj, %.lr.ph76.i.prol ]
  %i.al = icmp eq i64 %i.e, %.neg43
  br i1 %i.al, label %_ZN6embree4sse220performFallbackSplitEPNS_7PrimRefERKNS0_13PrimInfoRangeERS3_S6_.exit, label %.lr.ph76.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02166.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.02166.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.028.065.i = phi <4 x float> [ %i.ba, %.lr.ph.i ], [ %.sroa.028.065.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.630.064.i = phi <4 x float> [ %i.bb, %.lr.ph.i ], [ %.sroa.630.064.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.1032.063.i = phi <4 x float> [ %i.bd, %.lr.ph.i ], [ %.sroa.1032.063.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.1434.062.i = phi <4 x float> [ %i.be, %.lr.ph.i ], [ %.sroa.1434.062.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.02166.i ; 2 uses
  %i.an = load <4 x float>, ptr %i.am, align 16, !noalias !420 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !noalias !421 ; 2 uses
  %i.aq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.028.065.i, <4 x float> %i.an)
  %i.ar = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.630.064.i, <4 x float> %i.ap)
  %i.as = fadd <4 x float> %i.an, %i.ap           ; 2 uses
  %i.at = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1032.063.i, <4 x float> %i.as)
  %i.au = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1434.062.i, <4 x float> %i.as)
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.02166.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !noalias !420 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.az = load <4 x float>, ptr %i.ay, align 16, !noalias !421 ; 2 uses
  %i.ba = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aq, <4 x float> %i.ax) ; 2 uses
  %i.bb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ar, <4 x float> %i.az) ; 2 uses
  %i.bc = fadd <4 x float> %i.ax, %i.az           ; 2 uses
  %i.bd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.at, <4 x float> %i.bc) ; 2 uses
  %i.be = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.au, <4 x float> %i.bc) ; 2 uses
  %i.bf = add nuw nsw i64 %.02166.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bf, %i.g
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !12

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i
  %.074.i = phi i64 [ %i.bz, %.lr.ph76.i ], [ %.074.i.unr, %.lr.ph76.i.prol.loopexit ] ; 3 uses
  %.sroa.0.073.i = phi <4 x float> [ %i.bu, %.lr.ph76.i ], [ %.sroa.0.073.i.unr, %.lr.ph76.i.prol.loopexit ]
  %.sroa.6.072.i = phi <4 x float> [ %i.bv, %.lr.ph76.i ], [ %.sroa.6.072.i.unr, %.lr.ph76.i.prol.loopexit ]
  %.sroa.10.071.i = phi <4 x float> [ %i.bx, %.lr.ph76.i ], [ %.sroa.10.071.i.unr, %.lr.ph76.i.prol.loopexit ]
  %.sroa.14.070.i = phi <4 x float> [ %i.by, %.lr.ph76.i ], [ %.sroa.14.070.i.unr, %.lr.ph76.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.074.i ; 2 uses
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !noalias !422 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = load <4 x float>, ptr %i.bi, align 16, !noalias !423 ; 2 uses
  %i.bk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.073.i, <4 x float> %i.bh)
  %i.bl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.072.i, <4 x float> %i.bj)
  %i.bm = fadd <4 x float> %i.bh, %i.bj           ; 2 uses
  %i.bn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.071.i, <4 x float> %i.bm)
  %i.bo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.070.i, <4 x float> %i.bm)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.074.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load <4 x float>, ptr %i.bq, align 16, !noalias !422 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bt = load <4 x float>, ptr %i.bs, align 16, !noalias !423 ; 2 uses
  %i.bu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bk, <4 x float> %i.br) ; 2 uses
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bl, <4 x float> %i.bt) ; 2 uses
  %i.bw = fadd <4 x float> %i.br, %i.bt           ; 2 uses
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bn, <4 x float> %i.bw) ; 2 uses
end_hunk_2
begin_hunk_3_@_ZZN6embree4sse218BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_SJ_:bb.a
  store i64 %i.vc, ptr %i.vb, align 16
  %i.vq = shl i64 %i.ux, 2
  %i.vr = getelementptr inbounds nuw i8, ptr %i.rw, i64 32 ; 2 uses
  %i.vs = load i64, ptr %i.vr, align 32           ; 2 uses
  %i.vt = icmp ugt i64 %i.vq, %i.vs
  br i1 %i.vt, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.vu = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.rx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 %i.vs, ptr %i.b, align 8
  %i.vv = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.rx, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.rw, i64 8 ; 2 uses
  store ptr %i.vv, ptr %i.vw, align 8
  %i.vx = load i64, ptr %i.vh, align 8
  %i.vy = load i64, ptr %i.vb, align 16
  %i.vz = sub i64 %i.vx, %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %i.rw, i64 48 ; 6 uses
  %i.wb = load i64, ptr %i.wa, align 16
  %i.wc = add i64 %i.wb, %i.vz                    ; 2 uses
  store i64 %i.wc, ptr %i.wa, align 16
  %i.wd = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.wd, ptr %i.vh, align 8
  store i64 %i.ux, ptr %i.vb, align 16
  %.not23.i.i = icmp ugt i64 %i.ux, %i.wd
  br i1 %.not23.i.i, label %bb.cr, label %bb.cq, !prof !56

bb.cq:                                            ; preds = %bb.cp
  store i64 %i.wc, ptr %i.wa, align 16
  br label %bb.cu

bb.cr:                                            ; preds = %bb.cp
  store i64 0, ptr %i.vb, align 16
  %i.we = load i64, ptr %i.vr, align 32
  store i64 %i.we, ptr %i.b, align 8
  %i.wf = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.rx, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.wf, ptr %i.vw, align 8
  %i.wg = load i64, ptr %i.vh, align 8
  %i.wh = load i64, ptr %i.vb, align 16
  %i.wi = sub i64 %i.wg, %i.wh
  %i.wj = load i64, ptr %i.wa, align 16
  %i.wk = add i64 %i.wj, %i.wi                    ; 2 uses
  store i64 %i.wk, ptr %i.wa, align 16
  %i.wl = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.wl, ptr %i.vh, align 8
  store i64 %i.ux, ptr %i.vb, align 16
  %.not24.i.i = icmp ugt i64 %i.ux, %i.wl
  br i1 %.not24.i.i, label %bb.ct, label %bb.cs, !prof !56

bb.cs:                                            ; preds = %bb.cr
  store i64 %i.wk, ptr %i.wa, align 16
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  store i64 0, ptr %i.vb, align 16
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cq
  %.0.i.i = phi ptr [ %i.vv, %bb.cq ], [ %i.wf, %bb.cs ], [ null, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i: ; preds = %bb.cu, %bb.co, %bb.cm
  %.1.i.i = phi ptr [ %i.vp, %bb.cm ], [ %i.vu, %bb.co ], [ %.0.i.i, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not270 = icmp eq i64 %i.gv, 0
  br i1 %.not270, label %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit, label %.lr.ph260

.lr.ph260:                                        ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i
  %i.wm = getelementptr inbounds nuw i8, ptr %i.gt, i64 104
  %i.wn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wo = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.wp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.wq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.wr = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ws = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.wt = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.wv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph260, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.0.i35259 = phi i64 [ 0, %.lr.ph260 ], [ %i.agb, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ] ; 2 uses
  %.0231258 = phi i64 [ %i.j, %.lr.ph260 ], [ %.1232.lcssa, %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ] ; 6 uses
  %i.wx = getelementptr inbounds nuw [122 x i8], ptr %.1.i.i, i64 %.0.i35259 ; 5 uses
  %i.wy = load i64, ptr %i.h, align 8
  %i.wz = load ptr, ptr %i.wm, align 8
  %i.xa = add i64 %.0231258, 4
  %i.xb = call noundef i64 @llvm.umin.i64(i64 %i.xa, i64 %i.wy) ; 3 uses
  %i.xc = sub i64 %i.xb, %.0231258
  %i.xd = trunc i64 %i.xc to i8                   ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wx, i64 1 ; 4 uses
  store i8 %i.xd, ptr %i.xe, align 1
  %i.xf = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.0231258 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 12
  %i.xh = load i32, ptr %i.xg, align 4            ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wx, i64 2
  store i32 %i.xh, ptr %i.xi, align 4
  %i.xj = zext i32 %i.xh to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wz, i64 488 ; 4 uses
  %i.xl = load ptr, ptr %i.xk, align 8
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %i.xj
  %i.xn = load ptr, ptr %i.xm, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 60
  %i.xp = load i32, ptr %i.xo, align 4
  %i.xq = trunc i32 %i.xp to i8
  store i8 %i.xq, ptr %i.wx, align 2
  %.not271 = icmp eq i8 %i.xd, 0
  br i1 %.not271, label %._crit_edge, label %.lr.ph251

._crit_edge:                                      ; preds = %.lr.ph251, %bb.cv
  %.sroa.0175.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.cv ], [ %i.zb, %.lr.ph251 ] ; 4 uses
  %.sroa.8.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.cv ], [ %i.zd, %.lr.ph251 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store <4 x float> %.sroa.0175.0.lcssa, ptr %5, align 16
  %i.xr = fsub <4 x float> %.sroa.8.0.lcssa, %.sroa.0175.0.lcssa ; 2 uses
  %i.xs = fmul <4 x float> %i.xr, <float f0x3FDDB3D7, float f0x3FDDB3D7, float f0x3FDDB3D7, float poison>
  %i.xt = fdiv <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float poison>, %i.xs ; 3 uses
  %.sroa.0174.0.vec.extract = extractelement <4 x float> %i.xt, i64 0 ; 2 uses
  %.sroa.0174.4.vec.extract = extractelement <4 x float> %i.xt, i64 1 ; 2 uses
  %i.xu = fcmp olt float %.sroa.0174.0.vec.extract, %.sroa.0174.4.vec.extract
  %i.xv = select i1 %i.xu, float %.sroa.0174.0.vec.extract, float %.sroa.0174.4.vec.extract ; 2 uses
  %.sroa.0174.8.vec.extract = extractelement <4 x float> %i.xt, i64 2 ; 2 uses
  %i.xw = fcmp olt float %i.xv, %.sroa.0174.8.vec.extract
  %i.xx = select i1 %i.xw, float %i.xv, float %.sroa.0174.8.vec.extract
  %i.xy = fcmp oeq <4 x float> %i.xr, zeroinitializer
  %i.xz = bitcast <4 x i1> %i.xy to i4
  %i.ya = and i4 %i.xz, 7
  %i.yb = icmp eq i4 %i.ya, 7
  %.054.i = select i1 %i.yb, float 0.000000e+00, float %i.xx ; 2 uses
  %i.yc = extractelement <4 x float> %.sroa.0175.0.lcssa, i64 2
  %i.yd = load i8, ptr %i.xe, align 1
  %i.ye = zext i8 %i.yd to i64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wx, i64 6 ; 17 uses
  %i.yg = mul nuw nsw i64 %i.ye, 25               ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yg ; 2 uses
  %i.yi = shufflevector <4 x float> %.sroa.0175.0.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.yi, ptr %i.yh, align 4
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  store float %i.yc, ptr %i.yj, align 4
  %i.yk = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.yg
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 18
  store float %.054.i, ptr %i.yl, align 4
  %i.ym = icmp ult i64 %.0231258, %i.xb
  br i1 %i.ym, label %.lr.ph256, label %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

.lr.ph251:                                        ; preds = %bb.cv, %.lr.ph251
  %.0.i36250 = phi i64 [ %i.ze, %.lr.ph251 ], [ 0, %bb.cv ] ; 2 uses
  %.sroa.8.0249 = phi <4 x float> [ %i.zd, %.lr.ph251 ], [ splat (float -inf), %bb.cv ]
  %.sroa.0175.0248 = phi <4 x float> [ %i.zb, %.lr.ph251 ], [ splat (float +inf), %bb.cv ]
  %i.yn = getelementptr [32 x i8], ptr %i.xf, i64 %.0.i36250 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 12
  %i.yp = load i32, ptr %i.yo, align 4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 28
  %i.yr = load i32, ptr %i.yq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ys = zext i32 %i.yp to i64
  %i.yt = load ptr, ptr %i.xk, align 8
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %i.ys
  %i.yv = load ptr, ptr %i.yu, align 8            ; 2 uses
  %i.yw = zext i32 %i.yr to i64
  %i.yx = load ptr, ptr %i.yv, align 16
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 456
  %i.yz = load ptr, ptr %i.yy, align 8
  call void %i.yz(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %4, ptr noundef nonnull align 16 dereferenceable(88) %i.yv, i64 noundef %i.yw), !inline_history !25
  %i.za = load <4 x float>, ptr %4, align 16, !noalias !1884
  %i.zb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0175.0248, <4 x float> %i.za) ; 2 uses
  %i.zc = load <4 x float>, ptr %i.wn, align 16, !noalias !1885
  %i.zd = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.0249, <4 x float> %i.zc) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ze = add nuw nsw i64 %.0.i36250, 1           ; 2 uses
  %i.zf = load i8, ptr %i.xe, align 1
  %i.zg = zext i8 %i.zf to i64
  %i.zh = icmp samesign ult i64 %i.ze, %i.zg
  br i1 %i.zh, label %.lr.ph251, label %._crit_edge, !llvm.loop !26

.lr.ph256:                                        ; preds = %._crit_edge, %.lr.ph256
  %.053.i254 = phi i64 [ %i.afx, %.lr.ph256 ], [ 0, %._crit_edge ] ; 18 uses
  %.1232253 = phi i64 [ %i.afy, %.lr.ph256 ], [ %.0231258, %._crit_edge ] ; 2 uses
  %i.zi = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.1232253 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 12
  %i.zk = load i32, ptr %i.zj, align 4
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zi, i64 28
  %i.zm = load i32, ptr %i.zl, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.zn = zext i32 %i.zk to i64                   ; 2 uses
  %i.zo = load ptr, ptr %i.xk, align 8
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.zn
  %i.zq = load ptr, ptr %i.zp, align 8            ; 2 uses
  %i.zr = zext i32 %i.zm to i64                   ; 2 uses
  %i.zs = load ptr, ptr %i.zq, align 16
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 424
  %i.zu = load ptr, ptr %i.zt, align 8
  call void %i.zu(ptr dead_on_unwind nonnull writable sret(%"struct.embree::LinearSpace3") align 16 %6, ptr noundef nonnull align 16 dereferenceable(88) %i.zq, i64 noundef %i.zr), !inline_history !25
  %i.zv = load <4 x float>, ptr %6, align 16, !noalias !1886
  %i.zw = fmul <4 x float> %i.zv, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0154.0.vec.extract = extractelement <4 x float> %i.zw, i64 0 ; 2 uses
  %i.zx = call float @llvm.trunc.f32(float %.sroa.0154.0.vec.extract)
  %.sroa.0154.4.vec.extract = extractelement <4 x float> %i.zw, i64 1 ; 2 uses
  %i.zy = call float @llvm.trunc.f32(float %.sroa.0154.4.vec.extract)
  %.sroa.0154.8.vec.extract = extractelement <4 x float> %i.zw, i64 2 ; 2 uses
  %i.zz = call float @llvm.trunc.f32(float %.sroa.0154.8.vec.extract)
  %i.aaa = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.zx, i64 0
  %i.aab = insertelement <4 x float> %i.aaa, float %i.zy, i64 1 ; 2 uses
  %i.aac = insertelement <4 x float> %i.aab, float %i.zz, i64 2 ; 3 uses
  %i.aad = load <4 x float>, ptr %i.wo, align 16, !noalias !1887
  %i.aae = fmul <4 x float> %i.aad, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0152.0.vec.extract = extractelement <4 x float> %i.aae, i64 0 ; 2 uses
  %i.aaf = call float @llvm.trunc.f32(float %.sroa.0152.0.vec.extract)
  %.sroa.0152.4.vec.extract = extractelement <4 x float> %i.aae, i64 1 ; 2 uses
  %i.aag = call float @llvm.trunc.f32(float %.sroa.0152.4.vec.extract)
  %.sroa.0152.8.vec.extract = extractelement <4 x float> %i.aae, i64 2 ; 2 uses
  %i.aah = call float @llvm.trunc.f32(float %.sroa.0152.8.vec.extract)
  %i.aai = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aaf, i64 0
  %i.aaj = insertelement <4 x float> %i.aai, float %i.aag, i64 1 ; 2 uses
  %i.aak = insertelement <4 x float> %i.aaj, float %i.aah, i64 2 ; 3 uses
  %i.aal = load <4 x float>, ptr %i.wp, align 16, !noalias !1888
  %i.aam = fmul <4 x float> %i.aal, <float 1.260000e+02, float 1.260000e+02, float 1.260000e+02, float poison> ; 3 uses
  %.sroa.0150.0.vec.extract = extractelement <4 x float> %i.aam, i64 0 ; 2 uses
  %i.aan = call float @llvm.trunc.f32(float %.sroa.0150.0.vec.extract)
  %.sroa.0150.4.vec.extract = extractelement <4 x float> %i.aam, i64 1 ; 2 uses
  %i.aao = call float @llvm.trunc.f32(float %.sroa.0150.4.vec.extract)
  %.sroa.0150.8.vec.extract = extractelement <4 x float> %i.aam, i64 2 ; 2 uses
  %i.aap = call float @llvm.trunc.f32(float %.sroa.0150.8.vec.extract)
  %i.aaq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aan, i64 0
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aao, i64 1 ; 2 uses
  %i.aas = insertelement <4 x float> %i.aar, float %i.aap, i64 2 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.aat = load ptr, ptr %i.xk, align 8
  %i.aau = getelementptr inbounds nuw [8 x i8], ptr %i.aat, i64 %i.zn
  %i.aav = load ptr, ptr %i.aau, align 8          ; 2 uses
  %i.aaw = fmul <4 x float> %i.aac, %i.aac        ; 3 uses
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aay = shufflevector <4 x float> %i.aaw, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.aaz = fadd <4 x float> %i.aaw, %i.aax
  %i.aba = fadd <4 x float> %i.aay, %i.aaz
  %i.abb = extractelement <4 x float> %i.aba, i64 0
  %sqrt236 = call float @llvm.sqrt.f32(float %i.abb) ; 2 uses
  %i.abc = fmul <4 x float> %i.aak, %i.aak        ; 3 uses
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.abe = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.abf = fadd <4 x float> %i.abc, %i.abd
  %i.abg = fadd <4 x float> %i.abe, %i.abf
  %i.abh = extractelement <4 x float> %i.abg, i64 0
  %sqrt235 = call float @llvm.sqrt.f32(float %i.abh) ; 2 uses
  %i.abi = fmul <4 x float> %i.aas, %i.aas        ; 3 uses
  %i.abj = shufflevector <4 x float> %i.abi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.abk = shufflevector <4 x float> %i.abi, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.abl = fadd <4 x float> %i.abi, %i.abj
  %i.abm = fadd <4 x float> %i.abk, %i.abl
  %i.abn = extractelement <4 x float> %i.abm, i64 0
  %sqrt = call float @llvm.sqrt.f32(float %i.abn) ; 2 uses
  %i.abo = fcmp olt float %sqrt236, %sqrt235
  %i.abp = select i1 %i.abo, float %sqrt235, float %sqrt236 ; 2 uses
  %i.abq = fcmp olt float %i.abp, %sqrt
  %i.abr = select i1 %i.abq, float %sqrt, float %i.abp
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.abs = shufflevector <4 x float> %i.aab, <4 x float> %i.aar, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.abt = shufflevector <4 x float> %i.aac, <4 x float> %i.aas, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.abu = shufflevector <4 x float> %i.aaj, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.abv = shufflevector <4 x float> %i.aak, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.abw = shufflevector <4 x float> %i.abs, <4 x float> %i.abu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.abx = shufflevector <4 x float> %i.abs, <4 x float> %i.abu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aby = shufflevector <4 x float> %i.abt, <4 x float> %i.abv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.abw, ptr %8, align 16, !alias.scope !1889
  store <4 x float> %i.abx, ptr %i.wq, align 16, !alias.scope !1889
  store <4 x float> %i.aby, ptr %i.wr, align 16, !alias.scope !1889
  %i.abz = load ptr, ptr %i.aav, align 16
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 472
  %i.acb = load ptr, ptr %i.aca, align 8
  call void %i.acb(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox") align 16 %7, ptr noundef nonnull align 16 dereferenceable(88) %i.aav, ptr noundef nonnull align 16 dereferenceable(16) %5, float noundef %.054.i, float noundef %i.abr, ptr noundef nonnull align 16 dereferenceable(48) %8, i64 noundef %i.zr, i64 noundef 0), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.acc = fptosi float %.sroa.0154.0.vec.extract to i8
  %i.acd = load i8, ptr %i.xe, align 1
  %i.ace = zext i8 %i.acd to i64                  ; 15 uses
  %i.acf = shl nuw nsw i64 %i.ace, 2
  %i.acg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 %.053.i254
  store i8 %i.acc, ptr %i.ach, align 1
  %i.aci = fptosi float %.sroa.0154.4.vec.extract to i8
  %i.acj = mul nuw nsw i64 %i.ace, 5
  %i.ack = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.acj
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.053.i254
  store i8 %i.aci, ptr %i.acl, align 1
  %i.acm = fptosi float %.sroa.0154.8.vec.extract to i8
  %i.acn = mul nuw nsw i64 %i.ace, 6
  %i.aco = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 %.053.i254
  store i8 %i.acm, ptr %i.acp, align 1
  %i.acq = load float, ptr %7, align 16
  %i.acr = call noundef float @llvm.floor.f32(float %i.acq) ; 2 uses
  %i.acs = fcmp olt float %i.acr, 3.276700e+04
  %i.act = select i1 %i.acs, float %i.acr, float 3.276700e+04 ; 2 uses
  %i.acu = fcmp olt float %i.act, -3.276700e+04
  %i.acv = select i1 %i.acu, float -3.276700e+04, float %i.act
  %i.acw = fptosi float %i.acv to i16
  %i.acx = mul nuw nsw i64 %i.ace, 7
  %i.acy = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.acx
  %i.acz = getelementptr inbounds nuw [2 x i8], ptr %i.acy, i64 %.053.i254
  store i16 %i.acw, ptr %i.acz, align 2
  %i.ada = load float, ptr %i.ws, align 16
  %i.adb = call noundef float @llvm.ceil.f32(float %i.ada) ; 2 uses
  %i.adc = fcmp olt float %i.adb, 3.276700e+04
  %i.add = select i1 %i.adc, float %i.adb, float 3.276700e+04 ; 2 uses
  %i.ade = fcmp olt float %i.add, -3.276700e+04
  %i.adf = select i1 %i.ade, float -3.276700e+04, float %i.add
  %i.adg = fptosi float %i.adf to i16
  %i.adh = mul nuw nsw i64 %i.ace, 9
  %i.adi = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.adh
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %i.adi, i64 %.053.i254
  store i16 %i.adg, ptr %i.adj, align 2
  %i.adk = fptosi float %.sroa.0152.0.vec.extract to i8
  %i.adl = mul nuw nsw i64 %i.ace, 11
  %i.adm = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %.053.i254
  store i8 %i.adk, ptr %i.adn, align 1
  %i.ado = fptosi float %.sroa.0152.4.vec.extract to i8
  %i.adp = mul nuw nsw i64 %i.ace, 12
  %i.adq = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.adp
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 %.053.i254
  store i8 %i.ado, ptr %i.adr, align 1
  %i.ads = fptosi float %.sroa.0152.8.vec.extract to i8
  %i.adt = mul nuw nsw i64 %i.ace, 13
  %i.adu = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.adt
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 %.053.i254
  store i8 %i.ads, ptr %i.adv, align 1
  %i.adw = load float, ptr %i.wt, align 4
  %i.adx = call noundef float @llvm.floor.f32(float %i.adw) ; 2 uses
  %i.ady = fcmp olt float %i.adx, 3.276700e+04
  %i.adz = select i1 %i.ady, float %i.adx, float 3.276700e+04 ; 2 uses
  %i.aea = fcmp olt float %i.adz, -3.276700e+04
  %i.aeb = select i1 %i.aea, float -3.276700e+04, float %i.adz
  %i.aec = fptosi float %i.aeb to i16
  %i.aed = mul nuw nsw i64 %i.ace, 14
  %i.aee = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.aed
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.aee, i64 %.053.i254
  store i16 %i.aec, ptr %i.aef, align 2
  %i.aeg = load float, ptr %i.wu, align 4
  %i.aeh = call noundef float @llvm.ceil.f32(float %i.aeg) ; 2 uses
  %i.aei = fcmp olt float %i.aeh, 3.276700e+04
  %i.aej = select i1 %i.aei, float %i.aeh, float 3.276700e+04 ; 2 uses
  %i.aek = fcmp olt float %i.aej, -3.276700e+04
  %i.ael = select i1 %i.aek, float -3.276700e+04, float %i.aej
  %i.aem = fptosi float %i.ael to i16
  %i.aen = shl nuw nsw i64 %i.ace, 4
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.aen
  %i.aep = getelementptr inbounds nuw [2 x i8], ptr %i.aeo, i64 %.053.i254
  store i16 %i.aem, ptr %i.aep, align 2
  %i.aeq = fptosi float %.sroa.0150.0.vec.extract to i8
  %i.aer = mul nuw nsw i64 %i.ace, 18
  %i.aes = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 %.053.i254
  store i8 %i.aeq, ptr %i.aet, align 1
  %i.aeu = fptosi float %.sroa.0150.4.vec.extract to i8
  %i.aev = mul nuw nsw i64 %i.ace, 19
  %i.aew = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.aev
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 %.053.i254
  store i8 %i.aeu, ptr %i.aex, align 1
  %i.aey = fptosi float %.sroa.0150.8.vec.extract to i8
  %i.aez = mul nuw nsw i64 %i.ace, 20
  %i.afa = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.aez
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 %.053.i254
  store i8 %i.aey, ptr %i.afb, align 1
  %i.afc = load float, ptr %i.wv, align 8
  %i.afd = call noundef float @llvm.floor.f32(float %i.afc) ; 2 uses
  %i.afe = fcmp olt float %i.afd, 3.276700e+04
  %i.aff = select i1 %i.afe, float %i.afd, float 3.276700e+04 ; 2 uses
  %i.afg = fcmp olt float %i.aff, -3.276700e+04
  %i.afh = select i1 %i.afg, float -3.276700e+04, float %i.aff
  %i.afi = fptosi float %i.afh to i16
  %i.afj = mul nuw nsw i64 %i.ace, 21
  %i.afk = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.afj
  %i.afl = getelementptr inbounds nuw [2 x i8], ptr %i.afk, i64 %.053.i254
  store i16 %i.afi, ptr %i.afl, align 2
  %i.afm = load float, ptr %i.ww, align 8
  %i.afn = call noundef float @llvm.ceil.f32(float %i.afm) ; 2 uses
  %i.afo = fcmp olt float %i.afn, 3.276700e+04
  %i.afp = select i1 %i.afo, float %i.afn, float 3.276700e+04 ; 2 uses
  %i.afq = fcmp olt float %i.afp, -3.276700e+04
  %i.afr = select i1 %i.afq, float -3.276700e+04, float %i.afp
  %i.afs = fptosi float %i.afr to i16
  %i.aft = mul nuw nsw i64 %i.ace, 23
  %i.afu = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.aft
  %i.afv = getelementptr inbounds nuw [2 x i8], ptr %i.afu, i64 %.053.i254
  store i16 %i.afs, ptr %i.afv, align 2
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %.053.i254
  store i32 %i.zm, ptr %i.afw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.afx = add nuw nsw i64 %.053.i254, 1
  %i.afy = add nuw i64 %.1232253, 1               ; 3 uses
  %i.afz = icmp samesign ult i64 %.053.i254, 3
  %i.aga = icmp ult i64 %i.afy, %i.xb
  %or.cond = select i1 %i.afz, i1 %i.aga, i1 false
  br i1 %or.cond, label %.lr.ph256, label %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit, !llvm.loop !27

_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit: ; preds = %.lr.ph256, %._crit_edge
  %.1232.lcssa = phi i64 [ %.0231258, %._crit_edge ], [ %i.afy, %.lr.ph256 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.agb = add nuw nsw i64 %.0.i35259, 1          ; 2 uses
  %exitcond275.not = icmp eq i64 %i.agb, %i.gv
  br i1 %exitcond275.not, label %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit, label %bb.cv, !llvm.loop !28

_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit: ; preds = %_ZN6embree7CurveNiILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i
  %i.agc = ptrtoint ptr %.1.i.i to i64
  %i.agd = call noundef i64 @llvm.umin.i64(i64 %i.gv, i64 7)
  %i.age = or i64 %i.agd, %i.agc
  %i.agf = or i64 %i.age, 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.a, %_ZN6embree7PointMiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit, %_ZN6embree6LineMiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit, %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit
  %.sroa.0.0 = phi i64 [ %i.gp, %_ZN6embree7PointMiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit ], [ %i.rn, %_ZN6embree6LineMiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit ], [ %i.agf, %_ZN6embree7CurveNiILi4EE10createLeafINS_4BVHNILi4EEENS_13FastAllocator15CachedAllocatorEEENT_7NodeRefEPS7_PKNS_7PrimRefERKNS_5rangeImEERKT0_.exit ], [ 8, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse214BVHBuilderHair8BuilderTINS_10NodeRefPtrILi4EEENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS6_Li4EE6CreateENSB_3SetENS_9OBBNode_tIS6_Li4EE6CreateENSF_3SetEZNS2_18BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEZNSP_5buildEvEUlSW_E_E7recurseEmRKNS2_13PrimInfoRangeESY_bbEUlSW_E_EEvT_S1A_S1A_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.232, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %4, ptr %i.e, align 8
  %i.f = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 262272 ; 5 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8
  %i.j = icmp ugt i64 %i.i, 4095
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #11 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.t, %bb.i ], [ %i.k, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #11
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 786624 ; 2 uses
  %i.n = load i64, ptr %i.m, align 64             ; 4 uses
  %i.o = sub i64 0, %i.n
  %i.p = and i64 %i.o, 63                         ; 2 uses
  %i.q = add i64 %i.n, 80
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ugt i64 %i.r, 524288
  br i1 %i.s, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #11 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.10)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.r, ptr %i.m, align 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 262336
  %i.w = getelementptr i8, ptr %i.v, i64 %i.n
  %i.x = getelementptr i8, ptr %i.w, i64 %i.p     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse214BVHBuilderHair8BuilderTINS_10NodeRefPtrILi4EEENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENSC_3SetENS_9OBBNode_tIS7_Li4EE6CreateENSG_3SetEZNS3_18BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEZNSQ_5buildEvEUlSX_E_E7recurseEmRKNS3_13PrimInfoRangeESZ_bbEUlSX_E_EEvT_S1B_S1B_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false)
  %i.z = load atomic i64, ptr %i.h seq_cst, align 64
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.z ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 786688
  %i.ac = load ptr, ptr %i.ab, align 64           ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.x, ptr %i.af, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ac, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %4, ptr %i.ah, align 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %i.n, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.a, ptr %i.aj, align 16
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.al = atomicrmw add ptr %i.ak, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !61
  %i.am = cmpxchg ptr %i.aa, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.an = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 262208 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao seq_cst, align 64
  %i.aq = load atomic i64, ptr %i.h seq_cst, align 64
  %i.ar = add i64 %i.aq, -1
  %.not.i7 = icmp ult i64 %i.ap, %i.ar
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse214BVHBuilderHair8BuilderTINS_10NodeRefPtrILi4EEENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENSC_3SetENS_9OBBNode_tIS7_Li4EE6CreateENSG_3SetEZNS3_18BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEZNSQ_5buildEvEUlSX_E_E7recurseEmRKNS3_13PrimInfoRangeESZ_bbEUlSX_E_EEvT_S1B_S1B_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKS1B_S1G_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.as = load atomic i64, ptr %i.h seq_cst, align 64
  %i.at = add i64 %i.as, -1
  store atomic i64 %i.at, ptr %i.ao seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse214BVHBuilderHair8BuilderTINS_10NodeRefPtrILi4EEENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENSC_3SetENS_9OBBNode_tIS7_Li4EE6CreateENSG_3SetEZNS3_18BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEZNSQ_5buildEvEUlSX_E_E7recurseEmRKNS3_13PrimInfoRangeESZ_bbEUlSX_E_EEvT_S1B_S1B_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKS1B_S1G_.exit

bb.l:                                             ; preds = %bb.a
  %i.au = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse214BVHBuilderHair8BuilderTINS_10NodeRefPtrILi4EEENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENSC_3SetENS_9OBBNode_tIS7_Li4EE6CreateENSG_3SetEZNS3_18BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEZNSQ_5buildEvEUlSX_E_E7recurseEmRKNS3_13PrimInfoRangeESZ_bbEUlSX_E_EEvT_S1B_S1B_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKS1B_S1G_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse214BVHBuilderHair8BuilderTINS_10NodeRefPtrILi4EEENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENSC_3SetENS_9OBBNode_tIS7_Li4EE6CreateENSG_3SetEZNS3_18BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEZNSQ_5buildEvEUlSX_E_E7recurseEmRKNS3_13PrimInfoRangeESZ_bbEUlSX_E_EEvT_S1B_S1B_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKS1B_S1G_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse214BVHBuilderHair8BuilderTINS_10NodeRefPtrILi4EEENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENSC_3SetENS_9OBBNode_tIS7_Li4EE6CreateENSG_3SetEZNS3_18BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEZNSQ_5buildEvEUlSX_E_E7recurseEmRKNS3_13PrimInfoRangeESZ_bbEUlSX_E_EEvT_S1B_S1B_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKS1B_S1G_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse214BVHBuilderHair8BuilderTINS_10NodeRefPtrILi4EEENS_4BVHNILi4EE11CreateAllocENS_10AABBNode_tIS7_Li4EE6CreateENSC_3SetENS_9OBBNode_tIS7_Li4EE6CreateENSG_3SetEZNS3_18BVHNHairBuilderSAHILi4ENS_7CurveNiILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvEUlPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorEE_NS_5Scene29BuildProgressMonitorInterfaceEZNSQ_5buildEvEUlSX_E_E7recurseEmRKNS3_13PrimInfoRangeESZ_bbEUlSX_E_EEvT_S1B_S1B_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKS1B_S1G_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.110", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref.103", align 8   ; 7 uses
  %10 = alloca %"class.embree::Ref.103", align 8  ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

end_hunk_3
