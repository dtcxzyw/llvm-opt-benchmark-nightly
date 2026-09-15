Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableContactConstraint?download=true
inline.NumInlined: 225
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK45btReducedDeformableNodeRigidContactConstraint10getDeltaVaEv:bb.a
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %._crit_edge100, label %.lr.ph99.epil.preheader

.lr.ph99.epil.preheader:                          ; preds = %._crit_edge100.loopexit.unr-lcssa, %.lr.ph99.preheader
  %indvars.iv111.epil.init = phi i64 [ 0, %.lr.ph99.preheader ], [ %indvars.iv.next112.3, %._crit_edge100.loopexit.unr-lcssa ]
  %.296.epil.init = phi float [ 0.000000e+00, %.lr.ph99.preheader ], [ %i.fl, %._crit_edge100.loopexit.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter133, 0
  tail call void @llvm.assume(i1 %lcmp.mod137)
  br label %.lr.ph99.epil

.lr.ph99.epil:                                    ; preds = %.lr.ph99.epil, %.lr.ph99.epil.preheader
  %indvars.iv111.epil = phi i64 [ %indvars.iv111.epil.init, %.lr.ph99.epil.preheader ], [ %indvars.iv.next112.epil, %.lr.ph99.epil ] ; 3 uses
  %.296.epil = phi float [ %.296.epil.init, %.lr.ph99.epil.preheader ], [ %i.eh, %.lr.ph99.epil ]
  %epil.iter134 = phi i64 [ 0, %.lr.ph99.epil.preheader ], [ %epil.iter134.next, %.lr.ph99.epil ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv111.epil
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !27
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv111.epil
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !27
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.eg, float %.296.epil) ; 2 uses
  %indvars.iv.next112.epil = add nuw nsw i64 %indvars.iv111.epil, 1
  %epil.iter134.next = add i64 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i64 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %._crit_edge100, label %.lr.ph99.epil, !llvm.loop !239

._crit_edge100:                                   ; preds = %._crit_edge100.loopexit.unr-lcssa, %.lr.ph99.epil, %._crit_edge94
  %.2.lcssa = phi float [ 0.000000e+00, %._crit_edge94 ], [ %i.fl, %._crit_edge100.loopexit.unr-lcssa ], [ %i.eh, %.lr.ph99.epil ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aj, i64 832
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aj, i64 840
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !27
  %i.el = fmul float %.2.lcssa, %i.ek
  %i.em = load <2 x float>, ptr %i.ei, align 8, !tbaa !27
  %i.en = insertelement <2 x float> poison, float %.2.lcssa, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.eo, %i.em
  %i.eq = fadd <2 x float> %i.dg, %i.ep
  %i.er = fadd float %i.dh, %i.el
  %.sroa.13.8.vec.insert85 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.er, i64 0
  br label %bb.f

.lr.ph99:                                         ; preds = %.lr.ph99, %.lr.ph99.preheader.new
  %indvars.iv111 = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %indvars.iv.next112.3, %.lr.ph99 ] ; 6 uses
  %.296 = phi float [ 0.000000e+00, %.lr.ph99.preheader.new ], [ %i.fl, %.lr.ph99 ]
  %niter139 = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %niter139.next.3, %.lr.ph99 ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv111
  %i.et = load float, ptr %i.es, align 4, !tbaa !27
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv111
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !27
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.et, float %i.ev, float %.296)
  %indvars.iv.next112 = or disjoint i64 %indvars.iv111, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next112
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !27
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next112
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !27
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.fa, float %i.ew)
  %indvars.iv.next112.1 = or disjoint i64 %indvars.iv111, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next112.1
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !27
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next112.1
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !27
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ff, float %i.fb)
  %indvars.iv.next112.2 = or disjoint i64 %indvars.iv111, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next112.2
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !27
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next112.2
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !27
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.fk, float %i.fg) ; 3 uses
  %indvars.iv.next112.3 = add nuw nsw i64 %indvars.iv111, 4 ; 2 uses
  %niter139.next.3 = add i64 %niter139, 4         ; 2 uses
  %niter139.ncmp.3 = icmp eq i64 %niter139.next.3, %unroll_iter138
  br i1 %niter139.ncmp.3, label %._crit_edge100.loopexit.unr-lcssa, label %.lr.ph99, !llvm.loop !240

bb.f:                                             ; preds = %bb.d, %._crit_edge100, %bb.c, %bb.a
  %.sroa.062.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.d ], [ %i.eq, %._crit_edge100 ], [ %i.ae, %bb.c ]
  %.sroa.13.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.d ], [ %.sroa.13.8.vec.insert85, %._crit_edge100 ], [ %.sroa.3.12.vec.insert.i32, %bb.c ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.062.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.13.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableNodeRigidContactConstraint10getDeltaVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %i.f = tail call { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody32internalComputeNodeDeltaVelocityERK11btTransformi(ptr noundef nonnull align 8 dereferenceable(3176) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.c, i32 noundef %i.e)
  ret { <2 x float>, <2 x float> } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableNodeRigidContactConstraint10getSplitVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !25
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableNodeRigidContactConstraint5getDvEPKN10btSoftBody4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr nofree readnone captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load float, ptr %i.a, align 8, !tbaa !27
  %i.d = load float, ptr %i.b, align 8, !tbaa !27
  %i.e = fadd float %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !27
  %i.i = load <2 x float>, ptr %i.g, align 4, !tbaa !27
  %i.j = fadd <2 x float> %i.h, %i.i              ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.k = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.l = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.j, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.k, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.l, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN45btReducedDeformableNodeRigidContactConstraint12applyImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load float, ptr %i.f, align 8, !tbaa !41
  tail call void @_ZN23btReducedDeformableBody29internalApplyFullSpaceImpulseERK9btVector3S2_if(ptr noundef nonnull align 8 dereferenceable(3176) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i32 noundef %i.e, float noundef %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN45btReducedDeformableFaceRigidContactConstraintC2EP23btReducedDeformableBodyRKN10btSoftBody26DeformableFaceRigidContactERK19btContactSolverInfofb(ptr noundef nonnull align 8 dereferenceable(449) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(904) %2, ptr noundef nonnull align 4 dereferenceable(128) %3, float noundef %4, i1 noundef zeroext %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8
  tail call void @_ZN34btDeformableRigidContactConstraintC2ERKN10btSoftBody22DeformableRigidContactERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef nonnull align 8 dereferenceable(848) %2, ptr noundef nonnull align 4 dereferenceable(128) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.b, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float %4, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 164
  store <2 x float> zeroinitializer, ptr %i.f, align 4, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float %i.h, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !47 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.l, ptr %i.m, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float %i.l, ptr %i.n, align 4, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store float %i.p, ptr %i.q, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.v = load i32, ptr %i.u, align 8, !tbaa !76
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = and i8 %i.w, 1
  store i8 %i.y, ptr %i.x, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !78
  %i.ab = icmp eq i32 %i.aa, 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTV45btReducedDeformableFaceRigidContactConstraint, i64 16), ptr %0, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 848
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !243
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !112
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 %i.a, ptr %i.ah, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableFaceRigidContactConstraint5getVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(449) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  %i.i = load float, ptr %i.g, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 876
  %i.o = load float, ptr %i.m, align 4, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113  ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %i.t = load float, ptr %1, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %2 = load float, ptr %i.s, align 4, !tbaa !27   ; 2 uses
  %i.v = load float, ptr %i.n, align 4, !tbaa !27 ; 2 uses
  %3 = load float, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.w = fmul float %i.i, %3
  %i.x = load <2 x float>, ptr %i.j, align 4, !tbaa !27
  %4 = insertelement <2 x float> poison, float %3, i64 0
  %i.y = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.y, %i.x
  %i.aa = fmul float %i.o, %i.v
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !27
  %5 = insertelement <2 x float> poison, float %i.v, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %6, %i.ab
  %i.ad = fadd float %i.w, %i.aa
  %i.ae = fadd <2 x float> %i.z, %i.ac
  %7 = fmul float %i.t, %2
  %8 = load <2 x float>, ptr %i.u, align 4, !tbaa !27
  %9 = insertelement <2 x float> poison, float %2, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %10, %8
  %i.ag = fadd float %i.ad, %7
  %i.ah = fadd <2 x float> %i.ae, %i.af           ; 2 uses
  %.sroa.0.0.vec.insert.i19 = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %.sroa.0.0.vec.insert.i19, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ah, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i22 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ai, 0
  %.fca.1.insert.i23 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i22, <2 x float> %i.aj, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableFaceRigidContactConstraint10getSplitVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(449) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 872
  %i.i = load float, ptr %i.g, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 876
  %i.o = load float, ptr %i.m, align 4, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113  ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.r, i64 140
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %i.t = load float, ptr %1, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %2 = load float, ptr %i.s, align 4, !tbaa !27   ; 2 uses
  %i.v = load float, ptr %i.n, align 4, !tbaa !27 ; 2 uses
  %3 = load float, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.w = fmul float %i.i, %3
  %i.x = load <2 x float>, ptr %i.j, align 4, !tbaa !27
  %4 = insertelement <2 x float> poison, float %3, i64 0
  %i.y = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.y, %i.x
  %i.aa = fmul float %i.o, %i.v
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !27
  %5 = insertelement <2 x float> poison, float %i.v, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %6, %i.ab
  %i.ad = fadd float %i.w, %i.aa
  %i.ae = fadd <2 x float> %i.z, %i.ac
  %7 = fmul float %i.t, %2
  %8 = load <2 x float>, ptr %i.u, align 4, !tbaa !27
  %9 = insertelement <2 x float> poison, float %2, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %10, %8
  %i.ag = fadd float %i.ad, %7
  %i.ah = fadd <2 x float> %i.ae, %i.af           ; 2 uses
  %.sroa.0.0.vec.insert.i19 = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %.sroa.0.0.vec.insert.i19, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %i.aj = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ah, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i22 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ai, 0
  %.fca.1.insert.i23 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i22, <2 x float> %i.aj, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK45btReducedDeformableFaceRigidContactConstraint5getDvEPKN10btSoftBody4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(449) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load float, ptr %i.a, align 8, !tbaa !27
  %i.d = load float, ptr %i.b, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !27
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113
  %i.r = icmp eq ptr %i.q, %1
  %. = select i1 %i.r, i64 892, i64 896
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 888, %bb.a ], [ %., %bb.b ]
  %i.s = fadd <2 x float> %i.g, %i.h
  %i.t = fadd float %i.c, %i.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink
  %i.v = load float, ptr %i.u, align 4, !tbaa !27 ; 2 uses
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN45btReducedDeformableFaceRigidContactConstraint12applyImpulseERK9btVector3(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35btReducedDeformableStaticConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(172) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK28btDeformableStaticConstraint5getVaEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } zeroinitializer
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK28btDeformableStaticConstraint5getVbEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } zeroinitializer
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK28btDeformableStaticConstraint5getDvEPKN10btSoftBody4NodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN28btDeformableStaticConstraint19setPenetrationScaleEf(ptr noundef nonnull align 8 dereferenceable(48) %0, float noundef %1) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN41btReducedDeformableRigidContactConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(436) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN41btReducedDeformableRigidContactConstraint12applyImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN34btDeformableRigidContactConstraint19setPenetrationScaleEf(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %1) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !110
  %i.c = fmul float %1, %i.b
  store float %i.c, ptr %i.a, align 8, !tbaa !110
  ret void
}

declare { <2 x float>, <2 x float> } @_ZNK34btDeformableRigidContactConstraint10getSplitVaEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN41btReducedDeformableRigidContactConstraint17applySplitImpulseERK9btVector3(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN41btReducedDeformableRigidContactConstraint12warmStartingEv(ptr noundef nonnull align 8 dereferenceable(436) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN45btReducedDeformableNodeRigidContactConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29btDeformableContactConstraintD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN45btReducedDeformableFaceRigidContactConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(449) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}
end_hunk_0
