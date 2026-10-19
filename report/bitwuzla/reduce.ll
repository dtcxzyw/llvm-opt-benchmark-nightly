Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/reduce?download=true
inline.NumInlined: 378
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }

$_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_SE_T0_T1_ = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_T0_ = comdat any

$_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_SE_T0_SF_T1_T2_ = comdat any

$_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_T0_T1_ = comdat any

$_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_18reduce_less_usefulEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_SE_T0_SF_T1_ = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag = comdat any

$_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_SE_T0_SF_T1_SF_T2_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_ = comdat any

@.str = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"reducing %zd clauses %.0f%%\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"maximum kept size %d glue %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"new reduce limit %ld after %ld conflicts\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"new flush increment %ld\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"new flush limit %ld\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal8reducingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.b = load i32, ptr %i.a, align 8, !tbaa !180
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.d = load i64, ptr %i.c, align 8
  %.not2 = icmp eq i64 %i.d, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.h = load i64, ptr %i.g, align 8, !tbaa !160
  %i.i = icmp sge i64 %i.f, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal8flushingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3500
  %i.b = load i32, ptr %i.a, align 4, !tbaa !161
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp sge i64 %i.d, %i.f
  %.0 = select i1 %.not, i1 %i.g, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal26mark_clauses_to_be_flushedEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not2122 = icmp eq ptr %i.b, %i.d
  br i1 %.not2122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4488 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.018.023 = phi ptr [ %i.b, %.lr.ph ], [ %i.y, %bb.g ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.018.023, align 8, !tbaa !163 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = and i32 %i.i, 3088
  %or.cond17 = icmp eq i32 %i.j, 2048
  br i1 %or.cond17, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i32 %i.i, 14
  %i.l = and i32 %i.k, 3                          ; 2 uses
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i32 %i.l, 14
  %i.n = add nsw i32 %i.m, -16384
  %i.o = and i32 %i.i, -50193
  %i.p = or i32 %i.n, %i.o
  store i32 %i.p, ptr %i.h, align 8
  br label %bb.g

.critedge:                                        ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.g)
  %i.q = load ptr, ptr %.sroa.018.023, align 8, !tbaa !163
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 64
  %.not16 = icmp eq i32 %i.t, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.u = load i64, ptr %i.e, align 8, !tbaa !164
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr %i.e, align 8, !tbaa !164
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.w = load i64, ptr %i.f, align 8, !tbaa !165
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !165
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.018.023, i64 8 ; 2 uses
  %.not21 = icmp eq ptr %i.y, %i.d
  br i1 %.not21, label %._crit_edge, label %bb.b
}

declare void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal41mark_useless_redundant_clauses_as_garbageEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4216 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !184  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 1152921504606846975
  br i1 %i.c, label %1, label %bb.b

1:                                                ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #12
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %1
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not101.a = icmp eq i64 %i.b, 0
  br i1 %.not101.a, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %2 = shl nuw nsw i64 %i.b, 3
  %3 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #13
          to label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i.a unwind label %bb.u ; 2 uses

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i.a: ; preds = %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.b
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i.a, %bb.b
  %.sroa.18.2 = phi ptr [ %3, %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 4 uses
  %.sroa.29.2 = phi ptr [ %i.d, %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !162  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162  ; 2 uses
  %.not102113 = icmp eq ptr %i.f, %i.h
  br i1 %.not102113, label %._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit_crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %i.i = icmp eq ptr %.sroa.072.1, %.sroa.18.1
  br i1 %i.i, label %._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit_crit_edge, label %bb.c

._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit_crit_edge: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit, %._crit_edge
  %.sroa.072.0.lcssa163 = phi ptr [ %.sroa.072.1, %._crit_edge ], [ %.sroa.18.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit ] ; 2 uses
  %.sroa.29.0.lcssa161 = phi ptr [ %.sroa.29.1, %._crit_edge ], [ %.sroa.29.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit ]
  %.sroa.18.0.lcssa159 = phi ptr [ %.sroa.18.1, %._crit_edge ], [ %.sroa.18.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit ] ; 2 uses
  %.pre = ptrtoint ptr %.sroa.18.0.lcssa159 to i64
  %.pre133 = ptrtoint ptr %.sroa.072.0.lcssa163 to i64
  %.pre135 = sub i64 %.pre, %.pre133
  %.pre137 = ashr exact i64 %.pre135, 3
  br label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.j = ptrtoint ptr %.sroa.18.1 to i64
  %i.k = ptrtoint ptr %.sroa.072.1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, 1
  %i.o = sdiv i64 %i.n, 2                         ; 3 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.u, %select.unfold.i.i.i.i ], [ %i.o, %bb.c ] ; 4 uses
  %i.q = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.r = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.q, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.s = icmp eq i64 %.010.i.i.i.i, 1
  %i.t = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.u = lshr i64 %i.t, 1
  br i1 %i.s, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !181

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.c ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i = phi ptr [ null, %bb.c ], [ %i.r, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 5 uses
  %i.v = icmp eq i64 %i.o, %.sroa.5.0.i.i
  br i1 %i.v, label %bb.d, label %bb.f, !prof !167

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.072.1, i64 %i.o
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_SE_T0_T1_(ptr %.sroa.072.1, ptr %i.w, ptr %.sroa.18.1, ptr noundef %.sroa.10.0.i.i)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0.i.i) #15
  br label %.body

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit.i.i
  %i.y = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.y, label %bb.g, label %bb.h, !prof !185

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_T0_(ptr %.sroa.072.1, ptr %.sroa.18.1)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_18reduce_less_usefulEEEEvT_SE_T0_T1_T2_(ptr %.sroa.072.1, ptr %.sroa.18.1, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.5.0.i.i)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0.i.i) #15
  br label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.sroa.072.0117 = phi ptr [ %.sroa.072.1, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.18.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit ] ; 10 uses
  %.sroa.069.0116 = phi ptr [ %i.bc, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %i.f, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit ] ; 3 uses
  %.sroa.29.0115 = phi ptr [ %.sroa.29.1, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.29.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit ] ; 7 uses
  %.sroa.18.0114 = phi ptr [ %.sroa.18.1, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.18.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE7reserveEm.exit ] ; 7 uses
  %i.z = load ptr, ptr %.sroa.069.0116, align 8, !tbaa !163 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8            ; 5 uses
  %i.ac = and i32 %i.ab, 3088
  %or.cond50 = icmp eq i32 %i.ac, 2048
  br i1 %or.cond50, label %bb.j, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ad = lshr i32 %i.ab, 14
  %i.ae = and i32 %i.ad, 3                        ; 2 uses
  %.not45 = icmp eq i32 %i.ae, 0
  br i1 %.not45, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.af = and i32 %i.ab, 64
  %.not46 = icmp eq i32 %i.af, 0
  br i1 %.not46, label %bb.m, label %bb.l

.thread:                                          ; preds = %bb.j
  %i.ag = shl nuw nsw i32 %i.ae, 14
  %i.ah = add nsw i32 %i.ag, -16384
  %i.ai = and i32 %i.ab, -50193
  %i.aj = or i32 %i.ah, %i.ai
  store i32 %i.aj, ptr %i.aa, align 8
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.z)
          to label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit unwind label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.ak = and i32 %i.ab, 256
  %.not47 = icmp eq i32 %i.ak, 0
  br i1 %.not47, label %bb.n, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.n:                                             ; preds = %bb.m
  %.not.i = icmp eq ptr %.sroa.18.0114, %.sroa.29.0115
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.z, ptr %.sroa.18.0114, align 8, !tbaa !163
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.18.0114, i64 8
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.am = ptrtoint ptr %.sroa.29.0115 to i64
  %i.an = ptrtoint ptr %.sroa.072.0117 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.q, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #12
          to label %.noexc53 unwind label %bb.y

.noexc53:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #13
          to label %.noexc54 unwind label %bb.y   ; 4 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ay = load ptr, ptr %.sroa.069.0116, align 8, !tbaa !163
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !163
  %i.az = icmp sgt i64 %i.ao, 0
  br i1 %i.az, label %bb.r, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.r:                                             ; preds = %.noexc54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %.sroa.072.0117, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.r, %.noexc54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.072.0117, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.072.0117) #16
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit: ; preds = %.thread, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.o, %bb.l, %bb.m, %.lr.ph
  %.sroa.18.1 = phi ptr [ %i.al, %bb.o ], [ %.sroa.18.0114, %bb.m ], [ %.sroa.18.0114, %bb.l ], [ %.sroa.18.0114, %.thread ], [ %.sroa.18.0114, %.lr.ph ], [ %i.ba, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 8 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0115, %bb.o ], [ %.sroa.29.0115, %bb.m ], [ %.sroa.29.0115, %bb.l ], [ %.sroa.29.0115, %.thread ], [ %.sroa.29.0115, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 3 uses
  %.sroa.072.1 = phi ptr [ %.sroa.072.0117, %bb.o ], [ %.sroa.072.0117, %bb.m ], [ %.sroa.072.0117, %bb.l ], [ %.sroa.072.0117, %.thread ], [ %.sroa.072.0117, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.069.0116, i64 8 ; 2 uses
  %.not102 = icmp eq ptr %i.bc, %i.h
  br i1 %.not102, label %._crit_edge, label %.lr.ph

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit: ; preds = %._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit_crit_edge, %bb.i
  %.sroa.072.0.lcssa162 = phi ptr [ %.sroa.072.0.lcssa163, %._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit_crit_edge ], [ %.sroa.072.1, %bb.i ] ; 8 uses
  %.sroa.29.0.lcssa160 = phi ptr [ %.sroa.29.0.lcssa161, %._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit_crit_edge ], [ %.sroa.29.1, %bb.i ]
  %.sroa.18.0.lcssa158 = phi ptr [ %.sroa.18.0.lcssa159, %._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit_crit_edge ], [ %.sroa.18.1, %bb.i ] ; 2 uses
  %.pre-phi138 = phi i64 [ %.pre137, %._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit_crit_edge ], [ %i.m, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !186
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fmul nnan double %i.bf, 1.000000e-02
  %i.bh = uitofp i64 %.pre-phi138 to double
  %i.bi = fmul double %i.bg, %i.bh
  %i.bj = fptoui double %i.bi to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.pre-phi138, i64 %i.bj) ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !168 ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4656
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !169
  %i.bo = uitofp i64 %spec.select to double
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !184 ; 2 uses
  %i.bq = sitofp i64 %i.bp to double
  %i.br = fmul nnan double %i.bo, 1.000000e+02
  %.not103 = icmp eq i64 %i.bp, 0
  %i.bs = fdiv double %i.br, %i.bq
  %i.bt = select i1 %.not103, double 0.000000e+00, double %i.bs
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.bl, ptr noundef nonnull @.str, i64 noundef %i.bn, ptr noundef nonnull @.str.1, i64 noundef %spec.select, double noundef %i.bt)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i, %1, %bb.t
  %.sroa.072.2 = phi ptr [ null, %1 ], [ %.sroa.072.0.lcssa162, %bb.t ], [ null, %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE11_M_allocateEm.exit.i ]
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.t, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS2_18reduce_less_usefulEEvT_SB_T0_.exit
  %.idx = shl nsw i64 %spec.select, 3
  %i.bv = getelementptr inbounds i8, ptr %.sroa.072.0.lcssa162, i64 %.idx ; 3 uses
  %.not104120 = icmp eq i64 %spec.select, 0
  br i1 %.not104120, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4664 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph123, %bb.x
  %.sroa.062.0121 = phi ptr [ %.sroa.072.0.lcssa162, %.lr.ph123 ], [ %i.by, %bb.x ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.062.0121, align 8, !tbaa !163
  invoke void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %i.bx)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.062.0121, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.bw, align 8, !tbaa !187
  %i.ca = add nsw i64 %i.bz, 1
  store i64 %i.ca, ptr %i.bw, align 8, !tbaa !187
  %.not104 = icmp eq ptr %i.by, %i.bv
  br i1 %.not104, label %._crit_edge124, label %bb.w, !llvm.loop !182

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.l, %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge124:                                   ; preds = %bb.x, %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2932 ; 3 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !188
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2928 ; 3 uses
  store i32 0, ptr %i.cd, align 8, !tbaa !189
  %.not105125 = icmp eq ptr %i.bv, %.sroa.18.0.lcssa158
  br i1 %.not105125, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %._crit_edge124, %bb.ac
  %i.ce = phi i32 [ %i.co, %bb.ac ], [ 0, %._crit_edge124 ] ; 2 uses
  %i.cf = phi i32 [ %i.ck, %bb.ac ], [ 0, %._crit_edge124 ] ; 2 uses
  %.sroa.062.1126 = phi ptr [ %i.cp, %bb.ac ], [ %i.bv, %._crit_edge124 ] ; 2 uses
  %i.cg = load ptr, ptr %.sroa.062.1126, align 8, !tbaa !163 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !170 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, %i.cf
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph128
  store i32 %i.ci, ptr %i.cd, align 8, !tbaa !189
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph128
  %i.ck = phi i32 [ %i.ci, %bb.z ], [ %i.cf, %.lr.ph128 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !170 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, %i.ce
  br i1 %i.cn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.cm, ptr %i.cc, align 4, !tbaa !188
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.co = phi i32 [ %i.cm, %bb.ab ], [ %i.ce, %bb.aa ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.062.1126, i64 8 ; 2 uses
  %.not105 = icmp eq ptr %i.cp, %.sroa.18.0.lcssa158
  br i1 %.not105, label %._crit_edge129, label %.lr.ph128, !llvm.loop !183

._crit_edge129:                                   ; preds = %bb.ac, %._crit_edge124
  %.not.i55 = icmp eq ptr %.sroa.29.0.lcssa160, %.sroa.072.0.lcssa162
  br i1 %.not.i55, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge129
  %.not.i.i.i.i56 = icmp eq ptr %.sroa.072.0.lcssa162, null
  br i1 %.not.i.i.i.i56, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.072.0.lcssa162) #16
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %._crit_edge129, %bb.ad, %bb.ae
  %.sroa.072.7 = phi ptr [ %.sroa.072.0.lcssa162, %._crit_edge129 ], [ null, %bb.ad ], [ null, %bb.ae ] ; 3 uses
  %i.cq = load ptr, ptr %i.bk, align 8, !tbaa !168 ; 2 uses
  %.not39 = icmp eq ptr %i.cq, null
  br i1 %.not39, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4656
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !169
  %i.ct = load i32, ptr %i.cd, align 8, !tbaa !189
  %i.cu = load i32, ptr %i.cc, align 4, !tbaa !188
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.cq, ptr noundef nonnull @.str, i64 noundef %i.cs, ptr noundef nonnull @.str.2, i32 noundef %i.ct, i32 noundef %i.cu)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.af, %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  %.not.i.i.i57 = icmp eq ptr %.sroa.072.7, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.072.7) #16
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %bb.ah, %bb.ai
  ret void

.body:                                            ; preds = %.loopexit, %bb.y, %bb.ag, %bb.u, %bb.e
  %.sroa.072.4 = phi ptr [ %.sroa.072.1, %bb.e ], [ %.sroa.072.7, %bb.ag ], [ %.sroa.072.2, %bb.u ], [ %.sroa.072.0.lcssa162, %.loopexit ], [ %.sroa.072.0117, %bb.y ] ; 2 uses
  %.pn48 = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.cv, %bb.ag ], [ %i.bu, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %i.cb, %bb.y ]
  %.not.i.i.i58 = icmp eq ptr %.sroa.072.4, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit59, label %bb.aj

bb.aj:                                            ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.072.4) #16
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit59

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit59: ; preds = %.body, %bb.aj
  resume { ptr, i32 } %.pn48
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal28propagate_out_of_order_unitsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i32, ptr %i.a, align 4, !tbaa !171
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !175
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !176
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !177  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.q = load ptr, ptr %i.p, align 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.g)
  %exitcond.not16.not = icmp ugt i64 %i.o, %i.g
  br i1 %exitcond.not16.not, label %select.unfold, label %.critedge

bb.c:                                             ; preds = %select.unfold
  %i.r = add i64 %.01417, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %umax
  br i1 %exitcond.not, label %.critedge, label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.c
  %.01417 = phi i64 [ %i.r, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01417
  %i.t = load i32, ptr %i.s, align 4, !tbaa !170  ; 2 uses
  %i.u = tail call noundef i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.v
  %i.x = load i32, ptr %i.w, align 8, !tbaa !179
  %.not12 = icmp ne i32 %i.x, 0
  %.not1115 = icmp eq i32 %i.t, 0
  %.not11 = or i1 %.not12, %.not1115
  br i1 %.not11, label %bb.c, label %.critedge13

.critedge13:                                      ; preds = %select.unfold
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %i.y = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.y, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.critedge13
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.d, %.critedge13, %bb.a
  %.110 = phi i1 [ true, %bb.a ], [ true, %.critedge13 ], [ false, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.110
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal6reduceEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !190
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !191
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6568
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !192
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.g, double noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4656 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !169
  %i.o = add nsw i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !169
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 46, i32 noundef 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3500
  %i.q = load i32, ptr %i.p, align 4, !tbaa !161
  %.not.i15 = icmp ne i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3928 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp sge i64 %i.s, %i.u
  %.0.i = select i1 %.not.i15, i1 %i.v, i1 false  ; 4 uses
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4472 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !193
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !193
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !171
  %.not.i16 = icmp eq i32 %i.aa, 0
  br i1 %.not.i16, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !172
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !175
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !176
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !177 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ap = load ptr, ptr %i.ao, align 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.af)
  %exitcond.not.i28.not = icmp ugt i64 %i.an, %i.af
  br i1 %exitcond.not.i28.not, label %select.unfold.i, label %.loopexit

bb.i:                                             ; preds = %select.unfold.i
  %i.aq = add i64 %.014.i29, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %umax.i
  br i1 %exitcond.not.i, label %.loopexit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.h, %bb.i
  %.014.i29 = phi i64 [ %i.aq, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.014.i29
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !170 ; 2 uses
  %i.at = tail call noundef i32 @llvm.abs.i32(i32 %i.as, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !179
  %.not12.i = icmp ne i32 %i.aw, 0
  %.not1115.i = icmp eq i32 %i.as, 0
  %.not11.i = or i1 %.not1115.i, %.not12.i
  br i1 %.not11.i, label %bb.i, label %.critedge13.i

.critedge13.i:                                    ; preds = %select.unfold.i
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %i.ax = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.ax, label %.loopexit, label %_ZN7CaDiCaL8Internal28propagate_out_of_order_unitsEv.exit

_ZN7CaDiCaL8Internal28propagate_out_of_order_unitsEv.exit: ; preds = %.critedge13.i
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.aa

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.g, %.critedge13.i
  tail call void @_ZN7CaDiCaL8Internal33mark_satisfied_clauses_as_garbageEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  tail call void @_ZN7CaDiCaL8Internal15protect_reasonsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %.0.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %.loopexit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !162 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !162 ; 2 uses
  %.not2122.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not2122.i, label %_ZN7CaDiCaL8Internal26mark_clauses_to_be_flushedEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4488 ; 2 uses
end_hunk_0
