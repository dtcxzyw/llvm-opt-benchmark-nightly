inline.NumInlined: 92
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3:bb.a
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.17.0.copyload = load float, ptr %.sroa.17.0..sroa_idx, align 4 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.0.copyload, float %.sroa.17.0.copyload, float %i.d) ; 2 uses
  %i.f = fcmp olt float %i.e, f0x28800000
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.e)
  %i.g = fdiv float 1.000000e+00, %sqrt           ; 2 uses
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.a, %i.i
  %i.k = fmul float %.sroa.17.0.copyload, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.17.0 = phi float [ %i.k, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.l = phi <2 x float> [ %i.j, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = extractelement <2 x float> %i.l, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.075 = phi i32 [ 0, %.lr.ph ], [ %i.bb, %bb.d ]
  %.01374 = phi float [ f0xDD5E0B6B, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.01473 = phi ptr [ %i.s, %.lr.ph ], [ %i.au, %bb.d ] ; 3 uses
  %.01572 = phi ptr [ %i.q, %.lr.ph ], [ %i.av, %bb.d ] ; 2 uses
  %.sroa.4.071 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.4.1, %bb.d ]
  %.sroa.067.070 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.067.1, %bb.d ]
  %i.w = load float, ptr %i.u, align 8, !tbaa !32
  %i.x = fmul float %.sroa.17.0, %i.w
  %i.y = load float, ptr %.01572, align 4, !tbaa !32 ; 2 uses
  %i.z = fmul float %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.01473, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !32
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load <2 x float>, ptr %i.t, align 8, !tbaa !32
  %i.ah = fmul <2 x float> %i.l, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.ah, %i.aj
  %i.al = load <2 x float>, ptr %.01473, align 4, !tbaa !32
  %i.am = fadd <2 x float> %i.al, %i.ak
  %i.an = tail call noundef float %i.af(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.l, %i.ap
  %i.ar = fmul float %.sroa.17.0, %i.an
  %i.as = fsub <2 x float> %i.am, %i.aq           ; 3 uses
  %i.at = fsub float %i.ac, %i.ar                 ; 2 uses
  %.sroa.3.12.vec.insert.i35 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  %i.au = getelementptr inbounds nuw i8, ptr %.01473, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.01572, i64 4
  %foldExtExtBinop79 = fmul <2 x float> %i.l, %i.as
  %i.aw = extractelement <2 x float> %foldExtExtBinop79, i64 1
  %i.ax = extractelement <2 x float> %i.as, i64 0
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.v, float %i.ax, float %i.aw)
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.0, float %i.at, float %i.ay) ; 2 uses
  %i.ba = fcmp ogt float %i.az, %.01374           ; 3 uses
  %.sroa.067.1 = select i1 %i.ba, <2 x float> %i.as, <2 x float> %.sroa.067.070 ; 2 uses
  %.sroa.4.1 = select i1 %i.ba, <2 x float> %.sroa.3.12.vec.insert.i35, <2 x float> %.sroa.4.071 ; 2 uses
  %.1 = select i1 %i.ba, float %i.az, float %.01374
  %i.bb = add nuw nsw i32 %.075, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.sroa.067.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.c ], [ %.sroa.067.1, %bb.d ]
  %.sroa.4.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.c ], [ %.sroa.4.1, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.067.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0.lcssa, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define dso_local void @_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph58.split.preheader, label %._crit_edge59

.lr.ph58.split.preheader:                         ; preds = %.lr.ph58
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph58.split

._crit_edge59:                                    ; preds = %._crit_edge, %.lr.ph58, %bb.a
  ret void

.lr.ph58.splitthread-pre-split:                   ; preds = %._crit_edge
  %.pr = load i32, ptr %i.d, align 4, !tbaa !17
  br label %.lr.ph58.split

.lr.ph58.split:                                   ; preds = %.lr.ph58.splitthread-pre-split, %.lr.ph58.split.preheader
  %i.i = phi i32 [ %.pr, %.lr.ph58.splitthread-pre-split ], [ %i.g, %.lr.ph58.split.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph58.splitthread-pre-split ], [ 0, %.lr.ph58.split.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph58.split
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %.lr.ph58.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond62.not, label %._crit_edge59, label %.lr.ph58.splitthread-pre-split, !llvm.loop !40

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.02055 = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.d ]
  %.02154 = phi float [ f0xDD5E0B6B, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.02253 = phi ptr [ %i.l, %.lr.ph ], [ %i.as, %bb.d ] ; 2 uses
  %.02352 = phi ptr [ %i.m, %.lr.ph ], [ %i.ar, %bb.d ] ; 3 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !32
  %i.q = load float, ptr %i.f, align 8, !tbaa !32
  %i.r = fmul float %i.p, %i.q
  %i.s = load float, ptr %.02253, align 4, !tbaa !32 ; 2 uses
  %i.t = fmul float %i.s, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %.02352, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !32
  %i.w = fadd float %i.t, %i.v
  %i.x = load ptr, ptr %0, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load <2 x float>, ptr %i.j, align 4, !tbaa !32
  %i.ab = load <2 x float>, ptr %i.e, align 8, !tbaa !32
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ac, %i.ae
  %i.ag = load <2 x float>, ptr %.02352, align 4, !tbaa !32
  %i.ah = fadd <2 x float> %i.ag, %i.af
  %i.ai = tail call noundef float %i.z(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %i.aj = load <2 x float>, ptr %i.j, align 4, !tbaa !32 ; 3 uses
  %i.ak = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.al, %i.aj
  %i.an = load float, ptr %i.n, align 4, !tbaa !32 ; 2 uses
  %i.ao = fmul float %i.ai, %i.an
  %i.ap = fsub <2 x float> %i.ah, %i.am           ; 3 uses
  %i.aq = fsub float %i.w, %i.ao                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02352, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.02253, i64 4
  %foldExtExtBinop = fmul <2 x float> %i.aj, %i.ap
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.au = extractelement <2 x float> %i.ap, i64 0
  %i.av = extractelement <2 x float> %i.aj, i64 0
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.au, float %i.at)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.aq, float %i.aw) ; 2 uses
  %i.ay = fcmp ogt float %i.ax, %.02154
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.3.12.vec.insert.i42 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  store <2 x float> %i.ap, ptr %i.o, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i42, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi float [ %i.ax, %bb.c ], [ %.02154, %bb.b ]
  %i.az = add nuw nsw i32 %.02055, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.531.0.copyload = load float, ptr %.sroa.531.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.528.0.copyload = load float, ptr %.sroa.528.0..sroa_idx, align 8
  %3 = fsub float %.sroa.528.0.copyload, %.sroa.531.0.copyload
  %4 = fmul float %3, 5.000000e-01
  %5 = fmul float %4, 2.000000e+00                ; 2 uses
  %6 = fmul float %5, %5
  %i.c = load <2 x float>, ptr %i.a, align 8
  %i.d = load <2 x float>, ptr %i.b, align 8
  %i.e = fsub <2 x float> %i.d, %i.c
  %7 = fmul <2 x float> %i.e, splat (float 5.000000e-01)
  %8 = fmul <2 x float> %7, splat (float 2.000000e+00) ; 4 uses
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %10 = fdiv float %1, 1.200000e+01
  %11 = insertelement <2 x float> poison, float %6, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> %9, <2 x float> %12)
  %14 = fmul <2 x float> %8, %8
  %15 = extractelement <2 x float> %14, i64 1
  %16 = extractelement <2 x float> %8, i64 0      ; 2 uses
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %15)
  %18 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %10, i64 0
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %20 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %17, i64 2
  %21 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %21, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.f = fmul <4 x float> %19, %22
  store <4 x float> %i.f, ptr %2, align 4, !tbaa !32
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN18btMultiSphereShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV18btMultiSphereShape, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i8, ptr %i.c, align 8, !range !30
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIfED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.d

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not.i.i.i4 = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i8, ptr %i.h, align 8, !range !30
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i5 = select i1 %.not.i.i.i4, i1 %i.j, i1 false
  br i1 %or.cond.i.i5, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.c:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.g)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.f

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.c
  tail call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %.not.i.i.i7 = icmp ne ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i8, ptr %i.n, align 8, !range !30
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond.i.i8 = select i1 %.not.i.i.i7, i1 %i.p, i1 false
  br i1 %or.cond.i.i8, label %bb.e, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.m)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10 unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10: ; preds = %bb.d, %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %0)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.e, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #12
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN18btMultiSphereShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV18btMultiSphereShape, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i8, ptr %i.c, align 8, !range !30
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i unwind label %bb.d, !inline_history !42

_ZN20btAlignedObjectArrayIfED2Ev.exit.i:          ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not.i.i.i4.i = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i8, ptr %i.h, align 8, !range !30
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i5.i = select i1 %.not.i.i.i4.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i5.i, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i

bb.c:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.g)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i unwind label %bb.f, !inline_history !42

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i: ; preds = %bb.c, %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %_ZN18btMultiSphereShapeD2Ev.exit unwind label %bb.h, !inline_history !42

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %.not.i.i.i7.i = icmp ne ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i8, ptr %i.n, align 8, !range !30
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond.i.i8.i = select i1 %.not.i.i.i7.i, i1 %i.p, i1 false
  br i1 %or.cond.i.i8.i, label %bb.e, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10.i

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.m)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10.i unwind label %bb.g, !inline_history !42

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10.i

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10.i: ; preds = %bb.f, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %.body unwind label %bb.g, !inline_history !42

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10.i, %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #12, !inline_history !42
  unreachable

_ZN18btMultiSphereShapeD2Ev.exit:                 ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.h ], [ %.pn.i, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit10.i ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.i

_ZN13btConvexShapedlEPv.exit:                     ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #12
  unreachable
}

declare void @_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18btMultiSphereShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !43
  ret float %i.b
}

declare { <2 x float>, <2 x float> } @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !15, i64 24}
!11 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !12, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !15, i64 24}
!12 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!13 = !{!"p1 _ZTS9btVector3", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!11, !13, i64 16}
!17 = !{!11, !5, i64 4}
!18 = !{!11, !5, i64 8}
!19 = !{!20, !15, i64 24}
!20 = !{!"_ZTS20btAlignedObjectArrayIfE", !21, i64 0, !5, i64 4, !5, i64 8, !22, i64 16, !15, i64 24}
!21 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!22 = !{!"p1 float", !14, i64 0}
!23 = !{!20, !22, i64 16}
!24 = !{!20, !5, i64 4}
!25 = !{!20, !5, i64 8}
!26 = !{!27, !5, i64 8}
!27 = !{!"_ZTS16btCollisionShape", !5, i64 8, !14, i64 16}
!28 = !{i64 0, i64 16, !29}
!29 = !{!6, !6, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !6, i64 0}
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !35}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unswitch.partial.disable"}
!42 = !{ptr @_ZN18btMultiSphereShapeD2Ev}
!43 = !{!44, !33, i64 56}
!44 = !{!"_ZTS21btConvexInternalShape", !45, i64 0, !46, i64 24, !46, i64 40, !33, i64 56, !33, i64 60}
!45 = !{!"_ZTS13btConvexShape", !27, i64 0}
!46 = !{!"_ZTS9btVector3", !6, i64 0}
end_hunk_0
