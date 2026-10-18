Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btRaycastVehicle?download=true
inline.NumInlined: 494
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16btRaycastVehicle14updateFrictionEf:bb.a
  %i.ol = load ptr, ptr %i.fs, align 8, !tbaa !28 ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv227
  store float 0.000000e+00, ptr %i.om, align 4, !tbaa !49
  %i.on = getelementptr inbounds nuw i8, ptr %i.jt, i64 284
  store float 1.000000e+00, ptr %i.on, align 4, !tbaa !108
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.critedge
  %i.oo = phi ptr [ %i.ol, %.critedge ], [ %i.np, %bb.v ], [ %i.np, %bb.w ]
  %i.op = phi ptr [ %i.jr, %.critedge ], [ %i.no, %bb.v ], [ %i.no, %bb.w ] ; 2 uses
  %i.oq = phi ptr [ %i.js, %.critedge ], [ %i.no, %bb.v ], [ %i.no, %bb.w ]
  %.2 = phi i1 [ %.0107214, %.critedge ], [ %.0107214, %bb.v ], [ true, %bb.w ] ; 2 uses
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.or = load i32, ptr %i.a, align 4, !tbaa !42  ; 4 uses
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp slt i64 %indvars.iv.next228, %i.os
  br i1 %i.ot, label %bb.r, label %._crit_edge

bb.y:                                             ; preds = %.lr.ph219, %bb.ab
  %indvars.iv229 = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next230, %bb.ab ] ; 4 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv229 ; 3 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !49
  %i.ow = fcmp une float %i.ov, 0.000000e+00
  br i1 %i.ow, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ox = getelementptr inbounds nuw [288 x i8], ptr %i.op, i64 %indvars.iv229
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 284 ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !108 ; 2 uses
  %i.pa = fcmp olt float %i.oz, 1.000000e+00
  br i1 %i.pa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv229 ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !49
  %i.pd = fmul float %i.oz, %i.pc
  store float %i.pd, ptr %i.pb, align 4, !tbaa !49
  %i.pe = load float, ptr %i.oy, align 4, !tbaa !108
  %i.pf = load float, ptr %i.ou, align 4, !tbaa !49
  %i.pg = fmul float %i.pe, %i.pf
  store float %i.pg, ptr %i.ou, align 4, !tbaa !49
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next230, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit208, label %bb.y

.loopexit208:                                     ; preds = %bb.ab, %._crit_edge
  %i.ph = icmp sgt i32 %i.or, 0
  br i1 %i.ph, label %.lr.ph222, label %.loopexit

.lr.ph222:                                        ; preds = %.loopexit208
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.pp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.pt = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph222, %bb.ag
  %indvars.iv233 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next234, %bb.ag ] ; 7 uses
  %i.pu = load ptr, ptr %i.pi, align 8, !tbaa !41
  %i.pv = getelementptr inbounds nuw [288 x i8], ptr %i.pu, i64 %indvars.iv233 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  %i.px = load ptr, ptr %i.pj, align 8, !tbaa !44 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 56
  %i.pz = load <2 x float>, ptr %i.pw, align 4, !tbaa !49
  %i.qa = load <2 x float>, ptr %i.py, align 4, !tbaa !49
  %i.qb = fsub <2 x float> %i.pz, %i.qa
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 24 ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !49
  %i.qe = getelementptr inbounds nuw i8, ptr %i.px, i64 64
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !49
  %i.qg = fsub float %i.qd, %i.qf
  %.sroa.3.12.vec.insert.i180 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qg, i64 0
  store <2 x float> %i.qb, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i180, ptr %i.pk, align 8
  %i.qh = load ptr, ptr %i.pl, align 8, !tbaa !28
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %indvars.iv233 ; 2 uses
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !49
  %i.qk = fcmp une float %i.qj, 0.000000e+00
  br i1 %i.qk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ql = load ptr, ptr %i.pm, align 8, !tbaa !21
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %indvars.iv233 ; 2 uses
  %i.qn = load float, ptr %i.qi, align 4, !tbaa !49 ; 2 uses
  %i.qo = load <2 x float>, ptr %i.qm, align 4, !tbaa !49
  %i.qp = insertelement <2 x float> poison, float %i.qn, i64 0
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qr = fmul <2 x float> %i.qq, %i.qo
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !49
  %i.qu = fmul float %i.qn, %i.qt
  %.sroa.3.12.vec.insert.i185 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qu, i64 0
  store <2 x float> %i.qr, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i185, ptr %i.pn, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.px, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.qv = load ptr, ptr %i.po, align 8, !tbaa !28
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv233 ; 2 uses
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !49
  %i.qy = fcmp une float %i.qx, 0.000000e+00
  br i1 %i.qy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qz = load ptr, ptr %i.pi, align 8, !tbaa !41
  %i.ra = getelementptr inbounds nuw [288 x i8], ptr %i.qz, i64 %indvars.iv233
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 88
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !70 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 56
  %i.re = load <2 x float>, ptr %i.pw, align 4, !tbaa !49
  %i.rf = load <2 x float>, ptr %i.rd, align 4, !tbaa !49
  %i.rg = fsub <2 x float> %i.re, %i.rf
  %i.rh = load float, ptr %i.qc, align 4, !tbaa !49
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 64
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !49
  %i.rk = fsub float %i.rh, %i.rj
  %.sroa.3.12.vec.insert.i190 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rk, i64 0
  store <2 x float> %i.rg, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i190, ptr %i.pp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.rl = load ptr, ptr %i.pq, align 8, !tbaa !21
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.rl, i64 %indvars.iv233 ; 2 uses
  %i.rn = load float, ptr %i.qw, align 4, !tbaa !49 ; 2 uses
  %i.ro = load <2 x float>, ptr %i.rm, align 4, !tbaa !49
  %i.rp = insertelement <2 x float> poison, float %i.rn, i64 0
  %i.rq = shufflevector <2 x float> %i.rp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rr = fmul <2 x float> %i.rq, %i.ro
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !49
  %i.ru = fmul float %i.rn, %i.rt
  %.sroa.3.12.vec.insert.i195 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ru, i64 0
  store <2 x float> %i.rr, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i195, ptr %i.pr, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pv, i64 248
  %i.rw = load float, ptr %i.rv, align 8, !tbaa !110
  %i.rx = load i32, ptr %i.ps, align 4, !tbaa !46
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ry ; 2 uses
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !49
  %i.sb = fmul float %i.rw, %i.sa
  store float %i.sb, ptr %i.rz, align 4, !tbaa !49
  %i.sc = load ptr, ptr %i.pj, align 8, !tbaa !44
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.sc, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.sd = load <2 x float>, ptr %7, align 8, !tbaa !49
  %i.se = fneg <2 x float> %i.sd
  %i.sf = load float, ptr %i.pr, align 8, !tbaa !49
  %i.sg = fneg float %i.sf
  %.sroa.3.12.vec.insert.i200 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sg, i64 0
  store <2 x float> %i.se, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i200, ptr %i.pt, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.rc, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.sh = load i32, ptr %i.a, align 4, !tbaa !42
  %i.si = sext i32 %i.sh to i64
  %i.sj = icmp slt i64 %indvars.iv.next234, %i.si
  br i1 %i.sj, label %bb.ac, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit172, %.preheader209, %.loopexit208, %bb.a
  ret void
}

declare void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), float noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %5, ptr %i.d, align 4, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load float, ptr %i.f, align 4, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.n = load float, ptr %i.m, align 4, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.p = load float, ptr %i.o, align 4, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.r = load float, ptr %i.q, align 4, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.t = load float, ptr %i.s, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load float, ptr %i.v, align 4, !tbaa !49
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 280
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 296
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 312
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.x = load float, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.y = load float, ptr %10, align 4, !tbaa !49
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.z = load float, ptr %11, align 4, !tbaa !49
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 360
  %13 = load float, ptr %12, align 8, !tbaa !73
  %14 = load <1 x float>, ptr %3, align 4
  %15 = load <2 x float>, ptr %3, align 4
  %16 = load <2 x float>, ptr %i.e, align 8, !tbaa !49 ; 2 uses
  %17 = load <4 x float>, ptr %3, align 4
  %18 = load float, ptr %i.h, align 4, !tbaa !49  ; 2 uses
  %19 = load float, ptr %i.i, align 4, !tbaa !49  ; 2 uses
  %i.aa = fneg float %19
  %20 = load float, ptr %4, align 4, !tbaa !49    ; 2 uses
  %i.ab = fneg float %18
  %i.ac = fneg float %20
  %21 = load <2 x float>, ptr %i.j, align 8, !tbaa !49 ; 2 uses
  %22 = load <2 x float>, ptr %i.k, align 8, !tbaa !49 ; 2 uses
  %23 = load <2 x float>, ptr %i.l, align 8, !tbaa !49 ; 2 uses
  %24 = load <2 x float>, ptr %i.u, align 8, !tbaa !49 ; 2 uses
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
  %53 = load <2 x float>, ptr %7, align 8, !tbaa !49 ; 2 uses
  %54 = shufflevector <2 x float> %22, <2 x float> %53, <2 x i32> <i32 0, i32 2>
  %55 = fmul <2 x float> %46, %54
  %i.ad = load <2 x float>, ptr %6, align 8, !tbaa !49 ; 2 uses
  %56 = shufflevector <2 x float> %21, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %57 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %40, <2 x float> %55)
  %58 = load <2 x float>, ptr %8, align 8, !tbaa !49 ; 2 uses
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
  store float %i.ae, ptr %i.af, align 8, !tbaa !82
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 7 uses
  %3 = alloca %class.btVector3, align 8           ; 7 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
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
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw [288 x i8], ptr %i.j, i64 %indvars.iv ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.m = load i8, ptr %i.l, align 4, !tbaa !58, !range !16, !noundef !52
  %i.n = trunc nuw i8 %i.m to i1
  %. = select i1 %i.n, float 0.000000e+00, float 2.550000e+02
  store float %., ptr %2, align 4, !tbaa !49
  store <2 x float> <float 0.000000e+00, float 2.550000e+02>, ptr %i.d, align 4, !tbaa !49
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !51
  %i.q = load i32, ptr %i.g, align 8, !tbaa !45
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.r
  %i.x = load float, ptr %i.s, align 4, !tbaa !49
  %i.y = load float, ptr %i.u, align 4, !tbaa !49
  %i.z = load float, ptr %i.w, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = load <2 x float>, ptr %3, align 8, !tbaa !49
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.y, i64 1
  %i.ad = fadd <2 x float> %i.ac, %i.aa
  %i.ae = load float, ptr %i.h, align 8, !tbaa !49
  %i.af = fadd float %i.z, %i.ae
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %i.ad, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.ag = load ptr, ptr %1, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw [288 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %1, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !42
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(36) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.btCollisionWorld::ClosestRayResultCallback", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 1, ptr %i.c, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 -1, ptr %i.d, align 2, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.e, align 4, !tbaa !111
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN16btCollisionWorld24ClosestRayResultCallbackE, i64 16), ptr %4, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !51
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !51
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115
  call void @_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(129) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !87   ; 4 uses
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = load i32, ptr %i.k, align 8, !tbaa !116
  %.not = icmp eq i32 %i.l, 2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.n = load i32, ptr %i.m, align 8, !tbaa !117
  %i.o = and i32 %i.n, 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !51
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !51
  %i.t = load float, ptr %i.s, align 4, !tbaa !49 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !49 ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !49 ; 3 uses
  %i.aa = call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x)
  %i.ab = call noundef float @sqrtf(float noundef %i.aa) #20, !tbaa !7
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 3 uses
  %i.ad = fmul float %i.t, %i.ac
  store float %i.ad, ptr %i.s, align 4, !tbaa !49
  %i.ae = fmul float %i.v, %i.ac
  store float %i.ae, ptr %i.u, align 4, !tbaa !49
  %i.af = fmul float %i.z, %i.ac
  store float %i.af, ptr %i.y, align 4, !tbaa !49
  %i.ag = load float, ptr %i.a, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.ag, ptr %i.ah, align 4, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c, %.critedge
  %.1 = phi ptr [ %i.j, %.critedge ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.1
}

declare void @_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld17RayResultCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN18btVehicleRaycasterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN25btDefaultVehicleRaycasterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, float noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btRaycastVehicle19setCoordinateSystemEiii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %2, ptr %i.b, align 4, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %3, ptr %i.c, align 8, !tbaa !47
  ret void
}
end_hunk_0
