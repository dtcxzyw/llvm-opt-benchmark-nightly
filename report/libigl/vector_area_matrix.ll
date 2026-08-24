Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/vector_area_matrix?download=true
inline.NumInlined: 539
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0

$_ZN5Eigen12SparseMatrixIdLi1EiE18collapseDuplicatesINS_8internal13scalar_sum_opIddEEEEvT_ = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiED2Ev = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiED2Ev = comdat any

$_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_ = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl = comdat any

$_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld = comdat any

$_ZN5Eigen12SparseMatrixIdLi0EiED2Ev = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl18vector_area_matrixIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERNS1_12SparseMatrixIT0_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  %i.f = mul nsw i64 %i.e, %i.c                   ; 12 uses
  %i.g = sdiv i64 %i.f, 8
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  %i.i = sdiv i64 %i.f, 4
  %i.j = shl nsw i64 %i.i, 2                      ; 6 uses
  %.off.i.i.i.i = add i64 %i.f, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load <4 x i32>, ptr %i.a, align 16, !tbaa !16 ; 3 uses
  %i.l = icmp sgt i64 %i.f, 7
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load <4 x i32>, ptr %i.m, align 16, !tbaa !16 ; 2 uses
  %i.o = icmp samesign ugt i64 %i.f, 15
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.n, %bb.c ], [ %i.y, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.k, %bb.c ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.q = icmp sgt i64 %i.j, %i.h
  br i1 %i.q, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.u, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ]
  %i.r = phi <4 x i32> [ %i.y, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !16
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !16
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.x) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.z = icmp slt i64 %.057.i.i.i.i, %i.h
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !17

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.ab = load <4 x i32>, ptr %i.aa, align 16, !tbaa !16
  %i.ac = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.k, %bb.b ], [ %i.ac, %bb.d ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ad = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ae = icmp slt i64 %i.j, %i.f
  br i1 %i.ae, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.af = sub i64 %i.f, %i.j                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader451, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.af, -8                      ; 3 uses
  %i.ag = add i64 %i.j, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi384 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ]
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !19
  %wide.load385 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !19
  %i.ak = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.al = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi384, <4 x i32> %wide.load385) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ak, <4 x i32> %i.al)
  %i.an = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader451

.lr.ph84.i.i.i.i.preheader451:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph84.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph84.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader451, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ar, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader451 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.aq, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader451 ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ap) ; 2 uses
  %i.ar = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ar, %i.f
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !23

bb.f:                                             ; preds = %bb.a
  %i.as = load i32, ptr %i.a, align 4, !tbaa !19  ; 3 uses
  %i.at = icmp sgt i64 %i.f, 1
  br i1 %i.at, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.au = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.f, 9
  br i1 %min.iters.check387, label %.lr.ph89.i.i.i.i.preheader447, label %vector.ph388

vector.ph388:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec389 = and i64 %i.au, -8                   ; 3 uses
  %i.av = or disjoint i64 %n.vec389, 1
  %broadcast.splatinsert390 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat391 = shufflevector <4 x i32> %broadcast.splatinsert390, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body392

vector.body392:                                   ; preds = %vector.body392, %vector.ph388
  %index393 = phi i64 [ 0, %vector.ph388 ], [ %index.next398, %vector.body392 ] ; 2 uses
  %vec.phi394 = phi <4 x i32> [ %broadcast.splat391, %vector.ph388 ], [ %i.az, %vector.body392 ]
  %vec.phi395 = phi <4 x i32> [ %broadcast.splat391, %vector.ph388 ], [ %i.ba, %vector.body392 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index393 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %wide.load396 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !19
  %wide.load397 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !19
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi394, <4 x i32> %wide.load396) ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi395, <4 x i32> %wide.load397) ; 2 uses
  %index.next398 = add nuw i64 %index393, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next398, %n.vec389
  br i1 %i.bb, label %middle.block399, label %vector.body392, !llvm.loop !24

middle.block399:                                  ; preds = %vector.body392
  %rdx.minmax400 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.az, <4 x i32> %i.ba)
  %i.bc = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax400) ; 2 uses
  %cmp.n401 = icmp eq i64 %i.au, %n.vec389
  br i1 %cmp.n401, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader447

.lr.ph89.i.i.i.i.preheader447:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block399
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.av, %middle.block399 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.bc, %middle.block399 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader447, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader447 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader447 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19
  %i.bf = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.be) ; 2 uses
  %i.bg = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bg, %i.f
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !25

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block399, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %i.as, %bb.f ], [ %i.ad, %bb.e ], [ %i.bc, %middle.block399 ], [ %i.an, %middle.block ], [ %i.aq, %.lr.ph84.i.i.i.i ]
  %i.bh = add nsw i32 %.3.i.i.i.i, 1              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl15boundary_facetsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !14 ; 3 uses
  %i.bk = shl nsw i64 %i.bj, 2                    ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 576460752303423487
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.bm = shl nsw i64 %i.bj, 6
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #21
          to label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit unwind label %bb.k ; 5 uses

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk ; 2 uses
  %.pre = load i64, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bp = icmp sgt i64 %.pre, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78, %bb.i, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %.sroa.0125.0.lcssa = phi ptr [ %i.bn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.i ], [ %.sroa.0125.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78 ] ; 6 uses
  %.sroa.17.0.lcssa = phi ptr [ %i.bn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.i ], [ %.sroa.17.5, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78 ]
  %.sroa.36.0.lcssa = phi ptr [ %i.bo, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ null, %bb.i ], [ %.sroa.36.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78 ] ; 3 uses
  %i.bq = shl nsw i32 %i.bh, 1
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.br, i64 noundef %i.br)
          to label %bb.ab unwind label %bb.k

bb.j:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit81

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i, %bb.h, %._crit_edge
  %.sroa.0125.1 = phi ptr [ null, %bb.h ], [ %.sroa.0125.0.lcssa, %._crit_edge ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ]
  %.sroa.36.1 = phi ptr [ null, %bb.h ], [ %.sroa.36.0.lcssa, %._crit_edge ], [ null, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i ]
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78 ], [ 0, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ] ; 2 uses
  %i.bu = phi i64 [ %i.fm, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78 ], [ %.pre, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ]
  %.sroa.36.0223 = phi ptr [ %.sroa.36.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78 ], [ %i.bo, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ] ; 7 uses
  %.sroa.17.0222 = phi ptr [ %.sroa.17.5, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78 ], [ %i.bn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ] ; 5 uses
  %.sroa.0125.0221 = phi ptr [ %.sroa.0125.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit78 ], [ %i.bn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ] ; 8 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !9
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19 ; 5 uses
  %i.by = getelementptr [4 x i8], ptr %i.bw, i64 %i.bu
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !19 ; 5 uses
  %i.ca = add nsw i32 %i.bx, %i.bh                ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.17.0222, %.sroa.36.0223
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  store i32 %i.ca, ptr %.sroa.17.0222, align 8, !tbaa !19
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.0222, i64 4
  store i32 %i.bz, ptr %.sroa.6111.0..sroa_idx, align 4, !tbaa !19
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.0222, i64 8
  store double -2.500000e-01, ptr %.sroa.7114.0..sroa_idx, align 8, !tbaa !26
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit

bb.m:                                             ; preds = %.lr.ph
  %i.cb = ptrtoint ptr %.sroa.36.0223 to i64
  %i.cc = ptrtoint ptr %.sroa.0125.0221 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775792
  br i1 %i.ce, label %bb.n, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.cf = ashr exact i64 %i.cd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 576460752303423487)
  %i.cj = select i1 %i.ch, i64 576460752303423487, i64 %i.ci ; 3 uses
  %.not.i.i.i.i28 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i28)
  %i.ck = shl nuw nsw i64 %i.cj, 4
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #21
          to label %.noexc30 unwind label %.loopexit ; 5 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd ; 3 uses
  store i32 %i.ca, ptr %i.cm, align 8, !tbaa !19
  %.sroa.6111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.bz, ptr %.sroa.6111.0..sroa_idx112, align 4, !tbaa !19
  %.sroa.7114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store double -2.500000e-01, ptr %.sroa.7114.0..sroa_idx115, align 8, !tbaa !26
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0125.0221, %.sroa.36.0223
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %i.cl, %.noexc30 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0125.0221, %.noexc30 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !28, !alias.scope !29
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cn, %.sroa.36.0223
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !33

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc30
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cl, %.noexc30 ], [ %i.co, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0125.0221, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.0221, i64 noundef %i.cd) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.l
  %.sroa.0125.5 = phi ptr [ %i.cl, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0125.0221, %bb.l ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.17.0222, %bb.l ] ; 6 uses
  %.sroa.36.5 = phi ptr [ %i.cp, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.36.0223, %bb.l ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn458 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn to i64
  %.sroa.17.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %.not.i.i31 = icmp eq ptr %.sroa.17.2, %.sroa.36.5
  br i1 %.not.i.i31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit
  store i32 %i.bz, ptr %.sroa.17.2, align 8, !tbaa !19
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 20
  store i32 %i.ca, ptr %.sroa.6101.0..sroa_idx, align 4, !tbaa !19
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24
  store double -2.500000e-01, ptr %.sroa.7104.0..sroa_idx, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit46

bb.q:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit
  %i.cr = ptrtoint ptr %.sroa.36.5 to i64
  %i.cs = ptrtoint ptr %.sroa.0125.5 to i64       ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 4 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775792
  br i1 %i.cu, label %bb.r, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc44 unwind label %.loopexit.split-lp149

.noexc44:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32: ; preds = %bb.q
  %i.cv = ashr exact i64 %i.ct, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i33 = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i33, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 576460752303423487)
  %i.cz = select i1 %i.cx, i64 576460752303423487, i64 %i.cy ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #21
          to label %.noexc45 unwind label %.loopexit148 ; 6 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct ; 3 uses
  store i32 %i.bz, ptr %i.dc, align 8, !tbaa !19
  %.sroa.6101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %i.ca, ptr %.sroa.6101.0..sroa_idx102, align 4, !tbaa !19
  %.sroa.7104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store double -2.500000e-01, ptr %.sroa.7104.0..sroa_idx105, align 8, !tbaa !26
  %.not10.i.i.i.i.i.i35 = icmp eq ptr %.sroa.0125.5, %.sroa.36.5
  br i1 %.not10.i.i.i.i.i.i35, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36.preheader

.lr.ph.i.i.i.i.i.i36.preheader:                   ; preds = %.noexc45
  %i.dd = sub i64 %.0.lcssa.i.i.i.i.i.i.pn458, %i.cs ; 2 uses
  %i.de = lshr i64 %i.dd, 4
  %i.df = add nuw nsw i64 %i.de, 1
  %xtraiter = and i64 %i.df, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.prol

.lr.ph.i.i.i.i.i.i36.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i36.preheader, %.lr.ph.i.i.i.i.i.i36.prol
  %.012.i.i.i.i.i.i37.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i36.prol ], [ %i.db, %.lr.ph.i.i.i.i.i.i36.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i38.prol = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i36.prol ], [ %.sroa.0125.5, %.lr.ph.i.i.i.i.i.i36.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i36.prol ], [ 0, %.lr.ph.i.i.i.i.i.i36.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i37.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i38.prol, i64 16, i1 false), !tbaa.struct !28, !alias.scope !34
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38.prol, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i36.prol.loopexit, label %.lr.ph.i.i.i.i.i.i36.prol, !llvm.loop !38

.lr.ph.i.i.i.i.i.i36.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i36.prol, %.lr.ph.i.i.i.i.i.i36.preheader
  %.lcssa404.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.012.i.i.i.i.i.i37.unr = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.i36.prol ]
  %.0911.i.i.i.i.i.i38.unr = phi ptr [ %.sroa.0125.5, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.i36.prol ]
  %i.di = icmp ult i64 %i.dd, 48
  br i1 %i.di, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.lr.ph.i.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i36 ], [ %.012.i.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i38 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i36 ], [ %.0911.i.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i38, i64 16, i1 false), !tbaa.struct !28, !alias.scope !34
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !28, !alias.scope !34
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !tbaa.struct !28, !alias.scope !34
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38, i64 48 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !28, !alias.scope !34
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i39.3 = icmp eq ptr %i.dn, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i.i39.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36, !llvm.loop !33

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i.i36.prol.loopexit, %.lr.ph.i.i.i.i.i.i36, %.noexc45
  %.0.lcssa.i.i.i.i.i.i41 = phi ptr [ %i.db, %.noexc45 ], [ %.lcssa404.unr, %.lr.ph.i.i.i.i.i.i36.prol.loopexit ], [ %i.dq, %.lr.ph.i.i.i.i.i.i36 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i41, i64 16
  %.not.i23.i.i.i42 = icmp eq ptr %.sroa.0125.5, null
  br i1 %.not.i23.i.i.i42, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0125.5, i64 noundef %i.ct) #22
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43: ; preds = %bb.s, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cz
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit46

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit46: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43, %bb.p
  %.sroa.0125.6 = phi ptr [ %i.db, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %.sroa.0125.5, %bb.p ] ; 8 uses
  %.sroa.17.3 = phi ptr [ %i.dr, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cq, %bb.p ] ; 10 uses
  %.sroa.36.6 = phi ptr [ %i.ds, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %.sroa.36.5, %bb.p ] ; 2 uses
  %i.dt = add nsw i32 %i.bz, %i.bh                ; 4 uses
  %.not.i.i47 = icmp eq ptr %.sroa.17.3, %.sroa.36.6
  br i1 %.not.i.i47, label %bb.u, label %bb.t

end_hunk_0
begin_hunk_1_@_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_:bb.a
.lr.ph:                                           ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !68 ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !72    ; 3 uses
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !19 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.ee = icmp eq i64 %i.e, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !60
  tail call void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fq, %._crit_edge.loopexit.unr-lcssa ]
  %.07194.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.07293.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod148 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194.epil.init
  store i32 %.07293.epil.init, ptr %i.eg, align 4, !tbaa !19
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.07194.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !19
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !19 ; 2 uses
  %i.em = add i32 %.epil.init, %i.el
  %i.en = sub i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !19
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.en)
  %i.eq = add i32 %i.el, %.07293.epil.init
  %i.er = add i32 %i.eq, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader92
  %.072.lcssa = phi i32 [ 0, %.preheader92 ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.e
  store i32 %.072.lcssa, ptr %i.es, align 4, !tbaa !19
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.eu, double noundef 0.000000e+00)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !86 ; 2 uses
  br i1 %i.ew, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.fa = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fq, %bb.h ]
  %.07194 = phi i64 [ 0, %.lr.ph.new ], [ %i.fo, %bb.h ] ; 5 uses
  %.07293 = phi i32 [ 0, %.lr.ph.new ], [ %i.fy, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194
  store i32 %.07293, ptr %i.fb, align 4, !tbaa !19
  %i.fc = or disjoint i64 %.07194, 1              ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !19 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !19 ; 2 uses
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = sub i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !19
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fi)
  %i.fl = add i32 %i.fg, %.07293
  %i.fm = add i32 %i.fl, %.sroa.speculated        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !19
  %i.fo = add nuw nsw i64 %.07194, 2              ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !19 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !19 ; 2 uses
  %i.ft = add i32 %i.fe, %i.fs
  %i.fu = sub i32 %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fc
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !19
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fu)
  %i.fx = add i32 %i.fs, %i.fm
  %i.fy = add i32 %i.fx, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !96

._crit_edge102:                                   ; preds = %.loopexit, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dz, ptr %i.fz, align 8, !tbaa !86
  tail call void @free(ptr noundef %i.ey) #19
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph101, %.loopexit
  %.06999.in = phi i64 [ %i.ev, %.lr.ph101 ], [ %.06999, %.loopexit ] ; 2 uses
  %.06999 = add nsw i64 %.06999.in, -1            ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06999
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !19 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.06999 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !19 ; 3 uses
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.06999
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !19 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.j
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = zext i32 %i.gj to i64                   ; 4 uses
  %i.gl = load ptr, ptr %i.ez, align 8, !tbaa !77 ; 3 uses
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !78 ; 3 uses
  %i.gn = sext i32 %i.gb to i64                   ; 6 uses
  %i.go = and i32 %i.gh, 1
  %lcmp.mod150.not = icmp eq i32 %i.go, 0
  br i1 %lcmp.mod150.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph97
  %i.gp = sext i32 %i.gd to i64
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !19
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !19
  %i.gu = load i32, ptr %i.gc, align 4, !tbaa !19 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [8 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !26
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %i.gn
  store double %i.gy, ptr %i.gz, align 8, !tbaa !26
  %i.ha = add nsw i64 %i.gk, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph97
  %.unr151 = phi i32 [ %i.gd, %.lr.ph97 ], [ %i.gu, %.prol.loopexit.unr-lcssa ]
  %.095.unr = phi i64 [ %i.gk, %.lr.ph97 ], [ %i.ha, %.prol.loopexit.unr-lcssa ]
  %i.hb = icmp eq i32 %i.gj, 0
  br i1 %i.hb, label %.loopexit, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.prol.loopexit, %.lr.ph97.new
  %i.hc = phi i32 [ %i.hu, %.lr.ph97.new ], [ %.unr151, %.prol.loopexit ]
  %.095 = phi i64 [ %i.ia, %.lr.ph97.new ], [ %.095.unr, %.prol.loopexit ] ; 4 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [4 x i8], ptr %i.gl, i64 %.095 ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !19
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %i.gn
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !19
  %i.hi = load i32, ptr %i.gc, align 4, !tbaa !19 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr %i.gm, i64 %.095 ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !26
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %i.gn
  store double %i.hm, ptr %i.hn, align 8, !tbaa !26
  %i.ho = add nsw i64 %.095, -1                   ; 3 uses
  %i.hp = sext i32 %i.hi to i64
  %i.hq = getelementptr [4 x i8], ptr %i.gl, i64 %i.ho ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !19
  %i.ht = getelementptr [4 x i8], ptr %i.hq, i64 %i.gn
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !19
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !19 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %i.gm, i64 %i.ho ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !26
  %i.hz = getelementptr [8 x i8], ptr %i.hw, i64 %i.gn
  store double %i.hy, ptr %i.hz, align 8, !tbaa !26
  %i.ia = add nsw i64 %.095, -2
  %.not139.1 = icmp eq i64 %i.ho, 0
  br i1 %.not139.1, label %.loopexit, label %.lr.ph97.new, !llvm.loop !97

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph97.new, %bb.j, %bb.i
  %i.ib = icmp samesign ugt i64 %.06999.in, 1
  br i1 %i.ib, label %bb.i, label %._crit_edge102, !llvm.loop !98

bb.k:                                             ; preds = %._crit_edge102, %._crit_edge118._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !99
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #21 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %2 = load i64, ptr %i.a, align 8, !tbaa !90
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.c) ; 3 uses
  %i.o = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !91  ; 3 uses
  br i1 %i.o, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !86
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.q, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #22
  resume { ptr, i32 } %i.r

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.s = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.q, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !91
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.t, align 8, !tbaa !86
  store i64 %i.c, ptr %i.d, align 8, !tbaa !99
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #22
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.v = icmp eq ptr %.pre.i, null
  br i1 %i.v, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !99
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 2147483647) ; 7 uses
  %i.h = icmp slt i64 %.sroa.speculated, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !60
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #21 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #21
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !90
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %.sroa.speculated) ; 3 uses
  %i.t = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !91  ; 3 uses
  br i1 %i.t, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !86
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #22
  resume { ptr, i32 } %i.w

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.v, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.y, align 8, !tbaa !86
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !99
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #22
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.aa = icmp eq ptr %.pre.i, null
  br i1 %i.aa, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !57
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  tail call void @free(ptr noundef %i.d) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #22
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #16

end_hunk_1
