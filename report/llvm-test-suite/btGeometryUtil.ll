inline.NumInlined: 79
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN14btGeometryUtil29getPlaneEquationsFromVerticesER20btAlignedObjectArrayI9btVector3ES3_:bb.a
  %indvars.iv.i47.1 = phi i64 [ 0, %.lr.ph.i45.1 ], [ %indvars.iv.next.i49.1, %bb.t ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %indvars.iv.i47.1 ; 3 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !15
  %i.fg = fmul float %i.et, %i.ff
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.fd, float %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !15
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.fj, float %i.fh)
  %i.fl = fsub float %i.fk, %i.ey
  %i.fm = fcmp ule float %i.fl, f0x3C23D70A
  br i1 %i.fm, label %bb.t, label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i49.1 = add nuw nsw i64 %indvars.iv.i47.1, 1 ; 2 uses
  %exitcond.not.i50.1 = icmp eq i64 %indvars.iv.next.i49.1, %wide.trip.count.i46.1
  br i1 %exitcond.not.i50.1, label %.loopexit.1, label %bb.s

.loopexit.1:                                      ; preds = %bb.t, %.loopexit88.1
  %i.fn = load i32, ptr %i.g, align 8, !tbaa !17
  %i.fo = icmp eq i32 %i.ed, %i.fn
  br i1 %i.fo, label %bb.u, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1

bb.u:                                             ; preds = %.loopexit.1
  %.not.i.i.1 = icmp eq i32 %i.ed, 0
  %i.fp = shl nsw i32 %i.ed, 1
  %i.fq = select i1 %.not.i.i.1, i32 1, i32 %i.fp ; 4 uses
  %i.fr = icmp slt i32 %i.ed, %i.fq
  br i1 %i.fr, label %bb.v, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.1 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i.i.1, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fs = sext i32 %i.fq to i64
  %i.ft = shl nsw i64 %i.fs, 4
  %i.fu = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ft, i32 noundef 16)
  %.pre.i.1 = load i32, ptr %i.e, align 4, !tbaa !8
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1: ; preds = %bb.w, %bb.v
  %i.fv = phi i32 [ %.pre.i.1, %bb.w ], [ %i.ed, %bb.v ] ; 4 uses
  %.0.i.i.i.1 = phi ptr [ %i.fu, %bb.w ], [ null, %bb.v ] ; 4 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1
  %wide.trip.count.i.i.i.1 = zext nneg i32 %i.fv to i64 ; 2 uses
  %xtraiter139 = and i64 %wide.trip.count.i.i.i.1, 1
  %i.fx = icmp eq i32 %i.fv, 1
  br i1 %i.fx, label %.epil.preheader138, label %.lr.ph.i.i.i.1.new

.lr.ph.i.i.i.1.new:                               ; preds = %.lr.ph.i.i.i.1
  %unroll_iter142 = and i64 %wide.trip.count.i.i.i.1, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i.i.1.new
  %indvars.iv.i.i.i.1 = phi i64 [ 0, %.lr.ph.i.i.i.1.new ], [ %indvars.iv.next.i.i.i.1.1, %bb.x ] ; 4 uses
  %niter143 = phi i64 [ 0, %.lr.ph.i.i.i.1.new ], [ %niter143.next.1, %bb.x ]
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.1, i64 %indvars.iv.i.i.i.1
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fy, ptr noundef nonnull align 4 dereferenceable(16) %i.ga, i64 16, i1 false), !tbaa.struct !18
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i.1, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.1, i64 %indvars.iv.next.i.i.i.1
  %i.gc = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv.next.i.i.i.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gb, ptr noundef nonnull align 4 dereferenceable(16) %i.gd, i64 16, i1 false), !tbaa.struct !18
  %indvars.iv.next.i.i.i.1.1 = add nuw nsw i64 %indvars.iv.i.i.i.1, 2 ; 2 uses
  %niter143.next.1 = add i64 %niter143, 2         ; 2 uses
  %niter143.ncmp.1 = icmp eq i64 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, label %bb.x

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1, label %.epil.preheader138

.epil.preheader138:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, %.lr.ph.i.i.i.1
  %indvars.iv.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.1 ], [ %indvars.iv.next.i.i.i.1.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod141 = trunc i32 %i.fv to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.1, i64 %indvars.iv.i.i.i.1.epil.init
  %i.gf = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %indvars.iv.i.i.i.1.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ge, ptr noundef nonnull align 4 dereferenceable(16) %i.gg, i64 16, i1 false), !tbaa.struct !18
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1: ; preds = %.epil.preheader138, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.1
  %i.gh = load ptr, ptr %i.f, align 8, !tbaa !14  ; 2 uses
  %.not.i5.i.i.1 = icmp eq ptr %i.gh, null
  br i1 %.not.i5.i.i.1, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1, label %bb.y

bb.y:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1
  %i.gi = load i8, ptr %i.h, align 8, !tbaa !20, !range !21, !noundef !22
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.z, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1

bb.z:                                             ; preds = %bb.y
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gh)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1: ; preds = %bb.z, %bb.y, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.1
  store i8 1, ptr %i.h, align 8, !tbaa !20
  store ptr %.0.i.i.i.1, ptr %i.f, align 8, !tbaa !14
  store i32 %i.fq, ptr %i.g, align 8, !tbaa !17
  %.pre2.i.1 = load i32, ptr %i.e, align 4, !tbaa !8
  br label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1

_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1, %bb.u, %.loopexit.1
  %i.gk = phi i32 [ %.pre2.i.1, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.1 ], [ %i.ed, %bb.u ], [ %i.ed, %.loopexit.1 ]
  %i.gl = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr inbounds [16 x i8], ptr %i.gl, i64 %i.gm ; 2 uses
  store <2 x float> %i.eb, ptr %i.gn, align 4
  %.sroa.16.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store <2 x float> %.sroa.16.12.vec.insert.1, ptr %.sroa.16.0..sroa_idx.1, align 4, !tbaa !19
  %i.go = load i32, ptr %i.e, align 4, !tbaa !8
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.e, align 4, !tbaa !8
  br label %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1

_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit.1: ; preds = %bb.q, %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit.1, %_Z8notExistRK9btVector3RK20btAlignedObjectArrayIS_E.exit
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next102 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit89, label %bb.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: uwtable
define dso_local void @_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph128, label %._crit_edge

.lr.ph128:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = zext nneg i32 %i.b to i64
  %wide.trip.count143 = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.b

.loopexit123:                                     ; preds = %.loopexit122, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit123, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph128, %.loopexit123
  %indvars.iv140 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next141, %.loopexit123 ] ; 2 uses
  %indvars.iv134 = phi i64 [ 1, %.lr.ph128 ], [ %indvars.iv.next135, %.loopexit123 ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph128 ], [ %indvars.iv.next, %.loopexit123 ] ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv140 ; 3 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 3 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next141, %i.i
  br i1 %i.l, label %.lr.ph126, label %.loopexit123

.lr.ph126:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  br label %bb.c

.loopexit122:                                     ; preds = %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit, %bb.c
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count143
  br i1 %exitcond139.not, label %.loopexit123, label %bb.c

bb.c:                                             ; preds = %.lr.ph126, %.loopexit122
  %indvars.iv136 = phi i64 [ %indvars.iv134, %.lr.ph126 ], [ %indvars.iv.next137, %.loopexit122 ] ; 2 uses
  %indvars.iv129 = phi i64 [ %indvars.iv, %.lr.ph126 ], [ %indvars.iv.next130, %.loopexit122 ] ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv136 ; 3 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 3 uses
  %i.q = trunc nuw i64 %indvars.iv.next137 to i32
  %i.r = icmp sgt i32 %i.b, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit122

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit
  %indvars.iv131 = phi i64 [ %indvars.iv129, %.lr.ph ], [ %indvars.iv.next132, %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv131 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.v, align 4, !tbaa !15 ; 4 uses
  %i.y = load float, ptr %i.p, align 4, !tbaa !15 ; 4 uses
  %i.z = fneg float %i.x
  %i.aa = load float, ptr %i.k, align 4, !tbaa !15 ; 3 uses
  %2 = fneg float %i.aa
  %i.ab = fneg float %i.y
  %i.ac = load <2 x float>, ptr %i.s, align 4, !tbaa !15 ; 5 uses
  %3 = extractelement <2 x float> %i.ac, i64 0
  %4 = fmul float %3, %i.z
  %i.ad = load <2 x float>, ptr %i.w, align 4, !tbaa !15 ; 4 uses
  %i.ae = fneg <2 x float> %i.ad
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ag = insertelement <2 x float> %i.af, float %i.y, i64 1
  %i.ah = fmul <2 x float> %i.ag, %i.ae
  %5 = extractelement <2 x float> %i.ad, i64 0
  %6 = tail call float @llvm.fmuladd.f32(float %i.y, float %5, float %4) ; 4 uses
  %i.ai = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = insertelement <2 x float> %i.ai, float %i.x, i64 1
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.aj, <2 x float> %i.ah) ; 3 uses
  %7 = load <2 x float>, ptr %i.m, align 4, !tbaa !15 ; 4 uses
  %8 = fneg <2 x float> %7
  %9 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %10 = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %9, <4 x i32> <i32 5, i32 poison, i32 4, i32 3>
  %11 = insertelement <4 x float> %10, float %i.x, i64 1
  %12 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %2, i64 2
  %13 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <4 x float> %13, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %15 = fmul <4 x float> %11, %14
  %16 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.x, i64 2
  %17 = shufflevector <4 x float> %9, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %18 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %19 = insertelement <4 x float> %18, float -0.000000e+00, i64 3
  %20 = insertelement <4 x float> %19, float %i.aa, i64 1 ; 3 uses
  %21 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %20, <4 x float> %15) ; 5 uses
  %i.al = fneg <2 x float> %i.ac
  %22 = insertelement <4 x float> %20, float 1.000000e+00, i64 3
  %23 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ab, i64 2
  %24 = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %24, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %26 = fmul <4 x float> %22, %25
  %27 = shufflevector <4 x float> %20, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %28 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %29 = insertelement <4 x float> %28, float -0.000000e+00, i64 3
  %30 = insertelement <4 x float> %29, float %i.y, i64 1
  %31 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %30, <4 x float> %26) ; 5 uses
  %i.am = extractelement <2 x float> %i.ak, i64 1 ; 3 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = extractelement <2 x float> %i.ak, i64 0 ; 3 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.an)
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %6, float %6, float %i.ap)
  %i.ar = fcmp ogt float %i.aq, f0x38D1B717
  br i1 %i.ar, label %bb.e, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop = fmul <4 x float> %21, %21
  %i.as = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <4 x float> %21, i64 0   ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as)
  %32 = extractelement <4 x float> %21, i64 2     ; 2 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %32, float %32, float %i.au)
  %i.aw = fcmp ogt float %i.av, f0x38D1B717
  br i1 %i.aw, label %bb.f, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop151 = fmul <4 x float> %31, %31
  %i.ax = extractelement <4 x float> %foldExtExtBinop151, i64 1
  %i.ay = extractelement <4 x float> %31, i64 0   ; 2 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.ax)
  %33 = extractelement <4 x float> %31, i64 2     ; 2 uses
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %33, float %33, float %i.az)
  %i.bb = fcmp ogt float %i.ba, f0x38D1B717
  br i1 %i.bb, label %bb.g, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

bb.g:                                             ; preds = %bb.f
  %34 = extractelement <2 x float> %7, i64 0
  %i.bc = fmul float %34, %i.am
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ao, float %i.bc)
  %i.be = extractelement <2 x float> %7, i64 1
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %6, float %i.bd) ; 2 uses
  %i.bg = tail call noundef float @llvm.fabs.f32(float %i.bf)
  %i.bh = fcmp ogt float %i.bg, f0x358637BD
  br i1 %i.bh, label %bb.h, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = load float, ptr %i.n, align 4, !tbaa !15
  %i.bj = load float, ptr %i.t, align 4, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !15
  %i.bm = fdiv nnan float -1.000000e+00, %i.bf
  %i.bn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bi, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bp = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float 1.000000e+00, i64 3
  %i.br = insertelement <4 x float> %i.bq, float %6, i64 2
  %i.bs = fmul <4 x float> %i.bo, %i.br
  %i.bt = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bj, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %35 = fmul <4 x float> %i.bu, %21
  %36 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.bl, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bv = fmul <4 x float> %37, %31
  %i.bw = fadd <4 x float> %i.bs, %35
  %i.bx = fadd <4 x float> %i.bv, %i.bw
  %i.by = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bm, i64 0
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ca = fmul <4 x float> %i.bz, %i.bx           ; 4 uses
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not17.i = icmp slt i32 %i.cb, 1
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %i.cb to i64
  %i.cc = extractelement <4 x float> %i.ca, i64 0
  %i.cd = extractelement <4 x float> %i.ca, i64 1
  %i.ce = extractelement <4 x float> %i.ca, i64 2
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i ; 4 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !15
  %i.cj = fmul float %i.cd, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cc, float %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !15
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.ce, float %i.ck)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cp = load float, ptr %i.co, align 4, !tbaa !15
  %i.cq = fadd float %i.cp, %i.cn
  %i.cr = fcmp ule float %i.cq, f0x3C23D70A
  br i1 %i.cr, label %bb.i, label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

.loopexit:                                        ; preds = %bb.i, %bb.h
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !8   ; 7 uses
  %i.ct = load i32, ptr %i.f, align 8, !tbaa !17
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.k, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.k:                                             ; preds = %.loopexit
  %.not.i.i = icmp eq i32 %i.cs, 0
  %i.cv = shl nsw i32 %i.cs, 1
  %i.cw = select i1 %.not.i.i, i32 1, i32 %i.cv   ; 4 uses
  %i.cx = icmp slt i32 %i.cs, %i.cw
  br i1 %i.cx, label %bb.l, label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = sext i32 %i.cw to i64
  %i.cz = shl nsw i64 %i.cy, 4
  %i.da = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cz, i32 noundef 16)
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !8
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.m, %bb.l
  %i.db = phi i32 [ %.pre.i, %bb.m ], [ %i.cs, %bb.l ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.da, %bb.m ], [ null, %bb.l ] ; 4 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.db to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.dd = icmp eq i32 %i.db, 1
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.n ]
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.de, ptr noundef nonnull align 4 dereferenceable(16) %i.dg, i64 16, i1 false), !tbaa.struct !18
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dh, ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !18
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.n

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod153 = trunc i32 %i.db to i1
  tail call void @llvm.assume(i1 %lcmp.mod153)
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dk, ptr noundef nonnull align 4 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !18
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.dn = load ptr, ptr %i.g, align 8, !tbaa !14  ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.do = load i8, ptr %i.h, align 8, !tbaa !20, !range !21, !noundef !22
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.p, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dn)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.p, %bb.o, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.h, align 8, !tbaa !20
  store ptr %.0.i.i.i, ptr %i.g, align 8, !tbaa !14
  store i32 %i.cw, ptr %i.f, align 8, !tbaa !17
  %.pre2.i = load i32, ptr %i.e, align 4, !tbaa !8
  br label %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit: ; preds = %.loopexit, %bb.k, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
  %i.dq = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i ], [ %i.cs, %bb.k ], [ %i.cs, %.loopexit ]
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.ds = sext i32 %i.dq to i64
  %i.dt = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %i.ds
  store <4 x float> %i.ca, ptr %i.dt, align 4
  %i.du = load i32, ptr %i.e, align 4, !tbaa !8
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.e, align 4, !tbaa !8
  br label %_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit

_ZN14btGeometryUtil19isPointInsidePlanesERK20btAlignedObjectArrayI9btVector3ERKS1_f.exit: ; preds = %bb.j, %bb.g, %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit, %bb.f, %bb.e, %bb.d
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next132 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit122, label %bb.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!8 = !{!9, !5, i64 4}
!9 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !10, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !13, i64 24}
!10 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!11 = !{!"p1 _ZTS9btVector3", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!9, !11, i64 16}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !6, i64 0}
!17 = !{!9, !5, i64 8}
!18 = !{i64 0, i64 16, !19}
!19 = !{!6, !6, i64 0}
!20 = !{!9, !13, i64 24}
!21 = !{i8 0, i8 2}
!22 = !{}
end_hunk_0
