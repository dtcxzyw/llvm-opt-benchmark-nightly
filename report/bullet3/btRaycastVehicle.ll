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
  %6 = load float, ptr %i.e, align 4, !tbaa !51
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %9 = load float, ptr %8, align 4, !tbaa !51
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load float, ptr %i.f, align 4, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 372
  %11 = load float, ptr %i.j, align 4, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 388
  %12 = load float, ptr %i.k, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 404
  %13 = load float, ptr %i.l, align 4, !tbaa !51
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 376
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 392
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 408
  %19 = load float, ptr %18, align 4, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.n = load float, ptr %i.m, align 4, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.p = load float, ptr %i.o, align 4, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.r = load float, ptr %i.q, align 4, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 452
  %i.t = load float, ptr %i.s, align 4, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load float, ptr %i.v, align 4, !tbaa !51
  %21 = load float, ptr %3, align 4, !tbaa !51    ; 2 uses
  %22 = fsub float %21, %6                        ; 4 uses
  %23 = load float, ptr %7, align 4, !tbaa !51    ; 2 uses
  %24 = fsub float %23, %9                        ; 4 uses
  %i.x = load float, ptr %10, align 4, !tbaa !51  ; 2 uses
  %25 = fsub float %i.x, %i.g                     ; 4 uses
  %26 = load float, ptr %i.h, align 4, !tbaa !51  ; 5 uses
  %i.y = load float, ptr %i.i, align 4, !tbaa !51 ; 5 uses
  %27 = fneg float %i.y                           ; 2 uses
  %28 = fmul float %25, %27
  %29 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %28) ; 3 uses
  %i.z = load float, ptr %4, align 4, !tbaa !51   ; 4 uses
  %30 = fneg float %26                            ; 2 uses
  %31 = fmul float %22, %30
  %32 = tail call float @llvm.fmuladd.f32(float %25, float %i.z, float %31) ; 3 uses
  %33 = fneg float %i.z                           ; 2 uses
  %34 = fmul float %24, %33
  %35 = tail call float @llvm.fmuladd.f32(float %22, float %i.y, float %34) ; 3 uses
  %36 = fmul float %32, %12
  %37 = tail call float @llvm.fmuladd.f32(float %11, float %29, float %36)
  %38 = tail call noundef float @llvm.fmuladd.f32(float %13, float %35, float %37) ; 2 uses
  %39 = fmul float %32, %17
  %40 = tail call float @llvm.fmuladd.f32(float %15, float %29, float %39)
  %41 = tail call noundef float @llvm.fmuladd.f32(float %19, float %35, float %40) ; 2 uses
  %42 = fmul float %32, %i.p
  %43 = tail call float @llvm.fmuladd.f32(float %i.n, float %29, float %42)
  %44 = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %35, float %43) ; 2 uses
  %i.aa = fneg float %24
  %45 = fmul float %44, %i.aa
  %46 = tail call float @llvm.fmuladd.f32(float %41, float %25, float %45)
  %i.ab = fneg float %25
  %47 = fmul float %38, %i.ab
  %48 = tail call float @llvm.fmuladd.f32(float %44, float %22, float %47)
  %i.ac = fneg float %22
  %49 = fmul float %41, %i.ac
  %50 = tail call float @llvm.fmuladd.f32(float %38, float %24, float %49)
  %51 = load float, ptr %i.u, align 4, !tbaa !51
  %52 = fsub float %21, %51                       ; 3 uses
  %53 = load float, ptr %20, align 4, !tbaa !51
  %54 = fsub float %23, %53                       ; 3 uses
  %55 = fsub float %i.x, %i.w                     ; 3 uses
  %56 = insertelement <4 x float> poison, float %i.y, i64 0
  %57 = insertelement <4 x float> %56, float %55, i64 1
  %58 = insertelement <4 x float> %57, float %52, i64 2
  %59 = insertelement <4 x float> %58, float %54, i64 3 ; 2 uses
  %60 = insertelement <4 x float> poison, float %48, i64 0
  %61 = insertelement <4 x float> %60, float %27, i64 1
  %62 = insertelement <4 x float> %61, float %30, i64 2
  %63 = insertelement <4 x float> %62, float %33, i64 3
  %64 = fmul <4 x float> %59, %63
  %65 = insertelement <4 x float> poison, float %i.z, i64 0
  %66 = insertelement <4 x float> %65, float %26, i64 1
  %67 = insertelement <4 x float> %66, float %i.y, i64 2
  %68 = shufflevector <4 x float> %67, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %69 = insertelement <4 x float> poison, float %46, i64 0
  %70 = shufflevector <4 x float> %69, <4 x float> %59, <4 x i32> <i32 0, i32 7, i32 5, i32 6>
  %71 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %68, <4 x float> %70, <4 x float> %64) ; 4 uses
  %72 = getelementptr inbounds nuw i8, ptr %2, i64 372
  %73 = load float, ptr %72, align 4, !tbaa !51
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 388
  %75 = load float, ptr %74, align 4, !tbaa !51
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 404
  %77 = load float, ptr %76, align 4, !tbaa !51
  %78 = extractelement <4 x float> %71, i64 3     ; 3 uses
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 376
  %80 = getelementptr inbounds nuw i8, ptr %2, i64 392
  %81 = getelementptr inbounds nuw i8, ptr %2, i64 408
  %82 = load float, ptr %81, align 4, !tbaa !51
  %83 = load <2 x float>, ptr %79, align 4, !tbaa !51
  %i.ad = load <2 x float>, ptr %80, align 4, !tbaa !51
  %84 = insertelement <4 x float> %71, float %75, i64 1
  %85 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %86 = shufflevector <4 x float> %84, <4 x float> %85, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %87 = shufflevector <4 x float> %71, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 2, i32 2, i32 2>
  %88 = fmul <4 x float> %86, %87
  %89 = insertelement <4 x float> poison, float %26, i64 0
  %90 = insertelement <4 x float> %89, float %73, i64 1
  %91 = shufflevector <2 x float> %83, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %92 = shufflevector <4 x float> %90, <4 x float> %91, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %93 = insertelement <4 x float> poison, float %50, i64 0
  %94 = shufflevector <4 x float> %93, <4 x float> %71, <4 x i32> <i32 0, i32 5, i32 5, i32 5>
  %95 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %92, <4 x float> %94, <4 x float> %88) ; 4 uses
  %96 = extractelement <4 x float> %95, i64 0
  %97 = fadd float %i.t, %96
  %98 = extractelement <4 x float> %95, i64 1
  %99 = tail call noundef float @llvm.fmuladd.f32(float %77, float %78, float %98) ; 2 uses
  %100 = extractelement <4 x float> %95, i64 2
  %101 = tail call noundef float @llvm.fmuladd.f32(float %82, float %78, float %100) ; 2 uses
  %102 = getelementptr inbounds nuw i8, ptr %2, i64 412
  %103 = load float, ptr %102, align 4, !tbaa !51
  %104 = extractelement <4 x float> %95, i64 3
  %105 = tail call noundef float @llvm.fmuladd.f32(float %103, float %78, float %104) ; 2 uses
  %106 = fneg float %54
  %107 = fmul float %105, %106
  %108 = tail call float @llvm.fmuladd.f32(float %101, float %55, float %107)
  %109 = fneg float %55
  %110 = fmul float %99, %109
  %111 = tail call float @llvm.fmuladd.f32(float %105, float %52, float %110)
  %112 = fneg float %52
  %113 = fmul float %101, %112
  %114 = tail call float @llvm.fmuladd.f32(float %99, float %54, float %113)
  %115 = getelementptr inbounds nuw i8, ptr %2, i64 452
  %116 = load float, ptr %115, align 4, !tbaa !79
  %117 = fmul float %i.y, %111
  %118 = tail call float @llvm.fmuladd.f32(float %i.z, float %108, float %117)
  %119 = tail call noundef float @llvm.fmuladd.f32(float %26, float %114, float %118)
  %120 = fadd float %116, %119
  %121 = fadd float %97, %120
  %i.ae = fdiv float 1.000000e+00, %121
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
