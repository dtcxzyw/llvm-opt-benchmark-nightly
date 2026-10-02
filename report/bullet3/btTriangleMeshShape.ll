Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btTriangleMeshShape?download=true
inline.NumInlined: 153
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN19btTriangleMeshShapeC2EP23btStridingMeshInterface:bb.a
.noexc7:                                          ; preds = %.noexc6
  %i.ap = extractvalue { <2 x float>, <2 x float> } %i.ao, 0
  %.sroa.0.4.vec.extract15.i = extractelement <2 x float> %i.ap, i64 1
  %i.aq = load float, ptr %i.o, align 8, !tbaa !21
  %i.ar = fsub float %.sroa.0.4.vec.extract15.i, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ar, ptr %i.as, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !19
  %i.at = load ptr, ptr %0, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke { <2 x float>, <2 x float> } %i.av(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %.noexc8 unwind label %bb.d, !inline_history !20

.noexc8:                                          ; preds = %.noexc7
  %i.ax = extractvalue { <2 x float>, <2 x float> } %i.aw, 1
  %.sroa.16.8.vec.extract.i = extractelement <2 x float> %i.ax, i64 0
  %i.ay = load float, ptr %i.o, align 8, !tbaa !21
  %i.az = fadd float %.sroa.16.8.vec.extract.i, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.az, ptr %i.ba, align 4, !tbaa !19
  store float -1.000000e+00, ptr %i.n, align 4, !tbaa !19
  %i.bb = load ptr, ptr %0, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke { <2 x float>, <2 x float> } %i.bd(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
          to label %_ZN19btTriangleMeshShape15recalcLocalAabbEv.exit unwind label %bb.d, !inline_history !20

_ZN19btTriangleMeshShape15recalcLocalAabbEv.exit: ; preds = %.noexc8
  %i.bf = extractvalue { <2 x float>, <2 x float> } %i.be, 1
  %.sroa.16.8.vec.extract17.i = extractelement <2 x float> %i.bf, i64 0
  %i.bg = load float, ptr %i.o, align 8, !tbaa !21
  %i.bh = fsub float %.sroa.16.8.vec.extract17.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.bh, ptr %i.bi, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN19btTriangleMeshShape15recalcLocalAabbEv.exit, %bb.c
  ret void
}

declare void @_ZN14btConcaveShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19btTriangleMeshShape15recalcLocalAabbEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btVector3, align 4           ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %1, align 4, !tbaa !19
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call { <2 x float>, <2 x float> } %i.i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0
  %.sroa.0.0.vec.extract13 = extractelement <2 x float> %i.k, i64 0
  %i.l = load float, ptr %i.c, align 8, !tbaa !21
  %i.m = fadd float %.sroa.0.0.vec.extract13, %i.l
  store float %i.m, ptr %i.d, align 4, !tbaa !19
  store float -1.000000e+00, ptr %1, align 4, !tbaa !19
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call { <2 x float>, <2 x float> } %i.p(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.r = extractvalue { <2 x float>, <2 x float> } %i.q, 0
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.r, i64 0
  %i.s = load float, ptr %i.c, align 8, !tbaa !21
  %i.t = fsub float %.sroa.0.0.vec.extract, %i.s
  store float %i.t, ptr %i.e, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !19
  %i.u = load ptr, ptr %0, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call { <2 x float>, <2 x float> } %i.w(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.x, 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.y, i64 1
  %i.z = load float, ptr %i.c, align 8, !tbaa !21
  %i.aa = fadd float %.sroa.0.4.vec.extract, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.aa, ptr %i.ab, align 8, !tbaa !19
  store float -1.000000e+00, ptr %i.a, align 4, !tbaa !19
  %i.ac = load ptr, ptr %0, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call { <2 x float>, <2 x float> } %i.ae(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.af, 0
  %.sroa.0.4.vec.extract15 = extractelement <2 x float> %i.ag, i64 1
  %i.ah = load float, ptr %i.c, align 8, !tbaa !21
  %i.ai = fsub float %.sroa.0.4.vec.extract15, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ai, ptr %i.aj, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !19
  %i.ak = load ptr, ptr %0, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call { <2 x float>, <2 x float> } %i.am(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.ao = extractvalue { <2 x float>, <2 x float> } %i.an, 1
  %.sroa.16.8.vec.extract = extractelement <2 x float> %i.ao, i64 0
  %i.ap = load float, ptr %i.c, align 8, !tbaa !21
  %i.aq = fadd float %.sroa.16.8.vec.extract, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.aq, ptr %i.ar, align 4, !tbaa !19
  store float -1.000000e+00, ptr %i.b, align 4, !tbaa !19
  %i.as = load ptr, ptr %0, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call { <2 x float>, <2 x float> } %i.au(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.aw = extractvalue { <2 x float>, <2 x float> } %i.av, 1
  %.sroa.16.8.vec.extract17 = extractelement <2 x float> %i.aw, i64 0
  %i.ax = load float, ptr %i.c, align 8, !tbaa !21
  %i.ay = fsub float %.sroa.16.8.vec.extract17, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.ay, ptr %i.az, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19btTriangleMeshShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19btTriangleMeshShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14btConcaveShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(80) %0) #14
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN19btTriangleMeshShapedlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #15
  unreachable

_ZN19btTriangleMeshShapedlEPv.exit:               ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK19btTriangleMeshShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load <3 x float>, ptr %i.a, align 4, !tbaa !19
  %i.o = load <3 x float>, ptr %i.b, align 4, !tbaa !19
  %i.p = fsub <3 x float> %i.n, %i.o
  %i.q = fmul <3 x float> %i.p, splat (float 5.000000e-01)
  %i.r = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.s = load ptr, ptr %0, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef float %i.u(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.w = load ptr, ptr %0, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef float %i.y(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.aa = insertelement <3 x float> poison, float %i.r, i64 0
  %i.ab = insertelement <3 x float> %i.aa, float %i.v, i64 1
  %i.ac = insertelement <3 x float> %i.ab, float %i.z, i64 2
  %i.ad = fadd <3 x float> %i.q, %i.ac            ; 6 uses
  %i.ae = load <3 x float>, ptr %i.a, align 4, !tbaa !19
  %i.af = load <3 x float>, ptr %i.b, align 4, !tbaa !19
  %i.ag = fadd <3 x float> %i.ae, %i.af
  %i.ah = fmul <3 x float> %i.ag, splat (float 5.000000e-01) ; 6 uses
  %i.ai = load <2 x float>, ptr %1, align 4, !tbaa !19, !noalias !36 ; 2 uses
  %i.aj = load float, ptr %i.f, align 4, !tbaa !19, !noalias !36
  %i.ak = load <2 x float>, ptr %i.g, align 4, !tbaa !19, !noalias !36 ; 2 uses
  %i.al = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.am = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.al)
  %i.an = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ao = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.an)
  %i.ap = load float, ptr %i.h, align 4, !tbaa !19, !noalias !36
  %i.aq = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ap, i64 1 ; 2 uses
  %i.as = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ar)
  %i.at = load float, ptr %i.i, align 4, !tbaa !19, !noalias !36 ; 2 uses
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.av = load float, ptr %i.j, align 4, !tbaa !19, !noalias !36 ; 2 uses
  %i.aw = tail call noundef float @llvm.fabs.f32(float %i.av)
  %i.ax = load float, ptr %i.k, align 4, !tbaa !19, !noalias !36 ; 2 uses
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.az = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = fmul <2 x float> %i.az, %i.an
  %i.bb = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.al, <2 x float> %i.ba)
  %i.bd = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ar, <2 x float> %i.bc)
  %i.bf = extractelement <3 x float> %i.ah, i64 1
  %i.bg = fmul float %i.bf, %i.av
  %i.bh = extractelement <3 x float> %i.ah, i64 0
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.at, float %i.bg)
  %i.bj = extractelement <3 x float> %i.ah, i64 2
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.ax, float %i.bi)
  %i.bl = load <2 x float>, ptr %i.l, align 4, !tbaa !19
  %i.bm = fadd <2 x float> %i.be, %i.bl           ; 2 uses
  %i.bn = load float, ptr %i.m, align 4, !tbaa !19
  %i.bo = fadd float %i.bk, %i.bn                 ; 2 uses
  %i.bp = shufflevector <3 x float> %i.ad, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %i.bp, %i.ao
  %i.br = shufflevector <3 x float> %i.ad, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.am, <2 x float> %i.bq)
  %i.bt = shufflevector <3 x float> %i.ad, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.as, <2 x float> %i.bs) ; 2 uses
  %i.bv = extractelement <3 x float> %i.ad, i64 1
  %i.bw = fmul float %i.bv, %i.aw
  %i.bx = extractelement <3 x float> %i.ad, i64 0
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.au, float %i.bw)
  %i.bz = extractelement <3 x float> %i.ad, i64 2
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.ay, float %i.by) ; 2 uses
  %i.cb = fsub <2 x float> %i.bm, %i.bu
  %i.cc = fsub float %i.bo, %i.ca
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cc, i64 0
  store <2 x float> %i.cb, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !22
  %i.cd = fadd <2 x float> %i.bu, %i.bm
  %i.ce = fadd float %i.ca, %i.bo
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ce, i64 0
  store <2 x float> %i.cd, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN19btTriangleMeshShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %2, align 4, !tbaa !19
  %i.i = load ptr, ptr %0, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call { <2 x float>, <2 x float> } %i.k(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %.sroa.0.0.vec.extract13.i = extractelement <2 x float> %i.m, i64 0
  %i.n = load float, ptr %i.f, align 8, !tbaa !21
  %i.o = fadd float %i.n, %.sroa.0.0.vec.extract13.i
  store float %i.o, ptr %i.g, align 4, !tbaa !19
  store float -1.000000e+00, ptr %2, align 4, !tbaa !19
  %i.p = load ptr, ptr %0, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call { <2 x float>, <2 x float> } %i.r(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.t, i64 0
  %i.u = load float, ptr %i.f, align 8, !tbaa !21
  %i.v = fsub float %.sroa.0.0.vec.extract.i, %i.u
  store float %i.v, ptr %i.h, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !19
  %i.w = load ptr, ptr %0, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call { <2 x float>, <2 x float> } %i.y(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.aa = extractvalue { <2 x float>, <2 x float> } %i.z, 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.aa, i64 1
  %i.ab = load float, ptr %i.f, align 8, !tbaa !21
  %i.ac = fadd float %i.ab, %.sroa.0.4.vec.extract.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ac, ptr %i.ad, align 8, !tbaa !19
  store float -1.000000e+00, ptr %i.d, align 4, !tbaa !19
  %i.ae = load ptr, ptr %0, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call { <2 x float>, <2 x float> } %i.ag(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.ai = extractvalue { <2 x float>, <2 x float> } %i.ah, 0
  %.sroa.0.4.vec.extract15.i = extractelement <2 x float> %i.ai, i64 1
  %i.aj = load float, ptr %i.f, align 8, !tbaa !21
  %i.ak = fsub float %.sroa.0.4.vec.extract15.i, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ak, ptr %i.al, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !19
  %i.am = load ptr, ptr %0, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call { <2 x float>, <2 x float> } %i.ao(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.aq = extractvalue { <2 x float>, <2 x float> } %i.ap, 1
  %.sroa.16.8.vec.extract.i = extractelement <2 x float> %i.aq, i64 0
  %i.ar = load float, ptr %i.f, align 8, !tbaa !21
  %i.as = fadd float %i.ar, %.sroa.16.8.vec.extract.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.as, ptr %i.at, align 4, !tbaa !19
  store float -1.000000e+00, ptr %i.e, align 4, !tbaa !19
  %i.au = load ptr, ptr %0, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call { <2 x float>, <2 x float> } %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.ay = extractvalue { <2 x float>, <2 x float> } %i.ax, 1
  %.sroa.16.8.vec.extract17.i = extractelement <2 x float> %i.ay, i64 0
  %i.az = load float, ptr %i.f, align 8, !tbaa !21
  %i.ba = fsub float %.sroa.16.8.vec.extract17.i, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.ba, ptr %i.bb, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK19btTriangleMeshShape15getLocalScalingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.FilteredCallback, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E16FilteredCallback, i64 16), ptr %4, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind
declare void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK19btTriangleMeshShape21calculateLocalInertiaEfR9btVector3(ptr nofree nonnull readnone align 8 captures(none) %0, float %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.SupportVertexCallback, align 8 ; 20 uses
  %3 = alloca %class.btVector3, align 16          ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
end_hunk_0
begin_hunk_1_@_ZZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN16FilteredCallback28internalProcessTriangleIndexEPS2_ii:bb.a

bb.d:                                             ; preds = %bb.c
  %i.ai = fcmp ogt float %i.x, %i.y               ; 2 uses
  %i.aj = select i1 %i.ai, ptr %i.v, ptr %i.w
  %i.ak = select i1 %i.ai, float %i.x, float %i.y
  %i.al = fcmp ogt float %i.ak, %i.ac
  %i.am = select i1 %i.al, ptr %i.aj, ptr %i.aa
  %i.an = load float, ptr %i.am, align 4, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !19
  %i.aq = fcmp olt float %i.an, %i.ap
  br i1 %i.aq, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load float, ptr %i.ar, align 4, !tbaa !19 ; 4 uses
  %i.au = load float, ptr %i.as, align 4, !tbaa !19 ; 4 uses
  %i.av = fcmp olt float %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ax = select i1 %i.av, float %i.at, float %i.au ; 2 uses
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !19 ; 3 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = select i1 %i.az, float %i.ax, float %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !19
  %i.bd = fcmp ogt float %i.ba, %i.bc
  br i1 %i.bd, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit: ; preds = %bb.e
  %i.be = fcmp ogt float %i.at, %i.au             ; 2 uses
  %i.bf = select i1 %i.be, ptr %i.ar, ptr %i.as
  %i.bg = select i1 %i.be, float %i.at, float %i.au
  %i.bh = fcmp ogt float %i.bg, %i.ay
  %i.bi = select i1 %i.bh, ptr %i.bf, ptr %i.aw
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !19
  %i.bm = fcmp uge float %i.bj, %i.bl
  br i1 %i.bm, label %bb.f, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

bb.f:                                             ; preds = %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e, %bb.f, %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21SupportVertexCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21SupportVertexCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load float, ptr %i.a, align 4, !tbaa !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load float, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load float, ptr %i.e, align 4, !tbaa !19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.promoted = load float, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load float, ptr %1, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !19
  %i.l = fmul float %i.d, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.b, float %i.i, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !19
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.o, float %i.m) ; 3 uses
  %i.q = fcmp ogt float %i.p, %.promoted
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.p, ptr %i.g, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi float [ %i.p, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !19
  %i.w = fmul float %i.d, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.b, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !19
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.z, float %i.x) ; 3 uses
  %i.ab = fcmp ogt float %i.aa, %i.r
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.aa, ptr %i.g, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi float [ %i.aa, %bb.d ], [ %i.r, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ag = load float, ptr %i.af, align 4, !tbaa !19
  %i.ah = fmul float %i.d, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.b, float %i.ae, float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !19
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.ak, float %i.ai) ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.ac
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.al, ptr %i.g, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"_ZTS16btCollisionShape", !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 28}
!13 = !{!"float", !5, i64 0}
!14 = !{!"_ZTS14btConcaveShape", !12, i64 0, !13, i64 32}
!15 = !{!"_ZTS9btVector3", !5, i64 0}
!16 = !{!"p1 _ZTS23btStridingMeshInterface", !11, i64 0}
!17 = !{!"_ZTS19btTriangleMeshShape", !14, i64 0, !15, i64 36, !15, i64 52, !16, i64 72}
!18 = !{!17, !16, i64 72}
!19 = !{!13, !13, i64 0}
!20 = !{ptr @_ZN19btTriangleMeshShape15recalcLocalAabbEv}
!21 = !{!14, !13, i64 32}
!22 = !{!5, !5, i64 0}
!23 = !{i64 0, i64 16, !22}
!24 = !{!"_ZTS31btInternalTriangleIndexCallback"}
!25 = !{!"p1 _ZTS18btTriangleCallback", !11, i64 0}
!26 = !{!"_ZTSZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E16FilteredCallback", !24, i64 0, !25, i64 8, !15, i64 16, !15, i64 32}
!27 = !{!26, !25, i64 8}
!28 = !{!"_ZTS18btTriangleCallback"}
!29 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!30 = !{!"_ZTS11btTransform", !29, i64 0, !15, i64 48}
!31 = !{!"_ZTS21SupportVertexCallback", !28, i64 0, !15, i64 8, !30, i64 24, !13, i64 88, !15, i64 92}
!32 = !{!31, !13, i64 88}
!33 = !{!12, !6, i64 8}
!34 = distinct !{!34, i1 false, !"_ZNK11btMatrix3x38absoluteEv"}
!35 = distinct !{!35, !34, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!36 = !{!35}
end_hunk_1
