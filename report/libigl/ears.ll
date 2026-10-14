Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ears?download=true
inline.NumInlined: 401
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Eigen::internal::all_t" = type { i8 }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Array" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64 }
%"class.Eigen::Array.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { ptr, i64 }
%"class.Eigen::IndexedView" = type <{ ptr, %"class.Eigen::Matrix", [8 x i8] }>
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase.29" }
%"class.Eigen::PlainObjectBase.29" = type { %"class.Eigen::DenseStorage.36" }
%"class.Eigen::DenseStorage.36" = type { ptr, i64 }

$_ZN3igl4earsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE = comdat any

$_ZN5Eigen9DenseBaseINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEEEclINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS7_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISA_SB_E4typeEEE19ReturnAsIndexedViewESE_E4typeERKSA_RKSB_ = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS_11IndexedViewIS3_NS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS0_8AllRangeILi3EEEEENS0_9assign_opIbbEEEEvRT_RKT0_RKT1_ = comdat any

@_ZN3igl12placeholdersL3allE = internal constant %"struct.Eigen::internal::all_t" undef, align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4earsIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Array", align 8      ; 10 uses
  %5 = alloca %"class.Eigen::Array.3", align 8    ; 7 uses
  %6 = alloca %"class.Eigen::Array.3", align 8    ; 9 uses
  %7 = alloca %"class.Eigen::Array", align 8      ; 11 uses
  %8 = alloca %"class.Eigen::IndexedView", align 8 ; 8 uses
  %9 = alloca %"class.Eigen::Array.3", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl11on_boundaryIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS1_5ArrayIbLin1ELi1ELi0ELin1ELi1EEENS4_IbLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSC_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !37
  call void @free(ptr noundef %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13, !noalias !38 ; 22 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !39
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIllLNS2_14ComparisonNameE0EEEKNS_16PartialReduxExprINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_12member_countIlbEELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIlEENS7_IlLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = call noalias ptr @malloc(i64 noundef %i.c) #12, !noalias !39 ; 8 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc.i.i.i.i.i.i.i, label %iter.check

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.i = call ptr @__cxa_allocate_exception(i64 8) #11, !noalias !39 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15, !noalias !39
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.c
  store i64 %i.c, ptr %i.d, align 8, !tbaa !40, !alias.scope !39
  br label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIllLNS2_14ComparisonNameE0EEEKNS_16PartialReduxExprINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_12member_countIlbEELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIlEENS7_IlLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit

iter.check:                                       ; preds = %bb.d
  store ptr %i.f, ptr %6, align 8, !tbaa !37, !alias.scope !39
  store i64 %i.c, ptr %i.d, align 8, !tbaa !40, !alias.scope !39
  %i.j = load ptr, ptr %4, align 8, !tbaa !16, !noalias !41 ; 6 uses
  %i.k = shl nuw nsw i64 %i.c, 1                  ; 6 uses
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.l = ptrtoaddr ptr %i.j to i64                ; 2 uses
  %10 = sub i64 %i.g, %i.l                        ; 2 uses
  %i.m = sub i64 %i.k, %10
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = add i64 %i.c, %i.l
  %i.o = sub i64 %i.n, %i.g
  %diff.check30 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check30
  %11 = add i64 %10, -1
  %diff.check34 = icmp ult i64 %11, 31
  %conflict.rdx32 = or i1 %conflict.rdx, %diff.check34
  br i1 %conflict.rdx32, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check33 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.c, 28
  %n.vec = and i64 %i.c, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !tbaa !18, !noalias !39
  %wide.load34 = load <16 x i8>, ptr %i.s, align 1, !tbaa !18, !noalias !39
  %i.t = getelementptr i8, ptr %i.r, i64 %i.c     ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %wide.load35 = load <16 x i8>, ptr %i.t, align 1, !tbaa !18, !noalias !39
  %wide.load36 = load <16 x i8>, ptr %i.u, align 1, !tbaa !18, !noalias !39
  %i.v = getelementptr i8, ptr %i.r, i64 %i.k     ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %wide.load37 = load <16 x i8>, ptr %i.v, align 1, !tbaa !18, !noalias !39
  %wide.load38 = load <16 x i8>, ptr %i.w, align 1, !tbaa !18, !noalias !39
  %i.x = add nuw nsw <16 x i8> %wide.load35, %wide.load
  %i.y = add nuw nsw <16 x i8> %wide.load36, %wide.load34
  %i.z = add nuw nsw <16 x i8> %i.x, %wide.load37
  %i.aa = add nuw nsw <16 x i8> %i.y, %wide.load38
  %i.ab = icmp eq <16 x i8> %i.z, splat (i8 2)
  %i.ac = icmp eq <16 x i8> %i.aa, splat (i8 2)
  %i.ad = zext <16 x i1> %i.ab to <16 x i8>
  %i.ae = zext <16 x i1> %i.ac to <16 x i8>
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %i.ad, ptr %i.q, align 1, !tbaa !18, !noalias !39
  store <16 x i8> %i.ae, ptr %i.af, align 1, !tbaa !18, !noalias !39
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIllLNS2_14ComparisonNameE0EEEKNS_16PartialReduxExprINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_12member_countIlbEELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIlEENS7_IlLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.c, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %index40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %index40 ; 3 uses
  %wide.load41 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !18, !noalias !39
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.c
  %wide.load42 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !18, !noalias !39
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.k
  %wide.load43 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !18, !noalias !39
  %i.al = add nuw nsw <4 x i8> %wide.load42, %wide.load41
  %i.am = add nuw nsw <4 x i8> %i.al, %wide.load43
  %i.an = icmp eq <4 x i8> %i.am, splat (i8 2)
  %i.ao = zext <4 x i1> %i.an to <4 x i8>
  store <4 x i8> %i.ao, ptr %i.ah, align 1, !tbaa !18, !noalias !39
  %index.next44 = add nuw i64 %index40, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.c, %n.vec39
  br i1 %cmp.n45, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIllLNS2_14ComparisonNameE0EEEKNS_16PartialReduxExprINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_12member_countIlbEELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIlEENS7_IlLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i.i.i.i.i.i.i.i.ph ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.c
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.k
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add nuw nsw i8 %i.au, %i.as
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add nuw nsw i8 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.aw
  %i.ax = icmp eq i8 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 2
  %i.ay = zext i1 %i.ax to i8
  store i8 %i.ay, ptr %i.aq, align 1, !tbaa !18, !noalias !39
  %i.az = or disjoint i64 %.05.i.i.i.i.i.i.i.i.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.az, %vec.epilog.scalar.ph.prol ]
  %i.ba = icmp eq i64 %i.c, %.neg
  br i1 %i.ba, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIllLNS2_14ComparisonNameE0EEEKNS_16PartialReduxExprINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_12member_countIlbEELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIlEENS7_IlLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %vec.epilog.scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %.05.i.i.i.i.i.i.i.i ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.c
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %i.bg = getelementptr i8, ptr %i.bc, i64 %i.k
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.bf, %i.bd
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i8 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bh
  %i.bi = icmp eq i8 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.bj = zext i1 %i.bi to i8
  store i8 %i.bj, ptr %i.bb, align 1, !tbaa !18, !noalias !39
  %i.bk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bk ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.c
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %i.bq = getelementptr i8, ptr %i.bm, i64 %i.k
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18, !range !20, !noalias !39, !noundef !21
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = add nuw nsw i8 %i.bp, %i.bn
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = add nuw nsw i8 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %i.br
  %i.bs = icmp eq i8 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 2
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %i.bl, align 1, !tbaa !18, !noalias !39
  %i.bu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bu, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIllLNS2_14ComparisonNameE0EEEKNS_16PartialReduxExprINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_12member_countIlbEELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIlEENS7_IlLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit, label %vec.epilog.scalar.ph, !llvm.loop !35

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIllLNS2_14ComparisonNameE0EEEKNS_16PartialReduxExprINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_12member_countIlbEELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIlEENS7_IlLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.b
  invoke void @_ZN3igl4findIN5Eigen5ArrayIbLin1ELi1ELi0ELin1ELi1EEENS1_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_cmp_opIllLNS2_14ComparisonNameE0EEEKNS_16PartialReduxExprINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_12member_countIlbEELi1EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIlEENS7_IlLin1ELi1ELi0ELin1ELi1EEEEEEEE4evalEv.exit
  %i.bv = load ptr, ptr %6, align 8, !tbaa !37
  call void @free(ptr noundef %i.bv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  invoke void @_ZN5Eigen9DenseBaseINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEEEclINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS7_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISA_SB_E4typeEEE19ReturnAsIndexedViewESE_E4typeERKSA_RKSB_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !24 ; 5 uses
  %i.by = icmp sgt i64 %i.bx, 3074457345618258602
  br i1 %i.by, label %.invoke.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i.i

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i.i: ; preds = %bb.g
  %i.bz = mul nuw nsw i64 %i.bx, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i.i
  %i.cb = icmp sgt i64 %i.bx, 0
  br i1 %i.cb, label %bb.i, label %.sink.split.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cc = call noalias ptr @malloc(i64 noundef %i.bz) #12 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.invoke.i.i, label %.sink.split.i.i.i.i.i

.invoke.i.i:                                      ; preds = %bb.i, %bb.g
  %i.ce = call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ce, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.cont.i.i unwind label %.body

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.sink.split.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i = phi ptr [ %i.cc, %bb.i ], [ null, %bb.h ]
  store ptr %.sink.i.i.i.i.i, ptr %7, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i.i.i.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i.i
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS_11IndexedViewIS3_NS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS0_8AllRangeILi3EEEEENS0_9assign_opIbbEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.k unwind label %.body

.body:                                            ; preds = %bb.j, %.invoke.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.cg) #11
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !25
  call void @free(ptr noundef %i.ci) #11
  br label %bb.r

end_hunk_0
