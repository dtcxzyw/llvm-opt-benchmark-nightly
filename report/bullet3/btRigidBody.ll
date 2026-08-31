Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btRigidBody?download=true
inline.NumInlined: 729
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_:bb.a
  %i.dh = fsub float %i.cv, %i.cr
  %i.di = fadd float %i.cx, %i.cq
  %i.dj = fadd float %i.ct, %i.cw
  %i.dk = fsub float 1.000000e+00, %i.dj
  store float %i.da, ptr %4, align 4, !tbaa !32
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.db, ptr %i.dl, align 4, !tbaa !32
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.dc, ptr %i.dm, align 4, !tbaa !32
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !32
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.dd, ptr %i.do, align 4, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.df, ptr %i.dp, align 4, !tbaa !32
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.dg, ptr %i.dq, align 4, !tbaa !32
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.dr, align 4, !tbaa !32
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.dh, ptr %i.ds, align 4, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.di, ptr %i.dt, align 4, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dk, ptr %i.du, align 4, !tbaa !32
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.dv, align 4, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !44
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !44
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dz, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !44
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btRigidBody18saveKinematicStateEf(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = fcmp une float %1, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load float, ptr %i.o, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load float, ptr %i.q, align 8, !tbaa !32
  %i.s = fsub float %i.p, %i.r
  %i.t = fdiv float 1.000000e+00, %1              ; 3 uses
  %i.u = load <2 x float>, ptr %i.m, align 8, !tbaa !32
  %i.v = load <2 x float>, ptr %i.n, align 8, !tbaa !32
  %i.w = fsub <2 x float> %i.u, %i.v
  %i.x = insertelement <2 x float> poison, float %i.t, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x float> %i.y, %i.w
  %i.aa = fmul float %i.t, %i.s
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  store <2 x float> %i.z, ptr %i.k, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 428
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ab = load float, ptr %i.a, align 4, !tbaa !32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !32
  %i.ae = fmul float %i.ab, %i.ad
  %i.af = load <2 x float>, ptr %2, align 8, !tbaa !32
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %i.af
  %i.aj = fmul <2 x float> %i.y, %i.ai
  %i.ak = fmul float %i.t, %i.ae
  %.sroa.3.12.vec.insert.i.i15.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  store <2 x float> %i.aj, ptr %i.l, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 444
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !44
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 16, i1 false), !tbaa.struct !44
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11btRigidBody7getAabbER9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody10setGravityERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(744) initializes((488, 504)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.b = load float, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fdiv float 1.000000e+00, %i.b            ; 2 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !32
  %i.f = insertelement <2 x float> poison, float %i.d, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !32
  %i.k = fmul float %i.d, %i.j
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x float> %i.h, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 488
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN11btRigidBody12applyDampingEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(744) %0, float noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = load float, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  %i.c = fsub float 1.000000e+00, %i.b
  %i.d = tail call noundef float @powf(float noundef %i.c, float noundef %1) #22 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 6 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !32
  %i.g = fmul float %i.d, %i.f                    ; 6 uses
  store float %i.g, ptr %i.e, align 4, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !32
  %i.j = fmul float %i.d, %i.i                    ; 6 uses
  store float %i.j, ptr %i.h, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 5 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !32
  %i.m = fmul float %i.d, %i.l                    ; 6 uses
  store float %i.m, ptr %i.k, align 4, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.o = load float, ptr %i.n, align 4, !tbaa !57 ; 2 uses
  %i.p = fsub float 1.000000e+00, %i.o
  %i.q = tail call noundef float @powf(float noundef %i.p, float noundef %1) #22 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 6 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !32
  %i.t = fmul float %i.q, %i.s                    ; 6 uses
  store float %i.t, ptr %i.r, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !32
  %i.w = fmul float %i.q, %i.v                    ; 6 uses
  store float %i.w, ptr %i.u, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 5 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !32
  %i.z = fmul float %i.q, %i.y                    ; 6 uses
  store float %i.z, ptr %i.x, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !43, !range !41, !noundef !42
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.ad = fmul float %i.w, %i.w
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !62
  %i.ai = fcmp olt float %i.af, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aj = fmul float %i.j, %i.j
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.an = load float, ptr %i.am, align 8, !tbaa !63
  %i.ao = fcmp olt float %i.al, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !32 ; 6 uses
  %i.ar = fmul float %i.t, %i.aq                  ; 2 uses
  store float %i.ar, ptr %i.r, align 4, !tbaa !32
  %i.as = fmul float %i.w, %i.aq                  ; 2 uses
  store float %i.as, ptr %i.u, align 8, !tbaa !32
  %i.at = fmul float %i.z, %i.aq                  ; 2 uses
  store float %i.at, ptr %i.x, align 4, !tbaa !32
  %i.au = fmul float %i.g, %i.aq                  ; 2 uses
  store float %i.au, ptr %i.e, align 4, !tbaa !32
  %i.av = fmul float %i.j, %i.aq                  ; 2 uses
  store float %i.av, ptr %i.h, align 8, !tbaa !32
  %i.aw = fmul float %i.m, %i.aq                  ; 2 uses
  store float %i.aw, ptr %i.k, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ax = phi float [ %i.at, %bb.d ], [ %i.z, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %i.ay = phi float [ %i.as, %bb.d ], [ %i.w, %bb.c ], [ %i.w, %bb.b ] ; 3 uses
  %i.az = phi float [ %i.ar, %bb.d ], [ %i.t, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %i.ba = phi float [ %i.aw, %bb.d ], [ %i.m, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.bb = phi float [ %i.av, %bb.d ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.bc = phi float [ %i.au, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.bd = fmul float %i.bb, %i.bb
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bd)
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.be)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bf) ; 2 uses
  %i.bg = fcmp olt float %sqrt.i, %i.b
  br i1 %i.bg, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bh = fcmp ogt float %sqrt.i, 5.000000e-03
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %i.e, align 4 ; 5 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %i.k, align 4
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i, %.sroa.0.0.copyload3.i
  %i.bi = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bj = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.bi)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 4 uses
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.bj)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bk)
  %i.bl = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.bm = fmul float %.sroa.8.8.vec.extract.i, %i.bl
  %i.bn = fmul float %i.bm, 5.000000e-03
  %i.bo = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %.sroa.0.0.copyload3.i, %i.bp
  %i.br = fmul <2 x float> %i.bq, splat (float 5.000000e-03)
  %i.bs = insertelement <2 x float> %.sroa.0.0.copyload3.i, float %i.bb, i64 1
  %i.bt = fsub <2 x float> %i.bs, %i.br
  store <2 x float> %i.bt, ptr %i.e, align 4, !tbaa !32
  %i.bu = fsub float %.sroa.8.8.vec.extract.i, %i.bn
  store float %i.bu, ptr %i.k, align 4, !tbaa !32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.bv = fmul float %i.ay, %i.ay
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bv)
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.bw)
  %sqrt.i12 = tail call noundef float @llvm.sqrt.f32(float %i.bx) ; 2 uses
  %i.by = fcmp olt float %sqrt.i12, %i.o
  br i1 %i.by, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bz = fcmp ogt float %sqrt.i12, 5.000000e-03
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload3.i13 = load <2 x float>, ptr %i.r, align 4 ; 5 uses
  %.sroa.8.0.copyload.i15 = load <2 x float>, ptr %i.x, align 4
  %.sroa.0.0.vec.extract.i16 = extractelement <2 x float> %.sroa.0.0.copyload3.i13, i64 0 ; 2 uses
  %foldExtExtBinop54 = fmul <2 x float> %.sroa.0.0.copyload3.i13, %.sroa.0.0.copyload3.i13
  %i.ca = extractelement <2 x float> %foldExtExtBinop54, i64 1
  %i.cb = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i16, float %.sroa.0.0.vec.extract.i16, float %i.ca)
  %.sroa.8.8.vec.extract.i18 = extractelement <2 x float> %.sroa.8.0.copyload.i15, i64 0 ; 4 uses
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i18, float %.sroa.8.8.vec.extract.i18, float %i.cb)
  %sqrt.i.i.i19 = tail call noundef float @llvm.sqrt.f32(float %i.cc)
  %i.cd = fdiv float 1.000000e+00, %sqrt.i.i.i19  ; 2 uses
  %i.ce = fmul float %.sroa.8.8.vec.extract.i18, %i.cd
  %i.cf = fmul float %i.ce, 5.000000e-03
  %i.cg = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %.sroa.0.0.copyload3.i13, %i.ch
  %i.cj = fmul <2 x float> %i.ci, splat (float 5.000000e-03)
  %i.ck = insertelement <2 x float> %.sroa.0.0.copyload3.i13, float %i.ay, i64 1
  %i.cl = fsub <2 x float> %i.ck, %i.cj
  store <2 x float> %i.cl, ptr %i.r, align 4, !tbaa !32
  %i.cm = fsub float %.sroa.8.8.vec.extract.i18, %i.cf
  store float %i.cm, ptr %i.x, align 4, !tbaa !32
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody12applyGravityEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(744) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.g = load float, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = load float, ptr %i.h, align 8, !tbaa !32
  %i.j = fmul float %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.l = load <2 x float>, ptr %i.d, align 8, !tbaa !32
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !32
  %i.n = fmul <2 x float> %i.l, %i.m
  %i.o = load <2 x float>, ptr %i.k, align 8, !tbaa !32
  %i.p = fadd <2 x float> %i.n, %i.o
  store <2 x float> %i.p, ptr %i.k, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !32
  %i.s = fadd float %i.j, %i.r
  store float %i.s, ptr %i.q, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody12clearGravityEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(744) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.f = load float, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = load float, ptr %i.h, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.k = load <2 x float>, ptr %i.d, align 8, !tbaa !32
  %i.l = load <2 x float>, ptr %i.g, align 8, !tbaa !32
  %i.m = load <2 x float>, ptr %i.j, align 8, !tbaa !32
  %i.n = fmul <2 x float> %i.k, %i.l
  %i.o = fsub <2 x float> %i.m, %i.n
  store <2 x float> %i.o, ptr %i.j, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !32
  %i.r = fmul float %i.f, %i.i
  %i.s = fsub float %i.q, %i.r
  store float %i.s, ptr %i.p, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btRigidBody18proceedToTransformERK11btTransform(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(744) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 4 dereferenceable(64) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(744) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !44
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !44
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !44
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink3 = phi ptr [ %i.p, %bb.c ], [ %i.j, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %.sink3, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !44
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !44
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !44
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !32, !noalias !64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 372
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 380
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  store float 0.000000e+00, ptr %.sroa.615.0..sroa_idx.i, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 388
  %.sroa.916.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ao = load <2 x float>, ptr %i.v, align 8, !tbaa !32, !noalias !64 ; 4 uses
  %i.ap = load <2 x float>, ptr %i.ac, align 8, !tbaa !32, !noalias !64 ; 3 uses
  %i.aq = load float, ptr %i.ae, align 4, !tbaa !32, !noalias !64
  %i.ar = extractelement <2 x float> %i.ao, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.ao, %i.ap ; 2 uses
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.at = load <2 x float>, ptr %i.x, align 8, !tbaa !32, !noalias !64 ; 4 uses
  %i.au = load <2 x float>, ptr %i.z, align 8, !tbaa !32, !noalias !64 ; 4 uses
  %i.av = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> %i.au, <4 x i32> <i32 0, i32 0, i32 poison, i32 2> ; 2 uses
  %i.ax = insertelement <4 x float> %i.aw, float 1.000000e+00, i64 2
  %i.ay = fmul <4 x float> %i.av, %i.ax           ; 3 uses
  %i.az = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.ba = shufflevector <2 x float> %i.at, <2 x float> %i.au, <4 x i32> <i32 1, i32 1, i32 poison, i32 3> ; 2 uses
  %i.bb = insertelement <4 x float> %i.ba, float 1.000000e+00, i64 2
  %i.bc = fmul <4 x float> %i.az, %i.bb           ; 3 uses
  %i.bd = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ah, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bf = extractelement <2 x float> %i.au, i64 0
  %i.bg = extractelement <4 x float> %i.bc, i64 0
  %i.bh = extractelement <4 x float> %i.ay, i64 0
  %i.bi = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.ba, <4 x float> %i.bi, <4 x i32> <i32 0, i32 3, i32 poison, i32 5>
  %i.bk = insertelement <4 x float> %i.bj, float 0.000000e+00, i64 2
  %i.bl = fmul <4 x float> %i.bk, %i.bc
  %i.bm = shufflevector <4 x float> %i.aw, <4 x float> %i.bi, <4 x i32> <i32 0, i32 3, i32 poison, i32 4>
  %i.bn = insertelement <4 x float> %i.bm, float 0.000000e+00, i64 2
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.ay, <4 x float> %i.bl)
  %i.bp = load <2 x float>, ptr %i.ad, align 4, !tbaa !32, !noalias !64 ; 4 uses
  %i.bq = load float, ptr %i.af, align 8, !tbaa !32, !noalias !64 ; 2 uses
  %i.br = fmul float %i.bq, %i.ah                 ; 2 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.bt = fmul float %i.bs, %i.aq                 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.ai, align 4, !tbaa !32, !noalias !64 ; 4 uses
  %i.bv = load float, ptr %i.aj, align 8, !tbaa !32, !noalias !64
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.bw, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.by = shufflevector <2 x float> %i.bp, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.bz = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.by, %i.ca
  %i.cc = shufflevector <2 x float> %i.ao, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.cd = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_0
