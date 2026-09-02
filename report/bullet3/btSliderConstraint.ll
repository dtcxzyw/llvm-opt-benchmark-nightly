Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSliderConstraint?download=true
inline.NumInlined: 416
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_:bb.a
  %.sroa.3.12.vec.insert.i4.i.i46 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gs, i64 0
  store <4 x float> %i.fm, ptr %i.ei, align 8
  store <4 x float> %i.gd, ptr %i.ez, align 8
  store <4 x float> %i.gn, ptr %i.ge, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <2 x float> %i.ga, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 968
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i46, ptr %i.gu, align 8, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !32
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !32
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.hc = load float, ptr %i.gv, align 8, !tbaa !10 ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.hc, i64 0 ; 2 uses
  %i.hd = load float, ptr %i.ha, align 8, !tbaa !10 ; 4 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.hd, i64 1
  %i.he = load float, ptr %i.hb, align 8, !tbaa !10 ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.he, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 976
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.hf, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 984
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !31
  %brmerge = select i1 %i.c, i1 true, i1 %i.f
  br i1 %brmerge, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.hg = load <3 x float>, ptr %i.gz, align 8, !tbaa !10
  %i.hh = load <3 x float>, ptr %i.gx, align 8, !tbaa !10 ; 3 uses
  %i.hi = fsub <3 x float> %i.hg, %i.hh
  %i.hj = extractelement <3 x float> %i.hh, i64 0
  %i.hk = extractelement <3 x float> %i.hh, i64 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.hl = load <3 x float>, ptr %i.gx, align 8, !tbaa !10 ; 3 uses
  %i.hm = load <3 x float>, ptr %i.gz, align 8, !tbaa !10
  %i.hn = fsub <3 x float> %i.hl, %i.hm
  %i.ho = extractelement <3 x float> %i.hl, i64 0
  %i.hp = extractelement <3 x float> %i.hl, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.hq = phi float [ %i.hp, %bb.c ], [ %i.hk, %bb.b ]
  %i.hr = phi float [ %i.ho, %bb.c ], [ %i.hj, %bb.b ]
  %i.hs = phi <3 x float> [ %i.hn, %bb.c ], [ %i.hi, %bb.b ] ; 8 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.ht = load float, ptr %.in, align 4, !tbaa !10
  %i.hu = shufflevector <3 x float> %i.hs, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %i.hv = shufflevector <3 x float> %i.hs, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hw = shufflevector <3 x float> <float poison, float 0.000000e+00, float poison>, <3 x float> %i.hu, <2 x i32> <i32 3, i32 1>
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store <2 x float> %i.hv, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store <2 x float> %i.hw, ptr %i.hy, align 8, !tbaa !31
  %i.hz = extractelement <3 x float> %i.hs, i64 1 ; 2 uses
  %i.ia = fmul float %i.hd, %i.hz
  %i.ib = extractelement <3 x float> %i.hs, i64 0 ; 2 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.ib, float %i.ia)
  %i.id = extractelement <3 x float> %i.hs, i64 2 ; 2 uses
  %i.ie = tail call noundef float @llvm.fmuladd.f32(float %i.he, float %i.id, float %i.ic) ; 3 uses
  %i.if = fmul float %i.hc, %i.ie
  %i.ig = fmul float %i.hd, %i.ie
  %i.ih = fmul float %i.he, %i.ie
  %i.ii = fadd float %i.hr, %i.if
  %i.ij = fadd float %i.ht, %i.ig
  %i.ik = fadd float %i.ih, %i.hq
  %.sroa.0.0.vec.insert.i67 = insertelement <2 x float> poison, float %i.ii, i64 0
  %.sroa.0.4.vec.insert.i68 = insertelement <2 x float> %.sroa.0.0.vec.insert.i67, float %i.ij, i64 1
  %.sroa.3.12.vec.insert.i69 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ik, i64 0
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store <2 x float> %.sroa.0.4.vec.insert.i68, ptr %i.il, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store <2 x float> %.sroa.3.12.vec.insert.i69, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !31
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.iq = load float, ptr %i.in, align 4, !tbaa !10
  %i.ir = load float, ptr %i.io, align 4, !tbaa !10
  %i.is = load float, ptr %i.ip, align 4, !tbaa !10
  %i.it = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.ir, i64 1
  %i.iv = shufflevector <3 x float> %i.hs, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iw = fmul <2 x float> %i.iu, %i.iv
  %i.ix = shufflevector <3 x float> %i.hs, <3 x float> poison, <2 x i32> zeroinitializer
  %i.iy = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.iq, i64 1
  %i.iz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.iy, <2 x float> %i.iw)
  %i.ja = shufflevector <3 x float> %i.hs, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jb = insertelement <2 x float> poison, float %i.he, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.is, i64 1
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ja, <2 x float> %i.jc, <2 x float> %i.iz)
  store <2 x float> %i.jd, ptr %i.im, align 8, !tbaa !10
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.jh = load float, ptr %i.je, align 8, !tbaa !10
  %i.ji = load float, ptr %i.jf, align 8, !tbaa !10
  %i.jj = load float, ptr %i.jg, align 8, !tbaa !10
  %i.jk = fmul float %i.ji, %i.hz
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.jh, float %i.jk)
  %i.jm = tail call noundef float @llvm.fmuladd.f32(float %i.id, float %i.jj, float %i.jl)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store float %i.jm, ptr %i.jn, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  %i.a = zext i1 %5 to i8
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV18btSliderConstraint, i64 16), ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 %i.a, ptr %i.q, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> <float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 0.000000e+00, float 0.000000e+00>, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 0.000000e+00, float 0.000000e+00>, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.w, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i8 0, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store <2 x float> zeroinitializer, ptr %i.aa, align 4, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 0, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.z, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28, !nonnull !26, !align !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %i.aj)
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  %i.a = zext i1 %3 to i8
  %i.b = tail call noundef nonnull align 8 dereferenceable(744) ptr @_ZN17btTypedConstraint12getFixedBodyEv()
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(744) %i.b, ptr noundef nonnull align 8 dereferenceable(744) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV18btSliderConstraint, i64 16), ptr %0, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 %i.a, ptr %i.k, align 4, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load float, ptr %i.y, align 8, !tbaa !10, !noalias !63 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !10, !noalias !64
  %i.ad = load <2 x float>, ptr %i.m, align 8, !tbaa !10, !noalias !63 ; 4 uses
  %i.ae = load <2 x float>, ptr %i.d, align 4, !tbaa !10, !noalias !63 ; 2 uses
  %i.af = load <2 x float>, ptr %i.f, align 4, !tbaa !10, !noalias !63 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.h, align 4, !tbaa !10, !noalias !63 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> %i.ad, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float 0.000000e+00, i64 3
  %i.aj = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aj, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.al = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.an = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ao = insertelement <4 x float> %i.an, float 0.000000e+00, i64 3
  %i.ap = shufflevector <2 x float> %i.ad, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aq = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ar = insertelement <4 x float> %i.aq, float 0.000000e+00, i64 3
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.at = load <2 x float>, ptr %i.u, align 8, !tbaa !10, !noalias !63 ; 3 uses
  %i.au = load <2 x float>, ptr %i.p, align 8, !tbaa !10, !noalias !63 ; 2 uses
  %i.av = load float, ptr %i.s, align 4, !tbaa !10, !noalias !63
  %i.aw = load <2 x float>, ptr %i.o, align 8, !tbaa !10, !noalias !63 ; 2 uses
  %i.ax = load float, ptr %i.r, align 4, !tbaa !10, !noalias !63
  %i.ay = load <2 x float>, ptr %i.q, align 8, !tbaa !10, !noalias !63 ; 2 uses
  %6 = load float, ptr %i.t, align 4, !tbaa !10, !noalias !63
  %i.az = load float, ptr %4, align 8, !tbaa !10, !noalias !64 ; 2 uses
  %7 = load float, ptr %i.i, align 4, !tbaa !10, !noalias !64 ; 2 uses
  %i.ba = load float, ptr %5, align 4, !tbaa !10, !noalias !64 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.aa, align 8, !tbaa !10, !noalias !64
  %i.bc = load <2 x float>, ptr %i.n, align 4, !tbaa !10, !noalias !63 ; 3 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bf = load <2 x float>, ptr %i.v, align 4, !tbaa !10, !noalias !63 ; 3 uses
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2>
  %8 = insertelement <2 x float> poison, float %i.az, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bg, %9
  %10 = insertelement <2 x float> poison, float %7, i64 0
  %i.bi = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.ad, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> %i.bh)
  %11 = insertelement <2 x float> poison, float %i.ba, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = shufflevector <2 x float> %i.bc, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3>
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.bl, <2 x float> %i.bk)
  %i.bn = fadd <2 x float> %i.bb, %i.bm
  %i.bo = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.am, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bq = fmul <4 x float> %i.ai, %i.bp
  %i.br = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> %i.ao, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.ap, <4 x float> %i.bq)
  %i.bu = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.ar, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.be, <4 x float> %i.bt)
  %i.bx = shufflevector <2 x float> %i.at, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.by = shufflevector <2 x float> %i.af, <2 x float> %i.au, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bz = insertelement <4 x float> %i.by, float 1.000000e+00, i64 3 ; 2 uses
  %i.ca = fmul <4 x float> %i.bx, %i.bz
  %i.cb = shufflevector <2 x float> %i.ae, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cc = insertelement <4 x float> %i.cb, float 0.000000e+00, i64 3 ; 2 uses
  %i.cd = shufflevector <2 x float> %i.at, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cd, <4 x float> %i.ca)
  %i.cf = shufflevector <2 x float> %i.ag, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3 ; 2 uses
  %i.ch = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.ci, <4 x float> %i.ce)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cl = load <2 x float>, ptr %i.w, align 8, !tbaa !10, !noalias !63 ; 4 uses
  %i.cm = load float, ptr %i.x, align 4, !tbaa !10, !noalias !63
  %i.cn = fmul float %i.cm, %i.az
  %i.co = extractelement <2 x float> %i.cl, i64 0
  %i.cp = tail call float @llvm.fmuladd.f32(float %7, float %i.co, float %i.cn)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.z, float %i.cp)
  %i.cr = fadd float %i.cq, %i.ac
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cr, i64 0
  %i.cs = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ct = insertelement <4 x float> %i.cs, float 0.000000e+00, i64 3
  %i.cu = insertelement <4 x float> %i.ct, float %i.av, i64 2
  %i.cv = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cw = shufflevector <4 x float> %i.bz, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cx = fmul <4 x float> %i.cu, %i.cw
  %i.cy = insertelement <4 x float> %i.cc, float %i.ax, i64 2
  %i.cz = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.cz, <4 x float> %i.cx)
  %i.db = insertelement <4 x float> %i.cg, float %6, i64 2
  %i.dc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.z, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dd, <4 x float> %i.da)
  store <4 x float> %i.bw, ptr %i.l, align 4
  store <4 x float> %i.cj, ptr %i.as, align 4
  store <4 x float> %i.de, ptr %i.ck, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> %i.bn, ptr %i.df, align 4
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.20.48..sroa_idx, align 4, !tbaa !31
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> <float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dg, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 0.000000e+00, float 0.000000e+00>, ptr %i.dh, align 8, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 0.000000e+00, float 0.000000e+00>, ptr %i.di, align 8, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.dj, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.dk, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.dm, align 8, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i8 0, ptr %i.dn, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store <2 x float> zeroinitializer, ptr %i.dp, align 4, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store float 0.000000e+00, ptr %i.dq, align 4, !tbaa !22
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 0, ptr %i.dr, align 4, !tbaa !23
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.do, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.ds, align 1, !tbaa !24
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28, !nonnull !26, !align !27
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.dv, ptr noundef nonnull align 4 dereferenceable(64) %i.dy)
  ret void
}

declare noundef nonnull align 8 dereferenceable(744) ptr @_ZN17btTypedConstraint12getFixedBodyEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !30, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !37
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i32 4, ptr %1, align 4, !tbaa !37
  store i32 2, ptr %i.d, align 4, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28, !nonnull !26, !align !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(64) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  store float 0.000000e+00, ptr %i.k, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 3 uses
  store i8 0, ptr %i.l, align 1, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !42 ; 2 uses
  %i.q = fcmp ugt float %i.n, %i.p
  br i1 %i.q, label %_ZN18btSliderConstraint13testAngLimitsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.u = load float, ptr %i.r, align 4, !tbaa !10
  %i.v = load float, ptr %i.s, align 4, !tbaa !10
  %i.w = load float, ptr %i.t, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.aa = load float, ptr %i.x, align 8, !tbaa !10
  %i.ab = load float, ptr %i.y, align 8, !tbaa !10
  %i.ac = load float, ptr %i.z, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 932
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.ag = load float, ptr %i.ad, align 4, !tbaa !10 ; 2 uses
  %i.ah = load float, ptr %i.ae, align 4, !tbaa !10 ; 2 uses
  %i.ai = load float, ptr %i.af, align 4, !tbaa !10 ; 2 uses
  %i.aj = fmul float %i.ab, %i.ah
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.aa, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ac, float %i.ak)
  %i.am = fmul float %i.v, %i.ah
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.u, float %i.am)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.w, float %i.an)
  %i.ap = tail call noundef float @atan2f(float noundef %i.al, float noundef %i.ao) #18
  %i.aq = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.ap, float noundef %i.n, float noundef %i.p) ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1108
  store float %i.aq, ptr %i.ar, align 4, !tbaa !43
  %i.as = load float, ptr %i.m, align 8, !tbaa !41 ; 2 uses
  %i.at = fcmp olt float %i.aq, %i.as
  br i1 %i.at, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load float, ptr %i.o, align 4, !tbaa !42 ; 2 uses
  %i.av = fcmp ogt float %i.aq, %i.au
  br i1 %i.av, label %.sink.split.i, label %_ZN18btSliderConstraint13testAngLimitsEv.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %.sink32.i = phi float [ %i.as, %bb.d ], [ %i.au, %bb.e ]
  %i.aw = fsub float %i.aq, %.sink32.i
  store float %i.aw, ptr %i.k, align 8, !tbaa !39
  store i8 1, ptr %i.l, align 1, !tbaa !40
  br label %_ZN18btSliderConstraint13testAngLimitsEv.exit

_ZN18btSliderConstraint13testAngLimitsEv.exit:    ; preds = %bb.c, %bb.e, %.sink.split.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i8 0, ptr %i.ax, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.az = load float, ptr %i.ay, align 8, !tbaa !10 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.az, ptr %i.ba, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !46 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.be = load float, ptr %i.bd, align 4, !tbaa !47 ; 3 uses
  %i.bf = fcmp ugt float %i.bc, %i.be
  br i1 %i.bf, label %_ZN18btSliderConstraint13testLinLimitsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN18btSliderConstraint13testAngLimitsEv.exit
  %i.bg = fcmp ogt float %i.az, %i.be
  br i1 %i.bg, label %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = fcmp olt float %i.az, %i.bc
  br i1 %i.bh, label %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split, label %_ZN18btSliderConstraint13testLinLimitsEv.exit

_ZN18btSliderConstraint13testLinLimitsEv.exit:    ; preds = %_ZN18btSliderConstraint13testAngLimitsEv.exit, %bb.g
  store float 0.000000e+00, ptr %i.ay, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !21, !range !30, !noundef !26
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread, label %bb.h

_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split: ; preds = %bb.g, %bb.f
  %.sink16 = phi float [ %i.be, %bb.f ], [ %i.bc, %bb.g ]
  %i.bl = fsub float %i.az, %.sink16
  store float %i.bl, ptr %i.ay, align 8, !tbaa !10
  store i8 1, ptr %i.ax, align 8, !tbaa !44
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread

_ZN18btSliderConstraint13testLinLimitsEv.exit.thread: ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split, %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.bm = load <2 x i32>, ptr %1, align 4, !tbaa !65
  %i.bn = add nsw <2 x i32> %i.bm, <i32 1, i32 -1>
  store <2 x i32> %i.bn, ptr %1, align 4, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread, %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.bo = load i8, ptr %i.l, align 1, !tbaa !40, !range !30, !noundef !26
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !48, !range !30, !noundef !26
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bt = load i32, ptr %1, align 4, !tbaa !37
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %1, align 4, !tbaa !37
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !38
  %i.bw = add nsw i32 %i.bv, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.j
  %.sink = phi i32 [ %i.bw, %bb.j ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint13testAngLimitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1152) initializes((321, 322), (1112, 1116)) %0) local_unnamed_addr #4 align 2 {
bb.a:
end_hunk_0
