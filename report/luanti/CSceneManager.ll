Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CSceneManager?download=true
inline.NumInlined: 1657
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5scene12SViewFrustum22recalculateBoundingBoxEv:bb.a
  %i.cm = load float, ptr %i.a, align 4, !tbaa !136
  %i.cn = fcmp olt float %.sroa.063.0.vec.extract, %i.cm
  br i1 %i.cn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store float %.sroa.063.0.vec.extract, ptr %i.a, align 4, !tbaa !136
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.co = load float, ptr %i.t, align 4, !tbaa !137
  %i.cp = fcmp olt float %.sroa.063.4.vec.extract, %i.co
  br i1 %i.cp, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store float %.sroa.063.4.vec.extract, ptr %i.t, align 4, !tbaa !137
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.cq = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !138
  %i.cr = fcmp olt float %.sroa.2.0.copyload.i54, %i.cq
  br i1 %i.cr, label %bb.bo, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57

bb.bo:                                            ; preds = %bb.bn
  store float %.sroa.2.0.copyload.i54, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !138
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57: ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.cs, align 8, !tbaa !141
  %i.ct = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 0 uses
  %.sroa.0.0.copyload.i58 = load <2 x float>, ptr %1, align 8 ; 2 uses
  %.sroa.2.0.copyload.i59 = load float, ptr %i.cs, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i58, i64 0 ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i58, i64 1 ; 4 uses
  %i.cu = load float, ptr %i.g, align 4, !tbaa !133
  %i.cv = fcmp ogt float %.sroa.0.0.vec.extract, %i.cu
  br i1 %i.cv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57
  store float %.sroa.0.0.vec.extract, ptr %i.g, align 4, !tbaa !133
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57
  %i.cw = load float, ptr %i.m, align 4, !tbaa !134
  %i.cx = fcmp ogt float %.sroa.0.4.vec.extract, %i.cw
  br i1 %i.cx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store float %.sroa.0.4.vec.extract, ptr %i.m, align 4, !tbaa !134
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.cy = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !135
  %i.cz = fcmp ogt float %.sroa.2.0.copyload.i59, %i.cy
  br i1 %i.cz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store float %.sroa.2.0.copyload.i59, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !135
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.da = load float, ptr %i.a, align 4, !tbaa !136
  %i.db = fcmp olt float %.sroa.0.0.vec.extract, %i.da
  br i1 %i.db, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store float %.sroa.0.0.vec.extract, ptr %i.a, align 4, !tbaa !136
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.dc = load float, ptr %i.t, align 4, !tbaa !137
  %i.dd = fcmp olt float %.sroa.0.4.vec.extract, %i.dc
  br i1 %i.dd, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store float %.sroa.0.4.vec.extract, ptr %i.t, align 4, !tbaa !137
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.de = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !138
  %i.df = fcmp olt float %.sroa.2.0.copyload.i59, %i.de
  br i1 %i.df, label %bb.bz, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit62

bb.bz:                                            ; preds = %bb.by
  store float %.sroa.2.0.copyload.i59, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !138
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit62

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit62: ; preds = %bb.by, %bb.bz
  call void @_ZN5scene12SViewFrustum25recalculateBoundingSphereEv(ptr noundef nonnull align 4 dereferenceable(280) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5scene12SViewFrustum25recalculateBoundingSphereEv(ptr noundef nonnull align 4 dereferenceable(280) %0) local_unnamed_addr #22 comdat align 2 {
.preheader.preheader:
  %1 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %5 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %7 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %10 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %11 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %12 = alloca %"class.core::vector3d", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store <2 x float> zeroinitializer, ptr %12, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !141
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.e = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %12) ; 0 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load float, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x float> zeroinitializer, ptr %11, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.h = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %11) ; 0 uses
  %.sroa.0.0.copyload.i136 = load <2 x float>, ptr %11, align 8 ; 2 uses
  %.sroa.2.0.copyload.i137 = load float, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 8, !tbaa !141
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.k = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %10) ; 0 uses
  %.sroa.0.0.copyload.i142 = load <2 x float>, ptr %10, align 8 ; 2 uses
  %.sroa.2.0.copyload.i143 = load float, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.l, align 8, !tbaa !141
  %i.m = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %9) ; 0 uses
  %.sroa.0.0.copyload.i146 = load <2 x float>, ptr %9, align 8 ; 2 uses
  %.sroa.2.0.copyload.i147 = load float, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load float, ptr %i.n, align 4, !tbaa !246 ; 3 uses
  %i.p = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i142, <2 x i32> <i32 0, i32 2>
  %i.q = shufflevector <2 x float> %.sroa.0.0.copyload.i136, <2 x float> %.sroa.0.0.copyload.i146, <2 x i32> <i32 0, i32 2>
  %i.r = fsub <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i142, <2 x i32> <i32 1, i32 3>
  %i.t = shufflevector <2 x float> %.sroa.0.0.copyload.i136, <2 x float> %.sroa.0.0.copyload.i146, <2 x i32> <i32 1, i32 3>
  %i.u = fsub <2 x float> %i.s, %i.t              ; 2 uses
  %i.v = insertelement <2 x float> poison, float %.sroa.2.0.copyload.i, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.sroa.2.0.copyload.i143, i64 1
  %i.x = insertelement <2 x float> poison, float %.sroa.2.0.copyload.i137, i64 0
  %i.y = insertelement <2 x float> %i.x, float %.sroa.2.0.copyload.i147, i64 1
  %i.z = fsub <2 x float> %i.w, %i.y              ; 2 uses
  %i.aa = fmul <2 x float> %i.u, %i.u
  %i.ab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.aa)
  %i.ac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.ab)
  %i.ad = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ac) ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ag = fsub <2 x float> %i.ae, %i.af
  %i.ah = fadd <2 x float> %i.ae, %i.af
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ag, %shift
  %i.ai = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aj = fmul float %i.o, 4.000000e+00
  %i.ak = fdiv float %i.ai, %i.aj
  %i.al = fadd float %i.o, %i.ak
  %i.am = fmul float %i.al, 5.000000e-01
  %i.an = fsub float %i.o, %i.am                  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !141
  %i.aq = load <2 x float>, ptr %i.b, align 4, !tbaa !19
  %i.ar = load <2 x float>, ptr %0, align 4, !tbaa !19
  %i.as = insertelement <2 x float> poison, float %i.an, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.aq, %i.at
  %i.av = fsub <2 x float> %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !141
  %i.ay = fmul float %i.ap, %i.an
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 9 uses
  store <2 x float> %i.av, ptr %i.ba, align 4, !tbaa !19
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 9 uses
  store float %i.az, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.bb, align 8, !tbaa !141
  %i.bc = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %8) ; 0 uses
  %.sroa.0.0.copyload.i167 = load <2 x float>, ptr %8, align 8 ; 2 uses
  %.sroa.2.0.copyload.i168 = load float, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.be = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.bf, align 8, !tbaa !141
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.ba, align 4, !tbaa !19 ; 2 uses
  %i.bo = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %7) ; 0 uses
  %.sroa.0.0.copyload.i175 = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.2.0.copyload.i176 = load float, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bp = load float, ptr %i.ba, align 4, !tbaa !139
  %i.bq = load float, ptr %i.bd, align 4, !tbaa !140
  %i.br = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bg, align 8, !tbaa !141
  %i.bs = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %6) ; 0 uses
  %.sroa.0.0.copyload.i183 = load <2 x float>, ptr %6, align 8
  %.sroa.2.0.copyload.i184 = load float, ptr %i.bg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bt = load float, ptr %i.ba, align 4, !tbaa !139
  %i.bu = load float, ptr %i.bd, align 4, !tbaa !140
  %i.bv = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bi, align 8, !tbaa !141
  %i.bw = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  %.sroa.0.0.copyload.i191 = load <2 x float>, ptr %5, align 8
  %.sroa.2.0.copyload.i192 = load float, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bx = load float, ptr %i.ba, align 4, !tbaa !139
  %i.by = shufflevector <2 x float> %.sroa.0.0.copyload.i167, <2 x float> %.sroa.0.0.copyload.i175, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bz = shufflevector <2 x float> %.sroa.0.0.copyload.i183, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ca = shufflevector <4 x float> %i.by, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cb = shufflevector <2 x float> %.sroa.0.0.copyload.i191, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cd = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ce = insertelement <4 x float> %i.cd, float %i.bp, i64 1
  %i.cf = insertelement <4 x float> %i.ce, float %i.bt, i64 2
  %i.cg = insertelement <4 x float> %i.cf, float %i.bx, i64 3
  %i.ch = fsub <4 x float> %i.cc, %i.cg           ; 2 uses
  %i.ci = load float, ptr %i.bd, align 4, !tbaa !140
  %i.cj = shufflevector <2 x float> %.sroa.0.0.copyload.i167, <2 x float> %.sroa.0.0.copyload.i175, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cm = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float %i.bq, i64 1
  %i.co = insertelement <4 x float> %i.cn, float %i.bu, i64 2
  %i.cp = insertelement <4 x float> %i.co, float %i.ci, i64 3
  %i.cq = fsub <4 x float> %i.cl, %i.cp           ; 2 uses
  %i.cr = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bj, align 8, !tbaa !141
  %i.cs = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %.sroa.0.0.copyload.i199 = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.2.0.copyload.i200 = load float, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ct = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bk, align 8, !tbaa !141
  %13 = fmul <4 x float> %i.cq, %i.cq
  %14 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.ch, <4 x float> %13)
  %15 = insertelement <4 x float> poison, float %.sroa.2.0.copyload.i168, i64 0
  %16 = insertelement <4 x float> %15, float %.sroa.2.0.copyload.i176, i64 1
  %17 = insertelement <4 x float> %16, float %.sroa.2.0.copyload.i184, i64 2
  %18 = insertelement <4 x float> %17, float %.sroa.2.0.copyload.i192, i64 3
  %19 = insertelement <4 x float> poison, float %i.be, i64 0
  %20 = insertelement <4 x float> %19, float %i.br, i64 1
  %21 = insertelement <4 x float> %20, float %i.bv, i64 2
  %22 = insertelement <4 x float> %21, float %i.cr, i64 3
  %23 = fsub <4 x float> %18, %22                 ; 2 uses
  %24 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> %23, <4 x float> %14) ; 4 uses
  %25 = load <2 x float>, ptr %i.ba, align 4, !tbaa !19 ; 2 uses
  %i.cu = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bh, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  %.sroa.0.0.copyload.i215.a = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.copyload.i216.a = load float, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cv = load float, ptr %i.ba, align 4, !tbaa !139
  %i.cw = load float, ptr %i.bd, align 4, !tbaa !140
  %i.cx = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bl, align 8, !tbaa !141
  %i.cy = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  %.sroa.0.0.copyload.i223.a = load <2 x float>, ptr %2, align 8
  %.sroa.2.0.copyload.i224.a = load float, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cz = load float, ptr %i.ba, align 4, !tbaa !139
  %i.da = load float, ptr %i.bd, align 4, !tbaa !140
  %i.db = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bm, align 8, !tbaa !141
  %26 = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 0 uses
  %.sroa.0.0.copyload.i223 = load <2 x float>, ptr %1, align 8
  %.sroa.2.0.copyload.i224 = load float, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %27 = load float, ptr %i.ba, align 4, !tbaa !139
  %28 = shufflevector <2 x float> %.sroa.0.0.copyload.i199, <2 x float> %.sroa.0.0.copyload.i215.a, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %29 = shufflevector <2 x float> %.sroa.0.0.copyload.i223.a, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %30 = shufflevector <4 x float> %28, <4 x float> %29, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %31 = shufflevector <2 x float> %.sroa.0.0.copyload.i223, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %32 = shufflevector <4 x float> %30, <4 x float> %31, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %33 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dc = insertelement <4 x float> %33, float %i.cv, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %27, i64 3
  %i.df = fsub <4 x float> %32, %i.de             ; 2 uses
  %34 = load float, ptr %i.bd, align 4, !tbaa !140
  %35 = shufflevector <2 x float> %.sroa.0.0.copyload.i199, <2 x float> %.sroa.0.0.copyload.i215.a, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %36 = shufflevector <4 x float> %35, <4 x float> %29, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dg = shufflevector <4 x float> %36, <4 x float> %31, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %37 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dh = insertelement <4 x float> %37, float %i.cw, i64 1
  %i.di = insertelement <4 x float> %i.dh, float %i.da, i64 2
  %i.dj = insertelement <4 x float> %i.di, float %34, i64 3
  %i.dk = fsub <4 x float> %i.dg, %i.dj           ; 2 uses
  %38 = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  %39 = fmul <4 x float> %i.dk, %i.dk
  %i.dl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.df, <4 x float> %39)
  %40 = insertelement <4 x float> poison, float %.sroa.2.0.copyload.i200, i64 0
  %i.dm = insertelement <4 x float> %40, float %.sroa.2.0.copyload.i216.a, i64 1
  %i.dn = insertelement <4 x float> %i.dm, float %.sroa.2.0.copyload.i224.a, i64 2
  %i.do = insertelement <4 x float> %i.dn, float %.sroa.2.0.copyload.i224, i64 3
  %i.dp = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.dq = insertelement <4 x float> %i.dp, float %i.cx, i64 1
  %i.dr = insertelement <4 x float> %i.dq, float %i.db, i64 2
  %41 = insertelement <4 x float> %i.dr, float %38, i64 3
  %42 = fsub <4 x float> %i.do, %41               ; 2 uses
  %i.ds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %42, <4 x float> %i.dl) ; 4 uses
  %i.dt = extractelement <4 x float> %24, i64 0   ; 2 uses
  %43 = fcmp ogt float %i.dt, 0.000000e+00
  %.1 = select i1 %43, float %i.dt, float 0.000000e+00 ; 2 uses
  %44 = extractelement <4 x float> %24, i64 1     ; 2 uses
  %i.du = fcmp ogt float %44, %.1
  %.1.a = select i1 %i.du, float %44, float %.1   ; 2 uses
  %45 = extractelement <4 x float> %24, i64 2     ; 2 uses
  %i.dv = fcmp ogt float %45, %.1.a
  %.1.1 = select i1 %i.dv, float %45, float %.1.a ; 2 uses
  %i.dw = extractelement <4 x float> %24, i64 3   ; 2 uses
  %i.dx = fcmp ogt float %i.dw, %.1.1
  %.1.2 = select i1 %i.dx, float %i.dw, float %.1.1 ; 2 uses
  %i.dy = extractelement <4 x float> %i.ds, i64 0 ; 2 uses
  %i.dz = fcmp ogt float %i.dy, %.1.2
  %.1.3 = select i1 %i.dz, float %i.dy, float %.1.2 ; 2 uses
  %i.ea = extractelement <4 x float> %i.ds, i64 1 ; 2 uses
  %i.eb = fcmp ogt float %i.ea, %.1.3
  %.1.4 = select i1 %i.eb, float %i.ea, float %.1.3 ; 2 uses
  %i.ec = extractelement <4 x float> %i.ds, i64 2 ; 2 uses
  %i.ed = fcmp ogt float %i.ec, %.1.4
  %.1.5 = select i1 %i.ed, float %i.ec, float %.1.4 ; 2 uses
  %46 = extractelement <4 x float> %i.ds, i64 3   ; 2 uses
  %i.ee = fcmp ogt float %46, %.1.5
  %.1.7 = select i1 %i.ee, float %46, float %.1.5
  %i.ef = call float @sqrtf(float noundef %.1.7) #33
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.ef, ptr %i.eg, align 4, !tbaa !143
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %0, align 4, !tbaa !19 ; 6 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !19 ; 5 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 6 uses
  %i.f = load <2 x float>, ptr %i.b, align 4, !tbaa !19 ; 5 uses
  %i.g = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.h = extractelement <2 x float> %i.c, i64 1   ; 2 uses
  %i.i = fmul float %i.h, %i.g
  %i.j = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.k = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float %i.j, float %i.i)
  %i.m = extractelement <2 x float> %i.d, i64 1
  %i.n = extractelement <2 x float> %i.f, i64 1
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.l) ; 3 uses
  %i.p = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.p
  %i.r = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.q)
  %i.t = shufflevector <2 x float> %i.d, <2 x float> %i.f, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.s)
  %i.v = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u) ; 3 uses
  %i.w = fneg float %i.o
  %i.x = fmul float %i.o, %i.w
  %i.y = extractelement <2 x float> %i.v, i64 0
  %i.z = extractelement <2 x float> %i.v, i64 1
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.y, float %i.z, float %i.x)
  %i.ab = fpext float %i.aa to double             ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp uge double %i.ac, 1.000000e-08
  br i1 %i.ad, label %bb.b, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.b:                                             ; preds = %bb.a
  %i.ae = fneg <2 x float> %i.f
  %i.af = shufflevector <2 x float> %i.d, <2 x float> %i.c, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x float> %i.af, %i.ae
  %i.ah = shufflevector <2 x float> %i.f, <2 x float> %i.e, <2 x i32> <i32 1, i32 2>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.ah, <2 x float> %i.ag) ; 3 uses
  %i.aj = fneg float %i.j
  %i.ak = fmul float %i.h, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.k, float %i.g, float %i.ak) ; 2 uses
  %i.am = load float, ptr %2, align 4, !tbaa !139 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !140 ; 2 uses
  %i.ap = extractelement <2 x float> %i.ai, i64 1
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ai, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ar, float %i.aq)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !141 ; 2 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.al, float %i.as) ; 2 uses
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.c, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.c:                                             ; preds = %bb.b
  %i.ax = fdiv double 1.000000e+00, %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !148 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !148 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !148
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.az, i64 1
  %i.bg = fneg <2 x float> %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bb, i64 1
  %i.bl = fmul <2 x float> %i.bi, %i.bk
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.bg, <2 x float> %i.bl)
  %i.bn = fpext <2 x float> %i.bm to <2 x double>
  %i.bo = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x double> %i.bp, %i.bn
  %i.br = fptrunc <2 x double> %i.bq to <2 x float> ; 3 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.c, %i.bs
  %i.bu = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.e, %i.bu
  %i.bw = fadd <2 x float> %i.bv, %i.bt           ; 3 uses
  %i.bx = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 1, i32 3>
  %i.by = fmul <2 x float> %i.bx, %i.br           ; 2 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.by, %shift
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ca = extractelement <2 x float> %i.bw, i64 1
  %i.cb = fmul float %i.ao, %i.ca
  %i.cc = extractelement <2 x float> %i.bw, i64 0
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.am, float %i.cc, float %i.cb)
  %i.ce = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.bz, float %i.cd)
  %i.cf = fadd float %i.bd, %i.ce
  %i.cg = fneg float %i.cf
  %i.ch = fdiv float %i.cg, %i.av                 ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.ai, %i.cj
  %i.cl = fmul float %i.al, %i.ch
  %i.cm = fadd <2 x float> %i.bw, %i.ck
  %i.cn = fadd float %i.bz, %i.cl
  store <2 x float> %i.cm, ptr %3, align 4, !tbaa !19
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cn, ptr %.sroa.4.0..sroa_idx.i5, align 4, !tbaa !19
  br label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17, !range !106, !noundef !107
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !106
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !130
  %i.i = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !131  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.k, ptr %i.a, align 8, !tbaa !170
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !111
  %i.n = load i64, ptr %i.a, align 8, !tbaa !170
  store i64 %i.n, ptr %i.h, align 8, !tbaa !112
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !112
  store i8 %i.p, ptr %i.o, align 1, !tbaa !112
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !131
  %i.s = load ptr, ptr %0, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i8 1, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !17
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
end_hunk_0
