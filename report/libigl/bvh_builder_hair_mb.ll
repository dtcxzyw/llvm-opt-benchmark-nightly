Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZZN6embree4sse223BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_:bb.a
  %i.ug = load ptr, ptr %i.uf, align 8, !noalias !590 ; 4 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.ue
  %i.ui = load ptr, ptr %i.uh, align 8, !noalias !590 ; 5 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 60
  %i.uk = load i32, ptr %i.uj, align 4, !noalias !590
  %i.ul = icmp ult i64 %.0573674, %i.j
  br i1 %i.ul, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.um = getelementptr inbounds nuw i8, ptr %i.ub, i64 28
  %i.un = load i32, ptr %i.um, align 4, !noalias !590 ; 2 uses
  %.sroa.0753.0.vec.insert757 = insertelement <4 x i32> <i32 poison, i32 undef, i32 undef, i32 undef>, i32 %i.un, i64 0
  %i.uo = zext i32 %i.un to i64                   ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ui, i64 88
  %i.uq = load ptr, ptr %i.up, align 8, !noalias !590
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ui, i64 104
  %i.us = load i64, ptr %i.ur, align 8, !noalias !590
  %i.ut = mul i64 %i.us, %i.uo
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !noalias !590
  %.sroa.0740.0.vec.insert743 = insertelement <4 x i32> <i32 poison, i32 undef, i32 undef, i32 undef>, i32 %i.uv, i64 0
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ui, i64 256
  %i.ux = load ptr, ptr %i.uw, align 8, !noalias !590
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ui, i64 272
  %i.uz = load i64, ptr %i.uy, align 8, !noalias !590
  %i.va = mul i64 %i.uz, %i.uo
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !noalias !590 ; 2 uses
  %i.vd = and i8 %i.vc, 1
  %i.ve = zext nneg i8 %i.vd to i16
  %i.vf = lshr i8 %i.vc, 1
  %.lobit = and i8 %i.vf, 1
  %i.vg = zext nneg i8 %.lobit to i16
  %i.vh = add nuw i64 %.0573674, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.sroa.0753.0 = phi <4 x i32> [ %.sroa.0753.0.vec.insert757, %bb.bt ], [ undef, %bb.bs ] ; 2 uses
  %.sroa.0740.0 = phi <4 x i32> [ %.sroa.0740.0.vec.insert743, %bb.bt ], [ undef, %bb.bs ] ; 2 uses
  %.2575 = phi i64 [ %i.vh, %bb.bt ], [ %.0573674, %bb.bs ] ; 4 uses
  %.144.i = phi i16 [ %i.ve, %bb.bt ], [ 0, %bb.bs ] ; 2 uses
  %.142.i = phi i16 [ %i.vg, %bb.bt ], [ 0, %bb.bs ] ; 2 uses
  %i.vi = icmp ult i64 %.2575, %i.j
  br i1 %i.vi, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.sroa.0753.4.vec.insert = insertelement <4 x i32> %.sroa.0753.0, i32 -1, i64 1
  %.sroa.0740.4.vec.insert = shufflevector <4 x i32> %.sroa.0740.0, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.vj = getelementptr inbounds nuw [80 x i8], ptr %i.tz, i64 %.2575 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 12
  %i.vl = load i32, ptr %i.vk, align 4, !noalias !590
  %i.vm = zext i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.vm
  %i.vo = load ptr, ptr %i.vn, align 8, !noalias !590 ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 28
  %i.vq = load i32, ptr %i.vp, align 4, !noalias !590 ; 2 uses
  %.sroa.0753.4.vec.insert759 = insertelement <4 x i32> %.sroa.0753.0, i32 %i.vq, i64 1
  %i.vr = zext i32 %i.vq to i64                   ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 88
  %i.vt = load ptr, ptr %i.vs, align 8, !noalias !590
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vo, i64 104
  %i.vv = load i64, ptr %i.vu, align 8, !noalias !590
  %i.vw = mul i64 %i.vv, %i.vr
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !noalias !590
  %.sroa.0740.4.vec.insert746 = insertelement <4 x i32> %.sroa.0740.0, i32 %i.vy, i64 1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vo, i64 256
  %i.wa = load ptr, ptr %i.vz, align 8, !noalias !590
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vo, i64 272
  %i.wc = load i64, ptr %i.wb, align 8, !noalias !590
  %i.wd = mul i64 %i.wc, %i.vr
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !noalias !590 ; 2 uses
  %i.wg = shl i8 %i.wf, 1
  %i.wh = and i8 %i.wg, 2
  %i.wi = zext nneg i8 %i.wh to i16
  %i.wj = or i16 %.144.i, %i.wi
  %.lobit.1 = and i8 %i.wf, 2
  %i.wk = zext nneg i8 %.lobit.1 to i16
  %i.wl = or i16 %.142.i, %i.wk
  %i.wm = add nuw i64 %.2575, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sroa.0753.1 = phi <4 x i32> [ %.sroa.0753.4.vec.insert759, %bb.bw ], [ %.sroa.0753.4.vec.insert, %bb.bv ] ; 2 uses
  %.sroa.0740.1 = phi <4 x i32> [ %.sroa.0740.4.vec.insert746, %bb.bw ], [ %.sroa.0740.4.vec.insert, %bb.bv ] ; 2 uses
  %.2575.1 = phi i64 [ %i.wm, %bb.bw ], [ %.2575, %bb.bv ] ; 4 uses
  %.144.i.1 = phi i16 [ %i.wj, %bb.bw ], [ %.144.i, %bb.bv ] ; 2 uses
  %.142.i.1 = phi i16 [ %i.wl, %bb.bw ], [ %.142.i, %bb.bv ] ; 2 uses
  %i.wn = icmp ult i64 %.2575.1, %i.j
  br i1 %i.wn, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.sroa.0753.8.vec.insert = insertelement <4 x i32> %.sroa.0753.1, i32 -1, i64 2
  %.sroa.0740.8.vec.insert = shufflevector <4 x i32> %.sroa.0740.1, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.wo = getelementptr inbounds nuw [80 x i8], ptr %i.tz, i64 %.2575.1 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 12
  %i.wq = load i32, ptr %i.wp, align 4, !noalias !590
  %i.wr = zext i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.wr
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !590 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 28
  %i.wv = load i32, ptr %i.wu, align 4, !noalias !590 ; 2 uses
  %.sroa.0753.8.vec.insert761 = insertelement <4 x i32> %.sroa.0753.1, i32 %i.wv, i64 2
  %i.ww = zext i32 %i.wv to i64                   ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 88
  %i.wy = load ptr, ptr %i.wx, align 8, !noalias !590
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 104
  %i.xa = load i64, ptr %i.wz, align 8, !noalias !590
  %i.xb = mul i64 %i.xa, %i.ww
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.xb
  %i.xd = load i32, ptr %i.xc, align 4, !noalias !590
  %.sroa.0740.8.vec.insert749 = insertelement <4 x i32> %.sroa.0740.1, i32 %i.xd, i64 2
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wt, i64 256
  %i.xf = load ptr, ptr %i.xe, align 8, !noalias !590
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wt, i64 272
  %i.xh = load i64, ptr %i.xg, align 8, !noalias !590
  %i.xi = mul i64 %i.xh, %i.ww
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !noalias !590 ; 2 uses
  %i.xl = shl i8 %i.xk, 2
  %i.xm = and i8 %i.xl, 4
  %i.xn = zext nneg i8 %i.xm to i16
  %i.xo = or i16 %.144.i.1, %i.xn
  %i.xp = shl i8 %i.xk, 1
  %i.xq = and i8 %i.xp, 4
  %i.xr = zext nneg i8 %i.xq to i16
  %i.xs = or i16 %.142.i.1, %i.xr
  %i.xt = add nuw i64 %.2575.1, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.0753.2 = phi <4 x i32> [ %.sroa.0753.8.vec.insert761, %bb.bz ], [ %.sroa.0753.8.vec.insert, %bb.by ] ; 2 uses
  %.sroa.0740.2 = phi <4 x i32> [ %.sroa.0740.8.vec.insert749, %bb.bz ], [ %.sroa.0740.8.vec.insert, %bb.by ] ; 2 uses
  %.2575.2 = phi i64 [ %i.xt, %bb.bz ], [ %.2575.1, %bb.by ] ; 4 uses
  %.144.i.2 = phi i16 [ %i.xo, %bb.bz ], [ %.144.i.1, %bb.by ] ; 2 uses
  %.142.i.2 = phi i16 [ %i.xs, %bb.bz ], [ %.142.i.1, %bb.by ] ; 2 uses
  %i.xu = icmp ult i64 %.2575.2, %i.j
  br i1 %i.xu, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.0753.12.vec.insert = insertelement <4 x i32> %.sroa.0753.2, i32 -1, i64 3
  %.sroa.0740.12.vec.insert = shufflevector <4 x i32> %.sroa.0740.2, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  br label %_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit

bb.cc:                                            ; preds = %bb.ca
  %i.xv = getelementptr inbounds nuw [80 x i8], ptr %i.tz, i64 %.2575.2 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 12
  %i.xx = load i32, ptr %i.xw, align 4, !noalias !590
  %i.xy = zext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.xy
  %i.ya = load ptr, ptr %i.xz, align 8, !noalias !590 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xv, i64 28
  %i.yc = load i32, ptr %i.yb, align 4, !noalias !590 ; 2 uses
  %.sroa.0753.12.vec.insert763 = insertelement <4 x i32> %.sroa.0753.2, i32 %i.yc, i64 3
  %i.yd = zext i32 %i.yc to i64                   ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ya, i64 88
  %i.yf = load ptr, ptr %i.ye, align 8, !noalias !590
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ya, i64 104
  %i.yh = load i64, ptr %i.yg, align 8, !noalias !590
  %i.yi = mul i64 %i.yh, %i.yd
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 4, !noalias !590
  %.sroa.0740.12.vec.insert752 = insertelement <4 x i32> %.sroa.0740.2, i32 %i.yk, i64 3
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ya, i64 256
  %i.ym = load ptr, ptr %i.yl, align 8, !noalias !590
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ya, i64 272
  %i.yo = load i64, ptr %i.yn, align 8, !noalias !590
  %i.yp = mul i64 %i.yo, %i.yd
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !noalias !590 ; 2 uses
  %i.ys = shl i8 %i.yr, 3
  %i.yt = and i8 %i.ys, 8
  %i.yu = zext nneg i8 %i.yt to i16
  %i.yv = or i16 %.144.i.2, %i.yu
  %i.yw = shl i8 %i.yr, 2
  %i.yx = and i8 %i.yw, 8
  %i.yy = zext nneg i8 %i.yx to i16
  %i.yz = or i16 %.142.i.2, %i.yy
  %i.za = add nuw i64 %.2575.2, 1
  br label %_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit

_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit: ; preds = %bb.cc, %bb.cb
  %.sroa.0753.3 = phi <4 x i32> [ %.sroa.0753.12.vec.insert763, %bb.cc ], [ %.sroa.0753.12.vec.insert, %bb.cb ] ; 2 uses
  %.sroa.0740.3 = phi <4 x i32> [ %.sroa.0740.12.vec.insert752, %bb.cc ], [ %.sroa.0740.12.vec.insert, %bb.cb ]
  %.2575.3 = phi i64 [ %i.za, %bb.cc ], [ %.2575.2, %bb.cb ]
  %.144.i.3 = phi i16 [ %i.yv, %bb.cc ], [ %.144.i.2, %bb.cb ]
  %.142.i.3 = phi i16 [ %i.yz, %bb.cc ], [ %.142.i.2, %bb.cb ]
  %i.zb = getelementptr inbounds nuw [48 x i8], ptr %.1.i17, i64 %.0.i11679 ; 7 uses
  %i.zc = trunc i32 %i.uk to i8
  store i8 %i.zc, ptr %i.zb, align 16, !noalias !590
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 1
  %i.ze = icmp ne <4 x i32> %.sroa.0753.3, splat (i32 -1)
  %i.zf = bitcast <4 x i1> %i.ze to i4            ; 3 uses
  %16 = zext i4 %i.zf to i8                       ; 2 uses
  %i.zg = and i4 %i.zf, 1
  %17 = lshr i8 %16, 1
  %i.zh = and i8 %17, 1
  %18 = lshr i8 %16, 2
  %.lobit587 = and i8 %18, 1
  %.lobit588 = lshr i4 %i.zf, 3
  %narrow = add nuw nsw i4 %.lobit588, %i.zg
  %i.zi = zext nneg i4 %narrow to i8
  %i.zj = add nuw nsw i8 %i.zh, %i.zi
  %i.zk = add nuw nsw i8 %i.zj, %.lobit587
  store i8 %i.zk, ptr %i.zd, align 1, !noalias !590
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  store i32 %i.ud, ptr %i.zl, align 4, !noalias !590
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store i16 %.144.i.3, ptr %i.zm, align 8, !noalias !590
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zb, i64 10
  store i16 %.142.i.3, ptr %i.zn, align 2, !noalias !590
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  store <4 x i32> %.sroa.0740.3, ptr %i.zo, align 16, !noalias !590
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zb, i64 32 ; 2 uses
  store <4 x i32> %.sroa.0753.3, ptr %i.zp, align 16, !noalias !590
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit
  %.0.i49673 = phi i64 [ 0, %_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.aig, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %.sroa.0131.0672 = phi <4 x float> [ splat (float +inf), %_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.aic, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %.sroa.6133.0671 = phi <4 x float> [ splat (float -inf), %_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.aid, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %.sroa.10135.0670 = phi <4 x float> [ splat (float +inf), %_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.aie, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %.sroa.14137.0669 = phi <4 x float> [ splat (float -inf), %_ZN6embree6LineMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.aif, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %.0.i49673
  %i.zr = load i32, ptr %i.zq, align 4, !noalias !589 ; 2 uses
  %.not589 = icmp eq i32 %i.zr, -1
  br i1 %.not589, label %_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.zs = load ptr, ptr %i.uf, align 8, !noalias !589
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.ue
  %i.zu = load ptr, ptr %i.zt, align 8, !noalias !589 ; 7 uses
  %i.zv = zext i32 %i.zr to i64
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 44
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 40
  %i.zy = load float, ptr %i.zx, align 8, !noalias !591 ; 6 uses
  %i.zz = load float, ptr %i.zw, align 4, !noalias !589 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zu, i64 48
  %i.aab = load float, ptr %i.aaa, align 8, !noalias !589
  %i.aac = fsub float %i.aab, %i.zz
  %i.aad = insertelement <2 x float> poison, float %i.zz, i64 0
  %i.aae = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaf = fsub <2 x float> %.sroa.01.0.copyload.i12, %i.aae
  %i.aag = insertelement <2 x float> poison, float %i.aac, i64 0
  %i.aah = shufflevector <2 x float> %i.aag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aai = fdiv <2 x float> %i.aaf, %i.aah        ; 2 uses
  %i.aaj = extractelement <2 x float> %i.aai, i64 0 ; 3 uses
  %i.aak = fmul float %i.zy, %i.aaj               ; 3 uses
  %i.aal = extractelement <2 x float> %i.aai, i64 1 ; 2 uses
  %i.aam = fmul float %i.zy, %i.aal               ; 3 uses
  %i.aan = call noundef float @llvm.floor.f32(float %i.aak) ; 3 uses
  %i.aao = call noundef float @llvm.ceil.f32(float %i.aam) ; 3 uses
  %i.aap = fcmp ogt float %i.aan, 0.000000e+00
  %i.aaq = select i1 %i.aap, float %i.aan, float 0.000000e+00 ; 3 uses
  %i.aar = fcmp olt float %i.aao, %i.zy
  %i.aas = select i1 %i.aar, float %i.aao, float %i.zy ; 3 uses
  %i.aat = fptosi float %i.aaq to i32
  %i.aau = fptosi float %i.aas to i32
  %i.aav = fptosi float %i.aan to i32
  %i.aaw = call noundef i32 @llvm.smax.i32(i32 %i.aav, i32 -1) ; 2 uses
  %i.aax = fptosi float %i.aao to i32
  %i.aay = fptosi float %i.zy to i32
  %i.aaz = add nsw i32 %i.aay, 1
  %i.aba = call noundef i32 @llvm.smin.i32(i32 %i.aax, i32 %i.aaz) ; 3 uses
  %i.abb = sext i32 %i.aat to i64
  %i.abc = getelementptr inbounds nuw i8, ptr %i.zu, i64 88
  %i.abd = load ptr, ptr %i.abc, align 8, !noalias !592
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zu, i64 104
  %i.abf = load i64, ptr %i.abe, align 8, !noalias !592
  %i.abg = mul i64 %i.abf, %i.zv
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abg
  %i.abi = load i32, ptr %i.abh, align 4, !noalias !592 ; 2 uses
  %i.abj = zext i32 %i.abi to i64                 ; 5 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.zu, i64 336
  %i.abl = load ptr, ptr %i.abk, align 8, !noalias !593 ; 3 uses
  %i.abm = getelementptr [56 x i8], ptr %i.abl, i64 %i.abb ; 4 uses
  %i.abn = load ptr, ptr %i.abm, align 8, !noalias !593 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abp = load i64, ptr %i.abo, align 8, !noalias !593 ; 2 uses
  %i.abq = mul i64 %i.abp, %i.abj
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.abq
  %i.abs = load <4 x float>, ptr %i.abr, align 16, !noalias !593 ; 3 uses
  %i.abt = add i32 %i.abi, 1
  %i.abu = zext i32 %i.abt to i64                 ; 5 uses
  %i.abv = mul i64 %i.abp, %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.abv
  %i.abx = load <4 x float>, ptr %i.abw, align 16, !noalias !594 ; 3 uses
  %i.aby = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.abs, <4 x float> %i.abx)
  %i.abz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abs, <4 x float> %i.abx)
  %i.aca = getelementptr inbounds nuw i8, ptr %i.zu, i64 412
  %i.acb = load float, ptr %i.aca, align 4, !noalias !595 ; 2 uses
  %i.acc = sext i32 %i.aau to i64
  %i.acd = getelementptr [56 x i8], ptr %i.abl, i64 %i.acc ; 4 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !noalias !596 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %i.acg = load i64, ptr %i.acf, align 8, !noalias !596 ; 2 uses
  %i.ach = mul i64 %i.acg, %i.abj
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.ach
  %i.acj = load <4 x float>, ptr %i.aci, align 16, !noalias !596 ; 3 uses
  %i.ack = mul i64 %i.acg, %i.abu
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.ack
  %i.acm = load <4 x float>, ptr %i.acl, align 16, !noalias !597 ; 3 uses
  %i.acn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.acj, <4 x float> %i.acm)
  %i.aco = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.acj, <4 x float> %i.acm)
  %i.acp = shufflevector <4 x float> %i.abs, <4 x float> %i.acj, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.acq = shufflevector <4 x float> %i.abx, <4 x float> %i.acm, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.acr = fcmp olt <2 x float> %i.acp, %i.acq
  %i.acs = select <2 x i1> %i.acr, <2 x float> %i.acq, <2 x float> %i.acp
  %i.act = insertelement <2 x float> poison, float %i.acb, i64 0
  %i.acu = shufflevector <2 x float> %i.act, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.acv = fmul <2 x float> %i.acs, %i.acu        ; 2 uses
  %i.acw = shufflevector <2 x float> %i.acv, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acx = fsub <4 x float> %i.aby, %i.acw        ; 3 uses
  %i.acy = fadd <4 x float> %i.abz, %i.acw        ; 3 uses
  %i.acz = shufflevector <2 x float> %i.acv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ada = fsub <4 x float> %i.acn, %i.acz        ; 3 uses
  %i.adb = fadd <4 x float> %i.aco, %i.acz        ; 3 uses
  %i.adc = sub nsw i32 %i.aba, %i.aaw
  %i.add = icmp eq i32 %i.adc, 1
  br i1 %i.add, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ade = insertelement <2 x float> poison, float %i.aak, i64 0
  %i.adf = insertelement <2 x float> %i.ade, float %i.aas, i64 1
  %i.adg = insertelement <2 x float> poison, float %i.aaq, i64 0
  %i.adh = insertelement <2 x float> %i.adg, float %i.aam, i64 1
  %i.adi = fsub <2 x float> %i.adf, %i.adh        ; 2 uses
  %i.adj = fcmp ogt <2 x float> %i.adi, zeroinitializer
  %i.adk = select <2 x i1> %i.adj, <2 x float> %i.adi, <2 x float> zeroinitializer ; 3 uses
  %i.adl = shufflevector <2 x float> %i.adk, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.adm = fmul <4 x float> %i.adl, %i.ada
  %i.adn = fsub <2 x float> splat (float 1.000000e+00), %i.adk ; 2 uses
  %i.ado = shufflevector <2 x float> %i.adn, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.adp = fmul <4 x float> %i.ado, %i.acx
  %i.adq = fadd <4 x float> %i.adp, %i.adm
  %i.adr = fmul <4 x float> %i.adl, %i.adb
  %i.ads = fmul <4 x float> %i.ado, %i.acy
  %i.adt = fadd <4 x float> %i.ads, %i.adr
  %i.adu = shufflevector <2 x float> %i.adk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.adv = fmul <4 x float> %i.adu, %i.acx
  %i.adw = shufflevector <2 x float> %i.adn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.adx = fmul <4 x float> %i.adw, %i.ada
  %i.ady = fadd <4 x float> %i.adv, %i.adx
  %i.adz = fmul <4 x float> %i.adu, %i.acy
  %i.aea = fmul <4 x float> %i.adw, %i.adb
  %i.aeb = fadd <4 x float> %i.adz, %i.aea
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.cg:                                            ; preds = %bb.ce
  %i.aec = getelementptr i8, ptr %i.abm, i64 56
  %i.aed = load ptr, ptr %i.aec, align 8, !noalias !598 ; 2 uses
  %i.aee = getelementptr i8, ptr %i.abm, i64 72
  %i.aef = load i64, ptr %i.aee, align 8, !noalias !598 ; 2 uses
  %i.aeg = mul i64 %i.aef, %i.abj
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 %i.aeg
  %i.aei = load <4 x float>, ptr %i.aeh, align 16, !noalias !598 ; 3 uses
  %i.aej = mul i64 %i.aef, %i.abu
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aed, i64 %i.aej
  %i.ael = load <4 x float>, ptr %i.aek, align 16, !noalias !599 ; 3 uses
  %i.aem = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aei, <4 x float> %i.ael)
  %i.aen = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aei, <4 x float> %i.ael)
  %i.aeo = getelementptr i8, ptr %i.acd, i64 -56
  %i.aep = load ptr, ptr %i.aeo, align 8, !noalias !600 ; 2 uses
  %i.aeq = getelementptr i8, ptr %i.acd, i64 -40
  %i.aer = load i64, ptr %i.aeq, align 8, !noalias !600 ; 2 uses
  %i.aes = mul i64 %i.aer, %i.abj
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aes
  %i.aeu = load <4 x float>, ptr %i.aet, align 16, !noalias !600 ; 3 uses
  %i.aev = mul i64 %i.aer, %i.abu
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aev
  %i.aex = load <4 x float>, ptr %i.aew, align 16, !noalias !601 ; 3 uses
  %i.aey = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aeu, <4 x float> %i.aex)
  %i.aez = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aeu, <4 x float> %i.aex)
  %i.afa = shufflevector <4 x float> %i.aei, <4 x float> %i.aeu, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.afb = shufflevector <4 x float> %i.ael, <4 x float> %i.aex, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.afc = fcmp olt <2 x float> %i.afa, %i.afb
  %i.afd = select <2 x i1> %i.afc, <2 x float> %i.afb, <2 x float> %i.afa
  %i.afe = fmul <2 x float> %i.acu, %i.afd        ; 2 uses
  %i.aff = shufflevector <2 x float> %i.afe, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afg = fsub <4 x float> %i.aem, %i.aff
  %i.afh = fadd <4 x float> %i.aen, %i.aff
  %i.afi = shufflevector <2 x float> %i.afe, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.afj = fsub <4 x float> %i.aey, %i.afi
  %i.afk = fadd <4 x float> %i.aez, %i.afi
  %i.afl = insertelement <2 x float> poison, float %i.aak, i64 0
  %i.afm = insertelement <2 x float> %i.afl, float %i.aas, i64 1
  %i.afn = insertelement <2 x float> poison, float %i.aaq, i64 0
  %i.afo = insertelement <2 x float> %i.afn, float %i.aam, i64 1
  %i.afp = fsub <2 x float> %i.afm, %i.afo        ; 2 uses
  %i.afq = fcmp ogt <2 x float> %i.afp, zeroinitializer
  %i.afr = select <2 x i1> %i.afq, <2 x float> %i.afp, <2 x float> zeroinitializer ; 3 uses
  %i.afs = shufflevector <2 x float> %i.afr, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aft = fmul <4 x float> %i.afs, %i.afg
  %i.afu = fsub <2 x float> splat (float 1.000000e+00), %i.afr ; 2 uses
  %i.afv = shufflevector <2 x float> %i.afu, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afw = fmul <4 x float> %i.afv, %i.acx
  %i.afx = fadd <4 x float> %i.afw, %i.aft        ; 2 uses
  %i.afy = fmul <4 x float> %i.afs, %i.afh
  %i.afz = fmul <4 x float> %i.afv, %i.acy
end_hunk_0
