Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK4pbrt5Curve4AreaEv:bb.a
  %i.w = fsub <2 x float> %i.u, %i.v              ; 2 uses
  %i.x = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.y = insertelement <2 x float> %i.x, float %.sroa.24.0.copyload.1, i64 1
  %i.z = fsub <2 x float> %i.q, %i.y              ; 2 uses
  %i.aa = fmul <2 x float> %i.t, %i.t
  %i.ab = fmul <2 x float> %i.w, %i.w
  %i.ac = fadd <2 x float> %i.aa, %i.ab
  %i.ad = fmul <2 x float> %i.z, %i.z
  %i.ae = fadd <2 x float> %i.ad, %i.ac
  %i.af = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ae) ; 2 uses
  %shift = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.af, %shift
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.03.0.copyload.2 = load <2 x float>, ptr %i.ah, align 4
  %.sroa.24.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.24.0.copyload.2 = load float, ptr %.sroa.24.0..sroa_idx.2, align 4
  %i.ai = fsub float %.sroa.24.0.copyload.1, %.sroa.24.0.copyload.2 ; 2 uses
  %i.aj = fsub <2 x float> %.sroa.03.0.copyload.1, %.sroa.03.0.copyload.2 ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj           ; 2 uses
  %shift22 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop23 = fadd <2 x float> %i.ak, %shift22
  %i.al = extractelement <2 x float> %foldExtExtBinop23, i64 0
  %i.am = fmul float %i.ai, %i.ai
  %i.an = fadd float %i.am, %i.al
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.an)
  %i.ao = fadd float %i.ag, %sqrt.i.i.2
  %i.ap = fsub float 1.000000e+00, %i.m
  %i.aq = fmul float %i.j, %i.ap
  %i.ar = fmul float %i.l, %i.m
  %i.as = fadd float %i.ar, %i.aq
  %i.at = fsub float 1.000000e+00, %i.g
  %i.au = fmul float %i.at, %i.j
  %i.av = fmul float %i.g, %i.l
  %i.aw = fadd float %i.au, %i.av
  %i.ax = fadd float %i.aw, %i.as
  %i.ay = fmul float %i.ax, 5.000000e-01
  %i.az = fmul float %i.ay, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret float %i.az
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt24CubicBezierControlPointsEN4pstd4spanIKNS_6Point3IfEEEEff(ptr dead_on_unwind noalias writable sret(%"class.pstd::array.64") align 4 %0, ptr %1, i64 %2, float noundef %3, float noundef %4) local_unnamed_addr #13 comdat {
_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit:
  %.sroa.070.0.copyload.i = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.271.0.copyload.i = load float, ptr %.sroa.271.0..sroa_idx.i, align 4, !tbaa !28 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.068.0.copyload.i = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.269.0.copyload.i = load float, ptr %.sroa.269.0..sroa_idx.i, align 4, !tbaa !28 ; 4 uses
  %i.b = fsub float 1.000000e+00, %3              ; 7 uses
  %i.c = fmul float %i.b, %.sroa.271.0.copyload.i
  %i.d = fmul float %3, %.sroa.269.0.copyload.i
  %i.e = fadd float %i.c, %i.d                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.056.0.copyload.i = load <2 x float>, ptr %i.f, align 4 ; 4 uses
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.257.0.copyload.i = load float, ptr %.sroa.257.0..sroa_idx.i, align 4, !tbaa !28 ; 4 uses
  %i.g = fmul float %i.b, %.sroa.269.0.copyload.i
  %i.h = fmul float %3, %.sroa.257.0.copyload.i
  %i.i = fadd float %i.g, %i.h                    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.j, align 4 ; 2 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !tbaa !28 ; 2 uses
  %i.k = fmul float %i.b, %.sroa.257.0.copyload.i
  %i.l = fmul float %3, %.sroa.245.0.copyload.i
  %i.m = fadd float %i.k, %i.l                    ; 2 uses
  %i.n = fmul float %i.b, %i.e
  %i.o = fmul float %3, %i.i
  %i.p = fadd float %i.n, %i.o                    ; 2 uses
  %i.q = fmul float %i.b, %i.i
  %i.r = fmul float %3, %i.m
  %i.s = fadd float %i.q, %i.r                    ; 2 uses
  %i.t = fmul float %i.b, %i.p
  %i.u = fmul float %3, %i.s
  %i.v = fadd float %i.t, %i.u
  %i.w = fsub float 1.000000e+00, %4              ; 11 uses
  %i.x = fmul float %i.w, %i.p
  %i.y = fmul float %4, %i.s
  %i.z = fadd float %i.x, %i.y
  %i.aa = fmul float %i.w, %i.e
  %i.ab = fmul float %4, %i.i
  %i.ac = fadd float %i.aa, %i.ab
  %i.ad = fmul float %i.w, %i.i
  %i.ae = fmul float %4, %i.m
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = fmul float %i.w, %i.ac
  %i.ah = fmul float %4, %i.af
  %i.ai = insertelement <2 x float> poison, float %i.b, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ak = fmul <2 x float> %i.aj, %.sroa.070.0.copyload.i
  %i.al = insertelement <2 x float> poison, float %3, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.an = fmul <2 x float> %i.am, %.sroa.068.0.copyload.i
  %i.ao = fadd <2 x float> %i.ak, %i.an           ; 2 uses
  %i.ap = fmul <2 x float> %i.aj, %.sroa.068.0.copyload.i
  %i.aq = fmul <2 x float> %i.am, %.sroa.056.0.copyload.i
  %i.ar = fadd <2 x float> %i.ap, %i.aq           ; 4 uses
  %i.as = fmul <2 x float> %i.aj, %.sroa.056.0.copyload.i
  %i.at = fmul <2 x float> %i.am, %.sroa.044.0.copyload.i
  %i.au = fadd <2 x float> %i.as, %i.at           ; 2 uses
  %i.av = fmul <2 x float> %i.aj, %i.ao
  %i.aw = fmul <2 x float> %i.am, %i.ar
  %i.ax = fadd <2 x float> %i.av, %i.aw           ; 2 uses
  %i.ay = fmul <2 x float> %i.aj, %i.ar
  %i.az = fmul <2 x float> %i.am, %i.au
  %i.ba = fadd <2 x float> %i.ay, %i.az           ; 2 uses
  %i.bb = fmul <2 x float> %i.aj, %i.ax
  %i.bc = fmul <2 x float> %i.am, %i.ba
  %i.bd = fadd <2 x float> %i.bb, %i.bc
  %i.be = insertelement <2 x float> poison, float %i.w, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.bg = fmul <2 x float> %i.bf, %i.ax
  %i.bh = insertelement <2 x float> poison, float %4, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.bj = fmul <2 x float> %i.bi, %i.ba
  %i.bk = fadd <2 x float> %i.bg, %i.bj
  %i.bl = fmul <2 x float> %i.bf, %i.ao
  %i.bm = fmul <2 x float> %i.bi, %i.ar
  %i.bn = fadd <2 x float> %i.bl, %i.bm
  %i.bo = fmul <2 x float> %i.bf, %i.ar
  %i.bp = fmul <2 x float> %i.bi, %i.au
  %i.bq = fadd <2 x float> %i.bo, %i.bp
  %i.br = fmul <2 x float> %i.bf, %i.bn
  %i.bs = fmul <2 x float> %i.bi, %i.bq
  %i.bt = fadd <2 x float> %i.br, %i.bs
  %i.bu = fadd float %i.ag, %i.ah
  %i.bv = fmul float %i.w, %.sroa.271.0.copyload.i
  %i.bw = fmul float %4, %.sroa.269.0.copyload.i
  %i.bx = fadd float %i.bv, %i.bw
  %i.by = fmul float %i.w, %.sroa.269.0.copyload.i
  %i.bz = fmul float %4, %.sroa.257.0.copyload.i
  %i.ca = fadd float %i.by, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.w, %.sroa.257.0.copyload.i
  %i.cc = fmul float %4, %.sroa.245.0.copyload.i
  %i.cd = fadd float %i.cb, %i.cc
  %i.ce = fmul float %i.w, %i.bx
  %i.cf = fmul float %4, %i.ca
  %i.cg = fadd float %i.ce, %i.cf
  %i.ch = fmul float %i.w, %i.ca
  %i.ci = fmul float %4, %i.cd
  %i.cj = fadd float %i.ch, %i.ci
  %i.ck = fmul float %i.w, %i.cg
  %i.cl = fmul float %4, %i.cj
  %i.cm = fmul <2 x float> %i.bf, %.sroa.070.0.copyload.i
  %i.cn = fmul <2 x float> %i.bi, %.sroa.068.0.copyload.i
  %i.co = fadd <2 x float> %i.cm, %i.cn
  %i.cp = fmul <2 x float> %i.bf, %.sroa.068.0.copyload.i
  %i.cq = fmul <2 x float> %i.bi, %.sroa.056.0.copyload.i
  %i.cr = fadd <2 x float> %i.cp, %i.cq           ; 2 uses
  %i.cs = fmul <2 x float> %i.bf, %.sroa.056.0.copyload.i
  %i.ct = fmul <2 x float> %i.bi, %.sroa.044.0.copyload.i
  %i.cu = fadd <2 x float> %i.cs, %i.ct
  %i.cv = fmul <2 x float> %i.bf, %i.co
  %i.cw = fmul <2 x float> %i.bi, %i.cr
  %i.cx = fadd <2 x float> %i.cv, %i.cw
  %i.cy = fmul <2 x float> %i.bf, %i.cr
  %i.cz = fmul <2 x float> %i.bi, %i.cu
  %i.da = fadd <2 x float> %i.cy, %i.cz
  %i.db = fmul <2 x float> %i.bf, %i.cx
  %i.dc = fmul <2 x float> %i.bi, %i.da
  %i.dd = fadd <2 x float> %i.db, %i.dc
  %i.de = fadd float %i.ck, %i.cl
  store <2 x float> %i.bd, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.v, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.bk, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.z, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.bt, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bu, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %i.dd, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.de, ptr %.sroa.10.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Curve9IntersectERKNS_3RayEf(ptr dead_on_unwind noalias nofree writable sret(%"class.pstd::optional.22") align 8 captures(address_is_null) initializes((256, 257)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, float noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 0, ptr %i.a, align 8, !tbaa !139
  %i.b = tail call noundef zeroext i1 @_ZNK4pbrt5Curve12IntersectRayERKNS_3RayEfPN4pstd8optionalINS_17ShapeIntersectionEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3, ptr noundef nonnull %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4pbrt5Curve12IntersectRayERKNS_3RayEfPN4pstd8optionalINS_17ShapeIntersectionEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, float noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 11 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %7 = alloca %"class.pstd::array.64", align 8    ; 13 uses
  %8 = alloca %"class.pbrt::Transform", align 8   ; 15 uses
  %9 = alloca %"class.pstd::array.64", align 8    ; 13 uses
  %10 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL11nCurveTestsE) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.d = load ptr, ptr %0, align 8, !tbaa !180
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !392
  %i.g = load <1 x float>, ptr %1, align 8, !noalias !392
  %.sroa.07.4.vec.insert.i.i = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load <1 x float>, ptr %i.h, align 4, !noalias !392
  %.sroa.05.4.vec.insert.i.i = shufflevector <1 x float> %i.i, <1 x float> poison, <2 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load <1 x float>, ptr %i.j, align 8, !noalias !392
  %.sroa.0.4.vec.insert.i.i = shufflevector <1 x float> %i.k, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %5, align 8, !noalias !392
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %i.l, align 8, !noalias !392
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.m, align 8, !noalias !392
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %i.f, ptr noundef nonnull align 4 dereferenceable(24) %5), !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !392
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.044.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !noalias !392 ; 3 uses
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.245.0.copyload.i = load float, ptr %.sroa.245.0..sroa_idx.i, align 4, !noalias !392 ; 2 uses
  %i.o = shufflevector <2 x float> %.sroa.044.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.q = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.f, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !28, !noalias !392 ; 3 uses
  %i.r = shufflevector <5 x float> %i.q, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.s = shufflevector <5 x float> %i.q, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.t = fmul <2 x float> %i.o, %i.s
  %i.u = load <2 x float>, ptr %i.p, align 4, !tbaa !28, !noalias !392 ; 2 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.r, <4 x float> %i.v, <2 x i32> <i32 0, i32 4>
  %i.x = fmul <2 x float> %.sroa.044.0.copyload.i, %i.w
  %i.y = fadd <2 x float> %i.t, %i.x
  %i.z = insertelement <2 x float> poison, float %.sroa.245.0.copyload.i, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <2 x float> %i.u, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ac = shufflevector <5 x float> %i.q, <5 x float> %i.ab, <2 x i32> <i32 2, i32 6>
  %i.ad = fmul <2 x float> %i.aa, %i.ac
  %i.ae = fadd <2 x float> %i.y, %i.ad            ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !28, !noalias !392
  %i.ah = fmul <2 x float> %.sroa.044.0.copyload.i, %i.ag ; 2 uses
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ah, %shift
  %i.ai = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !28, !noalias !392
  %i.al = fmul float %.sroa.245.0.copyload.i, %i.ak
  %i.am = fadd float %i.ai, %i.al                 ; 10 uses
  %i.an = fmul <2 x float> %i.ae, %i.ae           ; 3 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  %shift262 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop263 = fadd <2 x float> %i.an, %shift262
  %i.ap = extractelement <2 x float> %foldExtExtBinop263, i64 0
  %i.aq = fmul float %i.am, %i.am
  %i.ar = fadd float %i.ap, %i.aq                 ; 3 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.b, label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

bb.b:                                             ; preds = %bb.a
  %i.at = extractelement <2 x float> %i.ae, i64 1
  %i.au = call noundef float @llvm.fabs.f32(float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !55, !noalias !392
  %i.ay = load float, ptr %i.av, align 8, !tbaa !54, !noalias !392
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = fmul float %i.az, 5.000000e-01
  %i.bb = fmul float %i.au, %i.ba
  %i.bc = insertelement <2 x float> %i.ae, float %i.am, i64 1
  %i.bd = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bc)
  %i.be = load <6 x float>, ptr %4, align 16, !tbaa !28, !noalias !392 ; 2 uses
  %i.bf = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bg = shufflevector <6 x float> %i.be, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bh = fsub <2 x float> %i.bf, %i.bg
  %i.bi = fmul <2 x float> %i.bh, splat (float 5.000000e-01)
  %i.bj = fmul <2 x float> %i.bd, %i.bi           ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fadd float %i.bk, %i.bb
  %i.bm = extractelement <2 x float> %i.bj, i64 1
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fdiv float %i.bn, %i.ar                 ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.ae, %i.bq
  %i.bs = fmul float %i.am, %i.bo
  %i.bt = call noundef nonnull align 4 dereferenceable(24) ptr @_ZN4pbrt8Point3fipLIfEERS0_NS_7Vector3IT_EE(ptr noundef nonnull align 4 dereferenceable(24) %4, <2 x float> %i.br, float %i.bs), !noalias !392 ; 0 uses
  br label %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit

_ZNK4pbrt9TransformclERKNS_3RayEPf.exit:          ; preds = %bb.a, %bb.b
  %.sroa.070.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.070.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.070.sroa.5.0.copyload.i = load float, ptr %.sroa.070.sroa.5.0..sroa_idx.i, align 16, !noalias !392
  %.sroa.070.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.070.sroa.6.0.copyload.i = load float, ptr %.sroa.070.sroa.6.0..sroa_idx.i, align 4, !noalias !392
  %i.bu = load <2 x float>, ptr %.sroa.070.sroa.2.0..sroa_idx.i, align 4, !noalias !392
  %i.bv = load <4 x float>, ptr %4, align 16, !noalias !392
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bx = fadd <2 x float> %i.bu, %i.bw
  %i.by = fmul <2 x float> %i.bx, splat (float 5.000000e-01) ; 3 uses
  %i.bz = fadd float %.sroa.070.sroa.5.0.copyload.i, %.sroa.070.sroa.6.0.copyload.i
  %i.ca = fmul float %i.bz, 5.000000e-01          ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !127, !noalias !392
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !129, !noalias !392
  store <2 x float> %i.by, ptr %6, align 8, !alias.scope !392
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ca, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !392
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 12
  store <2 x float> %i.ae, ptr %i.cf, align 4, !alias.scope !392
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %i.am, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !392
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float %i.cc, ptr %i.cg, align 8, !tbaa !127, !alias.scope !392
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.ce, ptr %i.ch, align 8, !tbaa !129, !alias.scope !392
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ci = load ptr, ptr %0, align 8, !tbaa !180
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !181
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !182
  call void @_ZN4pbrt24CubicBezierControlPointsEN4pstd4spanIKNS_6Point3IfEEEEff(ptr dead_on_unwind nonnull writable sret(%"class.pstd::array.64") align 4 %7, ptr nonnull %i.cj, i64 4, float noundef %i.cl, float noundef %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %.sroa.0112.0.copyload = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.2113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.2113.0.copyload = load float, ptr %.sroa.2113.0..sroa_idx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.cr = extractelement <2 x float> %i.ae, i64 0 ; 3 uses
  %i.cs = fneg float %i.cr
  %i.ct = load <2 x float>, ptr %i.co, align 4, !tbaa !28
  %i.cu = load <2 x float>, ptr %i.cp, align 8, !tbaa !28
  %i.cv = fsub <2 x float> %i.ct, %.sroa.0112.0.copyload ; 3 uses
  %i.cw = shufflevector <2 x float> %.sroa.0112.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cx = insertelement <2 x float> %i.cw, float %.sroa.2113.0.copyload, i64 1
  %i.cy = fsub <2 x float> %i.cu, %i.cx           ; 2 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 1 ; 2 uses
  %i.da = fmul float %i.cr, %i.cz                 ; 2 uses
  %i.db = fneg float %i.da
  %i.dc = extractelement <2 x float> %i.cv, i64 0
  %i.dd = call noundef float @llvm.fma.f32(float %i.am, float %i.dc, float %i.db)
  %i.de = call noundef float @llvm.fma.f32(float %i.cs, float %i.cz, float %i.da)
  %i.df = fadd float %i.dd, %i.de                 ; 3 uses
  %i.dg = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.am, i64 1 ; 2 uses
  %i.di = fmul <2 x float> %i.dh, %i.cv           ; 2 uses
  %i.dj = fneg <2 x float> %i.di
  %i.dk = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ae, <2 x float> %i.cy, <2 x float> %i.dj)
  %i.dl = fneg <2 x float> %i.dh
  %i.dm = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dl, <2 x float> %i.cv, <2 x float> %i.di)
  %i.dn = fadd <2 x float> %i.dk, %i.dm           ; 4 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i129 = insertelement <2 x float> %i.do, float %i.df, i64 1
  %i.dp = fmul float %i.df, %i.df
  %i.dq = fmul <2 x float> %i.dn, %i.dn           ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 1
  %i.ds = fadd float %i.dr, %i.dp
  %i.dt = extractelement <2 x float> %i.dq, i64 0
  %i.du = fadd float %i.dt, %i.ds
  %i.dv = fcmp oeq float %i.du, 0.000000e+00
  %i.dw = extractelement <2 x float> %i.dn, i64 0
  br i1 %i.dv, label %bb.c, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit

bb.c:                                             ; preds = %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit
  %i.dx = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.am) ; 4 uses
  %i.dy = fadd float %i.am, %i.dx
  %i.dz = fdiv float -1.000000e+00, %i.dy         ; 2 uses
  %shift265 = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fmul <2 x float> %i.ae, %shift265
  %i.ea = extractelement <2 x float> %foldExtExtBinop266, i64 0
  %i.eb = fmul float %i.ea, %i.dz
  %i.ec = fmul float %i.ao, %i.dx
  %i.ed = fmul float %i.ec, %i.dz
  %i.ee = fadd float %i.ed, 1.000000e+00
  %i.ef = fmul float %i.dx, %i.eb
  %i.eg = fneg float %i.dx
  %i.eh = fmul float %i.cr, %i.eg
  %.sroa.0247.0.vec.insert = insertelement <2 x float> poison, float %i.ee, i64 0
  %.sroa.0247.4.vec.insert = insertelement <2 x float> %.sroa.0247.0.vec.insert, float %i.ef, i64 1
  br label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit

_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit: ; preds = %bb.c, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit
  %.sroa.0247.0 = phi <2 x float> [ %.sroa.0247.4.vec.insert, %bb.c ], [ %.sroa.0.4.vec.insert.i129, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit ]
  %.sroa.6249.0 = phi float [ %i.eh, %bb.c ], [ %i.dw, %_ZNK4pbrt9TransformclERKNS_3RayEPf.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ei = fadd <2 x float> %i.ae, %i.by
  %i.ej = fadd float %i.am, %i.ca
  call void @_ZN4pbrt6LookAtENS_6Point3IfEES1_NS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, <2 x float> %i.by, float %i.ca, <2 x float> %i.ei, float %i.ej, <2 x float> %.sroa.0247.0, float %.sroa.6249.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %.sroa.066.0.copyload = load <2 x float>, ptr %7, align 8 ; 2 uses
  %i.ek = load <4 x float>, ptr %.sroa.2113.0..sroa_idx, align 8
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.er = load <4 x float>, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.et = load <4 x float>, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ew = load <4 x float>, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.ey = load <4 x float>, ptr %i.ex, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.058.0.copyload = load <2 x float>, ptr %i.ez, align 4 ; 2 uses
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.fa = load <4 x float>, ptr %.sroa.259.0..sroa_idx, align 4
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.fc, align 8 ; 2 uses
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.251.0.copyload = load float, ptr %.sroa.251.0..sroa_idx, align 8
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.co, align 4 ; 2 uses
  %.sroa.243.0.copyload = load float, ptr %i.cq, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 36
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.fd = load float, ptr %i.ck, align 8, !tbaa !181 ; 3 uses
  %i.fe = load ptr, ptr %0, align 8, !tbaa !180   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 52 ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !28 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 56 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !28 ; 3 uses
  %i.fj = fsub float 1.000000e+00, %i.fd
  %i.fk = fmul float %i.fj, %i.fg
  %i.fl = fmul float %i.fd, %i.fi
  %i.fm = fadd float %i.fk, %i.fl                 ; 2 uses
  %i.fn = load float, ptr %i.cm, align 4, !tbaa !182 ; 3 uses
  %i.fo = fsub float 1.000000e+00, %i.fn
  %i.fp = fmul float %i.fg, %i.fo
  %i.fq = fmul float %i.fi, %i.fn
  %i.fr = fadd float %i.fq, %i.fp                 ; 2 uses
  %i.fs = fcmp olt float %i.fm, %i.fr
  %.sroa.speculated241 = select i1 %i.fs, float %i.fr, float %i.fm
  %i.ft = load <2 x float>, ptr %i.ep, align 8, !tbaa !28 ; 3 uses
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fv = load <2 x float>, ptr %i.eu, align 8, !tbaa !28 ; 3 uses
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fx = shufflevector <2 x float> %.sroa.066.0.copyload, <2 x float> %.sroa.050.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.fy = fmul <2 x float> %i.fx, %i.fw
  %i.fz = shufflevector <2 x float> %.sroa.066.0.copyload, <2 x float> %.sroa.050.0.copyload, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.ga = fmul <2 x float> %i.fz, %i.fv
  %i.gb = fadd <2 x float> %i.fy, %i.ga
  %i.gc = shufflevector <4 x float> %i.ew, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = insertelement <2 x float> %i.el, float %.sroa.251.0.copyload, i64 1 ; 4 uses
  %i.ge = fmul <2 x float> %i.gc, %i.gd
  %i.gf = fadd <2 x float> %i.gb, %i.ge
  %i.gg = shufflevector <4 x float> %i.ey, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = fadd <2 x float> %i.gg, %i.gf           ; 4 uses
  %i.gi = fcmp oeq <2 x float> %i.gh, splat (float 1.000000e+00) ; 3 uses
  %i.gj = shufflevector <2 x float> %.sroa.058.0.copyload, <2 x float> %.sroa.042.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.gk = fmul <2 x float> %i.fw, %i.gj
  %i.gl = shufflevector <2 x float> %.sroa.058.0.copyload, <2 x float> %.sroa.042.0.copyload, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.gm = fmul <2 x float> %i.fv, %i.gl
  %i.gn = fadd <2 x float> %i.gk, %i.gm
  %i.go = insertelement <2 x float> %i.fb, float %.sroa.243.0.copyload, i64 1 ; 4 uses
  %i.gp = fmul <2 x float> %i.gc, %i.go
  %i.gq = fadd <2 x float> %i.gp, %i.gn
  %i.gr = fadd <2 x float> %i.gg, %i.gq           ; 4 uses
  %i.gs = fcmp oeq <2 x float> %i.gr, splat (float 1.000000e+00) ; 3 uses
  %i.gt = fmul <2 x float> %i.fx, %i.fu
  %i.gu = fmul <2 x float> %i.fz, %i.ft
  %i.gv = fadd <2 x float> %i.gt, %i.gu
  %i.gw = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gx = fmul <2 x float> %i.gw, %i.gd
  %i.gy = fadd <2 x float> %i.gv, %i.gx
  %i.gz = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ha = fadd <2 x float> %i.gz, %i.gy           ; 2 uses
  %i.hb = fdiv <2 x float> %i.ha, %i.gh
  %i.hc = select <2 x i1> %i.gi, <2 x float> %i.ha, <2 x float> %i.hb ; 6 uses
  %i.hd = fmul <2 x float> %i.fu, %i.gj
  %i.he = fmul <2 x float> %i.ft, %i.gl
  %i.hf = fadd <2 x float> %i.hd, %i.he
  %i.hg = fmul <2 x float> %i.gw, %i.go
  %i.hh = fadd <2 x float> %i.hg, %i.hf
  %i.hi = fadd <2 x float> %i.gz, %i.hh           ; 2 uses
  %i.hj = fdiv <2 x float> %i.hi, %i.gr
  %i.hk = select <2 x i1> %i.gs, <2 x float> %i.hi, <2 x float> %i.hj ; 6 uses
  %i.hl = extractelement <2 x float> %i.hc, i64 0 ; 2 uses
  store float %i.hl, ptr %.sroa.4.0..sroa_idx, align 8
  %i.hm = extractelement <2 x float> %i.hk, i64 0 ; 3 uses
  store float %i.hm, ptr %.sroa.6.0..sroa_idx, align 4
  %i.hn = extractelement <2 x float> %i.hc, i64 1 ; 3 uses
  store float %i.hn, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ho = extractelement <2 x float> %i.hk, i64 1 ; 2 uses
  store float %i.ho, ptr %.sroa.10.0..sroa_idx, align 4
  %i.hp = fcmp olt <2 x float> %i.hk, %i.hc
  %i.hq = select <2 x i1> %i.hp, <2 x float> %i.hk, <2 x float> %i.hc ; 2 uses
  %i.hr = load <2 x float>, ptr %8, align 8, !tbaa !28 ; 3 uses
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %11 = load <2 x float>, ptr %i.em, align 8, !tbaa !28 ; 2 uses
  %i.ht = fmul <2 x float> %i.fx, %i.hs
  %i.hu = fmul <2 x float> %i.fz, %i.hr
  %i.hv = fadd <2 x float> %i.ht, %i.hu
  %i.hw = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hx = fmul <2 x float> %i.hw, %i.gd
  %i.hy = fadd <2 x float> %i.hv, %i.hx
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hz = fadd <2 x float> %12, %i.hy             ; 2 uses
  %i.ia = fmul <2 x float> %i.hs, %i.gj
  %i.ib = fmul <2 x float> %i.hr, %i.gl
  %i.ic = fadd <2 x float> %i.ia, %i.ib
  %i.id = fmul <2 x float> %i.hw, %i.go
  %i.ie = fadd <2 x float> %i.id, %i.ic
  %i.if = fadd <2 x float> %12, %i.ie             ; 2 uses
  %i.ig = fdiv <2 x float> %i.hz, %i.gh
  %i.ih = select <2 x i1> %i.gi, <2 x float> %i.hz, <2 x float> %i.ig ; 8 uses
  %i.ii = fdiv <2 x float> %i.if, %i.gr
  %i.ij = select <2 x i1> %i.gs, <2 x float> %i.if, <2 x float> %i.ii ; 8 uses
  %i.ik = fcmp olt <2 x float> %i.ij, %i.ih
  %i.il = select <2 x i1> %i.ik, <2 x float> %i.ij, <2 x float> %i.ih ; 2 uses
  %i.im = fcmp olt <2 x float> %i.ih, %i.ij
  %i.in = select <2 x i1> %i.im, <2 x float> %i.ij, <2 x float> %i.ih ; 2 uses
  %i.io = load <2 x float>, ptr %i.en, align 8, !tbaa !28 ; 3 uses
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %13 = load <2 x float>, ptr %i.eo, align 8, !tbaa !28 ; 2 uses
  %i.iq = fmul <2 x float> %i.fx, %i.ip
  %i.ir = fmul <2 x float> %i.fz, %i.io
  %i.is = fadd <2 x float> %i.iq, %i.ir
  %i.it = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iu = fmul <2 x float> %i.it, %i.gd
  %i.iv = fadd <2 x float> %i.is, %i.iu
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.iw = fadd <2 x float> %14, %i.iv             ; 2 uses
  %i.ix = fmul <2 x float> %i.ip, %i.gj
  %i.iy = fmul <2 x float> %i.io, %i.gl
  %i.iz = fadd <2 x float> %i.ix, %i.iy
  %i.ja = fmul <2 x float> %i.it, %i.go
  %i.jb = fadd <2 x float> %i.ja, %i.iz
  %i.jc = fadd <2 x float> %14, %i.jb             ; 2 uses
  %i.jd = fdiv <2 x float> %i.iw, %i.gh
  %i.je = select <2 x i1> %i.gi, <2 x float> %i.iw, <2 x float> %i.jd ; 7 uses
  %i.jf = shufflevector <2 x float> %i.ih, <2 x float> %i.je, <2 x i32> <i32 0, i32 2>
  %i.jg = fdiv <2 x float> %i.jc, %i.gr
  %i.jh = select <2 x i1> %i.gs, <2 x float> %i.jc, <2 x float> %i.jg ; 7 uses
  %i.ji = shufflevector <2 x float> %i.ij, <2 x float> %i.jh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.jj = shufflevector <2 x float> %i.ih, <2 x float> %i.je, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.jk = shufflevector <2 x float> %i.ij, <2 x float> %i.jh, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.jf, ptr %9, align 8
  store <2 x float> %i.ji, ptr %.sroa.5.0..sroa_idx, align 4
  store <2 x float> %i.jj, ptr %.sroa.7.0..sroa_idx, align 8
  store <2 x float> %i.jk, ptr %.sroa.9.0..sroa_idx, align 4
  %i.jl = fcmp olt <2 x float> %i.jh, %i.je
  %i.jm = select <2 x i1> %i.jl, <2 x float> %i.jh, <2 x float> %i.je ; 2 uses
  %i.jn = fcmp olt <2 x float> %i.je, %i.jh
  %i.jo = select <2 x i1> %i.jn, <2 x float> %i.jh, <2 x float> %i.je ; 2 uses
  %i.jp = fcmp olt <2 x float> %i.hc, %i.hk
  %i.jq = select <2 x i1> %i.jp, <2 x float> %i.hk, <2 x float> %i.hc ; 2 uses
  %i.jr = extractelement <2 x float> %i.hq, i64 0 ; 2 uses
  %i.js = extractelement <2 x float> %i.hq, i64 1 ; 2 uses
  %i.jt = fcmp olt float %i.js, %i.jr
  %.sroa.speculated.i.i184 = select i1 %i.jt, float %i.js, float %i.jr
  %i.ju = extractelement <2 x float> %i.jq, i64 0 ; 2 uses
  %i.jv = extractelement <2 x float> %i.jq, i64 1 ; 2 uses
  %i.jw = fcmp olt float %i.ju, %i.jv
  %.sroa.speculated.i31.i = select i1 %i.jw, float %i.jv, float %i.ju
  %i.jx = fmul float %.sroa.speculated241, 5.000000e-01 ; 3 uses
  %i.jy = fsub float %.sroa.speculated.i.i184, %i.jx
  %i.jz = fadd float %i.jx, %.sroa.speculated.i31.i
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ar)
  %i.ka = fmul float %2, %sqrt.i                  ; 4 uses
  %i.kb = fcmp olt float %i.ka, 0.000000e+00
  %.sroa.speculated.i.i193 = select i1 %i.kb, float %i.ka, float 0.000000e+00
  %i.kc = fcmp ogt float %i.ka, 0.000000e+00
  %.sroa.speculated.i34.i197 = select i1 %i.kc, float %i.ka, float 0.000000e+00
  %i.kd = shufflevector <2 x float> %i.jm, <2 x float> %i.il, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ke = shufflevector <2 x float> %i.jm, <2 x float> %i.il, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kf = fcmp olt <2 x float> %i.kd, %i.ke
  %i.kg = select <2 x i1> %i.kf, <2 x float> %i.kd, <2 x float> %i.ke
  %i.kh = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kj = fsub <2 x float> %i.kg, %i.ki
  %i.kk = fcmp ole <2 x float> %i.kj, zeroinitializer ; 2 uses
  %i.kl = extractelement <2 x i1> %i.kk, i64 1
  %i.km = shufflevector <2 x float> %i.jo, <2 x float> %i.in, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kn = shufflevector <2 x float> %i.jo, <2 x float> %i.in, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ko = fcmp olt <2 x float> %i.km, %i.kn
  %i.kp = select <2 x i1> %i.ko, <2 x float> %i.kn, <2 x float> %i.km
  %i.kq = fadd <2 x float> %i.ki, %i.kp
  %i.kr = fcmp oge <2 x float> %i.kq, zeroinitializer ; 2 uses
  %i.ks = extractelement <2 x i1> %i.kr, i64 1
  %i.kt = select i1 %i.kl, i1 %i.ks, i1 false
  %i.ku = fcmp oge float %.sroa.speculated.i34.i197, %i.jy
  %i.kv = fcmp ole float %.sroa.speculated.i.i193, %i.jz
  %i.kw = extractelement <2 x i1> %i.kk, i64 0
  %i.kx = select i1 %i.kt, i1 %i.kw, i1 false
  %i.ky = extractelement <2 x i1> %i.kr, i64 0
  %or.cond.i = select i1 %i.kx, i1 %i.ky, i1 false
  %i.kz = select i1 %or.cond.i, i1 %i.ku, i1 false
  %i.la = select i1 %i.kz, i1 %i.kv, i1 false
  br i1 %i.la, label %.preheader.preheader, label %bb.f

.preheader.preheader:                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit
  %i.lb = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lc = extractelement <2 x float> %i.ij, i64 0
  %i.ld = fmul float %i.lc, 2.000000e+00
  %i.le = extractelement <2 x float> %i.ih, i64 0
  %i.lf = fsub float %i.le, %i.ld
  %i.lg = extractelement <2 x float> %i.ih, i64 1
  %i.lh = fadd float %i.lg, %i.lf
  %i.li = call noundef float @llvm.fabs.f32(float %i.lh) ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !183
  %i.ll = extractelement <2 x float> %i.jh, i64 0
  %i.lm = fmul float %i.ll, 2.000000e+00
  %i.ln = fsub float %i.lk, %i.lm
  %i.lo = extractelement <2 x float> %i.je, i64 1
  %i.lp = fadd float %i.lo, %i.ln
  %i.lq = call noundef float @llvm.fabs.f32(float %i.lp) ; 2 uses
  %i.lr = fcmp olt float %i.li, %i.lq
  %i.ls = fmul float %i.hm, 2.000000e+00
  %i.lt = fsub float %i.hl, %i.ls
  %i.lu = fadd float %i.hn, %i.lt
  %i.lv = call noundef float @llvm.fabs.f32(float %i.lu) ; 2 uses
  %i.lw = select i1 %i.lr, float %i.lq, float %i.li ; 2 uses
  %i.lx = fcmp olt float %i.lw, %i.lv
  %i.ly = select i1 %i.lx, float %i.lv, float %i.lw ; 2 uses
  %i.lz = fcmp ogt float %i.ly, 0.000000e+00
  %.sroa.speculated = select i1 %i.lz, float %i.ly, float 0.000000e+00 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.mb = load float, ptr %i.ma, align 8, !tbaa !183
  %i.mc = fmul <2 x float> %i.jj, splat (float 2.000000e+00)
  %i.md = fsub <2 x float> %i.ji, %i.mc
  %i.me = insertelement <2 x float> %i.lb, float %i.mb, i64 1
  %i.mf = fadd <2 x float> %i.me, %i.md
  %i.mg = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mf) ; 2 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 0 ; 2 uses
  %i.mi = extractelement <2 x float> %i.mg, i64 1 ; 2 uses
  %i.mj = fcmp olt float %i.mh, %i.mi
  %i.mk = fmul float %i.hn, 2.000000e+00
  %i.ml = fsub float %i.hm, %i.mk
  %i.mm = fadd float %i.ho, %i.ml
  %i.mn = call noundef float @llvm.fabs.f32(float %i.mm) ; 2 uses
  %i.mo = select i1 %i.mj, float %i.mi, float %i.mh ; 2 uses
  %i.mp = fcmp olt float %i.mo, %i.mn
  %i.mq = select i1 %i.mp, float %i.mn, float %i.mo ; 2 uses
  %i.mr = fcmp olt float %.sroa.speculated, %i.mq
  %.sroa.speculated.1 = select i1 %i.mr, float %i.mq, float %.sroa.speculated ; 2 uses
  %i.ms = fcmp ogt float %.sroa.speculated.1, 0.000000e+00
  br i1 %i.ms, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.preheader
  %i.mt = fcmp olt float %i.fg, %i.fi
  %..i204 = select i1 %i.mt, ptr %i.fh, ptr %i.ff
  %i.mu = load float, ptr %..i204, align 4, !tbaa !28
  %i.mv = fmul float %i.mu, 5.000000e-02
  %i.mw = fmul nnan float %.sroa.speculated.1, f0x4107C3B6
  %i.mx = fmul float %i.mv, 8.000000e+00
  %i.my = fdiv float %i.mw, %i.mx
  %i.mz = call noundef i32 @_ZN4pbrt7Log2IntEf(float noundef %i.my) ; 2 uses
  %i.na = sdiv i32 %i.mz, 2
  %i.nb = icmp slt i32 %i.mz, -1
  %i.nc = call i32 @llvm.umin.i32(i32 %i.na, i32 10)
  %.0.i = select i1 %i.nb, i32 0, i32 %i.nc
  %.pre = load float, ptr %i.ck, align 8, !tbaa !181
  %.pre256 = load float, ptr %i.cm, align 4, !tbaa !182
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.preheader
  %i.nd = phi float [ %.pre256, %bb.d ], [ %i.fn, %.preheader.preheader ]
  %i.ne = phi float [ %.pre, %bb.d ], [ %i.fd, %.preheader.preheader ]
  %.0125 = phi i32 [ %.0.i, %bb.d ], [ 0, %.preheader.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.nf = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(64) %i.nf, i64 64, i1 false), !tbaa.struct !393
  %i.ng = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ng, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 64, i1 false), !tbaa.struct !393
  %i.nh = call noundef zeroext i1 @_ZNK4pbrt5Curve18RecursiveIntersectERKNS_3RayEfN4pstd4spanIKNS_6Point3IfEEEERKNS_9TransformEffiPNS4_8optionalINS_17ShapeIntersectionEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %6, float noundef %2, ptr nonnull %9, i64 poison, ptr noundef nonnull align 4 dereferenceable(128) %10, float noundef %i.ne, float noundef %i.nd, i32 noundef %.0125, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.f

bb.f:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit, %bb.e
  %.0 = phi i1 [ %i.nh, %bb.e ], [ false, %_ZN4pstd5arrayIN4pbrt6Point3IfEELi4EEC2ESt16initializer_listIS3_E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4pbrt5Curve10IntersectPERKNS_3RayEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, float noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4pbrt5Curve12IntersectRayERKNS_3RayEfPN4pstd8optionalINS_17ShapeIntersectionEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, float noundef %2, ptr noundef null)
  ret i1 %i.a
}

declare void @_ZN4pbrt6LookAtENS_6Point3IfEES1_NS_7Vector3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4pbrt7Log2IntEf(float noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = fcmp olt float %0, 1.000000e+00
  br i1 %i.a, label %bb.b, label %common.ret

common.ret5:                                      ; preds = %bb.b, %common.ret
  %common.ret5.op = phi i32 [ %i.k, %common.ret ], [ %i.d, %bb.b ]
  ret i32 %common.ret5.op

bb.b:                                             ; preds = %bb.a
  %i.b = fdiv float 1.000000e+00, %0
  %i.c = tail call noundef i32 @_ZN4pbrt7Log2IntEf(float noundef %i.b)
  %i.d = sub nsw i32 0, %i.c
  br label %common.ret5

common.ret:                                       ; preds = %bb.a
  %i.e = bitcast float %0 to i32                  ; 2 uses
  %i.f = lshr i32 %i.e, 23
  %i.g = add nsw i32 %i.f, -127
  %i.h = and i32 %i.e, 8388607
  %i.i = icmp samesign ugt i32 %i.h, 3474674
  %i.j = zext i1 %i.i to i32
  %i.k = add nsw i32 %i.g, %i.j
  br label %common.ret5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4pbrt5Curve18RecursiveIntersectERKNS_3RayEfN4pstd4spanIKNS_6Point3IfEEEERKNS_9TransformEffiPNS4_8optionalINS_17ShapeIntersectionEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, float noundef %2, ptr nofree readonly captures(none) %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(128) %5, float noundef %6, float noundef %7, i32 noundef %8, ptr nofree noundef captures(address_is_null) %9) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.pstd::array.66", align 8   ; 19 uses
  %11 = alloca %"class.pbrt::Vector3", align 8    ; 8 uses
  %12 = alloca %"class.pbrt::Vector3", align 8    ; 5 uses
  %13 = alloca %"class.pbrt::Vector3", align 8    ; 6 uses
  %14 = alloca %"class.pbrt::Transform", align 4  ; 4 uses
  %15 = alloca %"class.pbrt::Point3fi", align 8   ; 4 uses
  %16 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 8 uses
  %17 = alloca %"class.pbrt::Normal3", align 8    ; 2 uses
  %18 = alloca %"class.pbrt::Normal3", align 8    ; 2 uses
  %19 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
end_hunk_0
