Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexTriangleMeshShape?download=true
inline.NumInlined: 164
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load float, ptr %i.a, align 4, !tbaa !28 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load float, ptr %i.c, align 8, !tbaa !28 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load float, ptr %i.e, align 4, !tbaa !28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted = load float, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load float, ptr %1, align 4, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !28
  %i.l = fmul float %i.d, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.b, float %i.i, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !28
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.o, float %i.m) ; 3 uses
  %i.q = fcmp ogt float %i.p, %.promoted
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.p, ptr %i.g, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi float [ %i.p, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !28
  %i.w = fmul float %i.d, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.b, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !28
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.z, float %i.x) ; 3 uses
  %i.ab = fcmp ogt float %i.aa, %i.r
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.aa, ptr %i.g, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi float [ %i.aa, %bb.d ], [ %i.r, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ag = load float, ptr %i.af, align 4, !tbaa !28
  %i.ah = fmul float %i.d, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.b, float %i.ae, float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !28
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.ak, float %i.ai) ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.ac
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.al, ptr %i.g, align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !30
  store i8 0, ptr %i.a, align 8, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !28 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !28 ; 4 uses
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !28 ; 2 uses
  %i.m = fsub float %i.l, %i.h                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load float, ptr %i.o, align 4, !tbaa !28 ; 2 uses
  %i.q = fsub float %i.p, %i.h                    ; 2 uses
  %i.r = fneg float %i.q
  %i.s = fadd float %i.f, %i.l
  %i.t = fadd float %i.s, %i.p
  %i.u = fadd float %i.h, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.w = load <2 x float>, ptr %1, align 4, !tbaa !28 ; 2 uses
  %i.x = load <2 x float>, ptr %i.d, align 4, !tbaa !28 ; 5 uses
  %i.y = fsub <2 x float> %i.w, %i.x              ; 2 uses
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !28 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.z, %i.x
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop48 = fsub <2 x float> %i.z, %i.x
  %i.ab = extractelement <2 x float> %foldExtExtBinop48, i64 1 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.n, align 4, !tbaa !28 ; 2 uses
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
  %i.bd = load <2 x float>, ptr %i.v, align 4, !tbaa !28
  %i.be = fadd <2 x float> %i.bd, %i.bb
  store <2 x float> %i.be, ptr %i.v, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !28
  %i.bh = fadd float %i.bg, %i.bc
  store float %i.bh, ptr %i.bf, align 4, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !33
  %i.bk = fadd float %i.bj, %i.au
  store float %i.bk, ptr %i.bi, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #12 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load float, ptr %i.d, align 8, !tbaa !28 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load float, ptr %i.g, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load float, ptr %i.j, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load <2 x float>, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load <2 x float>, ptr %1, align 4, !tbaa !28
  %i.v = load <2 x float>, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  %i.w = fsub <2 x float> %i.u, %i.v              ; 8 uses
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.y = fsub float %i.c, %i.e                    ; 5 uses
  %i.z = load <2 x float>, ptr %i.f, align 4, !tbaa !28
  %i.aa = fsub <2 x float> %i.z, %i.v             ; 9 uses
  %i.ab = fsub float %i.h, %i.e                   ; 6 uses
  %i.ac = load <2 x float>, ptr %i.i, align 4, !tbaa !28
  %i.ad = fsub <2 x float> %i.ac, %i.v            ; 7 uses
  %i.ae = fsub float %i.k, %i.e                   ; 4 uses
  %i.af = extractelement <2 x float> %i.ad, i64 1 ; 10 uses
  %i.ag = fneg float %i.af
  %i.ah = extractelement <2 x float> %i.aa, i64 1 ; 9 uses
  %i.ai = extractelement <2 x float> %i.aa, i64 0 ; 3 uses
  %i.aj = extractelement <2 x float> %i.ad, i64 0 ; 4 uses
  %i.ak = extractelement <2 x float> %i.w, i64 1  ; 10 uses
  %i.al = extractelement <2 x float> %i.w, i64 0  ; 4 uses
  %i.am = fneg float %i.ae
  %i.an = fneg float %i.aj
  %i.ao = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0> ; 2 uses
  %i.ap = insertelement <4 x float> %i.ao, float %i.ab, i64 0
  %i.aq = insertelement <4 x float> %i.ao, float %i.ag, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.am, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 2
  %i.at = fmul <4 x float> %i.ap, %i.as
  %i.au = shufflevector <2 x float> %i.aa, <2 x float> %i.ad, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aw = shufflevector <2 x float> %i.aa, <2 x float> %i.w, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.ax = insertelement <4 x float> %i.aw, float %i.ae, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.ab, i64 1
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.ay, <4 x float> %i.at) ; 4 uses
  %i.ba = extractelement <4 x float> %i.az, i64 1
  %i.bb = fmul float %i.ak, %i.ba
  %i.bc = extractelement <4 x float> %i.az, i64 0
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bc, float %i.bb)
  %i.be = extractelement <4 x float> %i.az, i64 2
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.be, float %i.bd)
  %i.bg = tail call noundef float @llvm.fabs.f32(float %i.bf)
  %i.bh = fmul float %i.bg, f0xBE2AAAAB           ; 3 uses
  %4 = fmul float %i.ah, %i.ai
  %5 = fmul float %i.al, %i.ah
  %6 = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ai, float %5)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.aj, float %6)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.al, float %i.af, float %i.bi)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.aj, float %i.bj)
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.af, float %i.bk)
  %7 = fmul float %i.bl, 5.000000e-02
  %i.bm = fmul float %i.ah, %i.ah
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.bm)
  %8 = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.bn)
  %i.bo = fmul float %i.ak, %i.ah
  %9 = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ah, float %i.bo)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.af, float %9)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.af, float %i.bp)
  %i.br = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %i.bq)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %i.br)
  %10 = fmul float %i.bs, 5.000000e-02
  %i.bt = tail call float @llvm.fmuladd.f32(float %8, float 1.000000e-01, float %10)
  %i.bu = fmul float %i.bh, %i.bt                 ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bx = fmul <2 x float> %i.bw, %i.aa
  %i.by = insertelement <2 x float> poison, float %i.y, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.w, <2 x float> %i.bx)
  %i.cb = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ad, <2 x float> %i.ca)
  %i.ce = fmul <2 x float> %i.w, %i.bw
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.aa, <2 x float> %i.ce)
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ad, <2 x float> %i.cf)
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.cc, <2 x float> %i.cg)
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.ad, <2 x float> %i.ch)
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.cc, <2 x float> %i.ci)
  %i.ck = fmul <2 x float> %i.cj, splat (float 5.000000e-02)
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> splat (float 1.000000e-01), <2 x float> %i.ck)
  %i.cm = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x float> %i.cn, %i.cl           ; 3 uses
  %11 = fmul float %i.ab, %i.ab
  %i.cp = fneg float %i.bu
  %12 = extractelement <2 x float> %i.co, i64 0
  %13 = fadd float %12, %i.o
  store float %13, ptr %i.n, align 8, !tbaa !28
  %14 = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %11)
  %15 = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %16 = insertelement <2 x float> %15, float %i.ae, i64 0 ; 6 uses
  %17 = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cq = insertelement <2 x float> %17, float %14, i64 0
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %16, <2 x float> %i.cq)
  %18 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cs = insertelement <2 x float> %18, float %i.y, i64 0 ; 4 uses
  %19 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %20 = insertelement <2 x float> %19, float %i.ab, i64 0 ; 4 uses
  %i.ct = fmul <2 x float> %i.cs, %20
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %20, <2 x float> %i.ct)
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %16, <2 x float> %i.cu)
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %16, <2 x float> %i.cv)
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %16, <2 x float> %i.cw)
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %16, <2 x float> %i.cx)
  %i.cz = fmul <2 x float> %i.cy, splat (float 5.000000e-02)
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> splat (float 1.000000e-01), <2 x float> %i.cz)
  %i.db = fmul <2 x float> %i.cn, %i.da           ; 3 uses
  %i.dc = extractelement <2 x float> %i.db, i64 1
  %i.dd = fsub float %i.cp, %i.dc
  %21 = fneg <2 x float> %i.db                    ; 2 uses
  %i.de = extractelement <2 x float> %21, i64 0
  %22 = fsub float %i.de, %i.bu
  %23 = insertelement <2 x float> poison, float %22, i64 0
  %shift = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.db
  %i.df = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %4)
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.af, float %i.aj, float %i.df)
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float 1.000000e-01, float %7)
  %i.di = fmul float %i.bh, %i.dh                 ; 2 uses
  %i.dj = insertelement <2 x float> %23, float %i.di, i64 1
  %i.dk = fadd <2 x float> %i.dj, %i.m
  store <2 x float> %i.dk, ptr %i.l, align 8, !tbaa !28
  %i.dl = insertelement <2 x float> poison, float %i.di, i64 0
  %24 = shufflevector <2 x float> %i.dl, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.dm = fadd <2 x float> %24, %i.q
  store <2 x float> %i.dm, ptr %i.p, align 8, !tbaa !28
  %i.dn = extractelement <2 x float> %i.co, i64 1
  %i.do = fadd float %i.dn, %i.s
  store float %i.do, ptr %i.r, align 8, !tbaa !28
  %i.dp = load <2 x float>, ptr %i.t, align 8, !tbaa !28
  %i.dq = fadd <2 x float> %i.co, %i.dp
  store <2 x float> %i.dq, ptr %i.t, align 8, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !28
  %i.dt = fadd float %i.dd, %i.ds
  store float %i.dt, ptr %i.dr, align 8, !tbaa !28
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

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
!13 = !{!"_ZTS13btConvexShape", !12, i64 0}
!14 = !{!"_ZTS9btVector3", !5, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"_ZTS21btConvexInternalShape", !13, i64 0, !14, i64 32, !14, i64 48, !15, i64 64, !15, i64 68}
!17 = !{!"p1 _ZTS18btConvexPolyhedron", !11, i64 0}
!18 = !{!"_ZTS23btPolyhedralConvexShape", !16, i64 0, !17, i64 72}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"_ZTS34btPolyhedralConvexAabbCachingShape", !18, i64 0, !14, i64 80, !14, i64 96, !19, i64 112}
!21 = !{!"p1 _ZTS23btStridingMeshInterface", !11, i64 0}
!22 = !{!"_ZTS25btConvexTriangleMeshShape", !20, i64 0, !21, i64 120}
!23 = !{!22, !21, i64 120}
!24 = !{!5, !5, i64 0}
!25 = !{!"_ZTS31btInternalTriangleIndexCallback"}
!26 = !{!"_ZTS26LocalSupportVertexCallback", !25, i64 0, !14, i64 8, !15, i64 24, !14, i64 28}
!27 = !{!26, !15, i64 24}
!28 = !{!15, !15, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i64 0, i64 16, !24}
!31 = !{!"_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback", !25, i64 0, !19, i64 8, !14, i64 12, !14, i64 28, !15, i64 44}
!32 = !{!31, !19, i64 8}
!33 = !{!31, !15, i64 44}
!34 = !{!16, !15, i64 64}
!35 = !{!12, !6, i64 8}
!36 = distinct !{!36, !39}
!37 = distinct !{!37, !29}
!38 = distinct !{!38, !29}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !29}
!41 = !{!"p1 omnipotent char", !11, i64 0}
!42 = !{!"_ZTS20btCollisionShapeData", !41, i64 0, !6, i64 8, !5, i64 12}
!43 = !{!"_ZTS18btVector3FloatData", !5, i64 0}
!44 = !{!"_ZTS25btConvexInternalShapeData", !42, i64 0, !43, i64 16, !43, i64 32, !15, i64 48, !6, i64 52}
!45 = !{!44, !15, i64 48}
!46 = !{!44, !6, i64 52}
!47 = !{i8 0, i8 2}
!48 = !{}
end_hunk_0
