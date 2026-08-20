inline.NumInlined: 873
inline.NumDeleted: 444
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0

$_ZN5Eigen12SparseMatrixIdLi1EiE18collapseDuplicatesINS_8internal13scalar_sum_opIddEEEEvT_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiED2Ev = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_ = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiED2Ev = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19cr_vector_laplacianIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EERNSE_IT2_EERNS1_12SparseMatrixIT3_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.10", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.not18 = icmp eq i64 %i.f, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %.not19 = icmp eq i64 %i.j, %i.b
  %or.cond = select i1 %.not18, i1 %.not19, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %.not20 = icmp eq i64 %i.l, %i.h
  %or.cond23 = select i1 %or.cond, i1 %.not20, i1 false
  br i1 %or.cond23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN3igl16orient_halfedgesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl20squared_edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3igl29cr_vector_laplacian_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES3_S3_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_12SparseMatrixIT3_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %_ZN3igl19cr_vector_laplacianIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_12SparseMatrixIT3_Li0EiEE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !15
  call void @free(ptr noundef %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %i.m

_ZN3igl19cr_vector_laplacianIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S4_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_12SparseMatrixIT3_Li0EiEE.exit: ; preds = %bb.e
  %i.o = load ptr, ptr %5, align 8, !tbaa !15
  call void @free(ptr noundef %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

declare void @_ZN3igl16orient_halfedgesIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNS9_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl29cr_vector_laplacian_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES4_S3_S3_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERNS1_12SparseMatrixIT4_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(72) %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !18     ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = mul nsw i64 %i.g, %i.e                   ; 12 uses
  %i.i = sdiv i64 %i.h, 8
  %i.j = shl nsw i64 %i.i, 3                      ; 3 uses
  %i.k = sdiv i64 %i.h, 4                         ; 2 uses
  %i.l = shl nsw i64 %i.k, 2                      ; 5 uses
  %.off.i.i.i.i = add i64 %i.h, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load <4 x i32>, ptr %i.c, align 16, !tbaa !19 ; 3 uses
  %i.n = icmp sgt i64 %i.h, 7
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load <4 x i32>, ptr %i.o, align 16, !tbaa !19 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.h, 15
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.p, %bb.c ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.m, %bb.c ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.s = icmp sgt i64 %i.l, %i.j
  br i1 %i.s, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.m, %bb.c ]
  %i.t = phi <4 x i32> [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.p, %bb.c ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05779.i.i.i.i
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !19
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.057.in78.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <4 x i32>, ptr %i.y, align 16, !tbaa !19
  %i.aa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.t, <4 x i32> %i.z) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.ab = icmp slt i64 %.057.i.i.i.i, %i.j
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !20

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !19
  %i.ae = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.ad)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.m, %bb.b ], [ %i.ae, %bb.d ], [ %i.r, %._crit_edge.i.i.i.i ]
  %i.af = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ag = icmp slt i64 %i.l, %i.h
  br i1 %i.ag, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ah = shl nsw i64 %i.k, 2
  %i.ai = sub i64 %i.h, %i.ah                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader1746, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ai, -8                      ; 3 uses
  %i.aj = add i64 %i.l, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.c, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi1501 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ao, %vector.body ]
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !22
  %wide.load1502 = load <4 x i32>, ptr %i.am, align 4, !tbaa !22
  %i.an = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.ao = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1501, <4 x i32> %wide.load1502) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.an, <4 x i32> %i.ao)
  %i.aq = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader1746

.lr.ph84.i.i.i.i.preheader1746:                   ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.l, %.lr.ph84.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.af, %.lr.ph84.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader1746, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.au, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader1746 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.at, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader1746 ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05582.i.i.i.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.as) ; 2 uses
  %i.au = add nuw nsw i64 %.05582.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.au, %i.h
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !26

bb.f:                                             ; preds = %bb.a
  %i.av = load i32, ptr %i.c, align 4, !tbaa !22  ; 3 uses
  %i.aw = icmp sgt i64 %i.h, 1
  br i1 %i.aw, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.ax = add nsw i64 %i.h, -1                    ; 2 uses
  %min.iters.check1504 = icmp ult i64 %i.h, 9
  br i1 %min.iters.check1504, label %.lr.ph89.i.i.i.i.preheader1742, label %vector.ph1505

vector.ph1505:                                    ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec1506 = and i64 %i.ax, -8                  ; 3 uses
  %i.ay = or disjoint i64 %n.vec1506, 1
  %broadcast.splatinsert1507 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat1508 = shufflevector <4 x i32> %broadcast.splatinsert1507, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1509

vector.body1509:                                  ; preds = %vector.body1509, %vector.ph1505
  %index1510 = phi i64 [ 0, %vector.ph1505 ], [ %index.next1515, %vector.body1509 ] ; 2 uses
  %vec.phi1511 = phi <4 x i32> [ %broadcast.splat1508, %vector.ph1505 ], [ %i.bc, %vector.body1509 ]
  %vec.phi1512 = phi <4 x i32> [ %broadcast.splat1508, %vector.ph1505 ], [ %i.bd, %vector.body1509 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index1510 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %wide.load1513 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !22
  %wide.load1514 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !22
  %i.bc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1511, <4 x i32> %wide.load1513) ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1512, <4 x i32> %wide.load1514) ; 2 uses
  %index.next1515 = add nuw i64 %index1510, 8     ; 2 uses
  %i.be = icmp eq i64 %index.next1515, %n.vec1506
  br i1 %i.be, label %middle.block1516, label %vector.body1509, !llvm.loop !27

middle.block1516:                                 ; preds = %vector.body1509
  %rdx.minmax1517 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bc, <4 x i32> %i.bd)
  %i.bf = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax1517) ; 2 uses
  %cmp.n1518 = icmp eq i64 %i.ax, %n.vec1506
  br i1 %cmp.n1518, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader1742

.lr.ph89.i.i.i.i.preheader1742:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block1516
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.ay, %middle.block1516 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.av, %.lr.ph89.i.i.i.i.preheader ], [ %i.bf, %middle.block1516 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1742, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bj, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1742 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bi, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1742 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.087.i.i.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bh) ; 2 uses
  %i.bj = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bj, %i.h
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !28

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block1516, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bi, %.lr.ph89.i.i.i.i ], [ %i.av, %bb.f ], [ %i.af, %bb.e ], [ %i.bf, %middle.block1516 ], [ %i.aq, %middle.block ], [ %i.at, %.lr.ph84.i.i.i.i ]
  %i.bk = add nsw i32 %.3.i.i.i.i, 1              ; 10 uses
  %i.bl = mul nsw i64 %i.b, 30                    ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 576460752303423487
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.bn = mul i64 %i.b, 480
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #23
          to label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit unwind label %bb.i ; 5 uses

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl ; 2 uses
  %i.bq = icmp sgt i64 %i.b, 0
  br i1 %i.bq, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.j
  %.0118725 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bw, %bb.j ] ; 18 uses
  %.sroa.62.0724 = phi ptr [ %i.bp, %.preheader.lr.ph ], [ %.sroa.62.17, %bb.j ]
  %.sroa.29.0723 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.sroa.29.12, %bb.j ]
  %.sroa.0.0722 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.sroa.0.17, %bb.j ]
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j, %bb.h, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %.sroa.0.0.lcssa = phi ptr [ %i.bo, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.h ], [ %.sroa.0.17, %bb.j ] ; 6 uses
  %.sroa.29.0.lcssa = phi ptr [ %i.bo, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.h ], [ %.sroa.29.12, %bb.j ]
  %.sroa.62.0.lcssa = phi ptr [ %i.bp, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.h ], [ %.sroa.62.17, %bb.j ] ; 3 uses
  %i.bt = shl nsw i32 %i.bk, 1
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %5, i64 noundef %i.bu, i64 noundef %i.bu)
          to label %bb.bi unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.g, %._crit_edge
  %.sroa.0.1 = phi ptr [ null, %bb.g ], [ %.sroa.0.0.lcssa, %._crit_edge ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ]
  %.sroa.62.1 = phi ptr [ null, %bb.g ], [ %.sroa.62.0.lcssa, %._crit_edge ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.j:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJRKiidEEERS2_DpOT_.exit
  %i.bw = add nuw nsw i64 %.0118725, 1            ; 2 uses
  %exitcond956.not = icmp eq i64 %i.bw, %i.b
  br i1 %exitcond956.not, label %._crit_edge, label %.preheader, !llvm.loop !29

bb.k:                                             ; preds = %.preheader, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJRKiidEEERS2_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJRKiidEEERS2_DpOT_.exit ] ; 15 uses
  %.sroa.62.2720 = phi ptr [ %.sroa.62.0724, %.preheader ], [ %.sroa.62.17, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJRKiidEEERS2_DpOT_.exit ] ; 7 uses
  %.sroa.29.1719 = phi ptr [ %.sroa.29.0723, %.preheader ], [ %.sroa.29.12, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJRKiidEEERS2_DpOT_.exit ] ; 5 uses
  %.sroa.0.2718 = phi ptr [ %.sroa.0.0722, %.preheader ], [ %.sroa.0.17, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12emplace_backIJRKiidEEERS2_DpOT_.exit ] ; 8 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !15
  %i.by = load i64, ptr %i.br, align 8, !tbaa !30 ; 3 uses
  %i.bz = mul nsw i64 %i.by, %indvars.iv
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %.0118725 ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !31 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.cmp.not = icmp eq i64 %indvars.iv, 2
  %i.cd = select i1 %.cmp.not, i64 0, i64 %indvars.iv.next
  %i.ce = mul nsw i64 %i.by, %i.cd
  %i.cf = getelementptr [8 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !31
  %.cmp375 = icmp eq i64 %indvars.iv, 0
  %i.ch = select i1 %.cmp375, i64 2, i64 4294967295 ; 10 uses
  %i.ci = mul nsw i64 %i.by, %i.ch
  %i.cj = getelementptr [8 x i8], ptr %i.ca, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !31 ; 2 uses
  %i.cl = fmul double %i.cc, %i.ck
  %i.cm = tail call double @sqrt(double noundef %i.cl) #21 ; 2 uses
  %i.cn = load ptr, ptr %4, align 8, !tbaa !18
  %i.co = load i64, ptr %i.bs, align 8, !tbaa !9  ; 2 uses
  %i.cp = mul nsw i64 %i.co, %indvars.iv
  %i.cq = getelementptr [4 x i8], ptr %i.cn, i64 %.0118725 ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !22
  %i.ct = mul nsw i64 %i.co, %i.ch
  %i.cu = getelementptr [4 x i8], ptr %i.cq, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !22
  %i.cw = mul nsw i32 %i.cv, %i.cs
  %i.cx = sitofp i32 %i.cw to double              ; 2 uses
  %i.cy = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !9   ; 3 uses
  %i.da = mul nsw i64 %i.cz, %indvars.iv          ; 3 uses
  %i.db = getelementptr [4 x i8], ptr %i.cy, i64 %.0118725
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.da ; 2 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !15    ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.0118725
  %i.df = load double, ptr %i.de, align 8, !tbaa !31
  %i.dg = fdiv double 2.000000e+00, %i.df
  %i.dh = fmul double %i.cc, %i.dg                ; 2 uses
  %.not.i = icmp eq ptr %.sroa.29.1719, %.sroa.62.2720
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = load i32, ptr %i.dc, align 4, !tbaa !22 ; 2 uses
  store i32 %i.di, ptr %.sroa.29.1719, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.29.1719, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.29.1719, i64 8
  store double %i.dh, ptr %i.dk, align 8, !tbaa !36
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.dl = ptrtoint ptr %.sroa.62.2720 to i64
  %i.dm = ptrtoint ptr %.sroa.0.2718 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775792
  br i1 %i.do, label %bb.n, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc153 unwind label %.loopexit.split-lp

.noexc153:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.dp = ashr exact i64 %i.dn, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dp, i64 1)
  %i.dq = add nsw i64 %.sroa.speculated.i.i.i, %i.dp ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 576460752303423487)
  %i.dt = select i1 %i.dr, i64 576460752303423487, i64 %i.ds ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.du = shl nuw nsw i64 %i.dt, 4
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #23
          to label %.noexc154 unwind label %.loopexit ; 5 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn ; 3 uses
  %i.dx = load i32, ptr %i.dc, align 4, !tbaa !22 ; 2 uses
  store i32 %i.dx, ptr %i.dw, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !35
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store double %i.dh, ptr %i.dz, align 8, !tbaa !36
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0.2718, %.sroa.62.2720
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc154, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %i.dv, %.noexc154 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.2718, %.noexc154 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !37, !alias.scope !38
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ea, %.sroa.62.2720
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc154
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dv, %.noexc154 ], [ %i.eb, %.lr.ph.i.i.i.i.i ]
  %.not.i35.i.i = icmp eq ptr %.sroa.0.2718, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2718, i64 noundef %i.dn) #24
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !18
  %.pre957.pre = load i64, ptr %i.d, align 8, !tbaa !9 ; 2 uses
  %.pre958.pre = load ptr, ptr %2, align 8, !tbaa !15
  %.pre1028 = mul nsw i64 %.pre957.pre, %indvars.iv
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  %.pre996.pre-phi = phi i64 [ %.pre1028, %bb.o ], [ %i.da, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i ]
  %.pre958 = phi ptr [ %.pre958.pre, %bb.o ], [ %i.dd, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i ]
  %.pre957 = phi i64 [ %.pre957.pre, %bb.o ], [ %i.cz, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.o ], [ %i.cy, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i ]
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dt
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.da, %bb.l ], [ %.pre996.pre-phi, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %i.ed = phi ptr [ %i.dd, %bb.l ], [ %.pre958, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 3 uses
  %i.ee = phi i64 [ %i.cz, %bb.l ], [ %.pre957, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %i.ef = phi ptr [ %i.cy, %bb.l ], [ %.pre, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 3 uses
  %.sroa.0.8 = phi ptr [ %.sroa.0.2718, %bb.l ], [ %i.dv, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.sroa.29.1719, %bb.l ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 6 uses
  %.sroa.62.8 = phi ptr [ %.sroa.62.2720, %bb.l ], [ %i.ec, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJRKiS7_dEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.pn1753 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.29.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %i.ef, i64 %.0118725
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %.pre-phi
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !22
  %i.ej = add nsw i32 %i.ei, %i.bk                ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %.0118725
  %i.el = load double, ptr %i.ek, align 8, !tbaa !31
  %i.em = fdiv double 2.000000e+00, %i.el
  %i.en = fmul double %i.cc, %i.em                ; 2 uses
  %.not.i155 = icmp eq ptr %.sroa.29.3, %.sroa.62.8
  br i1 %.not.i155, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.ej, ptr %.sroa.29.3, align 8, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 20
  store i32 %i.ej, ptr %i.eo, align 4, !tbaa !35
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24
  store double %i.en, ptr %i.ep, align 8, !tbaa !36
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 32
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.er = ptrtoint ptr %.sroa.62.8 to i64
  %i.es = ptrtoint ptr %.sroa.0.8 to i64          ; 2 uses
  %i.et = sub i64 %i.er, %i.es                    ; 4 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775792
  br i1 %i.eu, label %bb.s, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i156

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc167 unwind label %.loopexit.split-lp377

.noexc167:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i156: ; preds = %bb.r
  %i.ev = ashr exact i64 %i.et, 4                 ; 3 uses
  %.sroa.speculated.i.i.i157 = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i157, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 576460752303423487)
  %i.ez = select i1 %i.ex, i64 576460752303423487, i64 %i.ey ; 3 uses
  %.not.i.i.i158 = icmp ne i64 %i.ez, 0
  tail call void @llvm.assume(i1 %.not.i.i.i158)
  %i.fa = shl nuw nsw i64 %i.ez, 4
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #23
          to label %.noexc168 unwind label %.loopexit376 ; 6 uses

.noexc168:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i156
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.et ; 3 uses
  store i32 %i.ej, ptr %i.fc, align 8, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 %i.ej, ptr %i.fd, align 4, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store double %i.en, ptr %i.fe, align 8, !tbaa !36
  %.not10.i.i.i.i.i159 = icmp eq ptr %.sroa.0.8, %.sroa.62.8
  br i1 %.not10.i.i.i.i.i159, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i164, label %.lr.ph.i.i.i.i.i160.preheader

.lr.ph.i.i.i.i.i160.preheader:                    ; preds = %.noexc168
  %i.ff = sub i64 %.0.lcssa.i.i.i.i.i.pn1753, %i.es ; 2 uses
  %i.fg = lshr i64 %i.ff, 4
  %i.fh = add nuw nsw i64 %i.fg, 1
  %xtraiter = and i64 %i.fh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i160.prol.loopexit, label %.lr.ph.i.i.i.i.i160.prol

.lr.ph.i.i.i.i.i160.prol:                         ; preds = %.lr.ph.i.i.i.i.i160.preheader, %.lr.ph.i.i.i.i.i160.prol
  %.012.i.i.i.i.i161.prol = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i160.prol ], [ %i.fb, %.lr.ph.i.i.i.i.i160.preheader ] ; 2 uses
  %.0911.i.i.i.i.i162.prol = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i160.prol ], [ %.sroa.0.8, %.lr.ph.i.i.i.i.i160.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i160.prol ], [ 0, %.lr.ph.i.i.i.i.i160.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i161.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i162.prol, i64 16, i1 false), !tbaa.struct !37, !alias.scope !43
  %i.fi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i162.prol, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i161.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i160.prol.loopexit, label %.lr.ph.i.i.i.i.i160.prol, !llvm.loop !47

.lr.ph.i.i.i.i.i160.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i160.prol, %.lr.ph.i.i.i.i.i160.preheader
  %.lcssa1521.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i160.preheader ], [ %i.fj, %.lr.ph.i.i.i.i.i160.prol ]
  %.012.i.i.i.i.i161.unr = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i160.preheader ], [ %i.fj, %.lr.ph.i.i.i.i.i160.prol ]
  %.0911.i.i.i.i.i162.unr = phi ptr [ %.sroa.0.8, %.lr.ph.i.i.i.i.i160.preheader ], [ %i.fi, %.lr.ph.i.i.i.i.i160.prol ]
  %i.fk = icmp ult i64 %i.ff, 48
  br i1 %i.fk, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i164, label %.lr.ph.i.i.i.i.i160

.lr.ph.i.i.i.i.i160:                              ; preds = %.lr.ph.i.i.i.i.i160.prol.loopexit, %.lr.ph.i.i.i.i.i160
end_hunk_0
begin_hunk_1_@_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll:bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !95
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %2, ptr %i.c, align 8, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97   ; 2 uses
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #21
  store ptr null, ptr %i.l, align 8, !tbaa !97
  %.pre = load i64, ptr %i.c, align 8, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i64 [ %.pre, %bb.f ], [ %2, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.q = shl i64 %i.n, 2
  %i.r = add i64 %i.q, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.r, i1 false)
  ret void
}

declare void @_ZN3igl20squared_edge_lengthsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl29cr_vector_laplacian_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES3_S3_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERNS1_12SparseMatrixIT3_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.10", align 8  ; 8 uses
  %6 = alloca %"class.Eigen::Matrix.10", align 8  ; 7 uses
  %7 = alloca %"class.Eigen::MatrixWrapper", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.a = ptrtoint ptr %1 to i64
  store i64 %i.a, ptr %7, align 8, !alias.scope !98
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS1_EEEEEEEERKNS_9EigenBaseIT_EE.exit unwind label %bb.d

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS1_EEEEEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS1_EEEEEEEERKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN3igl29cr_vector_laplacian_intrinsicIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES4_S3_S3_dEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERKNS5_IT3_EERNS1_12SparseMatrixIT4_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !15
  call void @free(ptr noundef %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.c = load ptr, ptr %5, align 8, !tbaa !15
  call void @free(ptr noundef %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS1_EEEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %6, align 8, !tbaa !15
  call void @free(ptr noundef %i.f) #21
  %.pre = load ptr, ptr %5, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi ptr [ %.pre, %bb.e ], [ null, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @free(ptr noundef %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !104, !align !105 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !106  ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  %i.g = icmp eq i64 %i.e, 0
  %or.cond.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i64 9223372036854775807, %i.e
  %i.i = icmp sgt i64 %i.c, %i.h
  br i1 %i.i, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.j = mul nsw i64 %i.e, %i.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.c, i64 noundef %i.e)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.f

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !104, !align !105 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !106  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30
  %.not.i.i.i.i.i = icmp eq i64 %i.s, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.u, %i.q
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.v = icmp eq i64 %i.o, 0
  %i.w = icmp eq i64 %i.q, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.v, %i.w
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = sdiv i64 9223372036854775807, %i.q
  %i.y = icmp sgt i64 %i.o, %i.x
  br i1 %i.y, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

.noexc.i.i.i.i.invoke:                            ; preds = %bb.d, %bb.b
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc.i.i.i.i.cont unwind label %bb.f

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.aa = mul nsw i64 %i.q, %i.o
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa, i64 noundef %i.o, i64 noundef %i.q)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !30
  %.pre19.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.ab = phi i64 [ %.pre19.i.i.i.i, %.noexc6 ], [ %i.q, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit ]
  %i.ac = phi i64 [ %.pre.i.i.i.i, %.noexc6 ], [ %i.o, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEEvRKNS_9EigenBaseIT_EE.exit ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !15    ; 8 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = mul nsw i64 %i.ac, %i.ab                ; 8 uses
  %i.ag = sdiv i64 %i.af, 2                       ; 2 uses
  %i.ah = shl nsw i64 %i.ag, 1                    ; 5 uses
  %i.ai = icmp sgt i64 %i.af, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %i.aj = icmp slt i64 %i.ah, %i.af
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = shl nsw i64 %i.ag, 1
  %i.al = sub i64 %i.af, %i.ak                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  %i.am = sub i64 %i.m, %i.ae
  %diff.check = icmp ugt i64 %i.am, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.an = and i64 %i.af, 1                        ; 2 uses
  %n.vec = sub nuw i64 %i.al, %i.an               ; 2 uses
  %i.ao = add i64 %i.ah, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = add nuw i64 %i.ah, %index               ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ap
  %wide.load = load <2 x double>, ptr %i.ar, align 8, !tbaa !31
  %i.as = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %wide.load)
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, 0
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.preheader13:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ] ; 4 uses
  %i.au = sub i64 %i.af, %.05.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader13 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader13 ]
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.05.i.i.i.i.i.i.prol
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.prol
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !31
  %.scalar.i.i.i.i.i.i.i.i.i.i.prol = tail call noundef double @llvm.sqrt.f64(double %i.ax)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.av, align 8, !tbaa !31
  %i.ay = add nuw nsw i64 %.05.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !108

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader13
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader13 ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.az = sub i64 %.05.i.i.i.i.i.i.ph, %i.af
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.05.i.i.i.i.i.i
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !31
  %.scalar.i.i.i.i.i.i.i.i.i.i = tail call noundef double @llvm.sqrt.f64(double %i.bd)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i, ptr %i.bb, align 8, !tbaa !31
  %i.be = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.be
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !31
  %.scalar.i.i.i.i.i.i.i.i.i.i.1 = tail call noundef double @llvm.sqrt.f64(double %i.bh)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.1, ptr %i.bf, align 8, !tbaa !31
  %i.bi = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bi
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bi
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !31
  %.scalar.i.i.i.i.i.i.i.i.i.i.2 = tail call noundef double @llvm.sqrt.f64(double %i.bl)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.2, ptr %i.bj, align 8, !tbaa !31
  %i.bm = add nuw nsw i64 %.05.i.i.i.i.i.i, 3     ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bm
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !31
  %.scalar.i.i.i.i.i.i.i.i.i.i.3 = tail call noundef double @llvm.sqrt.f64(double %i.bp)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.3, ptr %i.bn, align 8, !tbaa !31
  %i.bq = add nuw nsw i64 %.05.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bq, %i.af
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !109

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.011.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.011.i.i.i.i.i
  %i.bt = load <2 x double>, ptr %i.bs, align 16, !tbaa !19
  %i.bu = tail call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bt)
  store <2 x double> %i.bu, ptr %i.br, align 16, !tbaa !19
  %i.bv = add nuw nsw i64 %.011.i.i.i.i.i, 2      ; 2 uses
  %i.bw = icmp slt i64 %i.bv, %i.ah
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !110

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13MatrixWrapperIKNS_12CwiseUnaryOpINS_8internal14scalar_sqrt_opIdEEKNS_12ArrayWrapperIKS2_EEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i
  ret void

bb.f:                                             ; preds = %.noexc.i.i.i.i.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.by) #21
  resume { ptr, i32 } %i.bx
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !106
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.f) #21
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !95
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #25 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !95
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !30
  store i64 %3, ptr %i.c, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef align 1 dead_on_return %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::SparseMatrix.45", align 8 ; 17 uses
  %5 = alloca %"class.Eigen::Matrix.49", align 8  ; 9 uses
  %6 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93
  store i8 0, ptr %4, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.h = shl i64 %i.b, 2                          ; 2 uses
  %i.i = add i64 %i.h, 4
  %calloc41 = tail call ptr @calloc(i64 1, i64 %i.i) ; 2 uses
  store ptr %calloc41, ptr %i.g, align 8, !tbaa !116
  %.not6.i = icmp eq ptr %calloc41, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.pn.pn, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #21
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit:        ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  %.not = icmp eq ptr %i.n, %i.o
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp sgt i64 %i.b, 0
  br i1 %i.p, label %bb.f, label %.lr.ph.sink.split

bb.f:                                             ; preds = %bb.e
  %i.q = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.q, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %calloc = tail call ptr @calloc(i64 1, i64 %i.h) ; 3 uses
  %i.r = icmp eq ptr %calloc, null
  br i1 %i.r, label %.invoke.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  store ptr %calloc, ptr %5, align 8, !tbaa !120
  br label %.lr.ph.sink.split

.lr.ph.sink.split:                                ; preds = %bb.e, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i
  %.ph = phi ptr [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i ], [ null, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.u, align 8, !tbaa !122
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.sink.split, %bb.d
  %i.v = phi ptr [ null, %bb.d ], [ %.ph, %.lr.ph.sink.split ]
  br label %bb.i

end_hunk_1
