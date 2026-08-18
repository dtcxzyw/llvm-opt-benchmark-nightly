inline.NumInlined: 793
inline.NumDeleted: 328
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%"struct.CaDiCaL::Eliminator" = type <{ ptr, %"class.CaDiCaL::heap.131", %"class.std::queue", %"class.std::vector.0", i32, [4 x i8], %"class.std::vector.132", %"class.std::vector.20", i32, [4 x i8] }>
%"class.CaDiCaL::heap.131" = type { %"class.std::vector.15", %"class.std::vector.15", %"struct.CaDiCaL::elim_more" }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.CaDiCaL::elim_more" = type { ptr }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Deque_impl" }
%"struct.std::_Deque_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Deque_impl" = type { %"struct.std::_Deque_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Deque_impl_data" }
%"struct.std::_Deque_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl" }
%"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl" = type { %"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<CaDiCaL::Clause *, std::allocator<CaDiCaL::Clause *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.132" = type { %"struct.std::_Vector_base.133" }
%"struct.std::_Vector_base.133" = type { %"struct.std::_Vector_base<CaDiCaL::proof_clause, std::allocator<CaDiCaL::proof_clause>>::_Vector_impl" }
%"struct.std::_Vector_base<CaDiCaL::proof_clause, std::allocator<CaDiCaL::proof_clause>>::_Vector_impl" = type { %"struct.std::_Vector_base<CaDiCaL::proof_clause, std::allocator<CaDiCaL::proof_clause>>::_Vector_impl_data" }
%"struct.std::_Vector_base<CaDiCaL::proof_clause, std::allocator<CaDiCaL::proof_clause>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN7CaDiCaL8Internal23elimfast_add_resolventsERNS_10EliminatorEi = comdat any

$_ZN7CaDiCaL4heapINS_9elim_moreEE9push_backEj = comdat any

$_ZN7CaDiCaL4heapINS_9elim_moreEE6shrinkEv = comdat any

$_ZN7CaDiCaL4heapINS_9elim_moreEE9pop_frontEv = comdat any

$_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm = comdat any

$_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_SE_T0_T1_ = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_T0_ = comdat any

$_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_SE_T0_SF_T1_T2_ = comdat any

$_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_T0_T1_ = comdat any

$_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_19clause_smaller_sizeEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_SE_T0_SF_T1_ = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag = comdat any

$_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_SE_T0_SF_T1_SF_T2_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_ = comdat any

$_ZN7CaDiCaL4heapINS_9elim_moreEE2upEj = comdat any

$_ZN7CaDiCaL4heapINS_9elim_moreEE4downEj = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN7CaDiCaLL21invalid_heap_positionE = internal constant i32 -1, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN7CaDiCaL8Internal19flush_elimfast_occsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3988
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3996
  %i.e = load i32, ptr %i.d, align 4, !tbaa !170
  %i.f = add nsw i64 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.h = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.i = tail call noundef i32 @llvm.fshl.i32(i32 %i.h, i32 %1, i32 1)
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !171
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 8 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !172  ; 7 uses
  %.cast = ptrtoint ptr %i.p to i64               ; 6 uses
  %.not3841 = icmp eq ptr %i.p, %i.n
  br i1 %.not3841, label %_ZN7CaDiCaL11shrink_occsERSt6vectorIPNS_6ClauseESaIS2_EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %indvar = phi i64 [ %indvar.next, %select.unfold ], [ 0, %bb.a ] ; 3 uses
  %.01644 = phi i64 [ %.1, %select.unfold ], [ 0, %bb.a ] ; 3 uses
  %.sroa.028.043 = phi ptr [ %.sroa.028.1, %select.unfold ], [ %i.p, %bb.a ] ; 3 uses
  %.sroa.023.042 = phi ptr [ %i.q, %select.unfold ], [ %i.p, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.023.042, i64 8 ; 8 uses
  %i.r = load ptr, ptr %.sroa.023.042, align 8, !tbaa !173 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 16896
  %i.v = icmp eq i32 %i.u, 512
  br i1 %i.v, label %select.unfold, label %bb.b, !llvm.loop !174

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.028.043, i64 8 ; 3 uses
  store ptr %i.r, ptr %.sroa.028.043, align 8, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !176
  %i.z = icmp sgt i32 %i.y, %i.e
  br i1 %i.z, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add nsw i64 %.01644, 1                  ; 2 uses
  %.not = icmp slt i64 %.01644, %i.c
  br i1 %.not, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.c, %.lr.ph
  %.sroa.028.1 = phi ptr [ %.sroa.028.043, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %.1 = phi i64 [ %.01644, %.lr.ph ], [ %i.aa, %bb.c ] ; 2 uses
  %.not38 = icmp eq ptr %i.q, %i.n
  %indvar.next = add i64 %indvar, 1
  br i1 %.not38, label %.thread, label %.lr.ph

.thread:                                          ; preds = %select.unfold, %bb.b, %bb.c
  %.sroa.028.2 = phi ptr [ %i.w, %bb.b ], [ %.sroa.028.1, %select.unfold ], [ %i.w, %bb.c ] ; 7 uses
  %.2 = phi i64 [ %i.f, %bb.b ], [ %.1, %select.unfold ], [ %i.aa, %bb.c ] ; 4 uses
  %.sroa.028.281 = ptrtoaddr ptr %.sroa.028.2 to i64
  %.not39 = icmp eq ptr %i.q, %.sroa.028.2
  br i1 %.not39, label %_ZN7CaDiCaL11shrink_occsERSt6vectorIPNS_6ClauseESaIS2_EE.exit, label %.preheader

.preheader:                                       ; preds = %.thread
  %.not4055 = icmp eq ptr %i.q, %i.n
  br i1 %.not4055, label %._crit_edge, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %.preheader
  %i.ab = add i64 %i.o, -16
  %2 = sub i64 %i.ab, %.cast
  %3 = lshr i64 %2, 3
  %4 = add nuw nsw i64 %3, 1
  %5 = mul i64 %indvar, 2305843009213693951
  %i.ac = add i64 %5, %4                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 24
  br i1 %min.iters.check, label %.lr.ph58.preheader86, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58.preheader
  %i.ad = mul i64 %indvar, -8
  %reass.sub = sub i64 %i.ad, %.cast
  %op.rdx = add i64 %.sroa.028.281, -9
  %op.rdx85 = add i64 %op.rdx, %reass.sub
  %diff.check = icmp ult i64 %op.rdx85, 31
  br i1 %diff.check, label %.lr.ph58.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, -4                      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.028.2, i64 %i.ae ; 2 uses
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.028.2, i64 %i.ah ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.q, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep82, align 8, !tbaa !173
  %wide.load83 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !173
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !173
  store <2 x ptr> %wide.load83, ptr %i.aj, align 8, !tbaa !173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph58.preheader86

.lr.ph58.preheader86:                             ; preds = %vector.memcheck, %.lr.ph58.preheader, %middle.block
  %.sroa.028.357.ph = phi ptr [ %.sroa.028.2, %vector.memcheck ], [ %.sroa.028.2, %.lr.ph58.preheader ], [ %i.af, %middle.block ]
  %.sroa.023.256.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph58.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader86, %.lr.ph58
  %.sroa.028.357 = phi ptr [ %i.an, %.lr.ph58 ], [ %.sroa.028.357.ph, %.lr.ph58.preheader86 ] ; 2 uses
  %.sroa.023.256 = phi ptr [ %i.al, %.lr.ph58 ], [ %.sroa.023.256.ph, %.lr.ph58.preheader86 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.023.256, i64 8 ; 2 uses
  %i.am = load ptr, ptr %.sroa.023.256, align 8, !tbaa !173
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.028.357, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.028.357, align 8, !tbaa !173
  %.not40 = icmp eq ptr %i.al, %i.n
  br i1 %.not40, label %._crit_edge, label %.lr.ph58, !llvm.loop !180

._crit_edge:                                      ; preds = %.lr.ph58, %middle.block, %.preheader
  %.sroa.028.3.lcssa = phi ptr [ %.sroa.028.2, %.preheader ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph58 ] ; 2 uses
  %i.ao = ptrtoint ptr %.sroa.028.3.lcssa to i64
  %i.ap = sub i64 %i.ao, %.cast                   ; 2 uses
  %i.aq = ashr exact i64 %i.ap, 3                 ; 3 uses
  %i.ar = ptrtoint ptr %i.n to i64
  %i.as = sub i64 %i.ar, %.cast
  %i.at = ashr exact i64 %i.as, 3                 ; 3 uses
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.av = sub nuw nsw i64 %i.aq, %i.at
  tail call void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.av)
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !181 ; 2 uses
  %.pre61 = load ptr, ptr %i.m, align 8, !tbaa !182
  %.pre62 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %._crit_edge
  %i.aw = icmp uge i64 %i.aq, %i.at
  %.not.i.i = icmp eq ptr %i.n, %.sroa.028.3.lcssa
  %or.cond = or i1 %i.aw, %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ap ; 2 uses
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !182
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre62, %bb.d ], [ %.cast, %bb.e ], [ %.cast, %bb.f ] ; 2 uses
  %i.ay = phi ptr [ %.pre61, %bb.d ], [ %i.n, %bb.e ], [ %i.ax, %bb.f ] ; 2 uses
  %i.az = phi ptr [ %.pre, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %.pre-phi                ; 2 uses
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = sub i64 %i.be, %.pre-phi                ; 8 uses
  %i.bg = icmp ugt i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZN7CaDiCaL11shrink_occsERSt6vectorIPNS_6ClauseESaIS2_EE.exit

bb.g:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i, label %bb.h

.thread.i.i:                                      ; preds = %bb.g
  %i.bh = getelementptr inbounds i8, ptr null, i64 %i.bf
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp ugt i64 %i.bf, 9223372036854775800
  br i1 %i.bi, label %bb.i, label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i.i, !prof !184

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i.i: ; preds = %bb.h
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #14 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bf ; 4 uses
  %i.bl = icmp samesign ugt i64 %i.bf, 8
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !185

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %i.az, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i.i

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EEC2EmRKS3_.exit.i.i.i
  %i.bm = icmp eq i64 %i.bf, 8
  br i1 %i.bm, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i.i: ; preds = %bb.k
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !173
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !173
  store ptr %i.bj, ptr %i.l, align 8, !tbaa !181
  store ptr %i.bk, ptr %i.m, align 8, !tbaa !182
  store ptr %i.bk, ptr %i.ba, align 8, !tbaa !183
  br label %bb.l

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i.i: ; preds = %bb.k, %bb.j, %.thread.i.i
  %i.bo = phi ptr [ %i.bk, %bb.j ], [ %i.bk, %bb.k ], [ %i.bh, %.thread.i.i ] ; 2 uses
  %i.bp = phi ptr [ %i.bj, %bb.j ], [ %i.bj, %bb.k ], [ null, %.thread.i.i ]
  store ptr %i.bp, ptr %i.l, align 8, !tbaa !181
  store ptr %i.bo, ptr %i.m, align 8, !tbaa !182
  store ptr %i.bo, ptr %i.ba, align 8, !tbaa !183
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN7CaDiCaL11shrink_occsERSt6vectorIPNS_6ClauseESaIS2_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.thread.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #15
  br label %_ZN7CaDiCaL11shrink_occsERSt6vectorIPNS_6ClauseESaIS2_EE.exit

_ZN7CaDiCaL11shrink_occsERSt6vectorIPNS_6ClauseESaIS2_EE.exit: ; preds = %bb.a, %bb.l, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, %.thread
  %.278 = phi i64 [ %.2, %.thread ], [ %.2, %bb.l ], [ %.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EEC2ERKS4_.exit.i.i ], [ %.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit ], [ 0, %bb.a ]
  ret i64 %.278
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal31elimfast_resolvents_are_boundedERNS_10EliminatorEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(228) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !186
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.e = tail call i32 @llvm.abs.i32(i32 %2, i1 true) ; 2 uses
  %i.f = tail call noundef i32 @llvm.fshl.i32(i32 %i.e, i32 %2, i32 1)
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !171  ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = sub nsw i32 0, %2
  %i.k = tail call noundef i32 @llvm.fshl.i32(i32 %i.e, i32 %i.j, i32 1)
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !182  ; 3 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !181  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !181  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3988
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 2 uses
  %i.v = icmp ne ptr %i.o, %i.p
  %i.w = icmp ne ptr %i.r, %i.s
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %i.u, -1
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.r to i64
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = ashr exact i64 %i.aa, 3                 ; 2 uses
  %i.ac = ptrtoint ptr %i.p to i64
  %i.ad = ptrtoint ptr %i.o to i64
  %i.ae = sub i64 %i.ad, %i.ac
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = sext i32 %i.u to i64
  %i.ah = add nsw i64 %i.ab, %i.af
  %i.ai = mul nsw i64 %i.ab, %i.af
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.ah, i64 %i.ag) ; 2 uses
  %.not = icmp sgt i64 %i.ai, %spec.select
  br i1 %.not, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 472
end_hunk_0
