Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/find?download=true
inline.NumInlined: 733
inline.NumDeleted: 405
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE = comdat any

$_ZN3igl4findIbN5Eigen6MatrixIbLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE = comdat any

$_ZN3igl4findIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN3igl4findIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS1_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSB_IT1_EERNSB_IT2_EE = comdat any

$_ZN3igl4findIN5Eigen5ArrayIbLin1ELi1ELi0ELin1ELi1EEENS1_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl4findIdN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSA_IT1_EERNSA_IT2_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN3igl4findIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE = comdat any

$_ZN3igl4findIdN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSA_IT1_EERNSA_IT2_EE = comdat any

$_ZN3igl4findIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN3igl4findIdN5Eigen6MatrixIlLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSA_IT1_EERNSA_IT2_EE = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN3igl4findIN5Eigen6MatrixIbLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EERNS1_15PlainObjectBaseIT0_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 10 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !18, !range !19, !noundef !20
  %i.f = zext nneg i8 %i.e to i64                 ; 3 uses
  %i.g = icmp sgt i64 %i.b, 1
  br i1 %i.g, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.thread

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.h = add nsw i64 %i.b, -1                     ; 2 uses
  %i.i = add nsw i64 %i.b, -2
  %xtraiter = and i64 %i.h, 7                     ; 3 uses
  %i.j = icmp ult i64 %i.i, 7
  br i1 %i.j, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.01724.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ax, %.lr.ph.i.i.i.i ] ; 9 uses
  %.02223.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.preheader.new ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %i.k = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18, !range !19, !noundef !20
  %i.m = zext nneg i8 %i.l to i64
  %i.n = add nuw nsw i64 %.02223.i.i.i.i, %i.m
  %i.o = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !range !19, !noundef !20
  %i.r = zext nneg i8 %i.q to i64
  %i.s = add nuw nsw i64 %i.n, %i.r
  %i.t = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i
  %i.u = getelementptr i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18, !range !19, !noundef !20
  %i.w = zext nneg i8 %i.v to i64
  %i.x = add nuw nsw i64 %i.s, %i.w
  %i.y = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18, !range !19, !noundef !20
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.x, %i.ab
  %i.ad = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18, !range !19, !noundef !20
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = add nuw nsw i64 %i.ac, %i.ag
  %i.ai = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18, !range !19, !noundef !20
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = add nuw nsw i64 %i.ah, %i.al
  %i.an = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18, !range !19, !noundef !20
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.am, %i.aq
  %i.as = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18, !range !19, !noundef !20
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add nuw nsw i64 %i.ar, %i.av            ; 3 uses
  %i.ax = add nuw nsw i64 %.01724.i.i.i.i, 8      ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.01724.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.unr-lcssa ]
  %.02223.i.i.i.i.epil.init = phi i64 [ %i.f, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.epil = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.epil ], [ %.01724.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.epil = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.epil ], [ %.02223.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ay = getelementptr i8, ptr %i.d, i64 %.01724.i.i.i.i.epil
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18, !range !19, !noundef !20
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = add nuw nsw i64 %.02223.i.i.i.i.epil, %i.ba ; 2 uses
  %i.bc = add nuw nsw i64 %.01724.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !61

_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit: ; preds = %.lr.ph.i.i.i.i.epil, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.unr-lcssa
  %.lcssa59 = phi i64 [ %i.aw, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.unr-lcssa ], [ %i.bb, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %i.bd = icmp samesign ugt i64 %.lcssa59, 2305843009213693951
  br i1 %i.bd, label %.noexc, label %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.thread

.noexc:                                           ; preds = %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.thread: ; preds = %bb.b, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit
  %.0.i.i15 = phi i64 [ %.lcssa59, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit ], [ %i.f, %bb.b ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not = icmp eq i64 %.0.i.i15, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.thread
  %i.bf = shl nuw nsw i64 %.0.i.i15, 2
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #15 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %0, align 8, !tbaa !64
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.0.i.i15
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !66
  %.pre = load i64, ptr %i.a, align 8, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.thread
  %i.bj = phi i64 [ %i.b, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.thread ], [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 2 uses
  %.promoted = phi ptr [ null, %_ZNK5Eigen9DenseBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE5countEv.exit.thread ], [ %i.bg, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge.a

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store ptr %i.cm, ptr %i.bl, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %bb.a, %._crit_edge, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.lcssa17 = phi ptr [ %i.cn, %._crit_edge ], [ %.promoted, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ null, %bb.a ]
  store ptr %.lcssa17, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bm = phi i64 [ %i.bj, %.lr.ph ], [ %i.cl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %2 = phi ptr [ %.promoted, %.lr.ph ], [ %i.cm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %i.bn = phi ptr [ %.promoted, %.lr.ph ], [ %i.cn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %i.bo = load ptr, ptr %1, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18, !range !19, !noundef !20
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.d, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.c
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !66
  %.not.i = icmp eq ptr %2, %i.bs
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bt, ptr %2, align 4, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.bv = ptrtoint ptr %2 to i64
  %i.bw = ptrtoint ptr %i.bn to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775804
  br i1 %i.by, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.bl, align 8
  store ptr %i.bn, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #14
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.bz = ashr exact i64 %i.bx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 2305843009213693951)
  %i.cd = select i1 %i.cb, i64 2305843009213693951, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #15
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !24
  %i.ci = icmp sgt i64 %i.bx, 0
  br i1 %i.ci, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr align 4 %i.bn, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bx) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.ck, ptr %i.be, align 8, !tbaa !66
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.bl, align 8
  store ptr %i.bn, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e, %bb.c
  %i.cl = phi i64 [ %.pre27, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bm, %bb.e ], [ %i.bm, %bb.c ] ; 2 uses
  %i.cm = phi ptr [ %i.cj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bu, %bb.e ], [ %2, %bb.c ] ; 2 uses
  %i.cn = phi ptr [ %i.cf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bn, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = icmp sgt i64 %i.cl, %indvars.iv.next
  br i1 %i.co, label %bb.c, label %._crit_edge, !llvm.loop !62

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i10 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = ptrtoint ptr %2 to i64
  %i.cq = ptrtoint ptr %i.bn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cr) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl4findIbN5Eigen6MatrixIbLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNS9_IT1_EERNS9_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 14 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  %i.j = load i32, ptr %i.e, align 4, !tbaa !24
  %i.k = sub nsw i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  br label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31   ; 11 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.q = and i64 %i.p, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = lshr exact i64 %i.p, 2
  %i.s = sub nsw i64 0, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.n, %bb.d ] ; 12 uses
  %i.v = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = sdiv i64 %i.v, 4
  %i.z = shl nsw i64 %i.y, 2                      ; 3 uses
  %i.aa = add nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i   ; 2 uses
  %i.ab = add nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 4 uses
  %.off.i.i.i.i = add i64 %i.v, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !32 ; 2 uses
  %i.ae = icmp sgt i64 %i.v, 7
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load <4 x i32>, ptr %i.af, align 1, !tbaa !32 ; 2 uses
  %i.ah = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.v, 15
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ag, %bb.g ], [ %i.at, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ah, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %i.aj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = icmp sgt i64 %i.z, %i.x
  br i1 %i.al, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i ]
  %i.am = phi <4 x i32> [ %i.at, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05780.i.i.i.i
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !32
  %i.ap = add <4 x i32> %i.ao, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.b, i64 %.057.in79.i.i.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !32
  %i.at = add <4 x i32> %i.as, %i.am              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.au = icmp slt i64 %.057.i.i.i.i, %i.aa
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.aw = load <4 x i32>, ptr %i.av, align 1, !tbaa !32
  %i.ax = add <4 x i32> %i.aw, %i.aj
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ad, %bb.f ], [ %i.ay, %bb.h ], [ %i.ak, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.az = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ba = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bb = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bc = add <4 x i32> %i.bb, %i.az              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bc, %shift
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %i.be = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader405, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bf = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bf, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi207 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !24
  %wide.load208 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !24
  %i.bi = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bj = add <4 x i32> %wide.load208, %vec.phi207 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader405

.lr.ph85.i.i.i.i.preheader405:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %i.bd, %.lr.ph85.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %i.bd, %bb.i ], [ %i.bl, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bm = icmp slt i64 %i.ab, %i.n
  br i1 %i.bm, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.z
  %i.bo = sub i64 %i.n, %i.bn                     ; 3 uses
  %min.iters.check210 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check210, label %.lr.ph89.i.i.i.i.preheader400, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec212 = and i64 %i.bo, -8                   ; 3 uses
  %i.bp = add i64 %i.ab, %n.vec212
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next219, %vector.body213 ] ; 2 uses
  %vec.phi215 = phi <4 x i32> [ %i.bq, %vector.ph211 ], [ %i.bu, %vector.body213 ]
  %vec.phi216 = phi <4 x i32> [ zeroinitializer, %vector.ph211 ], [ %i.bv, %vector.body213 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index214 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load217 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !24
  %wide.load218 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !24
  %i.bu = add <4 x i32> %wide.load217, %vec.phi215 ; 2 uses
  %i.bv = add <4 x i32> %wide.load218, %vec.phi216 ; 2 uses
  %index.next219 = add nuw i64 %index214, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.bw, label %middle.block220, label %vector.body213, !llvm.loop !68

middle.block220:                                  ; preds = %vector.body213
  %bin.rdx221 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx221) ; 2 uses
end_hunk_0
