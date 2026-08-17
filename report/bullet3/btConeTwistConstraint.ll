inline.NumInlined: 920
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN21btConeTwistConstraint31setMotorTargetInConstraintSpaceERK12btQuaternion:bb.a
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %.sroa.654.0, float %.sroa.654.0, float %i.eu)
  %sqrt.i.i.i29 = tail call noundef float @llvm.sqrt.f32(float %i.ev)
  %i.ew = fmul float %.0, 5.000000e-01            ; 2 uses
  %i.ex = tail call noundef float @sinf(float noundef %i.ew) #21
  %i.ey = fdiv float %i.ex, %sqrt.i.i.i29         ; 3 uses
  %i.ez = fmul float %.sroa.052.0, %i.ey
  %i.fa = fmul float %.sroa.453.0, %i.ey
  %i.fb = fmul float %.sroa.654.0, %i.ey
  %i.fc = tail call noundef float @cosf(float noundef %i.ew) #21
  %.sroa.093.0.vec.insert102 = insertelement <2 x float> poison, float %i.ez, i64 0
  %.sroa.093.4.vec.insert111 = insertelement <2 x float> %.sroa.093.0.vec.insert102, float %i.fa, i64 1
  %.sroa.15.8.vec.insert120 = insertelement <2 x float> poison, float %i.fb, i64 0
  %.sroa.15.12.vec.insert129 = insertelement <2 x float> %.sroa.15.8.vec.insert120, float %i.fc, i64 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit, %bb.j, %bb.c, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %.sroa.093.1 = phi <2 x float> [ %i.cd, %_Z15shortestArcQuatRK9btVector3S1_.exit ], [ %i.cd, %bb.c ], [ %.sroa.093.4.vec.insert111, %bb.j ], [ %i.cd, %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit ] ; 4 uses
  %.sroa.15.1 = phi <2 x float> [ %.sroa.15.12.vec.insert, %_Z15shortestArcQuatRK9btVector3S1_.exit ], [ %.sroa.15.12.vec.insert, %bb.c ], [ %.sroa.15.12.vec.insert129, %bb.j ], [ %.sroa.15.12.vec.insert, %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !66 ; 4 uses
  %i.ff = fcmp ult float %i.fe, 5.000000e-02
  br i1 %i.ff, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fg = fcmp olt float %i.dg, -1.000000e+00
  %.0.i.i.i30 = select i1 %i.fg, float -1.000000e+00, float %i.dg ; 2 uses
  %i.fh = fcmp ogt float %.0.i.i.i30, 1.000000e+00
  %.1.i.i.i31 = select i1 %i.fh, float 1.000000e+00, float %.0.i.i.i30
  %i.fi = tail call noundef float @acosf(float noundef %.1.i.i.i31) #21
  %i.fj = fmul float %i.fi, 2.000000e+00          ; 2 uses
  %i.fk = fcmp ogt float %i.fj, f0x40490FDB
  br i1 %i.fk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fl = fneg <2 x float> %i.df
  %i.fm = fneg <2 x float> %.sroa.14.12.vec.insert
  %i.fn = fneg float %i.dg                        ; 2 uses
  %i.fo = fcmp olt float %i.fn, -1.000000e+00
  %.0.i.i10.i = select i1 %i.fo, float -1.000000e+00, float %i.fn ; 2 uses
  %i.fp = fcmp ogt float %.0.i.i10.i, 1.000000e+00
  %.1.i.i11.i = select i1 %i.fp, float 1.000000e+00, float %.0.i.i10.i
  %i.fq = tail call noundef float @acosf(float noundef %.1.i.i11.i) #21
  %i.fr = fmul float %i.fq, 2.000000e+00
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi float [ %i.fr, %bb.m ], [ %i.fj, %bb.l ] ; 5 uses
  %.sroa.013.0.i = phi <2 x float> [ %i.fl, %bb.m ], [ %i.df, %bb.l ] ; 5 uses
  %.sroa.614.0.i = phi <2 x float> [ %i.fm, %bb.m ], [ %.sroa.14.12.vec.insert, %bb.l ]
  %.sroa.614.8.vec.extract.i = extractelement <2 x float> %.sroa.614.0.i, i64 0 ; 4 uses
  %i.fs = fcmp ogt float %.1, f0x34000000
  br i1 %i.fs, label %bb.o, label %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit

bb.o:                                             ; preds = %bb.n
  %.sroa.013.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i, i64 0 ; 2 uses
  %foldExtExtBinop151 = fmul <2 x float> %.sroa.013.0.i, %.sroa.013.0.i
  %i.ft = extractelement <2 x float> %foldExtExtBinop151, i64 1
  %i.fu = tail call float @llvm.fmuladd.f32(float %.sroa.013.0.vec.extract.i, float %.sroa.013.0.vec.extract.i, float %i.ft)
  %i.fv = tail call noundef float @llvm.fmuladd.f32(float %.sroa.614.8.vec.extract.i, float %.sroa.614.8.vec.extract.i, float %i.fu)
  %sqrt.i.i.i34 = tail call noundef float @llvm.sqrt.f32(float %i.fv)
  %i.fw = fdiv float 1.000000e+00, %sqrt.i.i.i34  ; 2 uses
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x float> %.sroa.013.0.i, %i.fy
  %i.ga = fmul float %.sroa.614.8.vec.extract.i, %i.fw
  br label %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit

_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit: ; preds = %bb.n, %bb.o
  %.sroa.8.0 = phi float [ %i.ga, %bb.o ], [ %.sroa.614.8.vec.extract.i, %bb.n ] ; 3 uses
  %i.gb = phi <2 x float> [ %i.fz, %bb.o ], [ %.sroa.013.0.i, %bb.n ] ; 4 uses
  %i.gc = tail call noundef float @llvm.fabs.f32(float %.1)
  %i.gd = fcmp ogt float %i.gc, f0x34000000
  br i1 %i.gd, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
  %i.ge = fcmp ogt float %.1, %i.fe
  br i1 %i.ge, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gf = fneg float %i.fe                        ; 2 uses
  %i.gg = fcmp olt float %.1, %i.gf
  br i1 %i.gg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0132 = phi float [ %.1, %bb.q ], [ %i.gf, %bb.r ], [ %i.fe, %bb.p ]
  %foldExtExtBinop153 = fmul <2 x float> %i.gb, %i.gb
  %i.gh = extractelement <2 x float> %foldExtExtBinop153, i64 1
  %i.gi = extractelement <2 x float> %i.gb, i64 0 ; 2 uses
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.gi, float %i.gh)
  %i.gk = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0, float %.sroa.8.0, float %i.gj)
  %sqrt.i.i.i35 = tail call noundef float @llvm.sqrt.f32(float %i.gk)
  %i.gl = fmul nnan float %.0132, 5.000000e-01    ; 2 uses
  %i.gm = tail call noundef float @sinf(float noundef %i.gl) #21
  %i.gn = fdiv float %i.gm, %sqrt.i.i.i35         ; 2 uses
  %i.go = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul <2 x float> %i.gb, %i.gp
  %i.gr = fmul float %.sroa.8.0, %i.gn
  %i.gs = tail call noundef float @cosf(float noundef %i.gl) #21
  %.sroa.14.8.vec.insert85 = insertelement <2 x float> poison, float %i.gr, i64 0
  %.sroa.14.12.vec.insert92 = insertelement <2 x float> %.sroa.14.8.vec.insert85, float %i.gs, i64 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit, %bb.s, %bb.k
  %.sroa.062.1 = phi <2 x float> [ %i.df, %bb.k ], [ %i.gq, %bb.s ], [ %i.df, %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit ] ; 6 uses
  %.sroa.14.1 = phi <2 x float> [ %.sroa.14.12.vec.insert, %bb.k ], [ %.sroa.14.12.vec.insert92, %bb.s ], [ %.sroa.14.12.vec.insert, %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit ] ; 6 uses
  %i.gt = shufflevector <2 x float> %.sroa.093.1, <2 x float> %.sroa.15.1, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gu = fneg <2 x float> %i.gt                  ; 2 uses
  %i.gv = shufflevector <2 x float> %.sroa.14.1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gw = fmul <2 x float> %.sroa.093.1, %i.gv
  %i.gx = shufflevector <2 x float> %.sroa.15.1, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %.sroa.062.1, <2 x float> %i.gw)
  %i.gz = shufflevector <2 x float> %.sroa.14.1, <2 x float> %.sroa.062.1, <2 x i32> <i32 0, i32 2>
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gz, <2 x float> %i.gy)
  %i.hb = shufflevector <2 x float> %.sroa.15.1, <2 x float> %.sroa.093.1, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hc = fneg <2 x float> %i.hb
  %i.hd = shufflevector <2 x float> %.sroa.062.1, <2 x float> %.sroa.14.1, <2 x i32> <i32 1, i32 2>
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.hd, <2 x float> %i.ha)
  %i.hf = fneg <2 x float> %.sroa.062.1
  %i.hg = shufflevector <2 x float> %.sroa.14.1, <2 x float> %i.hf, <2 x i32> <i32 1, i32 2>
  %i.hh = fmul <2 x float> %i.hb, %i.hg
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %.sroa.14.1, <2 x float> %i.hh)
  %i.hj = shufflevector <2 x float> %.sroa.093.1, <2 x float> %i.gu, <2 x i32> <i32 0, i32 2>
  %i.hk = shufflevector <2 x float> %.sroa.062.1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hk, <2 x float> %i.hi)
  %i.hm = shufflevector <2 x float> %.sroa.062.1, <2 x float> %.sroa.14.1, <2 x i32> <i32 0, i32 2>
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.hm, <2 x float> %i.hl)
  store <2 x float> %i.he, ptr %i.a, align 4
  store <2 x float> %i.hn, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN21btConeTwistConstraint8setParamEifi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(632) %0, i32 noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #9 align 2 {
bb.a:
  switch i32 %1, label %bb.h [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.e
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %or.cond = icmp ult i32 %3, 3
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float %2, ptr %i.a, align 8, !tbaa !146
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29
  %i.d = or i32 %i.c, 2
  store i32 %i.d, ptr %i.b, align 8, !tbaa !29
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456
  store float %2, ptr %i.e, align 8, !tbaa !90
  br label %bb.h

bb.e:                                             ; preds = %bb.a, %bb.a
  %or.cond3 = icmp ult i32 %3, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 4 uses
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %2, ptr %i.g, align 4, !tbaa !83
  %i.h = load i32, ptr %i.f, align 8, !tbaa !29
  %i.i = or i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !29
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 628
  store float %2, ptr %i.j, align 4, !tbaa !30
  %i.k = load i32, ptr %i.f, align 8, !tbaa !29
  %i.l = or i32 %i.k, 4
  store i32 %i.l, ptr %i.f, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.f, %bb.g, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK21btConeTwistConstraint8getParamEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(632) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 align 2 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.d
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %or.cond = icmp ult i32 %2, 3
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = icmp ult i32 %2, 6
  br i1 %i.a, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a, %bb.a
  %or.cond5 = icmp ult i32 %2, 3
  br i1 %or.cond5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = icmp ult i32 %2, 6
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink18 = phi i64 [ 456, %bb.c ], [ 620, %bb.d ], [ 624, %bb.b ], [ 628, %bb.e ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink18
  %i.d = load float, ptr %i.c, align 4, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.e, %bb.c
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.e ], [ %i.d, %bb.f ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btConeTwistConstraint9setFramesERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(632) initializes((324, 452)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 388
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !11
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 404
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !11
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 436
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !11
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(632) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraint21setupSolverConstraintER20btAlignedObjectArrayI18btSolverConstraintEiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTypedConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConeTwistConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(632) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN21btConeTwistConstraintdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable

_ZN21btConeTwistConstraintdlEPv.exit:             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConeTwistConstraint28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(632) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret i32 224
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21btConeTwistConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK17btTypedConstraint9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load float, ptr %i.b, align 4, !tbaa !28
  store float %i.d, ptr %i.c, align 4, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load float, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.f, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.i = load float, ptr %i.h, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.i, ptr %i.j, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = load float, ptr %i.k, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.l, ptr %i.m, align 4, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load float, ptr %i.n, align 4, !tbaa !28
  store float %i.p, ptr %i.o, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.r = load float, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.r, ptr %i.s, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.u = load float, ptr %i.t, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.u, ptr %i.v, align 4, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.x = load float, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.x, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load float, ptr %i.z, align 4, !tbaa !28
  store float %i.ab, ptr %i.aa, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.ad, ptr %i.ae, align 4, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ag = load float, ptr %i.af, align 4, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %i.ag, ptr %i.ah, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.aj, ptr %i.ak, align 4, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.an = load float, ptr %i.al, align 4, !tbaa !28
  store float %i.an, ptr %i.am, align 4, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.ap, ptr %i.aq, align 4, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.as = load float, ptr %i.ar, align 4, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.as, ptr %i.at, align 4, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.av = load float, ptr %i.au, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %i.av, ptr %i.aw, align 4, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load float, ptr %i.ax, align 4, !tbaa !28
  store float %i.az, ptr %i.ay, align 4, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.bb, ptr %i.bc, align 4, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.be = load float, ptr %i.bd, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.be, ptr %i.bf, align 4, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.bh, ptr %i.bi, align 4, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bl = load float, ptr %i.bj, align 4, !tbaa !28
  store float %i.bl, ptr %i.bk, align 4, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 148
  store float %i.bn, ptr %i.bo, align 4, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152
  store float %i.bq, ptr %i.br, align 4, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 156
  store float %i.bt, ptr %i.bu, align 4, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !28
  store float %i.bx, ptr %i.bw, align 4, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bz = load float, ptr %i.by, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 164
  store float %i.bz, ptr %i.ca, align 4, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !28
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float %i.cc, ptr %i.cd, align 4, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float %i.cf, ptr %i.cg, align 4, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cj = load float, ptr %i.ch, align 4, !tbaa !28
  store float %i.cj, ptr %i.ci, align 4, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 180
  store float %i.cl, ptr %i.cm, align 4, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.co = load float, ptr %i.cn, align 4, !tbaa !28
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 184
  store float %i.co, ptr %i.cp, align 4, !tbaa !28
end_hunk_0
