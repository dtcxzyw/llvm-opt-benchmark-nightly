inline.NumInlined: 433
inline.NumDeleted: 73
begin_hunk_0_@_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b:.preheader25.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(140) %i.o, i8 0, i64 48, i1 false)
  store <2 x float> <float f0x3F333333, float 1.000000e+00>, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 784
  store float 5.000000e-01, ptr %i.s, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 788
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.t, i8 0, i64 3, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.p, i8 0, i64 12, i1 false), !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, i8 0, i64 12, i1 false), !tbaa !10
  %.ptr17 = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 884
  store <4 x float> <float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 1.000000e-01>, ptr %.ptr17, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 900
  store float 0.000000e+00, ptr %i.w, align 4, !tbaa !17
  store <4 x float> <float 3.000000e+02, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>, ptr %i.v, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 0, ptr %i.x, align 4, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i8 0, ptr %i.z, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 936
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.u, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 952
  store <2 x float> <float 5.000000e-01, float 0.000000e+00>, ptr %i.ac, align 8, !tbaa !10
  store <4 x float> <float 1.000000e-01, float 3.000000e+02, float 1.000000e+00, float 5.000000e-01>, ptr %i.ab, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 0, ptr %i.ad, align 4, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 964
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i8 0, ptr %i.af, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store float 0.000000e+00, ptr %i.ag, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 992
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.aa, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store <2 x float> <float 5.000000e-01, float 0.000000e+00>, ptr %i.ai, align 8, !tbaa !10
  store <4 x float> <float 1.000000e-01, float 3.000000e+02, float 1.000000e+00, float 5.000000e-01>, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 0, ptr %i.aj, align 4, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i8 0, ptr %i.al, align 8, !tbaa !21
  %i.am = zext i1 %5 to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i8 %i.am, ptr %i.an, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1265
  store i8 0, ptr %i.ao, align 1, !tbaa !31
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z15btGetMatrixElemRK11btMatrix3x3i(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = srem i32 %1, 3
  %i.b = sdiv i32 %1, 3
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %0, i64 %i.c
  %i.e = sext i32 %i.b to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  ret float %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef zeroext i1 @_Z16matrixToEulerXYZRK11btMatrix3x3R9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 12)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.c = fcmp olt float %i.b, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ogt float %i.b, -1.000000e+00
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = fneg float %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = tail call noundef float @atan2f(float noundef %i.g, float noundef %i.i) #19, !tbaa !4
  store float %i.j, ptr %1, align 4, !tbaa !10
  %i.k = load float, ptr %i.a, align 4, !tbaa !10
  %i.l = tail call noundef float @asinf(float noundef %i.k) #19, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.l, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = fneg float %i.o
  %i.q = load float, ptr %0, align 4, !tbaa !10
  %i.r = tail call noundef float @atan2f(float noundef %i.p, float noundef %i.q) #19, !tbaa !4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !10
  %i.w = tail call noundef float @atan2f(float noundef %i.t, float noundef %i.v) #19, !tbaa !4
  %i.x = fneg float %i.w
  store float %i.x, ptr %1, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float f0xBFC90FDB, ptr %i.y, align 4, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !10
  %i.ad = tail call noundef float @atan2f(float noundef %i.aa, float noundef %i.ac) #19, !tbaa !4
  store float %i.ad, ptr %1, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float f0x3FC90FDB, ptr %i.ae, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ %i.r, %bb.c ]
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sink, ptr %i.af, align 4, !tbaa !10
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN22btRotationalLimitMotor14testLimitValueEf(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(56) initializes((48, 52)) %0, float noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !34   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !35 ; 3 uses
  %i.d = fcmp ogt float %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 4, !tbaa !19
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = fcmp olt float %1, %i.a
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.g, align 4, !tbaa !19
  %i.h = fsub float %1, %i.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.h, ptr %i.i, align 4, !tbaa !20
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = fcmp ogt float %1, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.k, align 4, !tbaa !19
  %i.l = fsub float %1, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.l, ptr %i.m, align 4, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.d ], [ 2, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(56) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %7) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i8, ptr %i.d, align 4, !range !36
  %8 = icmp ne i8 %i.e, 0
  %or.cond.not.i = select i1 %i.c, i1 true, i1 %8
  br i1 %or.cond.not.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !38
  %i.k = fneg float %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = fmul float %i.m, %i.k
  %i.o = fdiv float %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.040.in = phi ptr [ %i.p, %bb.c ], [ %i.h, %bb.b ]
  %.039 = phi float [ %i.o, %bb.c ], [ %i.g, %bb.b ]
  %.040 = load float, ptr %.040.in, align 4, !tbaa !10
  %i.q = fmul float %1, %.040                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load <2 x float>, ptr %i.t, align 4, !tbaa !10
  %i.w = load <2 x float>, ptr %i.u, align 8, !tbaa !10
  %i.x = fadd <2 x float> %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.z = load float, ptr %i.y, align 4, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !10
  %i.ac = fadd float %i.z, %i.ab
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ac, i64 0
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit: ; preds = %bb.d, %bb.e
  %.sroa.083.0 = phi <2 x float> [ %i.x, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %.sroa.684.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i, %bb.e ], [ zeroinitializer, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 3 uses
  %.not.i44 = icmp eq ptr %i.ae, null
  br i1 %.not.i44, label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49, label %bb.f

bb.f:                                             ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 344
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !10
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !tbaa !10
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.an = load float, ptr %i.am, align 8, !tbaa !10
  %i.ao = fadd float %i.al, %i.an
  %.sroa.3.12.vec.insert.i.i47 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  br label %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49

_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49: ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit, %bb.f
  %.sroa.081.0 = phi <2 x float> [ %i.aj, %bb.f ], [ zeroinitializer, %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit ] ; 2 uses
  %.sroa.682.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i47, %bb.f ], [ zeroinitializer, %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit ]
  %foldExtExtBinop = fsub <2 x float> %.sroa.083.0, %.sroa.081.0
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop89 = fsub <2 x float> %.sroa.083.0, %.sroa.081.0
  %i.aq = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %foldExtExtBinop91 = fsub <2 x float> %.sroa.684.0, %.sroa.682.0
  %i.ar = extractelement <2 x float> %foldExtExtBinop91, i64 0
  %i.as = load float, ptr %2, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = fmul float %i.aq, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ap, float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !10
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float %i.ar, float %i.aw)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !42
  %i.be = fneg float %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.az, float %.039)
  %i.bg = fmul float %i.bb, %i.bf                 ; 2 uses
  %i.bh = tail call float @llvm.fabs.f32(float %i.bg)
  %or.cond = fcmp olt float %i.bh, f0x34000000
  br i1 %or.cond, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNK12btSolverBody18getAngularVelocityER9btVector3.exit49
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !17
  %i.bk = fadd float %i.bj, 1.000000e+00
  %i.bl = fmul float %i.bg, %i.bk
  %i.bm = fmul float %3, %i.bl                    ; 5 uses
  %i.bn = fcmp ogt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bo = fcmp ogt float %i.bm, %i.q
  %i.bp = select i1 %i.bo, float %i.q, float %i.bm
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bq = fneg float %i.q                         ; 2 uses
  %i.br = fcmp olt float %i.bm, %i.bq
  %i.bs = select i1 %i.br, float %i.bq, float %i.bm
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge = phi float [ %i.bs, %bb.i ], [ %i.bp, %bb.h ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !22 ; 2 uses
  %i.bv = fadd float %storemerge, %i.bu           ; 2 uses
  %i.bw = tail call float @llvm.fabs.f32(float %i.bv)
  %i.bx = fcmp ogt float %i.bw, f0x5D5E0B6B
  %i.by = select i1 %i.bx, float 0.000000e+00, float %i.bv ; 2 uses
  store float %i.by, ptr %i.bt, align 4, !tbaa !22
  %i.bz = fsub float %i.by, %i.bu                 ; 7 uses
  %i.ca = load float, ptr %2, align 4, !tbaa !10  ; 3 uses
  %i.cb = load float, ptr %i.at, align 4, !tbaa !10 ; 3 uses
  %i.cc = load float, ptr %i.ax, align 4, !tbaa !10 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 284
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !10
  %i.ch = fmul float %i.cb, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ca, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !10
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.cc, float %i.ci)
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 300
  %i.cp = load float, ptr %i.co, align 4, !tbaa !10
  %i.cq = fmul float %i.cb, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ca, float %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !10
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.cc, float %i.cr)
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !10
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 316
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !10
  %i.cz = fmul float %i.cb, %i.cy
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.ca, float %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.dc = load float, ptr %i.db, align 4, !tbaa !10
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.cc, float %i.da)
  %i.de = fmul float %i.bz, 0.000000e+00          ; 2 uses
  %i.df = load <2 x float>, ptr %5, align 8, !tbaa !10
  %i.dg = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fadd <2 x float> %i.dh, %i.df
  store <2 x float> %i.di, ptr %5, align 8, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !10
  %i.dl = fadd float %i.de, %i.dk
  store float %i.dl, ptr %i.dj, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !10
  %i.do = fmul float %i.bz, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !10
  %i.dr = fmul float %i.bz, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !10
  %i.du = fmul float %i.bz, %i.dt
  %i.dv = fmul float %i.cl, %i.do
  %i.dw = fmul float %i.cu, %i.dr
  %i.dx = fmul float %i.dd, %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !10
  %i.ea = fadd float %i.dv, %i.dz
  store float %i.ea, ptr %i.dy, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !10
  %i.ed = fadd float %i.dw, %i.ec
  store float %i.ed, ptr %i.eb, align 4, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !10
  %i.eg = fadd float %i.dx, %i.ef
  store float %i.eg, ptr %i.ee, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 280
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !10
  %i.ej = load float, ptr %2, align 4, !tbaa !10  ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 284
  %i.el = load float, ptr %i.ek, align 4, !tbaa !10
  %i.em = load float, ptr %i.at, align 4, !tbaa !10 ; 3 uses
  %i.en = fmul float %i.el, %i.em
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ej, float %i.en)
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !10
  %i.er = load float, ptr %i.ax, align 4, !tbaa !10 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_:bb.a
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.cw, float %i.ed)
  %i.ef = fadd float %i.bs, %i.ee
  %i.eg = fadd float %i.bv, %i.ef
  %i.eh = fmul float %i.di, %i.dy
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.df, float %i.eh)
  %i.ej = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.dl, float %i.ei)
  %i.ek = fadd float %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.ek, ptr %i.el, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint20buildAngularJacobianER15btJacobianEntryRK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(84) initializes((0, 84)) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61, !nonnull !62, !align !63 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load float, ptr %i.c, align 8, !tbaa !10, !noalias !88
  %i.m = load float, ptr %i.d, align 8, !tbaa !10, !noalias !88
  %i.n = load float, ptr %i.e, align 8, !tbaa !10, !noalias !88
  %i.o = load float, ptr %i.f, align 4, !tbaa !10, !noalias !88
  %i.p = load float, ptr %i.g, align 4, !tbaa !10, !noalias !88
  %i.q = load float, ptr %i.h, align 4, !tbaa !10, !noalias !88
  %i.r = load float, ptr %i.i, align 8, !tbaa !10, !noalias !88
  %i.s = load float, ptr %i.j, align 8, !tbaa !10, !noalias !88
  %i.t = load float, ptr %i.k, align 8, !tbaa !10, !noalias !88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64, !nonnull !62, !align !63 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.af = load float, ptr %i.w, align 8, !tbaa !10, !noalias !91
  %i.ag = load float, ptr %i.x, align 8, !tbaa !10, !noalias !91
  %i.ah = load float, ptr %i.y, align 8, !tbaa !10, !noalias !91
  %i.ai = load float, ptr %i.z, align 4, !tbaa !10, !noalias !91
  %i.aj = load float, ptr %i.aa, align 4, !tbaa !10, !noalias !91
  %i.ak = load float, ptr %i.ab, align 4, !tbaa !10, !noalias !91
  %i.al = load float, ptr %i.ac, align 8, !tbaa !10, !noalias !91
  %i.am = load float, ptr %i.ad, align 8, !tbaa !10, !noalias !91
  %i.an = load float, ptr %i.ae, align 8, !tbaa !10, !noalias !91
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 428
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %1, i8 0, i64 16, i1 false)
  %i.au = load float, ptr %2, align 4, !tbaa !10  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10 ; 3 uses
  %i.ax = fmul float %i.m, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.l, float %i.au, float %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10 ; 3 uses
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.ba, float %i.ay) ; 3 uses
  %i.bc = fmul float %i.p, %i.aw
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.o, float %i.au, float %i.bc)
  %i.be = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.ba, float %i.bd) ; 3 uses
  %i.bf = fmul float %i.s, %i.aw
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.r, float %i.au, float %i.bf)
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.ba, float %i.bg) ; 3 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bb, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.be, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bh, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.aq, align 4
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !33
  %i.bi = load float, ptr %2, align 4, !tbaa !10
  %i.bj = fneg float %i.bi                        ; 3 uses
  %i.bk = load float, ptr %i.av, align 4, !tbaa !10
  %i.bl = fneg float %i.bk                        ; 3 uses
  %i.bm = load float, ptr %i.az, align 4, !tbaa !10
  %i.bn = fneg float %i.bm                        ; 3 uses
  %i.bo = fmul float %i.ag, %i.bl
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.af, float %i.bj, float %i.bo)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.bn, float %i.bp) ; 3 uses
  %i.br = fmul float %i.aj, %i.bl
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.bj, float %i.br)
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.bn, float %i.bs) ; 3 uses
  %i.bu = fmul float %i.am, %i.bl
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bj, float %i.bu)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.bn, float %i.bv) ; 3 uses
  %.sroa.0.0.vec.insert.i18.i = insertelement <2 x float> poison, float %i.bq, i64 0
  %.sroa.0.4.vec.insert.i19.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i18.i, float %i.bt, i64 1
  %.sroa.3.12.vec.insert.i20.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bw, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i19.i, ptr %i.ar, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i20.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !33
  %i.bx = load float, ptr %i.ao, align 4, !tbaa !10
  %i.by = fmul float %i.bb, %i.bx                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !10
  %i.cb = fmul float %i.be, %i.ca                 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 436
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !10
  %i.ce = fmul float %i.bh, %i.cd                 ; 2 uses
  %.sroa.0.0.vec.insert.i23.i = insertelement <2 x float> poison, float %i.by, i64 0
  %.sroa.0.4.vec.insert.i24.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i23.i, float %i.cb, i64 1
  %.sroa.3.12.vec.insert.i25.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ce, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i24.i, ptr %i.as, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i25.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !33
  %i.cf = load float, ptr %i.ap, align 4, !tbaa !10
  %i.cg = fmul float %i.bq, %i.cf                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 432
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !10
  %i.cj = fmul float %i.bt, %i.ci                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 436
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !10
  %i.cm = fmul float %i.bw, %i.cl                 ; 2 uses
  %.sroa.0.0.vec.insert.i28.i = insertelement <2 x float> poison, float %i.cg, i64 0
  %.sroa.0.4.vec.insert.i29.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i28.i, float %i.cj, i64 1
  %.sroa.3.12.vec.insert.i30.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cm, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i29.i, ptr %i.at, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i30.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !33
  %i.cn = fmul float %i.be, %i.cb
  %i.co = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bb, float %i.cn)
  %i.cp = tail call noundef float @llvm.fmuladd.f32(float %i.ce, float %i.bh, float %i.co)
  %i.cq = fmul float %i.bt, %i.cj
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.bq, float %i.cq)
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.bw, float %i.cr)
  %i.ct = fadd float %i.cp, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.ct, ptr %i.cu, align 4, !tbaa !86
  ret void
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.f = getelementptr inbounds [56 x i8], ptr %i.e, i64 %i.b ; 10 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !35
  %i.j = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.d, float noundef %i.g, float noundef %i.i) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store float %i.j, ptr %i.k, align 8, !tbaa !94
  %i.l = load float, ptr %i.f, align 4, !tbaa !34 ; 3 uses
  %i.m = load float, ptr %i.h, align 8, !tbaa !35 ; 3 uses
  %i.n = fcmp ogt float %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 0, ptr %i.o, align 4, !tbaa !19
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.c:                                             ; preds = %bb.a
  %i.p = fcmp olt float %i.j, %i.l
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 1, ptr %i.q, align 4, !tbaa !19
  %i.r = fsub float %i.j, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store float %i.r, ptr %i.s, align 4, !tbaa !20
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp ogt float %i.j, %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.u, align 4, !tbaa !19
  %i.v = fsub float %i.j, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store float %i.v, ptr %i.w, align 4, !tbaa !20
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.u, align 4, !tbaa !19
  br label %_ZN22btRotationalLimitMotor14testLimitValueEf.exit

_ZN22btRotationalLimitMotor14testLimitValueEf.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %i.x = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.z = load i8, ptr %i.y, align 8, !range !36
  %2 = icmp ne i8 %i.z, 0
  %or.cond.not.i = select i1 %i.x, i1 true, i1 %2
  ret i1 %or.cond.not.i
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = fcmp ult float %1, %2
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %0, %1
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = fsub float %1, %0
  %i.d = tail call noundef float @fmodf(float noundef %i.c, float noundef f0x40C90FDB) #19, !tbaa !4 ; 5 uses
  %i.e = fcmp olt float %i.d, f0xC0490FDB
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = fadd float %i.d, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp ogt float %i.d, f0x40490FDB
  br i1 %i.g, label %bb.f, label %_Z16btNormalizeAnglef.exit

bb.f:                                             ; preds = %bb.e
  %i.h = fadd float %i.d, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit

_Z16btNormalizeAnglef.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi float [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.d, %bb.e ]
  %i.i = fsub float %2, %0
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef f0x40C90FDB) #19, !tbaa !4 ; 5 uses
  %i.k = fcmp olt float %i.j, f0xC0490FDB
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.l = fadd float %i.j, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit29

bb.h:                                             ; preds = %_Z16btNormalizeAnglef.exit
  %i.m = fcmp ogt float %i.j, f0x40490FDB
  br i1 %i.m, label %bb.i, label %_Z16btNormalizeAnglef.exit29

bb.i:                                             ; preds = %bb.h
  %i.n = fadd float %i.j, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit29

_Z16btNormalizeAnglef.exit29:                     ; preds = %bb.g, %bb.h, %bb.i
  %.0.i28 = phi float [ %i.l, %bb.g ], [ %i.n, %bb.i ], [ %i.j, %bb.h ]
  %i.o = tail call noundef float @llvm.fabs.f32(float %.0.i28)
  %i.p = fcmp olt float %.0.i, %i.o
  %i.q = fadd float %0, f0x40C90FDB
  %i.r = select i1 %i.p, float %0, float %i.q
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.s = fcmp ogt float %0, %2
  br i1 %i.s, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.t = fsub float %0, %2
  %i.u = tail call noundef float @fmodf(float noundef %i.t, float noundef f0x40C90FDB) #19, !tbaa !4 ; 5 uses
  %i.v = fcmp olt float %i.u, f0xC0490FDB
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = fadd float %i.u, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit31

bb.m:                                             ; preds = %bb.k
  %i.x = fcmp ogt float %i.u, f0x40490FDB
  br i1 %i.x, label %bb.n, label %_Z16btNormalizeAnglef.exit31

bb.n:                                             ; preds = %bb.m
  %i.y = fadd float %i.u, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit31

_Z16btNormalizeAnglef.exit31:                     ; preds = %bb.l, %bb.m, %bb.n
  %.0.i30 = phi float [ %i.w, %bb.l ], [ %i.y, %bb.n ], [ %i.u, %bb.m ]
  %i.z = fsub float %0, %1
  %i.aa = tail call noundef float @fmodf(float noundef %i.z, float noundef f0x40C90FDB) #19, !tbaa !4 ; 5 uses
  %i.ab = fcmp olt float %i.aa, f0xC0490FDB
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ac = fadd float %i.aa, f0x40C90FDB
  br label %_Z16btNormalizeAnglef.exit33

bb.p:                                             ; preds = %_Z16btNormalizeAnglef.exit31
  %i.ad = fcmp ogt float %i.aa, f0x40490FDB
  br i1 %i.ad, label %bb.q, label %_Z16btNormalizeAnglef.exit33

bb.q:                                             ; preds = %bb.p
  %i.ae = fadd float %i.aa, f0xC0C90FDB
  br label %_Z16btNormalizeAnglef.exit33

_Z16btNormalizeAnglef.exit33:                     ; preds = %bb.o, %bb.p, %bb.q
  %.0.i32 = phi float [ %i.ac, %bb.o ], [ %i.ae, %bb.q ], [ %i.aa, %bb.p ]
  %i.af = tail call noundef float @llvm.fabs.f32(float %.0.i32)
  %i.ag = fcmp olt float %i.af, %.0.i30
  %i.ah = fadd float %0, f0xC0C90FDB
  %i.ai = select i1 %i.ag, float %i.ah, float %0
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.a, %_Z16btNormalizeAnglef.exit33, %_Z16btNormalizeAnglef.exit29
  %.0 = phi float [ %0, %bb.a ], [ %i.r, %_Z16btNormalizeAnglef.exit29 ], [ %i.ai, %_Z16btNormalizeAnglef.exit33 ], [ %0, %bb.j ]
  ret float %.0
}

; Function Attrs: uwtable
define dso_local void @_ZN23btGeneric6DofConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1266) %0) unnamed_addr #12 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 6 uses
  %2 = alloca %class.btVector3, align 4           ; 6 uses
  %3 = alloca %class.btVector3, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 976
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %i.n)
  %i.o = load ptr, ptr %0, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(1266) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = load float, ptr %i.s, align 8, !tbaa !10
  %i.ac = load float, ptr %i.h, align 8, !tbaa !10
  %i.ad = fcmp ult float %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i8, ptr %i.t, align 8, !tbaa !23, !range !36, !noundef !62
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i = load <2 x float>, ptr %i.x, align 8
  %i.ag = load float, ptr %i.y, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ag, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i18 = load <2 x float>, ptr %i.u, align 8
  %i.ah = load float, ptr %i.v, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i19 = insertelement <2 x float> %.sroa.0.0.vec.insert.i18, float %i.ah, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.in = phi ptr [ %i.w, %bb.e ], [ %i.z, %bb.d ]
  %storemerge36 = phi <2 x float> [ %.sroa.0.4.vec.insert.i19, %bb.e ], [ %.sroa.0.4.vec.insert.i, %bb.d ]
  %.sink = load float, ptr %.sink.in, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i20 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  store <2 x float> %storemerge36, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i20, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.al = load float, ptr %i.ak, align 4, !tbaa !10
  %i.am = fcmp ult float %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i8, ptr %i.t, align 8, !tbaa !23, !range !36, !noundef !62
  %i.ao = trunc nuw i8 %i.an to i1                ; 3 uses
  %. = select i1 %i.ao, i64 1044, i64 1108
  %.66 = select i1 %i.ao, i64 1060, i64 1124
  %.67 = select i1 %i.ao, i64 1076, i64 1140
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.66
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.67
  %i.as = load <1 x float>, ptr %i.ap, align 4
  %.sroa.0.0.vec.insert.i.1 = shufflevector <1 x float> %i.as, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.at = load float, ptr %i.aq, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.1, float %i.at, i64 1
  %i.au = load float, ptr %i.ar, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.1, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 308
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.az = load float, ptr %i.ay, align 8, !tbaa !10
  %i.ba = fcmp ult float %i.ax, %i.az
  br i1 %i.ba, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load i8, ptr %i.t, align 8, !tbaa !23, !range !36, !noundef !62
  %i.bc = trunc nuw i8 %i.bb to i1                ; 3 uses
  %.68 = select i1 %i.bc, i64 1048, i64 1112
  %.69 = select i1 %i.bc, i64 1064, i64 1128
  %.70 = select i1 %i.bc, i64 1080, i64 1144
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.68
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.69
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.70
  %i.bg = load <1 x float>, ptr %i.bd, align 8
  %.sroa.0.0.vec.insert.i.2 = shufflevector <1 x float> %i.bg, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bh = load float, ptr %i.be, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.2, float %i.bh, i64 1
  %i.bi = load float, ptr %i.bf, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bi, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 392
  call void @_ZN23btGeneric6DofConstraint19buildLinearJacobianER15btJacobianEntryRK9btVector3S4_S4_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(84) %i.bj, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 476
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !10
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.bl, i64 %indvars.iv ; 9 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !35
  %i.bu = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bp, float noundef %i.br, float noundef %i.bt) ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  store float %i.bu, ptr %i.bv, align 8, !tbaa !94
  %i.bw = load float, ptr %i.bq, align 4, !tbaa !34 ; 3 uses
  %i.bx = load float, ptr %i.bs, align 8, !tbaa !35 ; 3 uses
  %i.by = fcmp ogt float %i.bw, %i.bx
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i32 0, ptr %i.bz, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.m:                                             ; preds = %bb.k
  %i.ca = fcmp olt float %i.bu, %i.bw
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i32 1, ptr %i.cb, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.o:                                             ; preds = %bb.m
  %i.cc = fcmp ogt float %i.bu, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.cd, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.q:                                             ; preds = %bb.o
  store i32 0, ptr %i.cd, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.l, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %i.cf = load i8, ptr %i.ce, align 8, !range !36
  %.not = icmp eq i8 %i.cf, 0
  br i1 %.not, label %bb.r, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split: ; preds = %bb.n, %bb.p
  %.sink65 = phi float [ %i.bx, %bb.p ], [ %i.bw, %bb.n ]
  %i.cg = fsub float %i.bu, %.sink65
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store float %i.cg, ptr %i.ch, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ci, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33 ; 2 uses
  %i.cj = getelementptr inbounds nuw [84 x i8], ptr %i.bn, i64 %indvars.iv ; 10 uses
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !61, !nonnull !62, !align !63 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cr = load float, ptr %i.co, align 8, !tbaa !10, !noalias !95
  %i.cs = load float, ptr %i.cp, align 8, !tbaa !10, !noalias !95
  %i.ct = load float, ptr %i.cq, align 8, !tbaa !10, !noalias !95
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !64, !nonnull !62, !align !63 ; 12 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 44
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.de = load float, ptr %i.cv, align 8, !tbaa !10, !noalias !98
  %i.df = load float, ptr %i.cw, align 8, !tbaa !10, !noalias !98
  %i.dg = load float, ptr %i.cx, align 8, !tbaa !10, !noalias !98
  %i.dh = load float, ptr %i.cy, align 4, !tbaa !10, !noalias !98
  %i.di = load float, ptr %i.cz, align 4, !tbaa !10, !noalias !98
  %i.dj = load float, ptr %i.da, align 4, !tbaa !10, !noalias !98
  %i.dk = load float, ptr %i.db, align 8, !tbaa !10, !noalias !98
  %i.dl = load float, ptr %i.dc, align 8, !tbaa !10, !noalias !98
  %i.dm = load float, ptr %i.dd, align 8, !tbaa !10, !noalias !98
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 428
  %i.do = getelementptr inbounds nuw i8, ptr %i.cu, i64 428
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.dt = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.du = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.dv = extractelement <2 x float> %.sroa.2.0.copyload.i, i64 0 ; 2 uses
  %i.dw = load <2 x float>, ptr %i.cl, align 8, !tbaa !10, !noalias !95
  %i.dx = load <2 x float>, ptr %i.cm, align 8, !tbaa !10, !noalias !95
  %i.dy = load <2 x float>, ptr %i.cn, align 8, !tbaa !10, !noalias !95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.cj, i8 0, i64 16, i1 false)
  %i.dz = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = fmul <2 x float> %i.dx, %i.dz
  %i.eb = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.eb, <2 x float> %i.ea)
  %i.ed = shufflevector <2 x float> %.sroa.2.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.ed, <2 x float> %i.ec) ; 4 uses
  %i.ef = fmul float %i.cs, %i.du
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.dt, float %i.ef)
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.dv, float %i.eg) ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eh, i64 0
  store <2 x float> %i.ee, ptr %i.dp, align 4
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i, align 4, !tbaa !33
  %i.ei = fneg float %i.dt                        ; 3 uses
  %i.ej = fneg float %i.du                        ; 3 uses
  %i.ek = fneg float %i.dv                        ; 3 uses
  %i.el = fmul float %i.df, %i.ej
  %i.em = tail call float @llvm.fmuladd.f32(float %i.de, float %i.ei, float %i.el)
  %i.en = tail call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.ek, float %i.em) ; 3 uses
  %i.eo = fmul float %i.di, %i.ej
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.ei, float %i.eo)
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.ek, float %i.ep) ; 3 uses
  %i.er = fmul float %i.dl, %i.ej
  %i.es = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.ei, float %i.er)
  %i.et = tail call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.ek, float %i.es) ; 3 uses
  %.sroa.0.0.vec.insert.i18.i.i = insertelement <2 x float> poison, float %i.en, i64 0
  %.sroa.0.4.vec.insert.i19.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i18.i.i, float %i.eq, i64 1
  %.sroa.3.12.vec.insert.i20.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.et, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i19.i.i, ptr %i.dq, align 4
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i20.i.i, ptr %.sroa.44.0..sroa_idx.i.i, align 4, !tbaa !33
  %i.eu = extractelement <2 x float> %i.ee, i64 0
  %i.ev = load <2 x float>, ptr %i.dn, align 4, !tbaa !10
  %i.ew = fmul <2 x float> %i.ee, %i.ev           ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ck, i64 436
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !10
  %i.ez = fmul float %i.eh, %i.ey                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ez, i64 0
  store <2 x float> %i.ew, ptr %i.dr, align 4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i25.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !tbaa !33
  %i.fa = load float, ptr %i.do, align 4, !tbaa !10
  %i.fb = fmul float %i.en, %i.fa                 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cu, i64 432
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !10
  %i.fe = fmul float %i.eq, %i.fd                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cu, i64 436
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !10
  %i.fh = fmul float %i.et, %i.fg                 ; 2 uses
  %.sroa.0.0.vec.insert.i28.i.i = insertelement <2 x float> poison, float %i.fb, i64 0
  %.sroa.0.4.vec.insert.i29.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i28.i.i, float %i.fe, i64 1
  %.sroa.3.12.vec.insert.i30.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fh, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i29.i.i, ptr %i.ds, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i30.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !33
  %foldExtExtBinop = fmul <2 x float> %i.ee, %i.ew
  %i.fi = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fj = extractelement <2 x float> %i.ew, i64 0
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.eu, float %i.fi)
  %i.fl = tail call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.eh, float %i.fk)
  %i.fm = fmul float %i.eq, %i.fe
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.en, float %i.fm)
  %i.fo = tail call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.et, float %i.fn)
  %i.fp = fadd float %i.fl, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store float %i.fp, ptr %i.fq, align 4, !tbaa !86
  br label %bb.r

bb.r:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.s, label %bb.k

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btGeneric6DofConstraint7getAxisEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define dso_local void @_ZN23btGeneric6DofConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !103
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.j)
  store i32 0, ptr %1, align 4, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 6, ptr %i.k, align 4, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.m = load i32, ptr %i.l, align 8, !tbaa !4
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.p = load i8, ptr %i.o, align 4, !range !36
  %i.q = icmp eq i8 %i.p, 0
  %or.cond = select i1 %i.n, i1 %i.q, i1 false
  br i1 %or.cond, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4, !tbaa !101
  store i32 5, ptr %i.k, align 4, !tbaa !103
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ 6, %bb.c ], [ 5, %bb.d ]       ; 2 uses
  %i.s = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = icmp eq i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.x = load i8, ptr %i.w, align 1, !range !36
  %i.y = icmp eq i8 %i.x, 0
  %or.cond33 = select i1 %i.v, i1 %i.y, i1 false
  br i1 %or.cond33, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.z = add nuw nsw i32 %i.s, 1                  ; 2 uses
  store i32 %i.z, ptr %1, align 4, !tbaa !101
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !103
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit, %bb.e
  %i.ab = phi i32 [ %i.aa, %bb.e ], [ %i.r, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit ]
  %i.ac = phi i32 [ %i.z, %bb.e ], [ %i.s, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !4
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.ah = load i8, ptr %i.ag, align 2, !range !36
  %i.ai = icmp eq i8 %i.ah, 0
  %or.cond36 = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %or.cond36, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2, label %bb.f

bb.f:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.aj = add nuw nsw i32 %i.ac, 1
  store i32 %i.aj, ptr %1, align 4, !tbaa !101
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.k, align 4, !tbaa !103
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.an = load float, ptr %i.al, align 8, !tbaa !10
  %i.ao = load float, ptr %i.am, align 4, !tbaa !34
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !35
  %i.ar = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.an, float noundef %i.ao, float noundef %i.aq) ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 912
  store float %i.ar, ptr %i.as, align 8, !tbaa !94
  %i.at = load float, ptr %i.am, align 4, !tbaa !34 ; 3 uses
  %i.au = load float, ptr %i.ap, align 8, !tbaa !35 ; 3 uses
  %i.av = fcmp ogt float %i.at, %i.au
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 0, ptr %i.aw, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.h:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2
  %i.ax = fcmp olt float %i.ar, %i.at
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 1, ptr %i.ay, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.j:                                             ; preds = %bb.h
  %i.az = fcmp ogt float %i.ar, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.ba, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.ba, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.g, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bc = load i8, ptr %i.bb, align 8, !range !36
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %bb.m, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split: ; preds = %bb.i, %bb.k
  %.sink38 = phi float [ %i.au, %bb.k ], [ %i.at, %bb.i ]
  %i.bd = fsub float %i.ar, %.sink38
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float %i.bd, ptr %i.be, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.bf = load <2 x i32>, ptr %1, align 4, !tbaa !4
  %i.bg = add nsw <2 x i32> %i.bf, <i32 1, i32 -1>
  store <2 x i32> %i.bg, ptr %1, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !35
  %i.bn = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.bi, float noundef %i.bk, float noundef %i.bm) ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 968
  store float %i.bn, ptr %i.bo, align 8, !tbaa !94
  %i.bp = load float, ptr %i.bj, align 4, !tbaa !34 ; 3 uses
  %i.bq = load float, ptr %i.bl, align 8, !tbaa !35 ; 3 uses
  %i.br = fcmp ogt float %i.bp, %i.bq
  br i1 %i.br, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = fcmp olt float %i.bn, %i.bp
  br i1 %i.bs, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = fcmp ogt float %i.bn, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 2 uses
  br i1 %i.bt, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bu, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.q:                                             ; preds = %bb.o
  store i32 2, ptr %i.bu, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split

bb.r:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 1, ptr %i.bv, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split

bb.s:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 0, ptr %i.bw, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1: ; preds = %bb.s, %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.by = load i8, ptr %i.bx, align 8, !range !36
  %.not.1 = icmp eq i8 %i.by, 0
  br i1 %.not.1, label %bb.t, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split: ; preds = %bb.q, %bb.r
  %.sink40 = phi float [ %i.bp, %bb.r ], [ %i.bq, %bb.q ]
  %i.bz = fsub float %i.bn, %.sink40
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 964
  store float %i.bz, ptr %i.ca, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.cb = load <2 x i32>, ptr %1, align 4, !tbaa !4
  %i.cc = add nsw <2 x i32> %i.cb, <i32 1, i32 -1>
  store <2 x i32> %i.cc, ptr %1, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.1, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !35
  %i.cj = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.ce, float noundef %i.cg, float noundef %i.ci) ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store float %i.cj, ptr %i.ck, align 8, !tbaa !94
  %i.cl = load float, ptr %i.cf, align 4, !tbaa !34 ; 3 uses
  %i.cm = load float, ptr %i.ch, align 8, !tbaa !35 ; 3 uses
  %i.cn = fcmp ogt float %i.cl, %i.cm
  br i1 %i.cn, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = fcmp olt float %i.cj, %i.cl
  br i1 %i.co, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = fcmp ogt float %i.cj, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  br i1 %i.cp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cq, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.x:                                             ; preds = %bb.v
  store i32 2, ptr %i.cq, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split

bb.y:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 1, ptr %i.cr, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split

bb.z:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 0, ptr %i.cs, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2: ; preds = %bb.z, %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.cu = load i8, ptr %i.ct, align 8, !range !36
  %.not.2 = icmp eq i8 %i.cu, 0
  br i1 %.not.2, label %.loopexit, label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split: ; preds = %bb.x, %bb.y
  %.sink42 = phi float [ %i.cl, %bb.y ], [ %i.cm, %bb.x ]
  %i.cv = fsub float %i.cj, %.sink42
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store float %i.cv, ptr %i.cw, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2: ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2.sink.split, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2
  %i.cx = load <2 x i32>, ptr %1, align 4, !tbaa !4
  %i.cy = add nsw <2 x i32> %i.cx, <i32 1, i32 -1>
  store <2 x i32> %i.cy, ptr %1, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2, %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.thread.2, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select = select i1 %i.c, i32 0, i32 6
  store i32 %spec.select, ptr %1, align 4, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !103
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btGeneric6DofConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1266) initializes((824, 836), (840, 852), (856, 868), (1040, 1168), (1232, 1248)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61, !nonnull !62, !align !63 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64, !nonnull !62, !align !63 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  tail call void @_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btGeneric6DofConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) initializes((824, 836), (840, 852), (856, 868), (1040, 1168), (1232, 1248)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #0 align 2 {
.preheader:
  tail call void @_ZN23btGeneric6DofConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.c = load float, ptr %i.a, align 8, !tbaa !10
  %i.d = load float, ptr %i.b, align 4, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !35
  %i.g = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.c, float noundef %i.d, float noundef %i.f) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 912
  store float %i.g, ptr %i.h, align 8, !tbaa !94
  %i.i = load float, ptr %i.b, align 4, !tbaa !34 ; 3 uses
  %i.j = load float, ptr %i.e, align 8, !tbaa !35 ; 3 uses
  %i.k = fcmp ogt float %i.i, %i.j
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 0, ptr %i.l, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.b:                                             ; preds = %.preheader
  %i.m = fcmp olt float %i.g, %i.i
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 916
  store i32 1, ptr %i.n, align 4, !tbaa !19
  %i.o = fsub float %i.g, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float %i.o, ptr %i.p, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.d:                                             ; preds = %bb.b
  %i.q = fcmp ogt float %i.g, %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.r, align 4, !tbaa !19
  %i.s = fsub float %i.g, %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 908
  store float %i.s, ptr %i.t, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1172
  %i.v = load float, ptr %i.u, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !35
  %i.aa = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.v, float noundef %i.x, float noundef %i.z) ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 968
  store float %i.aa, ptr %i.ab, align 8, !tbaa !94
  %i.ac = load float, ptr %i.w, align 4, !tbaa !34 ; 3 uses
  %i.ad = load float, ptr %i.y, align 8, !tbaa !35 ; 3 uses
  %i.ae = fcmp ogt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.af = fcmp olt float %i.aa, %i.ac
  br i1 %i.af, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fcmp ogt float %i.aa, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ah, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.j:                                             ; preds = %bb.h
  store i32 2, ptr %i.ah, align 4, !tbaa !19
  %i.ai = fsub float %i.aa, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 964
  store float %i.ai, ptr %i.aj, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.k:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 1, ptr %i.ak, align 4, !tbaa !19
  %i.al = fsub float %i.aa, %i.ac
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 964
  store float %i.al, ptr %i.am, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

bb.l:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 972
  store i32 0, ptr %i.an, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !35
  %i.au = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.ap, float noundef %i.ar, float noundef %i.at) ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store float %i.au, ptr %i.av, align 8, !tbaa !94
  %i.aw = load float, ptr %i.aq, align 4, !tbaa !34 ; 3 uses
  %i.ax = load float, ptr %i.as, align 8, !tbaa !35 ; 3 uses
  %i.ay = fcmp ogt float %i.aw, %i.ax
  br i1 %i.ay, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.az = fcmp olt float %i.au, %i.aw
  br i1 %i.az, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = fcmp ogt float %i.au, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  br i1 %i.ba, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bb, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.p:                                             ; preds = %bb.n
  store i32 2, ptr %i.bb, align 4, !tbaa !19
  %i.bc = fsub float %i.au, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store float %i.bc, ptr %i.bd, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.q:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 1, ptr %i.be, align 4, !tbaa !19
  %i.bf = fsub float %i.au, %i.aw
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store float %i.bf, ptr %i.bg, align 4, !tbaa !20
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

bb.r:                                             ; preds = %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store i32 0, ptr %i.bh, align 4, !tbaa !19
  br label %_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2

_ZN23btGeneric6DofConstraint21testAngularLimitMotorEi.exit.2: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bi = tail call noundef i32 @_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7)
  %i.bj = tail call noundef i32 @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef %1, i32 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 0 uses
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN23btGeneric6DofConstraint15setLinearLimitsEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_S8_S8_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 52
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.l, align 8, !tbaa !4    ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %.pre = load i8, ptr %i.m, align 4, !tbaa !15, !range !36 ; 2 uses
  %i.t = icmp eq i8 %.pre, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 728
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !17
  store i32 %i.r, ptr %i.i, align 4, !tbaa !19
  %i.ad = load float, ptr %i.ab, align 8, !tbaa !10
  store float %i.ad, ptr %i.n, align 4, !tbaa !94
  %i.ae = load float, ptr %i.aa, align 8, !tbaa !10
  store float %i.ae, ptr %i.j, align 4, !tbaa !20
  store i8 %.pre, ptr %i.k, align 4, !tbaa !21
  %i.af = load float, ptr %i.o, align 8, !tbaa !104
  store float %i.af, ptr %i.f, align 4, !tbaa !38
  %i.ag = load float, ptr %i.z, align 8, !tbaa !10
  store float %i.ag, ptr %i.e, align 4, !tbaa !35
  %i.ah = load <2 x float>, ptr %i.p, align 8, !tbaa !10
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ai, ptr %i.h, align 4, !tbaa !10
  %i.aj = load float, ptr %i.ac, align 8, !tbaa !10
  store float %i.aj, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !105
  %i.ak = load float, ptr %i.y, align 8, !tbaa !10
  store float %i.ak, ptr %i.c, align 4, !tbaa !106
  %i.al = load float, ptr %i.x, align 8, !tbaa !10
  store float %i.al, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %.sroa.0.0.vec.insert.i = load <2 x float>, ptr %i.w, align 8
  %i.am = load float, ptr %i.v, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.am, i64 1
  %i.an = load float, ptr %i.u, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.q, align 8
  %i.ao = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %8, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef %1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit: ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.ao, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15, !range !36 ; 2 uses
  br i1 %i.ar, label %bb.c, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge

bb.c:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit, %bb.c
  %i.av = phi i8 [ 1, %bb.c ], [ %i.at, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit ]
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !17
  store i32 %i.aq, ptr %i.i, align 4, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  store float %i.ax, ptr %i.n, align 4, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  store float %i.az, ptr %i.j, align 4, !tbaa !20
  store i8 %i.av, ptr %i.k, align 4, !tbaa !21
  %i.ba = load float, ptr %i.o, align 8, !tbaa !104
  store float %i.ba, ptr %i.f, align 4, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10
  store float %i.bc, ptr %i.e, align 4, !tbaa !35
  %i.bd = load <2 x float>, ptr %i.p, align 8, !tbaa !10
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.be, ptr %i.h, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !10
  store float %i.bg, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  store float %i.bi, ptr %i.c, align 4, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 796
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !10
  store float %i.bk, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %.sroa.0.0.vec.insert.i.1 = load <2 x float>, ptr %i.bl, align 4
  %i.bo = load float, ptr %i.bm, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.1, float %i.bo, i64 1
  %i.bp = load float, ptr %i.bn, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bp, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.1, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %i.q, align 8
  %i.bq = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %8, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 0)
  %i.br = add nuw nsw i32 %i.bq, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge, %bb.c
  %.1.1 = phi i32 [ %i.br, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit._crit_edge ], [ %.1, %bb.c ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !4  ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !15, !range !36 ; 2 uses
  br i1 %i.bu, label %bb.d, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge

bb.d:                                             ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2, label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1, %bb.d
  %i.by = phi i8 [ 1, %bb.d ], [ %i.bw, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1 ]
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !17
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !10
  store float %i.ca, ptr %i.n, align 4, !tbaa !94
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !10
  store float %i.cc, ptr %i.j, align 4, !tbaa !20
  store i8 %i.by, ptr %i.k, align 4, !tbaa !21
  %i.cd = load float, ptr %i.o, align 8, !tbaa !104
  store float %i.cd, ptr %i.f, align 4, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !10
  store float %i.cf, ptr %i.e, align 4, !tbaa !35
  %i.cg = load <2 x float>, ptr %i.p, align 8, !tbaa !10
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ch, ptr %i.h, align 4, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !10
  store float %i.cj, ptr %8, align 4, !tbaa !34
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !105
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !10
  store float %i.cl, ptr %i.c, align 4, !tbaa !106
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !10
  store float %i.cn, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %.sroa.0.0.vec.insert.i.2 = load <2 x float>, ptr %i.co, align 8
  %i.cr = load float, ptr %i.cp, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.2, float %i.cr, i64 1
  %i.cs = load float, ptr %i.cq, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %i.q, align 8
  %i.ct = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %8, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef %1, i32 noundef %.1.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 0)
  %i.cu = add nuw nsw i32 %i.ct, %.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2

_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.2: ; preds = %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge, %bb.d
  %.1.2 = phi i32 [ %i.cu, %_ZN25btTranslationalLimitMotor14needApplyForceEi.exit.1._crit_edge ], [ %.1.1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret i32 %.1.2
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN23btGeneric6DofConstraint16setAngularLimitsEPN17btTypedConstraint17btConstraintInfo2EiRK11btTransformS5_RK9btVector3S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %8) local_unnamed_addr #12 align 2 {
bb.a:
  %9 = alloca %class.btVector3, align 8           ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.f = load i8, ptr %i.e, align 8, !range !36
  %10 = icmp ne i8 %i.f, 0
  %or.cond.not.i = select i1 %i.d, i1 true, i1 %10
  br i1 %or.cond.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 868
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %i.a, align 8
  %i.i = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %i.h, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  %i.j = add nsw i32 %i.i, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.j, %bb.b ], [ %2, %bb.a ]    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = icmp ne i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.o = load i8, ptr %i.n, align 8, !range !36
  %11 = icmp ne i8 %i.o, 0
  %or.cond.not.i.1 = select i1 %i.m, i1 true, i1 %11
  br i1 %or.cond.not.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 924
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.q, align 8
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.sroa.2.0.copyload.i.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.1, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i.1, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i.1, ptr %i.a, align 8
  %i.r = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %i.p, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  %i.s = add nsw i32 %i.r, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i32 [ %i.s, %bb.d ], [ %.1, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %i.v = icmp ne i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.x = load i8, ptr %i.w, align 8, !range !36
  %12 = icmp ne i8 %i.x, 0
  %or.cond.not.i.2 = select i1 %i.v, i1 true, i1 %12
  br i1 %or.cond.not.i.2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 980
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.sroa.0.0.copyload.i.2 = load <2 x float>, ptr %i.z, align 8
  %.sroa.2.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %.sroa.2.0.copyload.i.2 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.2, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i.2, ptr %9, align 8
  store <2 x float> %.sroa.2.0.copyload.i.2, ptr %i.a, align 8
  %i.aa = call noundef i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr noundef nonnull %i.y, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, i32 noundef %.1.1, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef 1)
  %i.ab = add nsw i32 %i.aa, %.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i32 [ %i.ab, %bb.f ], [ %.1.1, %bb.e ]
  ret i32 %.1.2
}

; Function Attrs: uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i(ptr noundef nonnull align 8 dereferenceable(1266) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, i32 noundef %11) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107
  %i.c = mul nsw i32 %i.b, %9                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i8, ptr %i.d, align 4, !tbaa !21, !range !36, !noundef !62 ; 3 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 2 uses
  %i.i = icmp ne i32 %i.h, 0                      ; 2 uses
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.b, label %.thread190

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %11, 0                      ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.in = select i1 %.not, ptr %i.k, ptr %i.j
  %i.l = load ptr, ptr %.in, align 8, !tbaa !111  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.p = load float, ptr %10, align 4, !tbaa !10
  %i.q = sext i32 %i.c to i64                     ; 19 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.q
  store float %i.p, ptr %i.r, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 5 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !10
  %i.u = add nsw i32 %i.c, 1
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.v
  store float %i.t, ptr %i.w, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !10 ; 3 uses
  %i.z = add nsw i32 %i.c, 2
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa
  store float %i.y, ptr %i.ab, align 4, !tbaa !10
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load float, ptr %10, align 4, !tbaa !10
  %i.ad = fneg float %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  %i.af = load float, ptr %i.s, align 4, !tbaa !10
  %i.ag = fneg float %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.v
  store float %i.ag, ptr %i.ah, align 4, !tbaa !10
  %i.ai = load float, ptr %i.x, align 4, !tbaa !10
  %i.aj = fneg float %i.ai
  br label %bb.f

.critedge:                                        ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = load float, ptr %i.ak, align 8, !tbaa !10
  %i.an = load float, ptr %i.al, align 4, !tbaa !10
  %i.ao = fsub float %i.am, %i.an                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1156 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10
  %i.at = fsub float %i.aq, %i.as                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.av = load float, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !10
  %i.ay = fsub float %i.av, %i.ax                 ; 2 uses
  %i.az = load float, ptr %i.s, align 4, !tbaa !10 ; 2 uses
  %i.ba = fneg float %i.az
  %i.bb = fmul float %i.ay, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.at, float %i.y, float %i.bb)
  %i.bd = load float, ptr %10, align 4, !tbaa !10 ; 2 uses
  %i.be = fneg float %i.y
  %i.bf = fmul float %i.ao, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bd, float %i.bf)
  %i.bh = fneg float %i.bd
  %i.bi = fmul float %i.at, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.az, float %i.bi)
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !113 ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.q
  store float %i.bc, ptr %i.bl, align 4, !tbaa !10
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.v
  store float %i.bg, ptr %i.bm, align 4, !tbaa !10
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.aa
  store float %i.bj, ptr %i.bn, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bp = load float, ptr %i.ak, align 8, !tbaa !10
  %i.bq = load float, ptr %i.bo, align 4, !tbaa !10
  %i.br = fsub float %i.bp, %i.bq                 ; 2 uses
  %i.bs = load float, ptr %i.ap, align 4, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !10
  %i.bv = fsub float %i.bs, %i.bu                 ; 2 uses
  %i.bw = load float, ptr %i.au, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10
  %i.bz = fsub float %i.bw, %i.by                 ; 2 uses
  %i.ca = load float, ptr %i.x, align 4, !tbaa !10 ; 2 uses
  %i.cb = load float, ptr %i.s, align 4, !tbaa !10 ; 2 uses
  %i.cc = fneg float %i.cb
  %i.cd = fmul float %i.bz, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ca, float %i.cd)
  %i.cf = load float, ptr %10, align 4, !tbaa !10 ; 2 uses
  %i.cg = fneg float %i.ca
  %i.ch = fmul float %i.br, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.cf, float %i.ch)
  %i.cj = fneg float %i.cf
  %i.ck = fmul float %i.bv, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.br, float %i.cb, float %i.ck)
  %i.cm = fneg float %i.ce
  %i.cn = fneg float %i.ci
  %i.co = fneg float %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !112 ; 3 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.q
  store float %i.cm, ptr %i.cr, align 4, !tbaa !10
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.v
  store float %i.cn, ptr %i.cs, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sink197 = phi ptr [ %i.o, %bb.e ], [ %i.cq, %.critedge ]
  %.sink = phi float [ %i.aj, %bb.e ], [ %i.co, %.critedge ]
  %i.ct = getelementptr inbounds [4 x i8], ptr %.sink197, i64 %i.aa
  store float %.sink, ptr %i.ct, align 4, !tbaa !10
  br i1 %i.i, label %bb.g, label %.thread186

bb.g:                                             ; preds = %bb.f
  %i.cu = load float, ptr %1, align 4, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !35
  %i.cx = fcmp oeq float %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !114 ; 4 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.q
  store float 0.000000e+00, ptr %i.da, align 4, !tbaa !10
  %.not146 = icmp eq i8 %i.e, 0
  %or.cond198 = or i1 %i.cx, %.not146
  br i1 %or.cond198, label %.critedge148, label %bb.h

.thread186:                                       ; preds = %bb.f
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !114
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.q
  store float 0.000000e+00, ptr %i.dd, align 4, !tbaa !10
  %.not146188 = icmp eq i8 %i.e, 0
  br i1 %.not146188, label %.thread190, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !115
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.q
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !10
  br label %.critedge148

bb.i:                                             ; preds = %.thread186
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !115
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.q
  store float 0.000000e+00, ptr %i.dj, align 4, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !37 ; 2 uses
  %i.dm = fneg float %i.dl
  %i.dn = select i1 %.not, float %i.dm, float %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dp = load float, ptr %i.do, align 4, !tbaa !94
  %i.dq = load float, ptr %1, align 4, !tbaa !34
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_2
begin_hunk_3_@_ZN23btGeneric6DofConstraint21get_limit_motor_info2EP22btRotationalLimitMotorRK11btTransformS4_RK9btVector3S7_S7_S7_PN17btTypedConstraint17btConstraintInfo2EiRS5_i:bb.a
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.ft, float %i.fz)
  %i.gb = getelementptr inbounds nuw i8, ptr %.233, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !10
  %i.gd = tail call noundef float @llvm.fmuladd.f32(float %i.gc, float %i.fv, float %i.ga)
  %i.ge = load float, ptr %.234, align 4, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %.234, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !10
  %i.gh = fmul float %i.fu, %i.gg
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.ft, float %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %.234, i64 8
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !10
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.fv, float %i.gi)
  %i.gm = fsub float %i.gd, %i.gl                 ; 4 uses
  br i1 %i.fk, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.gn = fcmp olt float %i.gm, 0.000000e+00
  br i1 %i.gn, label %bb.n, label %.thread190

bb.n:                                             ; preds = %bb.m
  %i.go = fneg float %i.fr
  %i.gp = fmul nnan float %i.gm, %i.go            ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.q ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !10
  %i.gs = fcmp ogt float %i.gp, %i.gr
  br i1 %i.gs, label %bb.o, label %.thread190

bb.o:                                             ; preds = %bb.n
  store float %i.gp, ptr %i.gq, align 4, !tbaa !10
  br label %.thread190

bb.p:                                             ; preds = %bb.l
  %i.gt = fcmp ogt float %i.gm, 0.000000e+00
  br i1 %i.gt, label %bb.q, label %.thread190

bb.q:                                             ; preds = %bb.p
  %i.gu = fneg float %i.fr
  %i.gv = fmul nnan float %i.gm, %i.gu            ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.q ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !10
  %i.gy = fcmp olt float %i.gv, %i.gx
  br i1 %i.gy, label %bb.r, label %.thread190

bb.r:                                             ; preds = %bb.q
  store float %i.gv, ptr %i.gw, align 4, !tbaa !10
  br label %.thread190

.thread190:                                       ; preds = %bb.i, %.thread186, %bb.a, %bb.m, %bb.p, %bb.o, %bb.n, %bb.r, %bb.q, %bb.k, %bb.j
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.m ], [ 1, %.thread186 ], [ 1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint23solveConstraintObsoleteER12btSolverBodyS1_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %2, float noundef %3) unnamed_addr #13 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 6 uses
  %5 = alloca %class.btVector3, align 4           ; 6 uses
  %6 = alloca %class.btVector3, align 8           ; 9 uses
  %7 = alloca %class.btVector3, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !31, !range !36, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1036 ; 6 uses
  store float %3, ptr %i.d, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.s = load float, ptr %i.j, align 8, !tbaa !10
  %i.t = load float, ptr %i.i, align 8, !tbaa !10
  %i.u = fcmp ult float %i.s, %i.t
  br i1 %i.u, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.w = load float, ptr %i.v, align 8, !tbaa !86
  %i.x = fdiv float 1.000000e+00, %i.w
  %i.y = load i8, ptr %i.k, align 8, !tbaa !23, !range !36, !noundef !62
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i = load <2 x float>, ptr %i.e, align 8
  %i.aa = load float, ptr %i.n, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.aa, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.vec.insert.i24 = load <2 x float>, ptr %i.g, align 8
  %i.ab = load float, ptr %i.l, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i25 = insertelement <2 x float> %.sroa.0.0.vec.insert.i24, float %i.ab, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.in = phi ptr [ %i.m, %bb.e ], [ %i.o, %bb.d ]
  %storemerge35 = phi <2 x float> [ %.sroa.0.4.vec.insert.i25, %bb.e ], [ %.sroa.0.4.vec.insert.i, %bb.d ]
  %.sink = load float, ptr %.sink.in, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i26 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  store <2 x float> %storemerge35, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i26, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.ae = call noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_(ptr noundef nonnull align 4 dereferenceable(140) %i.i, float noundef %3, float noundef %i.x, ptr noundef nonnull align 8 dereferenceable(564) %i.ac, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(564) %i.ad, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.r) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = fcmp ult float %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.al = load float, ptr %i.ak, align 4, !tbaa !86
  %i.am = fdiv float 1.000000e+00, %i.al
  %i.an = load i8, ptr %i.k, align 8, !tbaa !23, !range !36, !noundef !62
  %i.ao = trunc nuw i8 %i.an to i1                ; 3 uses
  %. = select i1 %i.ao, i64 1044, i64 1108
  %.58 = select i1 %i.ao, i64 1060, i64 1124
  %.59 = select i1 %i.ao, i64 1076, i64 1140
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.58
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.59
  %i.as = load <1 x float>, ptr %i.ap, align 4
  %.sroa.0.0.vec.insert.i.1 = shufflevector <1 x float> %i.as, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.at = load float, ptr %i.aq, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i.1 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.1, float %i.at, i64 1
  %i.au = load float, ptr %i.ar, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i.1 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.1, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.1, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.av = load float, ptr %i.d, align 4, !tbaa !120
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.ay = call noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_(ptr noundef nonnull align 4 dereferenceable(140) %i.i, float noundef %i.av, float noundef %i.am, ptr noundef nonnull align 8 dereferenceable(564) %i.aw, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(564) %i.ax, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.r) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ba = load float, ptr %i.az, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !10
  %i.bd = fcmp ult float %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bf = load float, ptr %i.be, align 8, !tbaa !86
  %i.bg = fdiv float 1.000000e+00, %i.bf
  %i.bh = load i8, ptr %i.k, align 8, !tbaa !23, !range !36, !noundef !62
  %i.bi = trunc nuw i8 %i.bh to i1                ; 3 uses
  %.60 = select i1 %i.bi, i64 1048, i64 1112
  %.61 = select i1 %i.bi, i64 1064, i64 1128
  %.62 = select i1 %i.bi, i64 1080, i64 1144
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.60
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.61
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.62
  %i.bm = load <1 x float>, ptr %i.bj, align 8
  %.sroa.0.0.vec.insert.i.2 = shufflevector <1 x float> %i.bm, <1 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bn = load float, ptr %i.bk, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i.2 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.2, float %i.bn, i64 1
  %i.bo = load float, ptr %i.bl, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i.2 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bo, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.2, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.2, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !33
  %i.bp = load float, ptr %i.d, align 4, !tbaa !120
  %i.bq = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.br = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.bs = call noundef float @_ZN25btTranslationalLimitMotor15solveLinearAxisEffR11btRigidBodyR12btSolverBodyRK9btVector3S1_S3_S6_iS6_S6_(ptr noundef nonnull align 4 dereferenceable(140) %i.i, float noundef %i.bp, float noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(564) %i.bq, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(564) %i.br, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.r) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !19
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bx = load i8, ptr %i.bw, align 8, !range !36
  %8 = icmp ne i8 %i.bx, 0
  %or.cond.not.i = select i1 %i.bv, i1 true, i1 %8
  br i1 %or.cond.not.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 868
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.by, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !86
  %i.cc = fdiv float 1.000000e+00, %i.cb
  %i.cd = load float, ptr %i.d, align 4, !tbaa !120
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.cg = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.bz, float noundef %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.cc, ptr noundef nonnull %i.ce, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.cf, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !19
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cl = load i8, ptr %i.ck, align 8, !range !36
  %9 = icmp ne i8 %i.cl, 0
  %or.cond.not.i.1 = select i1 %i.cj, i1 true, i1 %9
  br i1 %or.cond.not.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %.sroa.0.0.copyload.i.1 = load <2 x float>, ptr %i.cn, align 8
  %.sroa.2.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.sroa.2.0.copyload.i.1 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.1, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i.1, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cp = load float, ptr %i.co, align 8, !tbaa !86
  %i.cq = fdiv float 1.000000e+00, %i.cp
  %i.cr = load float, ptr %i.d, align 4, !tbaa !120
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.ct = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.cu = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.cm, float noundef %i.cr, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.cq, ptr noundef nonnull %i.cs, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.ct, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !19
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.cz = load i8, ptr %i.cy, align 8, !range !36
  %10 = icmp ne i8 %i.cz, 0
  %or.cond.not.i.2 = select i1 %i.cx, i1 true, i1 %10
  br i1 %or.cond.not.i.2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %.sroa.0.0.copyload.i.2 = load <2 x float>, ptr %i.db, align 8
  %.sroa.2.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %.sroa.2.0.copyload.i.2 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i.2, align 8, !tbaa !33
  store <2 x float> %.sroa.0.0.copyload.i.2, ptr %7, align 8
  store <2 x float> %.sroa.2.0.copyload.i.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !86
  %i.de = fdiv float 1.000000e+00, %i.dd
  %i.df = load float, ptr %i.d, align 4, !tbaa !120
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.dh = load ptr, ptr %i.q, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.di = call noundef float @_ZN22btRotationalLimitMotor18solveAngularLimitsEfR9btVector3fP11btRigidBodyR12btSolverBodyS3_S5_(ptr noundef nonnull align 4 dereferenceable(56) %i.da, float noundef %i.df, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.de, ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.dh, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint9updateRHSEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1266) %0, float noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint24getRelativePivotPositionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !10
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1266) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !10
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btGeneric6DofConstraint13calcAnchorPosEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1266) initializes((1248, 1264)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61, !nonnull !62, !align !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = load float, ptr %i.c, align 8, !tbaa !45 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64, !nonnull !62, !align !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.h = load float, ptr %i.g, align 8, !tbaa !45 ; 2 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %i.j = fadd float %i.d, %i.h
  %i.k = fdiv float %i.d, %i.j
  %storemerge = select i1 %i.i, float 1.000000e+00, float %i.k ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.o = load float, ptr %i.n, align 8, !tbaa !10
  %i.p = fmul float %storemerge, %i.o
  %i.q = fsub float 1.000000e+00, %storemerge     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.s = load float, ptr %i.r, align 8, !tbaa !10
  %i.t = fmul float %i.q, %i.s
  %i.u = load <2 x float>, ptr %i.l, align 8, !tbaa !10
  %i.v = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = load <2 x float>, ptr %i.m, align 8, !tbaa !10
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.y, %i.aa
  %i.ac = fadd <2 x float> %i.x, %i.ab
  %i.ad = fadd float %i.p, %i.t
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store <2 x float> %i.ac, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !33
  ret void
}

declare noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(96), float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN23btGeneric6DofConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(1266) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13, !11, i64 56}
!13 = !{!"_ZTS25btTranslationalLimitMotor", !14, i64 0, !14, i64 16, !14, i64 32, !11, i64 48, !11, i64 52, !11, i64 56, !6, i64 60, !14, i64 64, !14, i64 80, !14, i64 96, !14, i64 112, !6, i64 128}
!14 = !{!"_ZTS9btVector3", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!18, !11, i64 32}
!18 = !{!"_ZTS22btRotationalLimitMotor", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !16, i64 36, !11, i64 40, !11, i64 44, !5, i64 48, !11, i64 52}
!19 = !{!18, !5, i64 48}
!20 = !{!18, !11, i64 40}
!21 = !{!18, !16, i64 36}
!22 = !{!18, !11, i64 52}
!23 = !{!24, !16, i64 1264}
!24 = !{!"_ZTS23btGeneric6DofConstraint", !25, i64 0, !29, i64 96, !29, i64 160, !6, i64 224, !6, i64 476, !13, i64 728, !6, i64 868, !11, i64 1036, !29, i64 1040, !29, i64 1104, !14, i64 1168, !6, i64 1184, !14, i64 1232, !14, i64 1248, !16, i64 1264, !16, i64 1265}
!25 = !{!"_ZTS17btTypedConstraint", !26, i64 8, !5, i64 12, !5, i64 16, !16, i64 20, !27, i64 24, !27, i64 32, !11, i64 40, !11, i64 44, !14, i64 48, !14, i64 64, !14, i64 80}
!26 = !{!"_ZTS13btTypedObject", !5, i64 0}
!27 = !{!"p1 _ZTS11btRigidBody", !28, i64 0}
!28 = !{!"any pointer", !6, i64 0}
!29 = !{!"_ZTS11btTransform", !30, i64 0, !14, i64 48}
end_hunk_3
