Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableContactConstraint?download=true
inline.NumInlined: 377
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN11btRigidBody16applyPushImpulseERK9btVector3S2_:bb.a
  %i.j = fmul float %i.b, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !40
  %i.m = load <2 x float>, ptr %i.d, align 8, !tbaa !40 ; 2 uses
  %i.n = fmul <2 x float> %i.l, %i.m
  %i.o = insertelement <2 x float> poison, float %i.b, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = load <2 x float>, ptr %i.k, align 8, !tbaa !40
  %i.s = fadd <2 x float> %i.q, %i.r
  store <2 x float> %i.s, ptr %i.k, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !40
  %i.v = fadd float %i.j, %i.u
  store float %i.v, ptr %i.t, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.z = load <4 x float>, ptr %i.y, align 4
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.af = load float, ptr %i.ae, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.al = load float, ptr %i.ak, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.an = load <3 x float>, ptr %1, align 4, !tbaa !40
  %i.ao = shufflevector <2 x float> %i.m, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ap = insertelement <3 x float> %i.ao, float %i.h, i64 2
  %i.aq = fmul <3 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = load <3 x float>, ptr %2, align 4, !tbaa !40 ; 2 uses
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.at = fneg <3 x float> %i.aq
  %i.au = shufflevector <3 x float> %i.at, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.av = fmul <3 x float> %i.ar, %i.au
  %i.aw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.as, <3 x float> %i.aq, <3 x float> %i.av) ; 6 uses
  %i.ax = load <2 x float>, ptr %i.x, align 4, !tbaa !40 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.ab, align 4, !tbaa !40 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.ba = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bd = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.bb)
  %i.bf = insertelement <2 x float> %i.aa, float %i.ad, i64 1
  %i.bg = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> %i.be)
  %i.bi = extractelement <3 x float> %i.aw, i64 0
  %i.bj = fmul float %i.bi, %i.ah
  %i.bk = extractelement <3 x float> %i.aw, i64 2
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.af, float %i.bk, float %i.bj)
  %i.bm = extractelement <3 x float> %i.aw, i64 1
  %i.bn = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.bm, float %i.bl)
  %i.bo = load <2 x float>, ptr %i.w, align 8, !tbaa !40
  %i.bp = fmul <2 x float> %i.bh, %i.bo
  %i.bq = fmul float %i.bn, %i.al
  %i.br = load <2 x float>, ptr %i.am, align 8, !tbaa !40
  %i.bs = fadd <2 x float> %i.bp, %i.br
  store <2 x float> %i.bs, ptr %i.am, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !40
  %i.bv = fadd float %i.bq, %i.bu
  store float %i.bv, ptr %i.bt, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN38btDeformableNodeRigidContactConstraintC2ERKN10btSoftBody26DeformableNodeRigidContactERK19btContactSolverInfo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(104) initializes((0, 9), (16, 81), (88, 104)) %0, ptr noundef nonnull align 8 dereferenceable(856) %1, ptr noundef nonnull align 4 dereferenceable(128) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV29btDeformableContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.h = load float, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  store <2 x float> %i.j, ptr %i.i, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.k, align 8, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV38btDeformableNodeRigidContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  store ptr %i.n, ptr %i.l, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN38btDeformableNodeRigidContactConstraintC2ERKS_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(104) initializes((0, 9), (16, 81), (88, 104)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV29btDeformableContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !16, !range !23, !noundef !24
  store i8 %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  store ptr %i.f, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !19
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV34btDeformableRigidContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load <2 x float>, ptr %i.l, align 8, !tbaa !40
  store <2 x float> %i.m, ptr %i.k, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load i8, ptr %i.o, align 8, !tbaa !82, !range !23, !noundef !24
  store i8 %i.p, ptr %i.n, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  store ptr %i.s, ptr %i.q, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !19
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV38btDeformableNodeRigidContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88
  store ptr %i.x, ptr %i.v, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK38btDeformableNodeRigidContactConstraint5getVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !18
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK38btDeformableNodeRigidContactConstraint10getSplitVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !18
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK38btDeformableNodeRigidContactConstraint5getDvEPKN10btSoftBody4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree readnone captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load float, ptr %i.a, align 8, !tbaa !40
  %i.d = load float, ptr %i.b, align 8, !tbaa !40
  %i.e = fadd float %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !40
  %i.i = load <2 x float>, ptr %i.g, align 4, !tbaa !40
  %i.j = fadd <2 x float> %i.h, %i.i              ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.k = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.l = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.j, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.k, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.l, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN38btDeformableNodeRigidContactConstraint12applyImpulseERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 10 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.f = load float, ptr %i.e, align 4, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.j = load float, ptr %i.i, align 4, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.l = load float, ptr %i.k, align 4, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.n = load float, ptr %i.m, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.p = load float, ptr %i.o, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.t = load <2 x float>, ptr %2, align 4, !tbaa !40
  %4 = load float, ptr %i.c, align 8, !tbaa !40
  %i.u = load float, ptr %i.d, align 4, !tbaa !40 ; 3 uses
  %i.v = load float, ptr %1, align 4, !tbaa !40   ; 2 uses
  %i.w = load float, ptr %i.g, align 4, !tbaa !40 ; 2 uses
  %i.x = load <2 x float>, ptr %3, align 4, !tbaa !40
  %5 = load float, ptr %i.h, align 8, !tbaa !40
  %6 = fmul float %i.u, %5
  %7 = fmul float %4, %i.u
  %8 = shufflevector <2 x float> %i.t, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %i.v, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %7, i64 0
  %11 = insertelement <2 x float> %i.y, float %6, i64 1
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %10, <2 x float> %11)
  %i.aa = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.j, i64 1
  %i.ac = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.z)
  %i.af = fmul float %i.u, %i.n
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.l, float %i.v, float %i.af)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.w, float %i.ag)
  %i.ai = load <2 x float>, ptr %i.s, align 4, !tbaa !40
  %i.aj = fsub <2 x float> %i.ai, %i.ae
  store <2 x float> %i.aj, ptr %i.s, align 4, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !40
  %i.am = fsub float %i.al, %i.ah
  store float %i.am, ptr %i.ak, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN38btDeformableNodeRigidContactConstraint17applySplitImpulseERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 10 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.f = load float, ptr %i.e, align 4, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.j = load float, ptr %i.i, align 4, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.l = load float, ptr %i.k, align 4, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.n = load float, ptr %i.m, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.p = load float, ptr %i.o, align 4, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 140 ; 2 uses
  %i.t = load <2 x float>, ptr %2, align 4, !tbaa !40
  %4 = load float, ptr %i.c, align 8, !tbaa !40
  %i.u = load float, ptr %i.d, align 4, !tbaa !40 ; 3 uses
  %i.v = load float, ptr %1, align 4, !tbaa !40   ; 2 uses
  %i.w = load float, ptr %i.g, align 4, !tbaa !40 ; 2 uses
  %i.x = load <2 x float>, ptr %3, align 4, !tbaa !40
  %5 = load float, ptr %i.h, align 8, !tbaa !40
  %6 = fmul float %i.u, %5
  %7 = fmul float %4, %i.u
  %8 = shufflevector <2 x float> %i.t, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %i.v, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %7, i64 0
  %11 = insertelement <2 x float> %i.y, float %6, i64 1
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %10, <2 x float> %11)
  %i.aa = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.j, i64 1
  %i.ac = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.z)
  %i.af = fmul float %i.u, %i.n
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.l, float %i.v, float %i.af)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.w, float %i.ag)
  %i.ai = load <2 x float>, ptr %i.s, align 4, !tbaa !40
  %i.aj = fsub <2 x float> %i.ai, %i.ae
  store <2 x float> %i.aj, ptr %i.s, align 4, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 148 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !40
  %i.am = fsub float %i.al, %i.ah
  store float %i.am, ptr %i.ak, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN38btDeformableFaceRigidContactConstraintC2ERKN10btSoftBody26DeformableFaceRigidContactERK19btContactSolverInfob(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(105) initializes((0, 9), (16, 81), (88, 105)) %0, ptr noundef nonnull align 8 dereferenceable(904) %1, ptr noundef nonnull align 4 dereferenceable(128) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV29btDeformableContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.g, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.i = load float, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.i, i64 0
  store <2 x float> %i.k, ptr %i.j, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.l, align 8, !tbaa !82
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV38btDeformableFaceRigidContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91
  store ptr %i.o, ptr %i.m, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.a, ptr %i.p, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN38btDeformableFaceRigidContactConstraintC2ERKS_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(105) initializes((0, 9), (16, 81), (88, 105)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV29btDeformableContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !16, !range !23, !noundef !24
  store i8 %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  store ptr %i.f, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !19
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV34btDeformableRigidContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load <2 x float>, ptr %i.l, align 8, !tbaa !40
  store <2 x float> %i.m, ptr %i.k, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load i8, ptr %i.o, align 8, !tbaa !82, !range !23, !noundef !24
  store i8 %i.p, ptr %i.n, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  store ptr %i.s, ptr %i.q, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !19
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTV38btDeformableFaceRigidContactConstraint, i64 16), ptr %0, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !93
  store ptr %i.x, ptr %i.v, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !94, !range !23, !noundef !24
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK38btDeformableFaceRigidContactConstraint5getVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  %i.i = load float, ptr %i.g, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 876
  %i.o = load float, ptr %i.m, align 4, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !95   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load float, ptr %i.s, align 4, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.v = load <3 x float>, ptr %i.h, align 4, !tbaa !40 ; 5 uses
  %i.w = load float, ptr %i.n, align 4, !tbaa !40
  %i.x = extractelement <3 x float> %i.v, i64 0
  %i.y = fmul float %i.i, %i.x
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !40
  %i.aa = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %i.z
  %i.ac = fmul float %i.o, %i.w
  %i.ad = load <2 x float>, ptr %i.p, align 4, !tbaa !40
  %i.ae = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fmul <2 x float> %i.ae, %i.ad
  %i.ag = fadd float %i.y, %i.ac
  %i.ah = fadd <2 x float> %i.ab, %i.af
  %i.ai = extractelement <3 x float> %i.v, i64 2
  %i.aj = fmul float %i.t, %i.ai
  %i.ak = load <2 x float>, ptr %i.u, align 4, !tbaa !40
  %i.al = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.am = fmul <2 x float> %i.al, %i.ak
  %i.an = fadd float %i.ag, %i.aj
  %i.ao = fadd <2 x float> %i.ah, %i.am           ; 2 uses
  %.sroa.0.0.vec.insert.i19 = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <2 x float> %.sroa.0.0.vec.insert.i19, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.aq = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ao, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i22 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ap, 0
  %.fca.1.insert.i23 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i22, <2 x float> %i.aq, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK38btDeformableFaceRigidContactConstraint5getDvEPKN10btSoftBody4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load float, ptr %i.a, align 8, !tbaa !40
  %i.d = load float, ptr %i.b, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !40
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.r = icmp eq ptr %i.q, %1
  %. = select i1 %i.r, i64 892, i64 896
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 888, %bb.a ], [ %., %bb.b ]
  %i.s = fadd <2 x float> %i.g, %i.h
  %i.t = fadd float %i.c, %i.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink
  %i.v = load float, ptr %i.u, align 4, !tbaa !40 ; 2 uses
  %i.w = fmul float %i.t, %i.v
  %i.x = insertelement <2 x float> poison, float %i.v, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.s, %i.y              ; 2 uses
  %.sroa.0.0.vec.insert.i17 = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aa = shufflevector <2 x float> %.sroa.0.0.vec.insert.i17, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ab = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.z, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i10.pn = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.aa, 0
  %.pn = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i10.pn, <2 x float> %i.ab, 1
  ret { <2 x float>, <2 x float> } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN38btDeformableFaceRigidContactConstraint12applyImpulseERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
end_hunk_0
