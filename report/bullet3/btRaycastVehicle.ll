Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btRaycastVehicle?download=true
inline.NumInlined: 513
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16btRaycastVehicle14updateFrictionEf:bb.a

bb.z:                                             ; preds = %bb.y
  %i.rb = getelementptr inbounds nuw [296 x i8], ptr %i.qt, i64 %indvars.iv259
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 292 ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !132 ; 2 uses
  %i.re = fcmp olt float %i.rd, 1.000000e+00
  br i1 %i.re, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv259 ; 2 uses
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !51
  %i.rh = fmul float %i.rd, %i.rg
  store float %i.rh, ptr %i.rf, align 4, !tbaa !51
  %i.ri = load float, ptr %i.rc, align 4, !tbaa !132
  %i.rj = load float, ptr %i.qy, align 4, !tbaa !51
  %i.rk = fmul float %i.ri, %i.rj
  store float %i.rk, ptr %i.qy, align 4, !tbaa !51
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count263
  br i1 %exitcond264.not, label %.loopexit234, label %bb.y, !llvm.loop !127

.loopexit234:                                     ; preds = %bb.ab, %._crit_edge
  %i.rl = icmp sgt i32 %i.qv, 0
  br i1 %i.rl, label %.lr.ph250, label %.loopexit

.lr.ph250:                                        ; preds = %.loopexit234
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.rt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.rx = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph250, %bb.ag
  %indvars.iv265 = phi i64 [ 0, %.lr.ph250 ], [ %indvars.iv.next266, %bb.ag ] ; 7 uses
  %i.ry = load ptr, ptr %i.rm, align 8, !tbaa !43
  %i.rz = getelementptr inbounds nuw [296 x i8], ptr %i.ry, i64 %indvars.iv265 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 2 uses
  %i.sb = load ptr, ptr %i.rn, align 8, !tbaa !46 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 56
  %i.sd = load <2 x float>, ptr %i.sa, align 4, !tbaa !51
  %i.se = load <2 x float>, ptr %i.sc, align 4, !tbaa !51
  %i.sf = fsub <2 x float> %i.sd, %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 24 ; 2 uses
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !51
  %i.si = getelementptr inbounds nuw i8, ptr %i.sb, i64 64
  %i.sj = load float, ptr %i.si, align 4, !tbaa !51
  %i.sk = fsub float %i.sh, %i.sj
  %.sroa.3.12.vec.insert.i188 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sk, i64 0
  store <2 x float> %i.sf, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i188, ptr %i.ro, align 8
  %i.sl = load ptr, ptr %i.rp, align 8, !tbaa !30
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv265 ; 2 uses
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !51
  %i.so = fcmp une float %i.sn, 0.000000e+00
  br i1 %i.so, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.sp = load ptr, ptr %i.rq, align 8, !tbaa !23
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sp, i64 %indvars.iv265 ; 2 uses
  %i.sr = load float, ptr %i.sm, align 4, !tbaa !51 ; 2 uses
  %i.ss = load <2 x float>, ptr %i.sq, align 4, !tbaa !51
  %i.st = insertelement <2 x float> poison, float %i.sr, i64 0
  %i.su = shufflevector <2 x float> %i.st, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sv = fmul <2 x float> %i.su, %i.ss
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !51
  %i.sy = fmul float %i.sr, %i.sx
  %.sroa.3.12.vec.insert.i193 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sy, i64 0
  store <2 x float> %i.sv, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i193, ptr %i.rr, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.sb, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.sz = load ptr, ptr %i.rs, align 8, !tbaa !30
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %indvars.iv265 ; 2 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !51
  %i.tc = fcmp une float %i.tb, 0.000000e+00
  br i1 %i.tc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.td = load ptr, ptr %i.rm, align 8, !tbaa !43
  %i.te = getelementptr inbounds nuw [296 x i8], ptr %i.td, i64 %indvars.iv265
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 88
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 56
  %i.ti = load <2 x float>, ptr %i.sa, align 4, !tbaa !51
  %i.tj = load <2 x float>, ptr %i.th, align 4, !tbaa !51
  %i.tk = fsub <2 x float> %i.ti, %i.tj
  %i.tl = load float, ptr %i.sg, align 4, !tbaa !51
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 64
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !51
  %i.to = fsub float %i.tl, %i.tn
  %.sroa.3.12.vec.insert.i198 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.to, i64 0
  store <2 x float> %i.tk, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i198, ptr %i.rt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.tp = load ptr, ptr %i.ru, align 8, !tbaa !23
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %indvars.iv265 ; 2 uses
  %i.tr = load float, ptr %i.ta, align 4, !tbaa !51 ; 2 uses
  %i.ts = load <2 x float>, ptr %i.tq, align 4, !tbaa !51
  %i.tt = insertelement <2 x float> poison, float %i.tr, i64 0
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tv = fmul <2 x float> %i.tu, %i.ts
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !51
  %i.ty = fmul float %i.tr, %i.tx
  %.sroa.3.12.vec.insert.i203 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ty, i64 0
  store <2 x float> %i.tv, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i203, ptr %i.rv, align 8
  %i.tz = load ptr, ptr %i.rn, align 8, !tbaa !46 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load i32, ptr %i.rw, align 4, !tbaa !48
  %i.uc = sext i32 %i.ub to i64                   ; 3 uses
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.uc
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.ug, i64 %i.uc
  %i.ui = load float, ptr %i.ud, align 4, !tbaa !51 ; 2 uses
  %i.uj = load float, ptr %i.uf, align 4, !tbaa !51 ; 2 uses
  %i.uk = load float, ptr %i.uh, align 4, !tbaa !51 ; 2 uses
  %i.ul = load float, ptr %i.ro, align 8, !tbaa !51 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.rz, i64 248
  %i.un = load float, ptr %i.um, align 8, !tbaa !134
  %i.uo = fsub float 1.000000e+00, %i.un
  %i.up = load <2 x float>, ptr %4, align 8, !tbaa !51 ; 3 uses
  %i.uq = extractelement <2 x float> %i.up, i64 1
  %i.ur = fmul float %i.uj, %i.uq
  %i.us = extractelement <2 x float> %i.up, i64 0
  %i.ut = call float @llvm.fmuladd.f32(float %i.ui, float %i.us, float %i.ur)
  %i.uu = call noundef float @llvm.fmuladd.f32(float %i.uk, float %i.ul, float %i.ut)
  %i.uv = fmul float %i.uu, %i.uo                 ; 2 uses
  %i.uw = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.ux = insertelement <2 x float> %i.uw, float %i.uj, i64 1
  %i.uy = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.uz = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.va = fmul <2 x float> %i.ux, %i.uz
  %i.vb = fmul float %i.uk, %i.uv
  %i.vc = fsub <2 x float> %i.up, %i.va
  store <2 x float> %i.vc, ptr %4, align 8, !tbaa !51
  %i.vd = fsub float %i.ul, %i.vb
  store float %i.vd, ptr %i.ro, align 8, !tbaa !51
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.tz, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ve = load <2 x float>, ptr %7, align 8, !tbaa !51
  %i.vf = fneg <2 x float> %i.ve
  %i.vg = load float, ptr %i.rv, align 8, !tbaa !51
  %i.vh = fneg float %i.vg
  %.sroa.3.12.vec.insert.i218 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vh, i64 0
  store <2 x float> %i.vf, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i218, ptr %i.rx, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.tg, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.vi = load i32, ptr %i.a, align 4, !tbaa !44
  %i.vj = sext i32 %i.vi to i64
  %i.vk = icmp slt i64 %indvars.iv.next266, %i.vj
  br i1 %i.vk, label %bb.ac, label %.loopexit, !llvm.loop !128

.loopexit:                                        ; preds = %bb.ag, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit175, %.preheader235, %.loopexit234, %bb.a
  ret void
}

declare void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !85
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %5, ptr %i.d, align 4, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load float, ptr %i.f, align 4, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.n = load float, ptr %i.m, align 4, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.p = load float, ptr %i.o, align 4, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.r = load float, ptr %i.q, align 4, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 452
  %i.t = load float, ptr %i.s, align 4, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load float, ptr %i.v, align 4, !tbaa !51
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 372
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 388
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 404
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 380
  %i.x = load float, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 396
  %i.y = load float, ptr %10, align 4, !tbaa !51
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 412
  %i.z = load float, ptr %11, align 4, !tbaa !51
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 452
  %13 = load float, ptr %12, align 4, !tbaa !79
  %14 = load <1 x float>, ptr %3, align 4
  %15 = load <2 x float>, ptr %3, align 4
  %16 = load <2 x float>, ptr %i.e, align 4, !tbaa !51 ; 2 uses
  %17 = load <4 x float>, ptr %3, align 4
  %18 = load float, ptr %i.h, align 4, !tbaa !51  ; 2 uses
  %19 = load float, ptr %i.i, align 4, !tbaa !51  ; 2 uses
  %i.aa = fneg float %19
  %20 = load float, ptr %4, align 4, !tbaa !51    ; 2 uses
  %i.ab = fneg float %18
  %i.ac = fneg float %20
  %21 = load <2 x float>, ptr %i.j, align 4, !tbaa !51 ; 2 uses
  %22 = load <2 x float>, ptr %i.k, align 4, !tbaa !51 ; 2 uses
  %23 = load <2 x float>, ptr %i.l, align 4, !tbaa !51 ; 2 uses
  %24 = load <2 x float>, ptr %i.u, align 4, !tbaa !51 ; 2 uses
  %25 = shufflevector <1 x float> %14, <1 x float> poison, <2 x i32> zeroinitializer
  %26 = shufflevector <2 x float> %16, <2 x float> %24, <2 x i32> <i32 0, i32 2>
  %27 = fsub <2 x float> %25, %26                 ; 4 uses
  %28 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %29 = shufflevector <2 x float> %16, <2 x float> %24, <2 x i32> <i32 1, i32 3>
  %30 = fsub <2 x float> %28, %29                 ; 4 uses
  %31 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %32 = insertelement <2 x float> poison, float %i.g, i64 0
  %33 = insertelement <2 x float> %32, float %i.w, i64 1
  %34 = fsub <2 x float> %31, %33                 ; 4 uses
  %35 = insertelement <2 x float> poison, float %i.aa, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = fmul <2 x float> %34, %36
  %38 = insertelement <2 x float> poison, float %18, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %39, <2 x float> %37) ; 3 uses
  %41 = insertelement <2 x float> poison, float %i.ab, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = fmul <2 x float> %27, %42
  %44 = insertelement <2 x float> poison, float %20, i64 0
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %46 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> %45, <2 x float> %43) ; 3 uses
  %47 = insertelement <2 x float> poison, float %i.ac, i64 0
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> zeroinitializer
  %49 = fmul <2 x float> %30, %48
  %50 = insertelement <2 x float> poison, float %19, i64 0
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %52 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %51, <2 x float> %49) ; 3 uses
  %53 = load <2 x float>, ptr %7, align 4, !tbaa !51 ; 2 uses
  %54 = shufflevector <2 x float> %22, <2 x float> %53, <2 x i32> <i32 0, i32 2>
  %55 = fmul <2 x float> %46, %54
  %i.ad = load <2 x float>, ptr %6, align 4, !tbaa !51 ; 2 uses
  %56 = shufflevector <2 x float> %21, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %57 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %40, <2 x float> %55)
  %58 = load <2 x float>, ptr %8, align 4, !tbaa !51 ; 2 uses
  %59 = shufflevector <2 x float> %23, <2 x float> %58, <2 x i32> <i32 0, i32 2>
  %60 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %59, <2 x float> %52, <2 x float> %57) ; 2 uses
  %61 = shufflevector <2 x float> %22, <2 x float> %53, <2 x i32> <i32 1, i32 3>
  %62 = fmul <2 x float> %46, %61
  %63 = shufflevector <2 x float> %21, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %64 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> %40, <2 x float> %62)
  %65 = shufflevector <2 x float> %23, <2 x float> %58, <2 x i32> <i32 1, i32 3>
  %66 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> %52, <2 x float> %64) ; 2 uses
  %67 = insertelement <2 x float> poison, float %i.p, i64 0
  %68 = insertelement <2 x float> %67, float %i.y, i64 1
  %69 = fmul <2 x float> %46, %68
  %70 = insertelement <2 x float> poison, float %i.n, i64 0
  %71 = insertelement <2 x float> %70, float %i.x, i64 1
  %72 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> %40, <2 x float> %69)
  %73 = insertelement <2 x float> poison, float %i.r, i64 0
  %74 = insertelement <2 x float> %73, float %i.z, i64 1
  %75 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %74, <2 x float> %52, <2 x float> %72) ; 2 uses
  %76 = fneg <2 x float> %30
  %77 = fmul <2 x float> %75, %76
  %78 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %34, <2 x float> %77)
  %79 = fneg <2 x float> %34
  %80 = fmul <2 x float> %60, %79
  %81 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %75, <2 x float> %27, <2 x float> %80)
  %82 = fneg <2 x float> %27
  %83 = fmul <2 x float> %66, %82
  %84 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %30, <2 x float> %83)
  %85 = fmul <2 x float> %51, %81
  %86 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %45, <2 x float> %78, <2 x float> %85)
  %87 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %39, <2 x float> %84, <2 x float> %86)
  %88 = insertelement <2 x float> poison, float %i.t, i64 0
  %89 = insertelement <2 x float> %88, float %13, i64 1
  %90 = fadd <2 x float> %89, %87                 ; 2 uses
  %shift = shufflevector <2 x float> %90, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %90, %shift
  %91 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ae = fdiv float 1.000000e+00, %91
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ae, ptr %i.af, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 7 uses
  %3 = alloca %class.btVector3, align 8           ; 7 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw [296 x i8], ptr %i.j, i64 %indvars.iv ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.m = load i8, ptr %i.l, align 4, !tbaa !61, !range !18, !noundef !55
  %i.n = trunc nuw i8 %i.m to i1
  %. = select i1 %i.n, float 0.000000e+00, float 1.000000e+00
  store float %., ptr %2, align 4, !tbaa !51
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.d, align 4, !tbaa !51
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !53
  %i.q = load i32, ptr %i.g, align 8, !tbaa !47
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.r
  %i.x = load float, ptr %i.s, align 4, !tbaa !51
  %i.y = load float, ptr %i.u, align 4, !tbaa !51
  %i.z = load float, ptr %i.w, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = load <2 x float>, ptr %3, align 8, !tbaa !51
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.y, i64 1
  %i.ad = fadd <2 x float> %i.ac, %i.aa
  %i.ae = load float, ptr %i.h, align 8, !tbaa !51
  %i.af = fadd float %i.z, %i.ae
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %i.ad, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.ag = load ptr, ptr %1, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw [296 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %1, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !44
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !135
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(36) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.btCollisionWorld::ClosestRayResultCallback", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 -1, ptr %i.d, align 4, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !136
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN16btCollisionWorld24ClosestRayResultCallbackE, i64 16), ptr %4, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !53
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(121) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %4)
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !92   ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.o = load i32, ptr %i.n, align 8, !tbaa !141
  %i.p = and i32 %i.o, 2
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.r = load i32, ptr %i.q, align 8, !tbaa !142
  %i.s = and i32 %i.r, 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !53
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !53
  %i.x = load float, ptr %i.w, align 4, !tbaa !51 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !51 ; 3 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !51 ; 3 uses
  %i.ae = call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ab)
  %i.af = call noundef float @sqrtf(float noundef %i.ae) #20
  %i.ag = fdiv float 1.000000e+00, %i.af          ; 3 uses
  %i.ah = fmul float %i.x, %i.ag
  store float %i.ah, ptr %i.w, align 4, !tbaa !51
  %i.ai = fmul float %i.z, %i.ag
  store float %i.ai, ptr %i.y, align 4, !tbaa !51
  %i.aj = fmul float %i.ad, %i.ag
  store float %i.aj, ptr %i.ac, align 4, !tbaa !51
  %i.ak = load float, ptr %i.a, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.ak, ptr %i.al, align 4, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c, %.critedge
  %.1 = phi ptr [ %i.m, %.critedge ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld17RayResultCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18btVehicleRaycasterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25btDefaultVehicleRaycasterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, float noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btRaycastVehicle19setCoordinateSystemEiii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %1, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %2, ptr %i.b, align 4, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %3, ptr %i.c, align 8, !tbaa !49
end_hunk_0
