inline.NumInlined: 156
inline.NumDeleted: 38
begin_hunk_0_@_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3:bb.a
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.r, float %i.m, i64 1
  %i.s = fmul float %i.h, %i.l
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.s, i64 0
  br label %_Z21CylinderLocalSupportXRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.t = load float, ptr %1, align 4, !tbaa !19
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.d
  %i.w = select i1 %i.u, float %i.v, float %i.d
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> %i.x, float %i.c, i64 1
  br label %_Z21CylinderLocalSupportXRK9btVector3S1_.exit

_Z21CylinderLocalSupportXRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.b ], [ <float 0.000000e+00, float undef>, %bb.c ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i, %bb.b ], [ %.sroa.0.0.vec.insert22.i, %bb.c ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.5.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load float, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %i.e = load float, ptr %1, align 4, !tbaa !19   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !19 ; 3 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h) ; 2 uses
  %i.j = fcmp une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.i)
  %i.k = fdiv float %i.b, %sqrt.i                 ; 2 uses
  %i.l = fmul float %i.e, %i.k
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = fneg float %i.d
  %i.q = select i1 %i.o, float %i.p, float %i.d
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.q, i64 0
  %i.r = fmul float %i.g, %i.k
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.r, i64 1
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.d
  %i.w = select i1 %i.u, float %i.v, float %i.d
  %.sroa.5.8.vec.insert27.i = insertelement <2 x float> <float poison, float undef>, float %i.w, i64 0
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.b, i64 0
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

_Z21CylinderLocalSupportZRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.b ], [ %.sroa.5.8.vec.insert27.i, %bb.c ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.b ], [ %.sroa.0.4.vec.insert24.i, %bb.c ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.5.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !19 ; 4 uses
  %i.e = load float, ptr %1, align 4, !tbaa !19   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !19 ; 3 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h) ; 2 uses
  %i.j = fcmp une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.i)
  %i.k = fdiv float %i.b, %sqrt.i                 ; 2 uses
  %i.l = fmul float %i.e, %i.k
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = fneg float %i.d
  %i.q = select i1 %i.o, float %i.p, float %i.d
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.q, i64 1
  %i.r = fmul float %i.g, %i.k
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.r, i64 0
  br label %_Z21CylinderLocalSupportYRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> poison, float %i.b, i64 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.d
  %i.w = select i1 %i.u, float %i.v, float %i.d
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> %.sroa.0.0.vec.insert22.i, float %i.w, i64 1
  br label %_Z21CylinderLocalSupportYRK9btVector3S1_.exit

_Z21CylinderLocalSupportYRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.b ], [ <float 0.000000e+00, float undef>, %bb.c ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.b ], [ %.sroa.0.4.vec.insert24.i, %bb.c ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.5.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_Z21CylinderLocalSupportYRK9btVector3S1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_Z21CylinderLocalSupportYRK9btVector3S1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z21CylinderLocalSupportYRK9btVector3S1_.exit ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.e = load float, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.f = load float, ptr %i.c, align 4, !tbaa !19 ; 4 uses
  %i.g = load float, ptr %i.d, align 4, !tbaa !19 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !19 ; 3 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.j) ; 2 uses
  %i.l = fcmp une float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.k)
  %i.m = fdiv float %i.e, %sqrt.i                 ; 2 uses
  %i.n = fmul float %i.g, %i.m
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.n, i64 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fneg float %i.f
  %i.s = select i1 %i.q, float %i.r, float %i.f
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.s, i64 1
  %i.t = fmul float %i.i, %i.m
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.t, i64 0
  br label %_Z21CylinderLocalSupportYRK9btVector3S1_.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> poison, float %i.e, i64 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !19
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.f
  %i.y = select i1 %i.w, float %i.x, float %i.f
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> %.sroa.0.0.vec.insert22.i, float %i.y, i64 1
  br label %_Z21CylinderLocalSupportYRK9btVector3S1_.exit

_Z21CylinderLocalSupportYRK9btVector3S1_.exit:    ; preds = %bb.c, %bb.d
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.c ], [ <float 0.000000e+00, float undef>, %bb.d ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.c ], [ %.sroa.0.4.vec.insert24.i, %bb.d ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %.sroa.0.0.i, ptr %i.z, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <2 x float> %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_Z21CylinderLocalSupportZRK9btVector3S1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_Z21CylinderLocalSupportZRK9btVector3S1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z21CylinderLocalSupportZRK9btVector3S1_.exit ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.e = load float, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %i.f = load float, ptr %i.c, align 8, !tbaa !19 ; 4 uses
  %4 = load <2 x float>, ptr %i.d, align 4, !tbaa !19 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %4, %4
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %6 = extractelement <2 x float> %4, i64 0       ; 2 uses
  %i.g = tail call float @llvm.fmuladd.f32(float %6, float %6, float %5) ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.g)
  %i.i = fdiv float %i.e, %sqrt.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !19
  %i.l = fcmp olt float %i.k, 0.000000e+00
  %i.m = fneg float %i.f
  %i.n = select i1 %i.l, float %i.m, float %i.f
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.n, i64 0
  %.sroa.5.8.vec.insert.i.a = insertelement <2 x float> poison, float %i.i, i64 0
  %7 = shufflevector <2 x float> %.sroa.5.8.vec.insert.i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %4, %7
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !19
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fneg float %i.f
  %i.s = select i1 %i.q, float %i.r, float %i.f
  %.sroa.5.8.vec.insert27.i = insertelement <2 x float> <float poison, float undef>, float %i.s, i64 0
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

_Z21CylinderLocalSupportZRK9btVector3S1_.exit:    ; preds = %bb.c, %bb.d
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.c ], [ %.sroa.5.8.vec.insert27.i, %bb.d ]
  %.sroa.0.0.i = phi <2 x float> [ %8, %bb.c ], [ %.sroa.0.4.vec.insert24.i, %bb.d ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %.sroa.0.0.i, ptr %i.t, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store <2 x float> %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_Z21CylinderLocalSupportXRK9btVector3S1_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_Z21CylinderLocalSupportXRK9btVector3S1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z21CylinderLocalSupportXRK9btVector3S1_.exit ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %i.f = load float, ptr %i.b, align 8, !tbaa !19 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !19 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !19 ; 3 uses
  %i.k = fmul float %i.j, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k) ; 2 uses
  %i.m = fcmp une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.l)
  %i.n = fdiv float %i.e, %sqrt.i                 ; 2 uses
  %i.o = fmul float %i.h, %i.n
  %i.p = load float, ptr %i.d, align 4, !tbaa !19
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fneg float %i.f
  %i.s = select i1 %i.q, float %i.r, float %i.f
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.t, float %i.o, i64 1
  %i.u = fmul float %i.j, %i.n
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.u, i64 0
  br label %_Z21CylinderLocalSupportXRK9btVector3S1_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = load float, ptr %i.d, align 4, !tbaa !19
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fneg float %i.f
  %i.y = select i1 %i.w, float %i.x, float %i.f
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> %i.z, float %i.e, i64 1
  br label %_Z21CylinderLocalSupportXRK9btVector3S1_.exit

_Z21CylinderLocalSupportXRK9btVector3S1_.exit:    ; preds = %bb.c, %bb.d
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.c ], [ <float 0.000000e+00, float undef>, %bb.d ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i, %bb.c ], [ %.sroa.0.0.vec.insert22.i, %bb.d ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <2 x float> %.sroa.0.0.i, ptr %i.aa, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store <2 x float> %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN15btCylinderShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #10
  unreachable
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15btCylinderShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btCylinderShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(68) %0, float noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef float %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !19
  %i.p = fadd float %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.q, align 8, !tbaa !18
  %i.r = load ptr, ptr %0, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load <2 x float>, ptr %i.m, align 8, !tbaa !19
  %i.v = insertelement <2 x float> poison, float %i.d, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.h, i64 1
  %i.x = fadd <2 x float> %i.w, %i.u
  %i.y = tail call noundef float %i.t(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef float %i.ab(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef float %i.af(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.ah = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ac, i64 1
  %i.aj = fsub <2 x float> %i.x, %i.ai
  %i.ak = fsub float %i.p, %i.ag
  %.sroa.3.12.vec.insert.i4 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  store <2 x float> %i.aj, ptr %i.m, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4, ptr %i.n, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !18
  ret float %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.i = fcmp une float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.d, 1 ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.d, 0 ; 2 uses
  %.sroa.06.0.copyload = load float, ptr %1, align 4 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4 ; 3 uses
  %i.l = fmul float %.sroa.8.0.copyload, %.sroa.8.0.copyload
  %i.m = tail call float @llvm.fmuladd.f32(float %.sroa.06.0.copyload, float %.sroa.06.0.copyload, float %i.l)
end_hunk_0
