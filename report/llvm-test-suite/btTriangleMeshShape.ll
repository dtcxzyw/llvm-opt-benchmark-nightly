Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btTriangleMeshShape?download=true
inline.NumInlined: 155
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN19btTriangleMeshShape15recalcLocalAabbEv:bb.a
  store float 1.000000e+00, ptr %1, align 4, !tbaa !18
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call { <2 x float>, <2 x float> } %i.i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0
  %.sroa.0.0.vec.extract13 = extractelement <2 x float> %i.k, i64 0
  %i.l = load float, ptr %i.c, align 8, !tbaa !20
  %i.m = fadd float %.sroa.0.0.vec.extract13, %i.l
  store float %i.m, ptr %i.d, align 4, !tbaa !18
  store float -1.000000e+00, ptr %1, align 4, !tbaa !18
  %i.n = load ptr, ptr %0, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call { <2 x float>, <2 x float> } %i.p(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.r = extractvalue { <2 x float>, <2 x float> } %i.q, 0
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.r, i64 0
  %i.s = load float, ptr %i.c, align 8, !tbaa !20
  %i.t = fsub float %.sroa.0.0.vec.extract, %i.s
  store float %i.t, ptr %i.e, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !18
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call { <2 x float>, <2 x float> } %i.w(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.x, 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.y, i64 1
  %i.z = load float, ptr %i.c, align 8, !tbaa !20
  %i.aa = fadd float %.sroa.0.4.vec.extract, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.aa, ptr %i.ab, align 8, !tbaa !18
  store float -1.000000e+00, ptr %i.a, align 4, !tbaa !18
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call { <2 x float>, <2 x float> } %i.ae(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.af, 0
  %.sroa.0.4.vec.extract15 = extractelement <2 x float> %i.ag, i64 1
  %i.ah = load float, ptr %i.c, align 8, !tbaa !20
  %i.ai = fsub float %.sroa.0.4.vec.extract15, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ai, ptr %i.aj, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !18
  %i.ak = load ptr, ptr %0, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call { <2 x float>, <2 x float> } %i.am(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.ao = extractvalue { <2 x float>, <2 x float> } %i.an, 1
  %.sroa.16.8.vec.extract = extractelement <2 x float> %i.ao, i64 0
  %i.ap = load float, ptr %i.c, align 8, !tbaa !20
  %i.aq = fadd float %.sroa.16.8.vec.extract, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.aq, ptr %i.ar, align 4, !tbaa !18
  store float -1.000000e+00, ptr %i.b, align 4, !tbaa !18
  %i.as = load ptr, ptr %0, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call { <2 x float>, <2 x float> } %i.au(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.aw = extractvalue { <2 x float>, <2 x float> } %i.av, 1
  %.sroa.16.8.vec.extract17 = extractelement <2 x float> %i.aw, i64 0
  %i.ax = load float, ptr %i.c, align 8, !tbaa !20
  %i.ay = fsub float %.sroa.16.8.vec.extract17, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ay, ptr %i.az, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

declare void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN19btTriangleMeshShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN19btTriangleMeshShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %_ZN19btTriangleMeshShapeD2Ev.exit unwind label %bb.b

_ZN19btTriangleMeshShapeD2Ev.exit:                ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local void @_ZNK19btTriangleMeshShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load <3 x float>, ptr %i.a, align 4, !tbaa !18
  %i.o = load <3 x float>, ptr %i.b, align 4, !tbaa !18
  %i.p = fsub <3 x float> %i.n, %i.o
  %i.q = fmul <3 x float> %i.p, splat (float 5.000000e-01)
  %i.r = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %i.s = load ptr, ptr %0, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef float %i.u(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %i.w = load ptr, ptr %0, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef float %i.y(ptr noundef nonnull align 8 dereferenceable(28) %0)
  %i.aa = insertelement <3 x float> poison, float %i.r, i64 0
  %i.ab = insertelement <3 x float> %i.aa, float %i.v, i64 1
  %i.ac = insertelement <3 x float> %i.ab, float %i.z, i64 2
  %i.ad = fadd <3 x float> %i.q, %i.ac            ; 6 uses
  %i.ae = load <3 x float>, ptr %i.a, align 4, !tbaa !18
  %i.af = load <3 x float>, ptr %i.b, align 4, !tbaa !18
  %i.ag = fadd <3 x float> %i.ae, %i.af
  %i.ah = fmul <3 x float> %i.ag, splat (float 5.000000e-01) ; 6 uses
  %i.ai = load <2 x float>, ptr %1, align 4, !tbaa !18, !noalias !35 ; 2 uses
  %i.aj = load <2 x float>, ptr %i.f, align 4
  %i.ak = load <2 x float>, ptr %i.g, align 4, !tbaa !18, !noalias !35 ; 2 uses
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.am = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.al)
  %i.an = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ao = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.an)
  %i.ap = load float, ptr %i.h, align 4, !tbaa !18, !noalias !35
  %i.aq = insertelement <2 x float> %i.aj, float %i.ap, i64 1 ; 2 uses
  %i.ar = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aq)
  %i.as = load float, ptr %i.i, align 4, !tbaa !18, !noalias !35 ; 2 uses
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = load float, ptr %i.j, align 4, !tbaa !18, !noalias !35 ; 2 uses
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.aw = load float, ptr %i.k, align 4, !tbaa !18, !noalias !35 ; 2 uses
  %i.ax = tail call noundef float @llvm.fabs.f32(float %i.aw)
  %i.ay = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ay, %i.an
  %i.ba = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ba, <2 x float> %i.az)
  %i.bc = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.bc, <2 x float> %i.bb)
  %i.be = load <2 x float>, ptr %i.l, align 4, !tbaa !18
  %i.bf = fadd <2 x float> %i.bd, %i.be           ; 2 uses
  %i.bg = extractelement <3 x float> %i.ah, i64 1
  %i.bh = fmul float %i.bg, %i.au
  %i.bi = extractelement <3 x float> %i.ah, i64 0
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.as, float %i.bi, float %i.bh)
  %i.bk = extractelement <3 x float> %i.ah, i64 2
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.bk, float %i.bj)
  %i.bm = load float, ptr %i.m, align 4, !tbaa !18
  %i.bn = fadd float %i.bl, %i.bm                 ; 2 uses
  %i.bo = shufflevector <3 x float> %i.ad, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %i.bo, %i.ao
  %i.bq = shufflevector <3 x float> %i.ad, <3 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.bq, <2 x float> %i.bp)
  %i.bs = shufflevector <3 x float> %i.ad, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.bs, <2 x float> %i.br) ; 2 uses
  %i.bu = extractelement <3 x float> %i.ad, i64 1
  %i.bv = fmul float %i.bu, %i.av
  %i.bw = extractelement <3 x float> %i.ad, i64 0
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bw, float %i.bv)
  %i.by = extractelement <3 x float> %i.ad, i64 2
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.by, float %i.bx) ; 2 uses
  %i.ca = fsub <2 x float> %i.bf, %i.bt
  %i.cb = fsub float %i.bn, %i.bz
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  store <2 x float> %i.ca, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !21
  %i.cc = fadd <2 x float> %i.bt, %i.bf
  %i.cd = fadd float %i.bz, %i.bn
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0
  store <2 x float> %i.cc, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: uwtable
define dso_local void @_ZN19btTriangleMeshShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %2, align 4, !tbaa !18
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call { <2 x float>, <2 x float> } %i.k(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !19
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %.sroa.0.0.vec.extract13.i = extractelement <2 x float> %i.m, i64 0
  %i.n = load float, ptr %i.f, align 8, !tbaa !20
  %i.o = fadd float %i.n, %.sroa.0.0.vec.extract13.i
  store float %i.o, ptr %i.g, align 4, !tbaa !18
  store float -1.000000e+00, ptr %2, align 4, !tbaa !18
  %i.p = load ptr, ptr %0, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call { <2 x float>, <2 x float> } %i.r(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !19
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.t, i64 0
  %i.u = load float, ptr %i.f, align 8, !tbaa !20
  %i.v = fsub float %.sroa.0.0.vec.extract.i, %i.u
  store float %i.v, ptr %i.h, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !18
  %i.w = load ptr, ptr %0, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call { <2 x float>, <2 x float> } %i.y(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !19
  %i.aa = extractvalue { <2 x float>, <2 x float> } %i.z, 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.aa, i64 1
  %i.ab = load float, ptr %i.f, align 8, !tbaa !20
  %i.ac = fadd float %i.ab, %.sroa.0.4.vec.extract.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ac, ptr %i.ad, align 8, !tbaa !18
  store float -1.000000e+00, ptr %i.d, align 4, !tbaa !18
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call { <2 x float>, <2 x float> } %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !19
  %i.ai = extractvalue { <2 x float>, <2 x float> } %i.ah, 0
  %.sroa.0.4.vec.extract15.i = extractelement <2 x float> %i.ai, i64 1
  %i.aj = load float, ptr %i.f, align 8, !tbaa !20
  %i.ak = fsub float %.sroa.0.4.vec.extract15.i, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ak, ptr %i.al, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !18
  %i.am = load ptr, ptr %0, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call { <2 x float>, <2 x float> } %i.ao(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !19
  %i.aq = extractvalue { <2 x float>, <2 x float> } %i.ap, 1
  %.sroa.16.8.vec.extract.i = extractelement <2 x float> %i.aq, i64 0
  %i.ar = load float, ptr %i.f, align 8, !tbaa !20
  %i.as = fadd float %i.ar, %.sroa.16.8.vec.extract.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.as, ptr %i.at, align 4, !tbaa !18
  store float -1.000000e+00, ptr %i.e, align 4, !tbaa !18
  %i.au = load ptr, ptr %0, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call { <2 x float>, <2 x float> } %i.aw(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !19
  %i.ay = extractvalue { <2 x float>, <2 x float> } %i.ax, 1
  %.sroa.16.8.vec.extract17.i = extractelement <2 x float> %i.ay, i64 0
  %i.az = load float, ptr %i.f, align 8, !tbaa !20
  %i.ba = fsub float %.sroa.16.8.vec.extract17.i, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ba, ptr %i.bb, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK19btTriangleMeshShape15getLocalScalingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: uwtable
define dso_local void @_ZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.FilteredCallback, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E16FilteredCallback, i64 16), ptr %4, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #14
  unreachable
}

declare void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK19btTriangleMeshShape21calculateLocalInertiaEfR9btVector3(ptr nofree nonnull readnone align 8 captures(none) %0, float %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #8 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.SupportVertexCallback, align 8 ; 20 uses
  %3 = alloca %class.btVector3, align 16          ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i8 0, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV21SupportVertexCallback, i64 16), ptr %2, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.d, align 8
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float 1.000000e+00, ptr %.sroa.7.16..sroa_idx, align 4
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.16..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.10.32..sroa_idx, align 8
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %.sroa.11.32..sroa_idx, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  store float f0xDD5E0B6B, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !18 ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !18 ; 3 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %i.l, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.k, %shift
  %i.n = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !18
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.o, <2 x float> %i.m) ; 2 uses
  %i.q = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> zeroinitializer, <2 x float> %i.q)
  %i.s = extractelement <2 x float> %i.p, i64 1
  %i.t = fadd float %i.h, %i.s
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  store <2 x float> %i.r, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 100
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %3, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store <2 x float> splat (float f0xDD5E0B6B), ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> <float f0xDD5E0B6B, float 0.000000e+00>, ptr %5, align 8
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !21
  %.fca.0.insert.i3 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i4 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i3, <2 x float> %.sroa.2.0.copyload.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i4

bb.c:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #14
  unreachable
}

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK19btTriangleMeshShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14btConcaveShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(28) %0, float noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %1, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK14btConcaveShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !20
  ret float %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  ret { <2 x float>, <2 x float> } %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: inlinehint uwtable
define internal void @_ZZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN16FilteredCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define internal void @_ZZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN16FilteredCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load float, ptr %1, align 4, !tbaa !18   ; 4 uses
  %i.e = load float, ptr %i.b, align 4, !tbaa !18 ; 4 uses
  %i.f = fcmp olt float %i.d, %i.e
  %i.g = select i1 %i.f, float %i.d, float %i.e   ; 2 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !18 ; 3 uses
  %i.i = fcmp olt float %i.g, %i.h
  %i.j = select i1 %i.i, float %i.g, float %i.h
  %i.k = load float, ptr %i.a, align 8, !tbaa !18
  %i.l = fcmp ogt float %i.j, %i.k
  br i1 %i.l, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = fcmp ogt float %i.d, %i.e                ; 2 uses
  %i.o = select i1 %i.n, ptr %1, ptr %i.b
  %i.p = select i1 %i.n, float %i.d, float %i.e
  %i.q = fcmp ogt float %i.p, %i.h
  %i.r = select i1 %i.q, ptr %i.o, ptr %i.c
  %i.s = load float, ptr %i.r, align 4, !tbaa !18
  %i.t = load float, ptr %i.m, align 8, !tbaa !18
  %i.u = fcmp olt float %i.s, %i.t
  br i1 %i.u, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load float, ptr %i.v, align 4, !tbaa !18 ; 4 uses
  %i.y = load float, ptr %i.w, align 4, !tbaa !18 ; 4 uses
  %i.z = fcmp olt float %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = select i1 %i.z, float %i.x, float %i.y  ; 2 uses
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !18 ; 3 uses
  %i.ad = fcmp olt float %i.ab, %i.ac
  %i.ae = select i1 %i.ad, float %i.ab, float %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load float, ptr %i.af, align 8, !tbaa !18
  %i.ah = fcmp ogt float %i.ae, %i.ag
  br i1 %i.ah, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = fcmp ogt float %i.x, %i.y               ; 2 uses
  %i.aj = select i1 %i.ai, ptr %i.v, ptr %i.w
  %i.ak = select i1 %i.ai, float %i.x, float %i.y
  %i.al = fcmp ogt float %i.ak, %i.ac
  %i.am = select i1 %i.al, ptr %i.aj, ptr %i.aa
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !18
  %i.aq = fcmp olt float %i.an, %i.ap
  br i1 %i.aq, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load float, ptr %i.ar, align 4, !tbaa !18 ; 4 uses
  %i.au = load float, ptr %i.as, align 4, !tbaa !18 ; 4 uses
  %i.av = fcmp olt float %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ax = select i1 %i.av, float %i.at, float %i.au ; 2 uses
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !18 ; 3 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = select i1 %i.az, float %i.ax, float %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = fcmp ogt float %i.ba, %i.bc
  br i1 %i.bd, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit: ; preds = %bb.e
  %i.be = fcmp ogt float %i.at, %i.au             ; 2 uses
  %i.bf = select i1 %i.be, ptr %i.ar, ptr %i.as
  %i.bg = select i1 %i.be, float %i.at, float %i.au
  %i.bh = fcmp ogt float %i.bg, %i.ay
  %i.bi = select i1 %i.bh, ptr %i.bf, ptr %i.aw
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !18
  %i.bm = fcmp uge float %i.bj, %i.bl
  br i1 %i.bm, label %bb.f, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

bb.f:                                             ; preds = %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e, %bb.f, %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  ret void
}

; Function Attrs: inlinehint uwtable
end_hunk_0
