inline.NumInlined: 740
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17btHingeConstraintC2ER11btRigidBodyRK9btVector3RS2_b:.preheader.preheader
  %i.go = insertelement <2 x float> %i.gn, float %i.gc, i64 0
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.go, <2 x float> %i.gm) ; 2 uses
  store float %i.gb, ptr %i.dt, align 8, !tbaa !27
  %i.gq = extractelement <2 x float> %i.gp, i64 0
  store float %i.gq, ptr %i.fp, align 4, !tbaa !27
  store <2 x float> %i.gh, ptr %i.fs, align 8, !tbaa !27
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 688
  store float %i.cf, ptr %i.gr, align 8, !tbaa !27
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 692
  store float 0.000000e+00, ptr %i.gs, align 4, !tbaa !27
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float %i.gc, ptr %i.gt, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.gv = extractelement <2 x float> %i.gp, i64 1
  store float %i.gv, ptr %i.gu, align 4, !tbaa !27
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 704
  store float %i.ce, ptr %i.gw, align 8, !tbaa !27
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 708
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !27
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.gy, align 8, !tbaa !28
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.gz, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 782
  store i8 0, ptr %i.ha, align 2, !tbaa !29
  %i.hb = select i1 %4, float -1.000000e+00, float 1.000000e+00
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.hb, ptr %i.hc, align 8, !tbaa !23
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !25
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !25
  %i.o = zext i1 %5 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.o, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.s, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %i.p, align 4, !tbaa !30
  %i.t = select i1 %5, float -1.000000e+00, float 1.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.t, ptr %i.u, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBody(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(564) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV17btHingeConstraint, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i8 %i.a, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31, !nonnull !32, !align !33 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.t = load float, ptr %i.s, align 4, !tbaa !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = load float, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.x = load float, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !27
  %i.ac = load <2 x float>, ptr %i.q, align 8, !tbaa !27 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.z, align 8, !tbaa !27 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.aj = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ak, <2 x float> %i.ah)
  %i.am = insertelement <2 x float> poison, float %i.v, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ab, i64 1
  %i.ao = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ap, <2 x float> %i.al)
  %i.ar = load <2 x float>, ptr %i.y, align 8, !tbaa !27
  %i.as = fadd <2 x float> %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.au = load float, ptr %i.at, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !27
  %i.ax = fmul float %i.t, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.r, float %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ba = load float, ptr %i.az, align 8, !tbaa !27
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.x, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !27
  %i.be = fadd float %i.bd, %i.bb
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.be, i64 0
  store <2 x float> %i.as, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 752
  store float -1.000000e+00, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 736
  store <4 x float> <float f0x3F666666, float 3.000000e-01, float 1.000000e+00, float 1.000000e+00>, ptr %i.bg, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %i.m, align 4, !tbaa !30
  %i.bh = select i1 %3, float -1.000000e+00, float 1.000000e+00
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 776
  store float %i.bh, ptr %i.bi, align 8, !tbaa !23
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint13buildJacobianEv(ptr nofree noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca [3 x %class.btVector3], align 16    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 0.000000e+00, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 788
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.g = load i8, ptr %i.f, align 4, !tbaa !24, !range !34, !noundef !32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !32, !align !33 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load float, ptr %i.o, align 8, !tbaa !27 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37, !nonnull !32, !align !33 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.af = load float, ptr %i.ae, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.am = load float, ptr %i.al, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 60 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ar = load <2 x float>, ptr %i.k, align 8, !tbaa !27 ; 2 uses
  %i.as = load <2 x float>, ptr %i.l, align 8, !tbaa !27 ; 4 uses
  %i.at = load <2 x float>, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.au = load <2 x float>, ptr %i.ad, align 8, !tbaa !27 ; 4 uses
  %i.av = shufflevector <2 x float> %i.at, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.aw = shufflevector <2 x float> %i.au, <2 x float> %i.as, <2 x i32> <i32 1, i32 3>
  %i.ax = fmul <2 x float> %i.av, %i.aw
  %i.ay = shufflevector <2 x float> %i.at, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.az = shufflevector <2 x float> %i.au, <2 x float> %i.as, <2 x i32> <i32 0, i32 2>
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.az, <2 x float> %i.ax)
  %i.bb = insertelement <2 x float> poison, float %i.af, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.n, i64 1
  %i.bd = insertelement <2 x float> poison, float %i.ah, i64 0 ; 2 uses
  %i.be = insertelement <2 x float> %i.bd, float %i.p, i64 1
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.be, <2 x float> %i.ba)
  %i.bg = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.r, i64 1
  %i.bi = fadd <2 x float> %i.bf, %i.bh           ; 3 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = extractelement <2 x float> %i.bi, i64 1 ; 2 uses
  %i.bl = fsub float %i.bj, %i.bk                 ; 3 uses
  %i.bm = load <2 x float>, ptr %i.s, align 8, !tbaa !27 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.v, align 4, !tbaa !27
  %i.bp = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.br = fmul <2 x float> %i.bp, %i.bq
  %i.bs = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bt, <2 x float> %i.br)
  %i.bv = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.y, i64 1
  %i.bx = insertelement <2 x float> poison, float %i.p, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.by, <2 x float> %i.bu)
  %i.ca = fadd <2 x float> %i.bo, %i.bz           ; 3 uses
  %2 = load <2 x float>, ptr %i.ak, align 8, !tbaa !27 ; 2 uses
  %3 = load <2 x float>, ptr %i.ao, align 8, !tbaa !27 ; 2 uses
  %4 = load <2 x float>, ptr %i.an, align 4, !tbaa !27
  %i.cb = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 1, i32 3>
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 0, i32 2>
  %i.cf = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %i.cd)
  %i.ch = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.aq, i64 1
  %i.cj = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.cg)
  %i.cl = fadd <2 x float> %4, %i.ck              ; 2 uses
  %i.cm = fsub <2 x float> %i.cl, %i.ca           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cm, %i.cm
  %i.cn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %i.cn)
  %i.cp = extractelement <2 x float> %i.cm, i64 1 ; 2 uses
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.co) ; 2 uses
  %i.cr = fcmp ogt float %i.cq, f0x34000000
  br i1 %i.cr, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cq)
  %i.cs = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ct = fmul float %i.bl, %i.cs                 ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.cm, %i.cv           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cx = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i.i, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.cy = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.cw, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.cx, ptr %1, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.cy, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cz = phi float [ 1.000000e+00, %bb.e ], [ %i.ct, %bb.d ] ; 5 uses
  %i.da = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.cw, %bb.d ] ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dd = extractelement <2 x float> %i.da, i64 1 ; 6 uses
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.dd)
  %i.df = fcmp ogt float %i.de, f0x3F3504F3
  br i1 %i.df, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dg = fmul nnan float %i.dd, %i.dd
  %i.dh = extractelement <2 x float> %i.da, i64 0 ; 3 uses
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.dg) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.di)
  %i.dj = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.dk = fneg float %i.dd
  %i.dl = fmul float %i.dj, %i.dk                 ; 2 uses
  %i.dm = fmul float %i.dh, %i.dj                 ; 2 uses
  %i.dn = fmul float %i.di, %i.dj
  %i.do = fneg float %i.cz
  %i.dp = fmul float %i.dm, %i.do
  %i.dq = fmul float %i.dl, %i.cz
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.h:                                             ; preds = %bb.f
  %i.dr = extractelement <2 x float> %i.da, i64 0
  %foldExtExtBinop289 = fmul <2 x float> %i.da, %i.da
  %i.ds = extractelement <2 x float> %foldExtExtBinop289, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.ds) ; 2 uses
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.dt)
  %i.du = fdiv float 1.000000e+00, %sqrt46.i      ; 3 uses
  %i.dv = fneg float %i.dr
  %i.dw = fmul float %i.du, %i.dv                 ; 2 uses
  %i.dx = fmul float %i.cz, %i.du                 ; 2 uses
  %i.dy = fneg float %i.dd
  %i.dz = fmul float %i.dx, %i.dy
  %i.ea = fmul float %i.dd, %i.dw
  %i.eb = fmul float %i.dt, %i.du
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.g, %bb.h
  %.sink281 = phi float [ 0.000000e+00, %bb.g ], [ %i.dw, %bb.h ]
  %.sink280 = phi float [ %i.dl, %bb.g ], [ %i.dx, %bb.h ]
  %.sink = phi float [ %i.dm, %bb.g ], [ 0.000000e+00, %bb.h ]
  %.sink48.i = phi float [ %i.dn, %bb.g ], [ %i.dz, %bb.h ]
  %.sink47.i = phi float [ %i.dp, %bb.g ], [ %i.ea, %bb.h ]
  %.sink.i = phi float [ %i.dq, %bb.g ], [ %i.eb, %bb.h ]
  store float %.sink281, ptr %i.db, align 16, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %.sink280, ptr %i.ec, align 4, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %.sink, ptr %i.ed, align 8, !tbaa !27
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float 0.000000e+00, ptr %i.ee, align 4, !tbaa !27
  store float %.sink48.i, ptr %i.dc, align 16, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %.sink47.i, ptr %i.ef, align 4, !tbaa !27
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %.sink.i, ptr %i.eg, align 8, !tbaa !27
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 428
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %i.el = getelementptr inbounds nuw i8, ptr %i.ab, i64 428
  %i.em = getelementptr inbounds nuw i8, ptr %i.ab, i64 360
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 436
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ab, i64 436
  %i.ep = extractelement <2 x float> %i.ca, i64 0
  %i.eq = extractelement <2 x float> %i.ca, i64 1
  %5 = shufflevector <2 x float> %i.bi, <2 x float> %i.cl, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.k

bb.j:                                             ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit, %bb.j
  %indvars.iv = phi i64 [ 0, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.er = getelementptr inbounds nuw [84 x i8], ptr %i.ei, i64 %indvars.iv ; 13 uses
  %i.es = load float, ptr %i.m, align 8, !tbaa !27, !noalias !38
  %i.et = load float, ptr %i.t, align 8, !tbaa !27, !noalias !38
  %i.eu = load float, ptr %i.ae, align 8, !tbaa !27, !noalias !41
  %i.ev = load float, ptr %i.al, align 8, !tbaa !27, !noalias !41
  %i.ew = load float, ptr %i.ap, align 8, !tbaa !27, !noalias !41
  %i.ex = load float, ptr %i.q, align 8, !tbaa !27
  %i.ey = fsub float %i.bk, %i.ex                 ; 2 uses
  %i.ez = load float, ptr %i.v, align 4, !tbaa !27
  %i.fa = fsub float %i.ep, %i.ez                 ; 2 uses
  %i.fb = load float, ptr %i.z, align 8, !tbaa !27
  %i.fc = fsub float %i.eq, %i.fb                 ; 2 uses
  %i.fd = load float, ptr %i.ai, align 8, !tbaa !27
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.ff = load float, ptr %i.ek, align 8, !tbaa !44
  %i.fg = load float, ptr %i.em, align 8, !tbaa !44
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.fn = load <2 x float>, ptr %i.k, align 8, !tbaa !27, !noalias !38
  %i.fo = load <2 x float>, ptr %i.s, align 8, !tbaa !27, !noalias !38
  %i.fp = load <2 x float>, ptr %i.w, align 8, !tbaa !27, !noalias !38
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.fq = load <2 x float>, ptr %i.ac, align 8, !tbaa !27, !noalias !41
  %i.fr = load <2 x float>, ptr %i.ak, align 8, !tbaa !27, !noalias !41
  %i.fs = load <2 x float>, ptr %i.ao, align 8, !tbaa !27, !noalias !41
  %6 = load float, ptr %i.x, align 8, !tbaa !27, !noalias !38
  %7 = load <2 x float>, ptr %i.an, align 4, !tbaa !27
  %8 = insertelement <4 x float> %5, float %6, i64 0
  %9 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.fd, i64 1
  %10 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %9, <4 x float> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = fsub <4 x float> %8, %11                  ; 2 uses
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.er, ptr noundef nonnull align 16 dereferenceable(16) %i.fe, i64 16, i1 false), !tbaa.struct !25
  %i.ft = load float, ptr %i.fl, align 4, !tbaa !27 ; 3 uses
  %14 = load <2 x float>, ptr %i.er, align 4, !tbaa !27 ; 2 uses
  %i.fu = load float, ptr %i.fm, align 4, !tbaa !27 ; 2 uses
  %i.fv = fneg float %i.fu                        ; 2 uses
  %i.fw = fmul float %i.fc, %i.fv
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.ft, float %i.fw) ; 2 uses
  %15 = fneg float %i.ft                          ; 2 uses
  %16 = fmul float %i.ey, %15
  %17 = extractelement <2 x float> %14, i64 0     ; 2 uses
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.fc, float %17, float %16) ; 2 uses
  %i.fz = fneg float %17                          ; 2 uses
  %i.ga = fmul float %i.fa, %i.fz
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.fu, float %i.ga) ; 2 uses
  %i.gc = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x float> %i.fo, %i.gd
  %i.gf = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.gg, <2 x float> %i.ge)
  %i.gi = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.gj, <2 x float> %i.gh) ; 4 uses
  %i.gl = fmul float %i.et, %i.fy
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.es, float %i.fx, float %i.gl)
  %18 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %19 = insertelement <4 x float> %18, float %i.gm, i64 0
  %20 = insertelement <4 x float> %19, float %i.ft, i64 1
  %21 = insertelement <4 x float> %12, float 1.000000e+00, i64 0
  %22 = fmul <4 x float> %20, %21
  %23 = insertelement <4 x float> poison, float %i.gb, i64 0
  %24 = insertelement <4 x float> %23, float %i.fz, i64 1
  %25 = insertelement <4 x float> %24, float %i.fv, i64 2
  %26 = insertelement <4 x float> %25, float %15, i64 3
  %27 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> %26, <4 x float> %22) ; 8 uses
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gn = insertelement <2 x float> %28, float 0.000000e+00, i64 1
  store <2 x float> %i.gk, ptr %i.fh, align 4
  store <2 x float> %i.gn, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !26
  %29 = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %30 = fmul <2 x float> %i.fr, %29
  %31 = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %31, <2 x float> %30)
  %32 = shufflevector <4 x float> %27, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %32, <2 x float> %i.go) ; 4 uses
  %34 = extractelement <4 x float> %27, i64 1
  %i.gp = fmul float %i.ev, %34
  %35 = extractelement <4 x float> %27, i64 3
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.eu, float %35, float %i.gp)
  %36 = extractelement <4 x float> %27, i64 2
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.ew, float %36, float %i.gq) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gr, i64 0
  store <2 x float> %33, ptr %i.fi, align 4
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i, align 4, !tbaa !26
  %i.gs = extractelement <2 x float> %i.gk, i64 0
  %i.gt = load <2 x float>, ptr %i.ej, align 4, !tbaa !27
  %i.gu = fmul <2 x float> %i.gk, %i.gt           ; 3 uses
  %i.gv = load float, ptr %i.en, align 4, !tbaa !27
  %37 = extractelement <4 x float> %27, i64 0     ; 2 uses
  %i.gw = fmul float %37, %i.gv                   ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gw, i64 0
  store <2 x float> %i.gu, ptr %i.fj, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !26
  %i.gx = extractelement <2 x float> %33, i64 0
  %i.gy = load <2 x float>, ptr %i.el, align 4, !tbaa !27
  %i.gz = fmul <2 x float> %33, %i.gy             ; 3 uses
  %i.ha = load float, ptr %i.eo, align 4, !tbaa !27
  %i.hb = fmul float %i.gr, %i.ha                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hb, i64 0
  store <2 x float> %i.gz, ptr %i.fk, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !26
  %foldExtExtBinop291 = fmul <2 x float> %i.gk, %i.gu
  %i.hc = extractelement <2 x float> %foldExtExtBinop291, i64 1
  %i.hd = extractelement <2 x float> %i.gu, i64 0
  %i.he = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.gs, float %i.hc)
  %i.hf = tail call noundef float @llvm.fmuladd.f32(float %i.gw, float %37, float %i.he)
  %i.hg = fadd float %i.ff, %i.hf
  %i.hh = fadd float %i.fg, %i.hg
  %foldExtExtBinop293 = fmul <2 x float> %33, %i.gz
  %i.hi = extractelement <2 x float> %foldExtExtBinop293, i64 1
  %i.hj = extractelement <2 x float> %i.gz, i64 0
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.gx, float %i.hi)
  %i.hl = tail call noundef float @llvm.fmuladd.f32(float %i.hb, float %i.gr, float %i.hk)
  %i.hm = fadd float %i.hh, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.er, i64 80
  store float %i.hm, ptr %i.hn, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.i, label %bb.j

bb.k:                                             ; preds = %bb.i, %bb.b
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.hr = load float, ptr %i.ho, align 8, !tbaa !27 ; 8 uses
  %i.hs = load float, ptr %i.hp, align 8, !tbaa !27 ; 9 uses
  %i.ht = load float, ptr %i.hq, align 8, !tbaa !27 ; 9 uses
  %i.hu = tail call noundef float @llvm.fabs.f32(float %i.ht)
  %i.hv = fcmp ogt float %i.hu, f0x3F3504F3
  br i1 %i.hv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hw = fmul nnan float %i.ht, %i.ht
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.hs, float %i.hw) ; 2 uses
  %sqrt.i30 = tail call float @llvm.sqrt.f32(float %i.hx)
  %i.hy = fdiv float 1.000000e+00, %sqrt.i30      ; 3 uses
  %i.hz = fneg float %i.ht
  %i.ia = fmul float %i.hy, %i.hz                 ; 2 uses
  %i.ib = fmul float %i.hs, %i.hy                 ; 2 uses
  %i.ic = fmul float %i.hx, %i.hy
  %i.id = fneg float %i.hr
  %i.ie = fmul float %i.ib, %i.id
  %i.if = fmul float %i.hr, %i.ia
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit31

bb.m:                                             ; preds = %bb.k
  %i.ig = fmul float %i.hs, %i.hs
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hr, float %i.ig) ; 2 uses
  %sqrt46.i26 = tail call float @llvm.sqrt.f32(float %i.ih)
  %i.ii = fdiv float 1.000000e+00, %sqrt46.i26    ; 3 uses
  %i.ij = fneg float %i.hs
  %i.ik = fmul float %i.ii, %i.ij                 ; 2 uses
  %i.il = fmul float %i.hr, %i.ii                 ; 2 uses
  %i.im = fneg float %i.ht
  %i.in = fmul float %i.il, %i.im
  %i.io = fmul float %i.ht, %i.ik
  %i.ip = fmul float %i.ih, %i.ii
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit31

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit31:       ; preds = %bb.l, %bb.m
  %.sroa.0220.0 = phi float [ 0.000000e+00, %bb.l ], [ %i.ik, %bb.m ] ; 3 uses
  %.sroa.5221.0 = phi float [ %i.ia, %bb.l ], [ %i.il, %bb.m ] ; 3 uses
  %.sroa.8222.0 = phi float [ %i.ib, %bb.l ], [ 0.000000e+00, %bb.m ] ; 3 uses
  %.sink48.i27 = phi float [ %i.ic, %bb.l ], [ %i.in, %bb.m ] ; 3 uses
  %.sink47.i28 = phi float [ %i.ie, %bb.l ], [ %i.io, %bb.m ] ; 3 uses
  %.sink.i29 = phi float [ %i.if, %bb.l ], [ %i.ip, %bb.m ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !31, !nonnull !32, !align !33 ; 8 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 3 uses
  %i.iu = load float, ptr %i.it, align 8, !tbaa !27 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 24 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 3 uses
  %i.ix = load float, ptr %i.iw, align 8, !tbaa !27 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 40 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ir, i64 48 ; 3 uses
  %i.ja = load float, ptr %i.iz, align 8, !tbaa !27 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !37, !nonnull !32, !align !33 ; 8 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 24 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 40 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 32 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 48 ; 3 uses
  %i.jk = load float, ptr %i.jh, align 8, !tbaa !27, !noalias !56
  %i.jl = load float, ptr %i.ji, align 8, !tbaa !27, !noalias !56
  %i.jm = load float, ptr %i.jj, align 8, !tbaa !27, !noalias !56
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ir, i64 428 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 428 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.jt = load <2 x float>, ptr %i.is, align 8, !tbaa !27 ; 3 uses
  %i.ju = extractelement <2 x float> %i.jt, i64 1 ; 3 uses
  %i.jv = fmul float %i.hs, %i.ju
  %i.jw = extractelement <2 x float> %i.jt, i64 0 ; 3 uses
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.hr, float %i.jv)
  %i.jy = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.ht, float %i.jx) ; 3 uses
  %i.jz = load <2 x float>, ptr %i.iv, align 8, !tbaa !27 ; 3 uses
  %i.ka = extractelement <2 x float> %i.jz, i64 1 ; 3 uses
  %i.kb = fmul float %i.hs, %i.ka
  %i.kc = extractelement <2 x float> %i.jz, i64 0 ; 3 uses
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.hr, float %i.kb)
  %i.ke = tail call noundef float @llvm.fmuladd.f32(float %i.ix, float %i.ht, float %i.kd) ; 3 uses
  %i.kf = load <2 x float>, ptr %i.iy, align 8, !tbaa !27 ; 3 uses
  %i.kg = extractelement <2 x float> %i.kf, i64 1 ; 3 uses
  %i.kh = fmul float %i.hs, %i.kg
  %i.ki = extractelement <2 x float> %i.kf, i64 0 ; 3 uses
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.hr, float %i.kh)
  %i.kk = tail call noundef float @llvm.fmuladd.f32(float %i.ja, float %i.ht, float %i.kj) ; 3 uses
  %i.kl = fmul float %.sroa.5221.0, %i.ju
  %i.km = tail call float @llvm.fmuladd.f32(float %i.jw, float %.sroa.0220.0, float %i.kl)
  %i.kn = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %.sroa.8222.0, float %i.km) ; 3 uses
  %i.ko = fmul float %.sroa.5221.0, %i.ka
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.kc, float %.sroa.0220.0, float %i.ko)
  %i.kq = tail call noundef float @llvm.fmuladd.f32(float %i.ix, float %.sroa.8222.0, float %i.kp) ; 3 uses
  %i.kr = fmul float %.sroa.5221.0, %i.kg
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.ki, float %.sroa.0220.0, float %i.kr)
  %i.kt = tail call noundef float @llvm.fmuladd.f32(float %i.ja, float %.sroa.8222.0, float %i.ks) ; 3 uses
  %i.ku = fmul float %.sink47.i28, %i.ju
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.jw, float %.sink48.i27, float %i.ku)
  %i.kw = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %.sink.i29, float %i.kv) ; 3 uses
  %i.kx = fmul float %.sink47.i28, %i.ka
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.kc, float %.sink48.i27, float %i.kx)
  %i.kz = tail call noundef float @llvm.fmuladd.f32(float %i.ix, float %.sink.i29, float %i.ky) ; 3 uses
  %i.la = fmul float %.sink47.i28, %i.kg
  %i.lb = tail call float @llvm.fmuladd.f32(float %i.ki, float %.sink48.i27, float %i.la)
  %i.lc = tail call noundef float @llvm.fmuladd.f32(float %i.ja, float %.sink.i29, float %i.lb) ; 3 uses
  %i.ld = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x float> %i.jz, %i.le
  %i.lg = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.lh, <2 x float> %i.lf)
  %i.lj = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ll = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.lk, <2 x float> %i.li) ; 4 uses
  %i.lm = fmul float %i.ix, %i.kq
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.kn, float %i.lm)
  %i.lo = tail call noundef float @llvm.fmuladd.f32(float %i.ja, float %i.kt, float %i.ln) ; 3 uses
  %.sroa.3.12.vec.insert.i.i64 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lo, i64 0
  %.sroa.46.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.lp = fneg float %i.kn                        ; 2 uses
  %i.lq = fneg float %i.kq                        ; 2 uses
  %i.lr = fneg float %i.kt                        ; 2 uses
  %i.ls = load <2 x float>, ptr %i.je, align 8, !tbaa !27, !noalias !56
  %i.lt = load <2 x float>, ptr %i.jf, align 8, !tbaa !27, !noalias !56
  %i.lu = load <2 x float>, ptr %i.jg, align 8, !tbaa !27, !noalias !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.jb, i8 0, i64 16, i1 false)
  store <2 x float> %i.ll, ptr %i.jp, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i.i64, ptr %.sroa.46.0..sroa_idx.i65, align 4, !tbaa !26
  %i.lv = insertelement <2 x float> poison, float %i.lq, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x float> %i.lt, %i.lw
  %i.ly = insertelement <2 x float> poison, float %i.lp, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.lz, <2 x float> %i.lx)
  %i.mb = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.mc, <2 x float> %i.ma) ; 4 uses
  %i.me = fmul float %i.jl, %i.lq
  %i.mf = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.lp, float %i.me)
  %i.mg = tail call noundef float @llvm.fmuladd.f32(float %i.jm, float %i.lr, float %i.mf) ; 3 uses
  %.sroa.3.12.vec.insert.i20.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mg, i64 0
  store <2 x float> %i.md, ptr %i.jq, align 4
  %.sroa.44.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %0, i64 388
  store <2 x float> %.sroa.3.12.vec.insert.i20.i, ptr %.sroa.44.0..sroa_idx.i66, align 4, !tbaa !26
  %i.mh = extractelement <2 x float> %i.ll, i64 0
  %i.mi = load <2 x float>, ptr %i.jn, align 4, !tbaa !27
  %i.mj = fmul <2 x float> %i.ll, %i.mi           ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ir, i64 436 ; 3 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !27
  %i.mm = fmul float %i.lo, %i.ml                 ; 2 uses
  %.sroa.3.12.vec.insert.i25.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.mm, i64 0
  store <2 x float> %i.mj, ptr %i.jr, align 4
  %.sroa.42.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %0, i64 404
  store <2 x float> %.sroa.3.12.vec.insert.i25.i, ptr %.sroa.42.0..sroa_idx.i67, align 4, !tbaa !26
  %i.mn = extractelement <2 x float> %i.md, i64 0
  %i.mo = load <2 x float>, ptr %i.jo, align 4, !tbaa !27
  %i.mp = fmul <2 x float> %i.md, %i.mo           ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jd, i64 436 ; 3 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !27
  %i.ms = fmul float %i.mg, %i.mr                 ; 2 uses
  %.sroa.3.12.vec.insert.i30.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ms, i64 0
  store <2 x float> %i.mp, ptr %i.js, align 4
  %.sroa.4.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %0, i64 420
  store <2 x float> %.sroa.3.12.vec.insert.i30.i, ptr %.sroa.4.0..sroa_idx.i68, align 4, !tbaa !26
  %foldExtExtBinop295 = fmul <2 x float> %i.ll, %i.mj
  %i.mt = extractelement <2 x float> %foldExtExtBinop295, i64 1
  %i.mu = extractelement <2 x float> %i.mj, i64 0
  %i.mv = tail call float @llvm.fmuladd.f32(float %i.mu, float %i.mh, float %i.mt)
  %i.mw = tail call noundef float @llvm.fmuladd.f32(float %i.mm, float %i.lo, float %i.mv)
  %foldExtExtBinop297 = fmul <2 x float> %i.md, %i.mp
  %i.mx = extractelement <2 x float> %foldExtExtBinop297, i64 1
  %i.my = extractelement <2 x float> %i.mp, i64 0
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.my, float %i.mn, float %i.mx)
  %i.na = tail call noundef float @llvm.fmuladd.f32(float %i.ms, float %i.mg, float %i.mz)
  %i.nb = fadd float %i.mw, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 428
  store float %i.nb, ptr %i.nc, align 4, !tbaa !54
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ne = load float, ptr %i.it, align 8, !tbaa !27, !noalias !59
  %i.nf = load float, ptr %i.iw, align 8, !tbaa !27, !noalias !59
  %i.ng = load float, ptr %i.iz, align 8, !tbaa !27, !noalias !59
  %i.nh = load float, ptr %i.jh, align 8, !tbaa !27, !noalias !62
  %i.ni = load float, ptr %i.ji, align 8, !tbaa !27, !noalias !62
end_hunk_0
