Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConvexTriangleMeshShape?download=true
inline.NumInlined: 162
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii:bb.a
  %i.q = fcmp ogt float %i.p, %.promoted
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.p, ptr %i.g, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi float [ %i.p, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !26
  %i.w = fmul float %i.d, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.b, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !26
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.z, float %i.x) ; 3 uses
  %i.ab = fcmp ogt float %i.aa, %i.r
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.aa, ptr %i.g, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi float [ %i.aa, %bb.d ], [ %i.r, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ag = load float, ptr %i.af, align 4, !tbaa !26
  %i.ah = fmul float %i.d, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.b, float %i.ae, float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !26
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.ak, float %i.ai) ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.ac
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.al, ptr %i.g, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !29, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !27
  store i8 0, ptr %i.a, align 8, !tbaa !29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !26 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !26 ; 4 uses
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !26 ; 2 uses
  %i.m = fsub float %i.l, %i.h                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load float, ptr %i.o, align 4, !tbaa !26 ; 2 uses
  %i.q = fsub float %i.p, %i.h                    ; 2 uses
  %i.r = fneg float %i.q
  %i.s = fadd float %i.f, %i.l
  %i.t = fadd float %i.s, %i.p
  %i.u = fadd float %i.h, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.w = load <2 x float>, ptr %1, align 4, !tbaa !26 ; 2 uses
  %i.x = load <2 x float>, ptr %i.d, align 4, !tbaa !26 ; 5 uses
  %i.y = fsub <2 x float> %i.w, %i.x              ; 2 uses
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !26 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.z, %i.x
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop48 = fsub <2 x float> %i.z, %i.x
  %i.ab = extractelement <2 x float> %foldExtExtBinop48, i64 1 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.n, align 4, !tbaa !26 ; 2 uses
  %i.ad = fmul float %i.aa, %i.r
  %i.ae = extractelement <2 x float> %i.y, i64 1
  %i.af = extractelement <2 x float> %i.y, i64 0
  %i.ag = fsub <2 x float> %i.ac, %i.x            ; 3 uses
  %i.ah = fneg <2 x float> %i.ag                  ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 1
  %i.aj = fmul float %i.m, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.q, float %i.aj)
  %i.al = extractelement <2 x float> %i.ag, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %i.m, float %i.al, float %i.ad)
  %i.an = fmul float %i.ae, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ak, float %i.an)
  %i.ap = extractelement <2 x float> %i.ah, i64 0
  %i.aq = fmul float %i.ab, %i.ap
  %i.ar = extractelement <2 x float> %i.ag, i64 1
  %i.as = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ar, float %i.aq)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.as, float %i.ao)
  %i.au = tail call noundef float @llvm.fabs.f32(float %i.at) ; 2 uses
  %i.av = fmul float %i.au, 2.500000e-01          ; 2 uses
  %i.aw = fadd <2 x float> %i.w, %i.z
  %i.ax = fadd <2 x float> %i.aw, %i.ac
  %i.ay = fadd <2 x float> %i.x, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ay, %i.ba
  %i.bc = fmul float %i.u, %i.av
  %i.bd = load <2 x float>, ptr %i.v, align 4, !tbaa !26
  %i.be = fadd <2 x float> %i.bd, %i.bb
  store <2 x float> %i.be, ptr %i.v, align 4, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !26
  %i.bh = fadd float %i.bg, %i.bc
  store float %i.bh, ptr %i.bf, align 4, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !30
  %i.bk = fadd float %i.bj, %i.au
  store float %i.bk, ptr %i.bi, align 4, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: inlinehint uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #12 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load float, ptr %i.d, align 8, !tbaa !26 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load float, ptr %i.g, align 4, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load float, ptr %i.j, align 4, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load <2 x float>, ptr %i.l, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load <2 x float>, ptr %1, align 4, !tbaa !26
  %i.v = load <2 x float>, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  %i.w = fsub <2 x float> %i.u, %i.v              ; 8 uses
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %4 = load <2 x float>, ptr %i.f, align 4, !tbaa !26
  %5 = fsub <2 x float> %4, %i.v                  ; 9 uses
  %i.y = load <2 x float>, ptr %i.i, align 4, !tbaa !26
  %i.z = fsub <2 x float> %i.y, %i.v              ; 7 uses
  %i.aa = fsub float %i.h, %i.e                   ; 6 uses
  %6 = fsub float %i.c, %i.e                      ; 5 uses
  %i.ab = fsub float %i.k, %i.e                   ; 4 uses
  %i.ac = extractelement <2 x float> %i.z, i64 1  ; 10 uses
  %i.ad = fneg float %i.ac
  %i.ae = extractelement <2 x float> %5, i64 1    ; 9 uses
  %i.af = extractelement <2 x float> %5, i64 0    ; 3 uses
  %i.ag = extractelement <2 x float> %i.z, i64 0  ; 4 uses
  %i.ah = extractelement <2 x float> %i.w, i64 1  ; 10 uses
  %i.ai = extractelement <2 x float> %i.w, i64 0  ; 4 uses
  %i.aj = fneg float %i.ab
  %i.ak = fneg float %i.ag
  %i.al = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0> ; 2 uses
  %i.am = insertelement <4 x float> %i.al, float %i.aa, i64 0
  %i.an = insertelement <4 x float> %i.al, float %i.ad, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.aj, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.ak, i64 2
  %i.aq = fmul <4 x float> %i.am, %i.ap
  %i.ar = shufflevector <2 x float> %5, <2 x float> %i.z, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.at = shufflevector <2 x float> %5, <2 x float> %i.w, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.au = insertelement <4 x float> %i.at, float %i.ab, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.aa, i64 1
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.av, <4 x float> %i.aq) ; 4 uses
  %i.ax = extractelement <4 x float> %i.aw, i64 1
  %i.ay = fmul float %i.ah, %i.ax
  %i.az = extractelement <4 x float> %i.aw, i64 0
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.az, float %i.ay)
  %i.bb = extractelement <4 x float> %i.aw, i64 2
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %6, float %i.bb, float %i.ba)
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = fmul float %i.bd, f0xBE2AAAAB           ; 3 uses
  %7 = fmul float %i.ae, %i.af
  %8 = fmul float %i.ai, %i.ae
  %9 = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %8)
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ag, float %9)
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ac, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ag, float %i.bg)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ac, float %i.bh)
  %10 = fmul float %i.bi, 5.000000e-02
  %i.bj = fmul float %i.ae, %i.ae
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.bj)
  %11 = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.bk)
  %i.bl = fmul float %i.ah, %i.ae
  %12 = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ae, float %i.bl)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ac, float %12)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ac, float %i.bm)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ac, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ac, float %i.bo)
  %13 = fmul float %i.bp, 5.000000e-02
  %i.bq = tail call float @llvm.fmuladd.f32(float %11, float 1.000000e-01, float %13)
  %i.br = fmul float %i.be, %i.bq                 ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bu = fmul <2 x float> %i.bt, %5
  %i.bv = insertelement <2 x float> poison, float %6, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.w, <2 x float> %i.bu)
  %i.by = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.z, <2 x float> %i.bx)
  %i.cb = fmul <2 x float> %i.w, %i.bt
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %5, <2 x float> %i.cb)
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.z, <2 x float> %i.cc)
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.bz, <2 x float> %i.cd)
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.z, <2 x float> %i.ce)
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %i.bz, <2 x float> %i.cf)
  %i.ch = fmul <2 x float> %i.cg, splat (float 5.000000e-02)
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> splat (float 1.000000e-01), <2 x float> %i.ch)
  %i.cj = insertelement <2 x float> poison, float %i.be, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = fmul <2 x float> %i.ck, %i.ci           ; 3 uses
  %14 = fmul float %i.aa, %i.aa
  %i.cm = fneg float %i.br
  %15 = extractelement <2 x float> %i.cl, i64 0
  %16 = fadd float %15, %i.o
  store float %16, ptr %i.n, align 8, !tbaa !26
  %17 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %14)
  %18 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %19 = insertelement <2 x float> %18, float %i.ab, i64 0 ; 6 uses
  %20 = shufflevector <4 x float> %i.aw, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cn = insertelement <2 x float> %20, float %17, i64 0
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %19, <2 x float> %i.cn)
  %21 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cp = insertelement <2 x float> %21, float %6, i64 0 ; 4 uses
  %22 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %23 = insertelement <2 x float> %22, float %i.aa, i64 0 ; 4 uses
  %i.cq = fmul <2 x float> %i.cp, %23
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %23, <2 x float> %i.cq)
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %19, <2 x float> %i.cr)
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %19, <2 x float> %i.cs)
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %19, <2 x float> %i.ct)
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %19, <2 x float> %i.cu)
  %i.cw = fmul <2 x float> %i.cv, splat (float 5.000000e-02)
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.co, <2 x float> splat (float 1.000000e-01), <2 x float> %i.cw)
  %i.cy = fmul <2 x float> %i.ck, %i.cx           ; 3 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 1
  %i.da = fsub float %i.cm, %i.cz
  %24 = fneg <2 x float> %i.cy                    ; 2 uses
  %i.db = extractelement <2 x float> %24, i64 0
  %25 = fsub float %i.db, %i.br
  %26 = insertelement <2 x float> poison, float %25, i64 0
  %27 = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ai, float %7)
  %28 = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ag, float %27)
  %i.dc = tail call float @llvm.fmuladd.f32(float %28, float 1.000000e-01, float %10)
  %shift = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.cy
  %i.dd = fmul float %i.be, %i.dc                 ; 2 uses
  %i.de = insertelement <2 x float> %26, float %i.dd, i64 1
  %i.df = fadd <2 x float> %i.de, %i.m
  store <2 x float> %i.df, ptr %i.l, align 8, !tbaa !26
  %i.dg = insertelement <2 x float> poison, float %i.dd, i64 0
  %29 = shufflevector <2 x float> %i.dg, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.dh = fadd <2 x float> %29, %i.q
  store <2 x float> %i.dh, ptr %i.p, align 8, !tbaa !26
  %i.di = extractelement <2 x float> %i.cl, i64 1
  %i.dj = fadd float %i.di, %i.s
  store float %i.dj, ptr %i.r, align 8, !tbaa !26
  %i.dk = load <2 x float>, ptr %i.t, align 8, !tbaa !26
  %i.dl = fadd <2 x float> %i.cl, %i.dk
  store <2 x float> %i.dl, ptr %i.t, align 8, !tbaa !26
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !26
  %i.do = fadd float %i.da, %i.dn
  store float %i.do, ptr %i.dm, align 8, !tbaa !26
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTS16btCollisionShape", !6, i64 8, !10, i64 16}
!12 = !{!"_ZTS13btConvexShape", !11, i64 0}
!13 = !{!"_ZTS9btVector3", !5, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!"_ZTS21btConvexInternalShape", !12, i64 0, !13, i64 24, !13, i64 40, !14, i64 56, !14, i64 60}
!16 = !{!"_ZTS23btPolyhedralConvexShape", !15, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"_ZTS34btPolyhedralConvexAabbCachingShape", !16, i64 0, !13, i64 64, !13, i64 80, !17, i64 96}
!19 = !{!"p1 _ZTS23btStridingMeshInterface", !10, i64 0}
!20 = !{!"_ZTS25btConvexTriangleMeshShape", !18, i64 0, !19, i64 104}
!21 = !{!20, !19, i64 104}
!22 = !{!5, !5, i64 0}
!23 = !{!"_ZTS31btInternalTriangleIndexCallback"}
!24 = !{!"_ZTS26LocalSupportVertexCallback", !23, i64 0, !13, i64 8, !14, i64 24, !13, i64 28}
!25 = !{!24, !14, i64 24}
!26 = !{!14, !14, i64 0}
!27 = !{i64 0, i64 16, !22}
!28 = !{!"_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback", !23, i64 0, !17, i64 8, !13, i64 12, !13, i64 28, !14, i64 44}
!29 = !{!28, !17, i64 8}
!30 = !{!28, !14, i64 44}
!31 = !{!15, !14, i64 56}
!32 = !{!11, !6, i64 8}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{i8 0, i8 2}
!36 = !{}
end_hunk_0
