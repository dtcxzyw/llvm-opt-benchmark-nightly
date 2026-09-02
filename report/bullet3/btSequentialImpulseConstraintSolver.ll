Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSequentialImpulseConstraintSolver?download=true
inline.NumInlined: 912
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN35btSequentialImpulseConstraintSolver23setupFrictionConstraintER18btSolverConstraintRK9btVector3iiR15btManifoldPointS4_S4_P17btCollisionObjectS8_fRK19btContactSolverInfoff:bb.a
  %i.ih = fsub <2 x float> %i.if, %i.ig           ; 2 uses
  %i.ii = load float, ptr %2, align 4, !tbaa !60
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !60
  %i.il = extractelement <2 x float> %i.ih, i64 0
  %i.im = fmul float %i.il, %i.ik
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ii, float %i.im)
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !60
  %i.iq = extractelement <2 x float> %i.ih, i64 1
  %i.ir = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %i.ip, float %i.in)
  %i.is = fneg float %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.iu = load float, ptr %i.it, align 4, !tbaa !136
  %i.iv = fmul float %i.iu, %i.is
  %i.iw = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !97
  %i.iy = fdiv float %i.iv, %i.ix
  %i.iz = fmul float %i.gl, %i.iy
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread218
  %.0 = phi float [ %i.iz, %bb.n ], [ 0.000000e+00, %.thread218 ]
  %.sroa.7176.8.vec.extract = extractelement <2 x float> %.sroa.7176.0221, i64 0
  %.sroa.7191.8.vec.extract = extractelement <2 x float> %.sroa.7191.0216, i64 0
  %i.ja = shufflevector <2 x float> %.sroa.0173.0222, <2 x float> %.sroa.0188.0217, <4 x i32> <i32 poison, i32 1, i32 poison, i32 3>
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> %i.hu, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> %i.hb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jd = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.je = insertelement <4 x float> %i.jd, float %i.ee, i64 1
  %i.jf = shufflevector <4 x float> %i.je, <4 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.jh = fmul <4 x float> %i.jc, %i.jg
  %i.ji = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jj = insertelement <4 x float> %i.ji, float %i.ef, i64 1
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jm = shufflevector <2 x float> %.sroa.0173.0222, <2 x float> %.sroa.0188.0217, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.jn = shufflevector <4 x float> %i.hu, <4 x float> %i.jm, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> %i.hb, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jl, <4 x float> %i.jo, <4 x float> %i.jh) ; 4 uses
  %i.jq = extractelement <4 x float> %i.jp, i64 0
  %i.jr = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %.sroa.7.0, float %i.jq)
  %i.js = extractelement <4 x float> %i.jp, i64 1
  %i.jt = tail call noundef float @llvm.fmuladd.f32(float %i.ed, float %.sroa.7176.8.vec.extract, float %i.js)
  %i.ju = extractelement <4 x float> %i.jp, i64 2
  %i.jv = tail call noundef float @llvm.fmuladd.f32(float %i.hg, float %.sroa.7183.0, float %i.ju)
  %i.jw = extractelement <4 x float> %i.jp, i64 3
  %i.jx = tail call noundef float @llvm.fmuladd.f32(float %i.hc, float %.sroa.7191.8.vec.extract, float %i.jw)
  %i.jy = fadd float %i.jx, %i.jv
  %i.jz = fadd float %i.jt, %i.jr
  %i.ka = fadd float %i.jy, %i.jz
  %i.kb = fsub float %12, %i.ka
  %i.kc = fmul float %i.gl, %i.kb
  %i.kd = fadd float %i.kc, %.0
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %i.kd, ptr %i.ke, align 8, !tbaa !57
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %13, ptr %i.kf, align 4, !tbaa !59
  %i.kg = fneg float %i.n
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.kg, ptr %i.kh, align 8, !tbaa !62
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.kj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.kj, ptr %i.ki, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(160) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_fRK19btContactSolverInfoff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9, float noundef %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %11, float noundef %12, float noundef %13) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 160
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !42
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.o = icmp eq i32 %i.l, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.p = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(160) %i.r, i64 160, i1 false), !tbaa.struct !98
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw [160 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull align 8 dereferenceable(160) %i.u, i64 160, i1 false), !tbaa.struct !98
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !0

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw [160 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.v, ptr noundef nonnull align 8 dereferenceable(160) %i.x, i64 160, i1 false), !tbaa.struct !98
  br label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !40, !range !72, !noundef !100
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.z)
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ad, align 8, !tbaa !40
  store ptr %.0.i.i.i, ptr %i.y, align 8, !tbaa !41
  store i32 %i.g, ptr %i.c, align 8, !tbaa !43
  %.pre2.i = load i32, ptr %i.a, align 4, !tbaa !42
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit

_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.a, %bb.b, %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i
  %i.ae = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.a, align 4, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = sext i32 %i.b to i64
  %i.aj = getelementptr inbounds [160 x i8], ptr %i.ah, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 148
  store i32 %4, ptr %i.ak, align 4, !tbaa !101
  tail call void @_ZN35btSequentialImpulseConstraintSolver23setupFrictionConstraintER18btSolverConstraintRK9btVector3iiR15btManifoldPointS4_S4_P17btCollisionObjectS8_fRK19btContactSolverInfoff(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(204) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr poison, ptr poison, float noundef %10, ptr noundef nonnull align 4 dereferenceable(128) %11, float noundef %12, float noundef %13)
  ret ptr %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver32setupTorsionalFrictionConstraintER18btSolverConstraintRK9btVector3iiR15btManifoldPointfS4_S4_P17btCollisionObjectS8_fff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((0, 128), (136, 144), (152, 160)) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr nofree nonnull readnone align 8 captures(none) %5, float noundef %6, ptr nofree nonnull readnone align 4 captures(none) %7, ptr nofree nonnull readnone align 4 captures(none) %8, ptr nofree readnone captures(none) %9, ptr nofree readnone captures(none) %10, float %11, float noundef %12, float noundef %13) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store <2 x float> splat (float -0.000000e+00), ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> <float -0.000000e+00, float 0.000000e+00>, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds [248 x i8], ptr %i.d, i64 %i.e ; 8 uses
  %i.g = sext i32 %4 to i64
  %i.h = getelementptr inbounds [248 x i8], ptr %i.d, i64 %i.g ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i32 %3, ptr %i.m, align 8, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i32 %4, ptr %i.n, align 4, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  store float %6, ptr %i.o, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr null, ptr %i.p, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x float> zeroinitializer, ptr %i.q, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load <3 x float>, ptr %2, align 4, !tbaa !60
  %i.t = fneg <3 x float> %i.s                    ; 17 uses
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %i.v = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.w = shufflevector <3 x float> <float poison, float 0.000000e+00, float poison>, <3 x float> %i.u, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.v, ptr %1, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.w, ptr %.sroa.6181.0..sroa_idx, align 8, !tbaa !81
  %.not = icmp eq ptr %i.j, null                  ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 372
  %i.y = extractelement <3 x float> %i.t, i64 1
  %i.z = extractelement <3 x float> %i.t, i64 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 380
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !60
  %i.ac = extractelement <3 x float> %i.t, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 388
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 396
  %i.af = load float, ptr %i.ae, align 4, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 404
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !60
  %i.ak = fmul float %i.aj, %i.y
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.z, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 412
  %i.an = load float, ptr %i.am, align 4, !tbaa !60
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.ac, float %i.al)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 672
  %i.aq = load <2 x float>, ptr %i.x, align 4, !tbaa !60 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.ad, align 4, !tbaa !60 ; 2 uses
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.at = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x float> %i.as, %i.at
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.aw = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.aw, <2 x float> %i.au)
  %i.ay = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.af, i64 1
  %i.ba = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ba, <2 x float> %i.ax)
  %i.bc = load <2 x float>, ptr %i.ap, align 4, !tbaa !60
  %i.bd = fmul <2 x float> %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 680
  %i.bf = load float, ptr %i.be, align 4, !tbaa !60
  %i.bg = fmul float %i.ao, %i.bf
  %.sroa.3.12.vec.insert.i82 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bg, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.6179.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i82, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.0178.0 = phi <2 x float> [ %i.bd, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <2 x float> %.sroa.0178.0, ptr %i.bh, align 8
  %.sroa.6179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store <2 x float> %.sroa.6179.0, ptr %.sroa.6179.0..sroa_idx, align 8, !tbaa !81
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load <4 x float>, ptr %2, align 4       ; 13 uses
  %.sroa.5164.0.copyload = load float, ptr %i.r, align 4 ; 4 uses
  store <4 x float> %i.bj, ptr %i.bi, align 8
  %.not69 = icmp eq ptr %i.l, null                ; 3 uses
  br i1 %.not69, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 372
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 380
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 388
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 396
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 404
  %i.br = load float, ptr %i.bq, align 4, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 408
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !60
  %i.bu = fmul float %.sroa.5164.0.copyload, %i.bt
  %i.bv = extractelement <4 x float> %i.bj, i64 0
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bv, float %i.bu)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 412
  %i.by = load float, ptr %i.bx, align 4, !tbaa !60
  %i.bz = extractelement <4 x float> %i.bj, i64 2
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.by, float %i.bz, float %i.bw)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 672
  %i.cc = load <2 x float>, ptr %i.bk, align 4, !tbaa !60 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.bn, align 4, !tbaa !60 ; 2 uses
  %14 = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %15 = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 1, i32 3>
  %16 = fmul <2 x float> %14, %15
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cf = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %16)
  %i.ch = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.bp, i64 1
  %i.cj = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.cg)
  %i.cl = load <2 x float>, ptr %i.cb, align 4, !tbaa !60
  %i.cm = fmul <2 x float> %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 680
  %i.co = load float, ptr %i.cn, align 4, !tbaa !60
  %i.cp = fmul float %i.ca, %i.co
  %.sroa.3.12.vec.insert.i92 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cp, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.6.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i92, %bb.d ], [ zeroinitializer, %bb.c ]
  %.sroa.0161.0 = phi <2 x float> [ %i.cm, %bb.d ], [ zeroinitializer, %bb.c ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x float> %.sroa.0161.0, ptr %i.cq, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store <2 x float> %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !81
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 372
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 380
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !60
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 388
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 396
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !60
  %i.cx = load <2 x float>, ptr %i.cr, align 4, !tbaa !60 ; 2 uses
  %i.cy = load <2 x float>, ptr %i.cu, align 4, !tbaa !60 ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 1, i32 3>
  %i.da = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = fmul <2 x float> %i.cz, %i.da
  %i.dc = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.dd = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> zeroinitializer
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> %i.dd, <2 x float> %i.db)
  %i.df = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.cw, i64 1
  %i.dh = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.dh, <2 x float> %i.de)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 404
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !60
  %i.dn = extractelement <3 x float> %i.t, i64 1
  %i.do = fmul float %i.dm, %i.dn
  %i.dp = extractelement <3 x float> %i.t, i64 0
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dp, float %i.do)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 412
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !60
  %i.dt = extractelement <3 x float> %i.t, i64 2
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.dt, float %i.dq)
  %.sroa.3.12.vec.insert.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.du, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.7154.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i97, %bb.f ], [ zeroinitializer, %bb.e ]
  %.sroa.0151.0 = phi <2 x float> [ %i.di, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 372
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 380
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 388
  %i.dz = getelementptr inbounds nuw i8, ptr %i.l, i64 396
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !60
  %i.eb = load <2 x float>, ptr %i.dv, align 4, !tbaa !60 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dy, align 4, !tbaa !60 ; 2 uses
  %17 = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %18 = shufflevector <2 x float> %i.eb, <2 x float> %i.ec, <2 x i32> <i32 1, i32 3>
  %19 = fmul <2 x float> %17, %18
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.ee = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ee, <2 x float> %19)
  %i.eg = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ea, i64 1
  %i.ei = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ei, <2 x float> %i.ef)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 404
  %i.el = load float, ptr %i.ek, align 4, !tbaa !60
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 408
  %i.en = load float, ptr %i.em, align 4, !tbaa !60
  %i.eo = fmul float %.sroa.5164.0.copyload, %i.en
  %i.ep = extractelement <4 x float> %i.bj, i64 0
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.el, float %i.ep, float %i.eo)
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 412
  %i.es = load float, ptr %i.er, align 4, !tbaa !60
  %i.et = extractelement <4 x float> %i.bj, i64 2
  %i.eu = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.et, float %i.eq)
  %.sroa.3.12.vec.insert.i102 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.7146.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i102, %bb.h ], [ zeroinitializer, %bb.g ]
  %.sroa.0143.0 = phi <2 x float> [ %i.ej, %bb.h ], [ zeroinitializer, %bb.g ] ; 2 uses
  %.sroa.0151.0.vec.extract = extractelement <2 x float> %.sroa.0151.0, i64 0
  %.sroa.0151.4.vec.extract = extractelement <2 x float> %.sroa.0151.0, i64 1
  %i.ev = extractelement <3 x float> %i.t, i64 1  ; 2 uses
  %i.ew = fmul float %.sroa.0151.4.vec.extract, %i.ev
  %i.ex = extractelement <3 x float> %i.t, i64 0  ; 2 uses
  %i.ey = tail call float @llvm.fmuladd.f32(float %.sroa.0151.0.vec.extract, float %i.ex, float %i.ew)
  %.sroa.7154.8.vec.extract = extractelement <2 x float> %.sroa.7154.0, i64 0
  %i.ez = extractelement <3 x float> %i.t, i64 2  ; 2 uses
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7154.8.vec.extract, float %i.ez, float %i.ey)
  %i.fb = fadd float %i.fa, 0.000000e+00
  %.sroa.0143.0.vec.extract = extractelement <2 x float> %.sroa.0143.0, i64 0
  %.sroa.0143.4.vec.extract = extractelement <2 x float> %.sroa.0143.0, i64 1
  %i.fc = fmul float %.sroa.5164.0.copyload, %.sroa.0143.4.vec.extract
  %i.fd = extractelement <4 x float> %i.bj, i64 0 ; 2 uses
  %i.fe = tail call float @llvm.fmuladd.f32(float %.sroa.0143.0.vec.extract, float %i.fd, float %i.fc)
  %.sroa.7146.8.vec.extract = extractelement <2 x float> %.sroa.7146.0, i64 0
  %i.ff = extractelement <4 x float> %i.bj, i64 2 ; 2 uses
  %i.fg = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7146.8.vec.extract, float %i.ff, float %i.fe)
  %i.fh = fadd float %i.fg, %i.fb
  %i.fi = fdiv float 1.000000e+00, %i.fh          ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float %i.fi, ptr %i.fj, align 4, !tbaa !61
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.fm = load float, ptr %i.fk, align 8, !tbaa !60
  %i.fn = load float, ptr %i.fl, align 8, !tbaa !60
  %i.fo = fadd float %i.fm, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 180
  %i.fq = getelementptr inbounds nuw i8, ptr %i.f, i64 212
  %i.fr = load <2 x float>, ptr %i.fp, align 4, !tbaa !60
  %i.fs = load <2 x float>, ptr %i.fq, align 4, !tbaa !60
  %i.ft = fadd <2 x float> %i.fr, %i.fs           ; 2 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 0
  %i.fv = fmul float %i.fu, 0.000000e+00
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.fv)
  %i.fx = extractelement <2 x float> %i.ft, i64 1
  %i.fy = tail call noundef float @llvm.fmuladd.f32(float %i.fx, float 0.000000e+00, float %i.fw)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %.sroa.0128.0.copyload = load float, ptr %i.fz, align 8
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 196
  %.sroa.5129.0.copyload = load float, ptr %.sroa.5129.0..sroa_idx, align 4
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %.sroa.7130.0.copyload = load float, ptr %.sroa.7130.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ga = phi float [ %i.fy, %bb.j ], [ 0.000000e+00, %bb.i ]
  %.sroa.7130.0 = phi float [ %.sroa.7130.0.copyload, %bb.j ], [ 0.000000e+00, %bb.i ]
  %.sroa.5129.0 = phi float [ %.sroa.5129.0.copyload, %bb.j ], [ 0.000000e+00, %bb.i ]
  %.sroa.0128.0 = phi float [ %.sroa.0128.0.copyload, %bb.j ], [ 0.000000e+00, %bb.i ]
  br i1 %.not69, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.gd = load <2 x float>, ptr %i.gb, align 8, !tbaa !60
  %i.ge = load <2 x float>, ptr %i.gc, align 8, !tbaa !60
  %i.gf = fadd <2 x float> %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !60
  %i.gi = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !60
  %i.gk = fadd float %i.gh, %i.gj
  %.sroa.3.12.vec.insert.i112 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gk, i64 0
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %.sroa.0.0.copyload = load float, ptr %i.gl, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 196
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.l
  %.sroa.0120.0200 = phi <2 x float> [ %i.gf, %bb.l ], [ zeroinitializer, %bb.k ] ; 2 uses
  %.sroa.7123.0199 = phi <2 x float> [ %.sroa.3.12.vec.insert.i112, %bb.l ], [ zeroinitializer, %bb.k ]
  %.sroa.7.0 = phi float [ %.sroa.7.0.copyload, %bb.l ], [ 0.000000e+00, %bb.k ]
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload, %bb.l ], [ 0.000000e+00, %bb.k ]
  %.sroa.0.0 = phi float [ %.sroa.0.0.copyload, %bb.l ], [ 0.000000e+00, %bb.k ]
  %.sroa.7123.8.vec.extract = extractelement <2 x float> %.sroa.7123.0199, i64 0
  %.sroa.0120.0.vec.extract = extractelement <2 x float> %.sroa.0120.0200, i64 0
  %.sroa.0120.4.vec.extract = extractelement <2 x float> %.sroa.0120.0200, i64 1
  %i.gm = fmul float %.sroa.0120.4.vec.extract, -0.000000e+00
  %i.gn = tail call float @llvm.fmuladd.f32(float %.sroa.0120.0.vec.extract, float -0.000000e+00, float %i.gm)
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7123.8.vec.extract, float -0.000000e+00, float %i.gn)
  %i.gp = fmul float %.sroa.5129.0, %i.ev
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.ex, float %.sroa.0128.0, float %i.gp)
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.ez, float %.sroa.7130.0, float %i.gq)
  %i.gs = fadd float %i.ga, %i.gr
  %i.gt = fmul float %.sroa.5164.0.copyload, %.sroa.5.0
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.fd, float %.sroa.0.0, float %i.gt)
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %.sroa.7.0, float %i.gu)
  %i.gw = fadd float %i.go, %i.gv
  %i.gx = fadd float %i.gs, %i.gw
  %i.gy = fsub float %12, %i.gx
  %i.gz = fmul float %i.fi, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %i.gz, ptr %i.ha, align 8, !tbaa !57
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %13, ptr %i.hb, align 4, !tbaa !59
  %i.hc = fneg float %6
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %i.hc, ptr %i.hd, align 8, !tbaa !62
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float %6, ptr %i.he, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(160) ptr @_ZN35btSequentialImpulseConstraintSolver30addTorsionalFrictionConstraintERK9btVector3iiiR15btManifoldPointfS2_S2_P17btCollisionObjectS6_fff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree nonnull readnone align 8 captures(none) %5, float noundef %6, ptr nofree nonnull readnone align 4 captures(none) %7, ptr nofree nonnull readnone align 4 captures(none) %8, ptr nofree readnone captures(none) %9, ptr nofree readnone captures(none) %10, float %11, float noundef %12, float noundef %13) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 4 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE21expandNonInitializingEv.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 160
  %i.k = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !42
  br label %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE8allocateEi.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.l to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.o = icmp eq i32 %i.l, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.p = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(160) %i.r, i64 160, i1 false), !tbaa.struct !98
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [160 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw [160 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull align 8 dereferenceable(160) %i.u, i64 160, i1 false), !tbaa.struct !98
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !0

_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i32 %i.l to i1
end_hunk_0
