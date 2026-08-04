inline.NumInlined: 256
inline.NumDeleted: 61
begin_hunk_0_@_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3:bb.a
  %i.aa = load float, ptr %i.z, align 8, !tbaa !17
  %i.ab = fmul float %i.y, %i.aa
  br label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !42
  br label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit

bb.f:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load float, ptr %i.ae, align 8, !tbaa !42
  br label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit

bb.g:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !42
  br label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit

bb.h:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !42
  br label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit

bb.i:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load float, ptr %i.ak, align 8, !tbaa !42
  br label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load float, ptr %i.am, align 8, !tbaa !42
  br label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit

bb.k:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %0, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef float %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %0), !inline_history !43
  br label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit

_ZNK13btConvexShape19getMarginNonVirtualEv.exit:  ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi float [ %i.ar, %bb.k ], [ %i.ab, %bb.d ], [ %i.ad, %bb.e ], [ %i.af, %bb.f ], [ %i.ah, %bb.g ], [ %i.aj, %bb.h ], [ %i.al, %bb.i ], [ %i.an, %bb.j ] ; 2 uses
  %i.as = extractvalue { <2 x float>, <2 x float> } %i.u, 1
  %i.at = extractvalue { <2 x float>, <2 x float> } %i.u, 0 ; 2 uses
  %i.au = load float, ptr %2, align 4, !tbaa !17
  %i.av = fmul float %.0.i, %i.au
  %.sroa.02.0.vec.extract = extractelement <2 x float> %i.at, i64 0
  %i.aw = fadd float %.sroa.02.0.vec.extract, %i.av
  %i.ax = load <2 x float>, ptr %i.b, align 4, !tbaa !17
  %i.ay = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.az, %i.ax
  %i.bb = shufflevector <2 x float> %i.at, <2 x float> %i.as, <2 x i32> <i32 1, i32 2>
  %i.bc = fadd <2 x float> %i.bb, %i.ba           ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bc, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bd, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.be, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK13btConvexShape19getMarginNonVirtualEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  switch i32 %i.b, label %bb.i [
    i32 8, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 13, label %bb.e
    i32 11, label %bb.f
    i32 10, label %bb.g
    i32 5, label %bb.h
    i32 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load float, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load float, ptr %i.e, align 8, !tbaa !17
  %i.g = fmul float %i.d, %i.f
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load float, ptr %i.h, align 8, !tbaa !42
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load float, ptr %i.j, align 8, !tbaa !42
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load float, ptr %i.l, align 8, !tbaa !42
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load float, ptr %i.n, align 8, !tbaa !42
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 8, !tbaa !42
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load float, ptr %i.r, align 8, !tbaa !42
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef float %i.v(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi float [ %i.w, %bb.i ], [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ %i.s, %bb.h ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK13btConvexShape17getAabbNonVirtualERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 4           ; 8 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 4           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  switch i32 %i.b, label %bb.d [
    i32 8, label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit
    i32 4, label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit118
    i32 5, label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit118
    i32 1, label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit86
    i32 10, label %bb.c
    i32 0, label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit69
    i32 13, label %_ZNK13btConvexShape19getMarginNonVirtualEv.exit69
  ]

_ZNK13btConvexShape19getMarginNonVirtualEv.exit:  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load float, ptr %i.c, align 8, !tbaa !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load float, ptr %i.e, align 8, !tbaa !17
  %i.g = fmul float %i.d, %i.f
  %i.h = fadd float %i.d, %i.g                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !17
  %i.k = insertelement <2 x float> poison, float %i.h, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = fsub <2 x float> %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !17
  %i.p = fsub float %i.o, %i.h
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.p, i64 0
  store <2 x float> %i.m, ptr %2, align 4
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.433.0..sroa_idx, align 4, !tbaa !19
  %i.q = load <2 x float>, ptr %i.i, align 4, !tbaa !17
  %i.r = fadd <2 x float> %i.l, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !17
  %i.t = fadd float %i.h, %i.s
  %.sroa.3.12.vec.insert.i65 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  store <2 x float> %i.r, ptr %3, align 4
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i65, ptr %.sroa.431.0..sroa_idx, align 4, !tbaa !19
  br label %.loopexit

_ZNK13btConvexShape19getMarginNonVirtualEv.exit69: ; preds = %bb.a, %bb.a
  %.0.i68.in = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.i68 = load float, ptr %.0.i68.in, align 8, !tbaa !42 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0172.0.copyload = load float, ptr %i.u, align 8
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.6174.0.copyload = load float, ptr %.sroa.6174.0..sroa_idx, align 4
  %.sroa.9176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.9176.0.copyload = load float, ptr %.sroa.9176.0..sroa_idx, align 8
  %i.v = fadd float %.0.i68, %.sroa.0172.0.copyload ; 2 uses
  %i.w = fadd float %.0.i68, %.sroa.6174.0.copyload ; 2 uses
  %i.x = fadd float %.0.i68, %.sroa.9176.0.copyload ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !17, !noalias !44
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !17, !noalias !44
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !17, !noalias !44
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %9 = load <2 x float>, ptr %i.ag, align 4, !tbaa !17, !noalias !44
  %10 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %9) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7153.0.copyload = load float, ptr %.sroa.7153.0..sroa_idx, align 4 ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %i.ai = fmul float %i.w, %11
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.v, float %i.af, float %i.ai)
  %12 = extractelement <2 x float> %10, i64 1
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %12, float %i.aj) ; 2 uses
  %i.al = load <2 x float>, ptr %1, align 4, !tbaa !17, !noalias !44 ; 2 uses
  %i.am = load <2 x float>, ptr %i.aa, align 4, !tbaa !17, !noalias !44 ; 2 uses
  %i.an = shufflevector <2 x float> %i.al, <2 x float> %i.am, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.an)
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> %i.am, <2 x i32> <i32 1, i32 3>
  %i.aq = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ap)
  %i.ar = insertelement <2 x float> poison, float %i.z, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.ac, i64 1
  %i.at = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.as)
  %i.au = load <2 x float>, ptr %i.ah, align 4    ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %i.aq
  %i.ay = insertelement <2 x float> poison, float %i.v, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ao, <2 x float> %i.ax)
  %i.bb = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.at, <2 x float> %i.ba) ; 2 uses
  %i.be = fsub <2 x float> %i.au, %i.bd
  %i.bf = fsub float %.sroa.7153.0.copyload, %i.ak
  %.sroa.3.12.vec.insert.i77 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bf, i64 0
  store <2 x float> %i.be, ptr %2, align 4
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i77, ptr %.sroa.427.0..sroa_idx, align 4, !tbaa !19
  %i.bg = fadd <2 x float> %i.bd, %i.au
  %i.bh = fadd float %.sroa.7153.0.copyload, %i.ak
  %.sroa.3.12.vec.insert.i82 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bh, i64 0
  store <2 x float> %i.bg, ptr %3, align 4
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i82, ptr %.sroa.425.0..sroa_idx, align 4, !tbaa !19
  br label %.loopexit

_ZNK13btConvexShape19getMarginNonVirtualEv.exit86: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !42 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNK13btConvexShape19getMarginNonVirtualEv.exit86, %bb.b
  %indvars.iv = phi i64 [ 0, %_ZNK13btConvexShape19getMarginNonVirtualEv.exit86 ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bx, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.by = load float, ptr %4, align 4, !tbaa !17  ; 2 uses
  %i.bz = load float, ptr %i.bk, align 4, !tbaa !17 ; 2 uses
  %i.ca = load float, ptr %i.bl, align 4, !tbaa !17 ; 2 uses
  %i.cb = load <2 x float>, ptr %1, align 4, !tbaa !17
  %i.cc = load <2 x float>, ptr %i.bm, align 4, !tbaa !17
  %i.cd = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ch, <2 x float> %i.cf)
  %i.cj = load <2 x float>, ptr %i.bn, align 4, !tbaa !17
  %i.ck = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cl, <2 x float> %i.ci)
  %i.cn = load float, ptr %i.bp, align 4, !tbaa !17
  %i.co = load float, ptr %i.bq, align 4, !tbaa !17
  %i.cp = fmul float %i.bz, %i.co
  %i.cq = call float @llvm.fmuladd.f32(float %i.cn, float %i.by, float %i.cp)
  %i.cr = load float, ptr %i.br, align 4, !tbaa !17
  %i.cs = call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.ca, float %i.cq)
  %.sroa.3.12.vec.insert.i89 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  store <2 x float> %i.cm, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i89, ptr %i.bs, align 8
  %i.ct = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %5) ; 2 uses
  %i.cu = extractvalue { <2 x float>, <2 x float> } %i.ct, 0 ; 4 uses
  %i.cv = extractvalue { <2 x float>, <2 x float> } %i.ct, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.0136.0.vec.extract = extractelement <2 x float> %i.cu, i64 0
  %.sroa.0136.4.vec.extract = extractelement <2 x float> %i.cu, i64 1
  %.sroa.5137.8.vec.extract = extractelement <2 x float> %i.cv, i64 0
  %i.cw = load float, ptr %i.bp, align 4, !tbaa !17
  %i.cx = load float, ptr %i.bq, align 4, !tbaa !17
  %i.cy = load float, ptr %i.bn, align 4, !tbaa !17
  %i.cz = load float, ptr %i.bo, align 4, !tbaa !17
  %i.da = fmul float %.sroa.0136.4.vec.extract, %i.cz
  %i.db = call float @llvm.fmuladd.f32(float %.sroa.0136.0.vec.extract, float %i.cy, float %i.da)
  %i.dc = load float, ptr %i.br, align 4, !tbaa !17
  %i.dd = call noundef float @llvm.fmuladd.f32(float %.sroa.5137.8.vec.extract, float %i.dc, float %i.db)
  %i.de = load <2 x float>, ptr %1, align 4, !tbaa !17 ; 2 uses
  %i.df = load <2 x float>, ptr %i.bm, align 4, !tbaa !17 ; 2 uses
  %i.dg = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 1, i32 3>
  %i.di = fmul <2 x float> %i.dg, %i.dh
  %i.dj = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = shufflevector <2 x float> %i.de, <2 x float> %i.df, <2 x i32> <i32 0, i32 2>
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.cx, i64 1
  %i.dp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.do, <2 x float> %i.dl)
  %i.dq = load <2 x float>, ptr %i.bt, align 4, !tbaa !17
  %i.dr = fadd <2 x float> %i.dp, %i.dq
  %i.ds = load float, ptr %i.bu, align 4, !tbaa !17
  %i.dt = fadd float %i.dd, %i.ds
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dt, i64 0
  store <2 x float> %i.dr, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %i.bv, align 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !17
  %i.dw = fadd float %i.bj, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.dw, ptr %i.dx, align 4, !tbaa !17
  store float -1.000000e+00, ptr %i.bx, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.dy = load float, ptr %4, align 4, !tbaa !17  ; 2 uses
  %i.dz = load float, ptr %i.bk, align 4, !tbaa !17 ; 2 uses
  %i.ea = load float, ptr %i.bl, align 4, !tbaa !17 ; 2 uses
  %i.eb = load <2 x float>, ptr %1, align 4, !tbaa !17
  %i.ec = load <2 x float>, ptr %i.bm, align 4, !tbaa !17
  %i.ed = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x float> %i.ee, %i.ec
  %i.eg = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.eh, <2 x float> %i.ef)
  %i.ej = load <2 x float>, ptr %i.bn, align 4, !tbaa !17
  %i.ek = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.el, <2 x float> %i.ei)
  %i.en = load float, ptr %i.bp, align 4, !tbaa !17
  %i.eo = load float, ptr %i.bq, align 4, !tbaa !17
  %i.ep = fmul float %i.dz, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.en, float %i.dy, float %i.ep)
  %i.er = load float, ptr %i.br, align 4, !tbaa !17
  %i.es = call noundef float @llvm.fmuladd.f32(float %i.er, float %i.ea, float %i.eq)
  %.sroa.3.12.vec.insert.i94 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.es, i64 0
  store <2 x float> %i.em, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i94, ptr %i.bw, align 8
  %i.et = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 2 uses
  %i.eu = extractvalue { <2 x float>, <2 x float> } %i.et, 0 ; 4 uses
  %i.ev = extractvalue { <2 x float>, <2 x float> } %i.et, 1 ; 2 uses
  %.sroa.0134.0.vec.extract = extractelement <2 x float> %i.eu, i64 0
  %.sroa.0134.4.vec.extract = extractelement <2 x float> %i.eu, i64 1
  %.sroa.5135.8.vec.extract = extractelement <2 x float> %i.ev, i64 0
  %i.ew = load float, ptr %i.bp, align 4, !tbaa !17
  %i.ex = load float, ptr %i.bq, align 4, !tbaa !17
  %i.ey = load float, ptr %i.bn, align 4, !tbaa !17
  %i.ez = load float, ptr %i.bo, align 4, !tbaa !17
  %i.fa = fmul float %.sroa.0134.4.vec.extract, %i.ez
  %i.fb = call float @llvm.fmuladd.f32(float %.sroa.0134.0.vec.extract, float %i.ey, float %i.fa)
  %i.fc = load float, ptr %i.br, align 4, !tbaa !17
  %i.fd = call noundef float @llvm.fmuladd.f32(float %.sroa.5135.8.vec.extract, float %i.fc, float %i.fb)
  %i.fe = load <2 x float>, ptr %1, align 4, !tbaa !17 ; 2 uses
  %i.ff = load <2 x float>, ptr %i.bm, align 4, !tbaa !17 ; 2 uses
  %i.fg = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = shufflevector <2 x float> %i.fe, <2 x float> %i.ff, <2 x i32> <i32 1, i32 3>
  %i.fi = fmul <2 x float> %i.fg, %i.fh
  %i.fj = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = shufflevector <2 x float> %i.fe, <2 x float> %i.ff, <2 x i32> <i32 0, i32 2>
  %i.fl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fk, <2 x float> %i.fi)
  %i.fm = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.ex, i64 1
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fo, <2 x float> %i.fl)
  %i.fq = load <2 x float>, ptr %i.bt, align 4, !tbaa !17
  %i.fr = fadd <2 x float> %i.fp, %i.fq
  %i.fs = load float, ptr %i.bu, align 4, !tbaa !17
  %i.ft = fadd float %i.fd, %i.fs
  %.sroa.3.12.vec.insert.i4.i99 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ft, i64 0
  store <2 x float> %i.fr, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i99, ptr %i.bv, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.fu = load float, ptr %i.du, align 4, !tbaa !17
  %i.fv = fsub float %i.fu, %i.bj
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.fv, ptr %i.fw, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !47

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !26 ; 2 uses
  %i.fz = add nsw i32 %i.fy, 2
  %i.ga = srem i32 %i.fz, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gc = sext i32 %i.ga to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !17 ; 4 uses
  store float %i.ge, ptr %8, align 4, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store float %i.ge, ptr %i.gf, align 4, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float %i.ge, ptr %i.gg, align 4, !tbaa !17
  %i.gh = sext i32 %i.fy to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !17
  %i.gk = fadd float %i.ge, %i.gj
  %i.gl = getelementptr inbounds [4 x i8], ptr %8, i64 %i.gh
  store float %i.gk, ptr %i.gl, align 4, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gn = load <4 x float>, ptr %i.gm, align 4
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !17, !noalias !48
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !17, !noalias !48
  %i.gu = tail call noundef float @llvm.fabs.f32(float %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 36
  %13 = load <2 x float>, ptr %i.gv, align 4, !tbaa !17, !noalias !48
  %14 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %13) ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7128.0.copyload = load float, ptr %.sroa.7128.0..sroa_idx, align 4 ; 2 uses
  %i.gx = load float, ptr %8, align 4, !tbaa !17  ; 2 uses
  %i.gy = load float, ptr %i.gf, align 4, !tbaa !17 ; 2 uses
  %i.gz = load float, ptr %i.gg, align 4, !tbaa !17 ; 2 uses
  %15 = extractelement <2 x float> %14, i64 0
  %i.ha = fmul float %15, %i.gy
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gu, float %i.ha)
  %16 = extractelement <2 x float> %14, i64 1
  %i.hc = tail call noundef float @llvm.fmuladd.f32(float %i.gz, float %16, float %i.hb) ; 2 uses
  %i.hd = load <2 x float>, ptr %1, align 4, !tbaa !17, !noalias !48 ; 2 uses
  %i.he = load <2 x float>, ptr %i.gp, align 4, !tbaa !17, !noalias !48 ; 2 uses
  %i.hf = shufflevector <2 x float> %i.hd, <2 x float> %i.he, <2 x i32> <i32 0, i32 2>
  %i.hg = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hf)
  %i.hh = shufflevector <2 x float> %i.hd, <2 x float> %i.he, <2 x i32> <i32 1, i32 3>
  %i.hi = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hh)
  %i.hj = insertelement <2 x float> %i.go, float %i.gr, i64 1
  %i.hk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hj)
  %i.hl = load <2 x float>, ptr %i.gw, align 4    ; 2 uses
  %i.hm = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %i.hi, %i.hn
  %i.hp = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hg, <2 x float> %i.ho)
  %i.hs = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.hk, <2 x float> %i.hr) ; 2 uses
  %i.hv = fsub <2 x float> %i.hl, %i.hu
  %i.hw = fsub float %.sroa.7128.0.copyload, %i.hc
  %.sroa.3.12.vec.insert.i109 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hw, i64 0
  store <2 x float> %i.hv, ptr %2, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i109, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !19
  %i.hx = fadd <2 x float> %i.hl, %i.hu
  %i.hy = fadd float %.sroa.7128.0.copyload, %i.hc
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hy, i64 0
  store <2 x float> %i.hx, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.loopexit

_ZNK13btConvexShape19getMarginNonVirtualEv.exit118: ; preds = %bb.a, %bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ia = load float, ptr %i.hz, align 8, !tbaa !42 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.id = load float, ptr %i.ic, align 8, !tbaa !17 ; 2 uses
  %i.ie = load float, ptr %i.ib, align 8, !tbaa !17 ; 2 uses
  %i.if = fsub float %i.id, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !17 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !17 ; 2 uses
  %i.ik = fsub float %i.ih, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.im = load float, ptr %i.il, align 8, !tbaa !17 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.io = load float, ptr %i.in, align 8, !tbaa !17 ; 2 uses
  %i.ip = fsub float %i.im, %i.io
  %i.iq = fmul float %i.if, 5.000000e-01
  %i.ir = fmul float %i.ik, 5.000000e-01
  %i.is = fmul float %i.ip, 5.000000e-01
  %i.it = fadd float %i.ia, %i.iq                 ; 2 uses
  %i.iu = fadd float %i.ia, %i.ir                 ; 2 uses
  %i.iv = fadd float %i.ia, %i.is                 ; 2 uses
  %i.iw = fadd float %i.id, %i.ie
  %i.ix = fadd float %i.ih, %i.ij
  %i.iy = fadd float %i.im, %i.io
  %i.iz = fmul float %i.iw, 5.000000e-01          ; 2 uses
  %i.ja = fmul float %i.ix, 5.000000e-01          ; 2 uses
  %i.jb = fmul float %i.iy, 5.000000e-01          ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !17, !noalias !51
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !17, !noalias !51
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !17, !noalias !51 ; 2 uses
  %i.jj = tail call noundef float @llvm.fabs.f32(float %i.ji)
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !17, !noalias !51 ; 2 uses
  %i.jm = tail call noundef float @llvm.fabs.f32(float %i.jl)
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !17, !noalias !51 ; 2 uses
  %i.jp = tail call noundef float @llvm.fabs.f32(float %i.jo)
  %i.jq = fmul float %i.ja, %i.jl
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.ji, float %i.jq)
  %i.js = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %i.jo, float %i.jr)
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !17
  %i.jw = fadd float %i.js, %i.jv                 ; 2 uses
  %i.jx = fmul float %i.iu, %i.jm
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.it, float %i.jj, float %i.jx)
  %i.jz = tail call noundef float @llvm.fmuladd.f32(float %i.iv, float %i.jp, float %i.jy) ; 2 uses
  %i.ka = load <2 x float>, ptr %1, align 4, !tbaa !17, !noalias !51 ; 2 uses
  %i.kb = load <2 x float>, ptr %i.je, align 4, !tbaa !17, !noalias !51 ; 2 uses
  %i.kc = shufflevector <2 x float> %i.ka, <2 x float> %i.kb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kc)
  %i.ke = shufflevector <2 x float> %i.ka, <2 x float> %i.kb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ke)
  %i.kg = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.kh = insertelement <2 x float> %i.kg, float %i.jg, i64 1 ; 2 uses
  %i.ki = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kh)
  %i.kj = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x float> %i.kk, %i.ke
  %i.km = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.kc, <2 x float> %i.kl)
  %i.kp = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.kh, <2 x float> %i.ko)
  %i.ks = load <2 x float>, ptr %i.jt, align 4, !tbaa !17
  %i.kt = fadd <2 x float> %i.kr, %i.ks           ; 2 uses
  %i.ku = insertelement <2 x float> poison, float %i.iu, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = fmul <2 x float> %i.kv, %i.kf
  %i.kx = insertelement <2 x float> poison, float %i.it, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.kd, <2 x float> %i.kw)
  %i.la = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lb, <2 x float> %i.ki, <2 x float> %i.kz) ; 2 uses
  %i.ld = fsub <2 x float> %i.kt, %i.lc
  %i.le = fsub float %i.jw, %i.jz
  %.sroa.3.12.vec.insert.i27.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.le, i64 0
  store <2 x float> %i.ld, ptr %2, align 4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !tbaa !19
  %i.lf = fadd <2 x float> %i.lc, %i.kt
  %i.lg = fadd float %i.jz, %i.jw
  %.sroa.3.12.vec.insert.i32.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lg, i64 0
  store <2 x float> %i.lf, ptr %3, align 4
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i32.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !19
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.lh = load ptr, ptr %0, align 8, !tbaa !15
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8
  tail call void %i.lj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d, %_ZNK13btConvexShape19getMarginNonVirtualEv.exit118, %bb.c, %_ZNK13btConvexShape19getMarginNonVirtualEv.exit69, %_ZNK13btConvexShape19getMarginNonVirtualEv.exit
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #8

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16btCollisionShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 16
}

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #8

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}
end_hunk_0
