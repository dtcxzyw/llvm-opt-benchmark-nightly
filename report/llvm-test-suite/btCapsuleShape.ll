inline.NumInlined: 137
inline.NumDeleted: 34
begin_hunk_0_@_ZNK14btCapsuleShape37localGetSupportingVertexWithoutMarginERK9btVector3:bb.a
  %.0 = select i1 %i.bb, float %i.ba, float f0xDD5E0B6B
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.be = load i32, ptr %i.i, align 8, !tbaa !13
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !19
  %i.bi = fneg float %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bf
  store float %i.bi, ptr %i.bj, align 4, !tbaa !19
  %i.bk = load float, ptr %i.w, align 8, !tbaa !19
  %i.bl = fmul float %.sroa.098.0, %i.bk
  %i.bm = load float, ptr %i.z, align 4, !tbaa !19
  %i.bn = fmul float %.sroa.13.0, %i.bm
  %i.bo = load float, ptr %i.ac, align 8, !tbaa !19
  %i.bp = fmul float %.sroa.23.0, %i.bo
  %i.bq = fmul float %i.p, %i.bl
  %i.br = fmul float %i.p, %i.bn
  %i.bs = fmul float %i.p, %i.bp
  %i.bt = load float, ptr %3, align 4, !tbaa !19
  %i.bu = fadd float %i.bq, %i.bt
  %i.bv = load float, ptr %i.bc, align 4, !tbaa !19
  %i.bw = fadd float %i.br, %i.bv
  %i.bx = load float, ptr %i.bd, align 4, !tbaa !19
  %i.by = fadd float %i.bs, %i.bx
  %i.bz = load ptr, ptr %0, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef float %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %i.cd = fmul float %.sroa.098.0, %i.cc
  %i.ce = fmul float %.sroa.13.0, %i.cc
  %i.cf = fmul float %.sroa.23.0, %i.cc
  %i.cg = fsub float %i.bu, %i.cd                 ; 2 uses
  %i.ch = fsub float %i.bw, %i.ce                 ; 2 uses
  %i.ci = fsub float %i.by, %i.cf                 ; 2 uses
  %.sroa.0.0.vec.insert.i54 = insertelement <2 x float> poison, float %i.cg, i64 0
  %.sroa.0.4.vec.insert.i55 = insertelement <2 x float> %.sroa.0.0.vec.insert.i54, float %i.ch, i64 1
  %.sroa.3.12.vec.insert.i56 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  %i.cj = fmul float %.sroa.13.0, %i.ch
  %i.ck = tail call float @llvm.fmuladd.f32(float %.sroa.098.0, float %i.cg, float %i.cj)
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %.sroa.23.0, float %i.ci, float %i.ck)
  %i.cm = fcmp ogt float %i.cl, %.0               ; 2 uses
  %.sroa.0123.1 = select i1 %i.cm, <2 x float> %.sroa.0.4.vec.insert.i55, <2 x float> %.sroa.0123.0
  %.sroa.5125.1 = select i1 %i.cm, <2 x float> %.sroa.3.12.vec.insert.i56, <2 x float> %.sroa.5125.0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0123.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.5125.1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define dso_local void @_ZNK14btCapsuleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %5 = alloca %class.btVector3, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = add nsw i32 %i.b, 2
  %i.d = srem i32 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !19 ; 3 uses
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.n = insertelement <2 x float> poison, float %i.h, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.q = load i32, ptr %i.a, align 8, !tbaa !13
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  %i.u = getelementptr inbounds [4 x i8], ptr %4, i64 %i.r
  store float %i.t, ptr %i.u, align 4, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !19
  %i.x = load float, ptr %i.l, align 8, !tbaa !19
  %i.y = fmul float %i.w, %i.x
  %i.z = fmul float %i.h, %i.y
  %i.aa = load float, ptr %i.j, align 8, !tbaa !19
  %i.ab = fadd float %i.z, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load <2 x float>, ptr %i.p, align 4, !tbaa !19
  %i.ag = load <2 x float>, ptr %i.k, align 8, !tbaa !19
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = fmul <2 x float> %i.o, %i.ah
  %i.aj = load <2 x float>, ptr %4, align 8, !tbaa !19
  %i.ak = fadd <2 x float> %i.ai, %i.aj
  %i.al = tail call noundef float %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %i.am = load <2 x float>, ptr %i.p, align 4, !tbaa !19 ; 4 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  %i.ao = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.am
  %i.ar = load float, ptr %i.v, align 4, !tbaa !19 ; 3 uses
  %i.as = fmul float %i.al, %i.ar
  %i.at = fsub <2 x float> %i.ak, %i.aq           ; 3 uses
  %i.au = fsub float %i.ab, %i.as                 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.am, %i.at
  %i.av = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aw = extractelement <2 x float> %i.at, i64 0
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.an, float %i.aw, float %i.av)
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.au, float %i.ax) ; 2 uses
  %i.az = fcmp ogt float %i.ay, f0xDD5E0B6B
  br i1 %i.az, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.3.12.vec.insert.i42 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.at, ptr %i.ba, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i42, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !20
  %i.bb = load <2 x float>, ptr %i.p, align 4, !tbaa !19
  %.pre106 = load float, ptr %i.v, align 4, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bc = phi float [ %.pre106, %bb.c ], [ %i.ar, %bb.b ]
  %.023 = phi float [ %i.ay, %bb.c ], [ f0xDD5E0B6B, %bb.b ]
  %i.bd = phi <2 x float> [ %i.bb, %bb.c ], [ %i.am, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.be = load i32, ptr %i.a, align 8, !tbaa !13
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !19
  %i.bi = fneg float %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bf
  store float %i.bi, ptr %i.bj, align 4, !tbaa !19
  %i.bk = load float, ptr %i.l, align 8, !tbaa !19
  %i.bl = fmul float %i.bc, %i.bk
  %i.bm = fmul float %i.h, %i.bl
  %i.bn = load float, ptr %i.m, align 8, !tbaa !19
  %i.bo = fadd float %i.bm, %i.bn
  %i.bp = load ptr, ptr %0, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load <2 x float>, ptr %i.k, align 8, !tbaa !19
  %i.bt = fmul <2 x float> %i.bd, %i.bs
  %i.bu = fmul <2 x float> %i.o, %i.bt
  %i.bv = load <2 x float>, ptr %5, align 8, !tbaa !19
  %i.bw = fadd <2 x float> %i.bu, %i.bv
  %i.bx = tail call noundef float %i.br(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %i.by = load <2 x float>, ptr %i.p, align 4, !tbaa !19 ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.by
  %i.cc = load float, ptr %i.v, align 4, !tbaa !19 ; 2 uses
  %i.cd = fmul float %i.bx, %i.cc
  %i.ce = fsub <2 x float> %i.bw, %i.cb           ; 3 uses
  %i.cf = fsub float %i.bo, %i.cd                 ; 2 uses
  %foldExtExtBinop109 = fmul <2 x float> %i.by, %i.ce
  %i.cg = extractelement <2 x float> %foldExtExtBinop109, i64 1
  %i.ch = extractelement <2 x float> %i.ce, i64 0
  %i.ci = extractelement <2 x float> %i.by, i64 0
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ch, float %i.cg)
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cf, float %i.cj)
  %i.cl = fcmp ogt float %i.ck, %.023
  br i1 %i.cl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.3.12.vec.insert.i67 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cf, i64 0
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.ce, ptr %i.cm, align 4
  %.sroa.10.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i67, ptr %.sroa.10.0..sroa_idx97, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK14btCapsuleShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, float noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 12)) %2) unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 16          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = add nsw i32 %i.b, 2
  %i.d = srem i32 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.h, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.j, ptr %3, align 16, !tbaa !19
  %i.k = sext i32 %i.b to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !19
  %i.n = getelementptr inbounds [4 x i8], ptr %3, i64 %i.k ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !19
  %i.p = fadd float %i.m, %i.o
  store float %i.p, ptr %i.n, align 4, !tbaa !19
  %5 = load float, ptr %3, align 16, !tbaa !19
  %i.q = fmul float %1, f0x3DAAAAAA               ; 2 uses
  %6 = load <2 x float>, ptr %4, align 4, !tbaa !19 ; 2 uses
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x float> %7, float %5, i64 1
  %9 = fadd <2 x float> %8, splat (float 4.000000e-02)
  %10 = fadd <2 x float> %6, splat (float 4.000000e-02)
  %11 = fmul <2 x float> %9, splat (float 2.000000e+00) ; 2 uses
  %12 = fmul <2 x float> %10, splat (float 2.000000e+00) ; 2 uses
  %13 = fmul <2 x float> %11, %11                 ; 2 uses
  %14 = fmul <2 x float> %12, %12                 ; 2 uses
  %15 = fadd <2 x float> %13, %14
  %16 = insertelement <2 x float> poison, float %i.q, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x float> %17, %15
  store <2 x float> %18, ptr %2, align 4, !tbaa !19
  %shift = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %14
  %19 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %20 = fmul float %i.q, %19
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %20, ptr %21, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN15btCapsuleShapeXC2Eff(ptr noundef nonnull align 8 dereferenceable(68) %0, float noundef %1, float noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV15btCapsuleShapeX, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = fmul float %2, 5.000000e-01
  store float %i.d, ptr %i.c, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %1, ptr %i.e, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %1, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !19
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN15btCapsuleShapeZC2Eff(ptr noundef nonnull align 8 dereferenceable(68) %0, float noundef %1, float noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.a, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV15btCapsuleShapeZ, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 2, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %1, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %1, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.scalar = fmul float %2, 5.000000e-01
  %i.f = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  store <2 x float> %i.f, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN14btCapsuleShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #12
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK14btCapsuleShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = add nsw i32 %i.b, 2
  %i.d = srem i32 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load float, ptr %i.g, align 4, !tbaa !19 ; 4 uses
  store float %i.h, ptr %4, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store float %i.h, ptr %i.i, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.h, ptr %i.j, align 4, !tbaa !19
  %i.k = sext i32 %i.b to i64                     ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !19
  %i.n = fadd float %i.h, %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %4, i64 %i.k
  store float %i.n, ptr %i.o, align 4, !tbaa !19
  %i.p = load ptr, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef float %i.r(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.t = load ptr, ptr %0, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef float %i.v(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.x = load ptr, ptr %0, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef float %i.z(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.ab = load float, ptr %4, align 4, !tbaa !19
  %i.ac = fadd float %i.s, %i.ab                  ; 3 uses
  %i.ad = load float, ptr %i.i, align 4, !tbaa !19
  %i.ae = fadd float %i.w, %i.ad                  ; 3 uses
  %i.af = load float, ptr %i.j, align 4, !tbaa !19
  %i.ag = fadd float %i.aa, %i.af                 ; 3 uses
  %i.ah = load float, ptr %1, align 4, !tbaa !19, !noalias !21
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !19, !noalias !21
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !19, !noalias !21
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !19, !noalias !21
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !19, !noalias !21
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !19, !noalias !21
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load float, ptr %i.ay, align 4, !tbaa !19, !noalias !21
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !19, !noalias !21
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !19, !noalias !21
  %i.bg = tail call noundef float @llvm.fabs.f32(float %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.017.0.copyload = load float, ptr %i.bh, align 4 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.519.0.copyload = load float, ptr %.sroa.519.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.bi = fmul float %i.ae, %i.al
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ac, float %i.bi)
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ag, float %i.bj) ; 2 uses
  %i.bl = fmul float %i.ae, %i.au
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ac, float %i.bl)
  %i.bn = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ag, float %i.bm) ; 2 uses
  %i.bo = fmul float %i.ae, %i.bd
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ac, float %i.bo)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ag, float %i.bp) ; 2 uses
  %i.br = fsub float %.sroa.017.0.copyload, %i.bk
  %i.bs = fsub float %.sroa.519.0.copyload, %i.bn
  %i.bt = fsub float %.sroa.7.0.copyload, %i.bq
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.br, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.bs, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bt, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !20
  %i.bu = fadd float %i.bk, %.sroa.017.0.copyload
  %i.bv = fadd float %i.bn, %.sroa.519.0.copyload
  %i.bw = fadd float %.sroa.7.0.copyload, %i.bq
  %.sroa.0.0.vec.insert.i7 = insertelement <2 x float> poison, float %i.bu, i64 0
  %.sroa.0.4.vec.insert.i8 = insertelement <2 x float> %.sroa.0.0.vec.insert.i7, float %i.bv, i64 1
  %.sroa.3.12.vec.insert.i9 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bw, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i8, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i9, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN14btCapsuleShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef float %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_0
