Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ngram-map?download=true
inline.NumInlined: 313
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

@.str = private unnamed_addr constant [84 x i8] c"%s: #tokens = %zu: found matching pattern at pos %zu, length %zu, draft length %zu\0A\00", align 1
@__func__._Z25common_ngram_simple_draftRK26common_ngram_simple_configRKSt6vectorIiSaIiEEi = private unnamed_addr constant [26 x i8] c"common_ngram_simple_draft\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: begin, idx_last_draft=%zu, new begin=%zu, #keys=%zu\0A\00", align 1
@__func__._Z22common_ngram_map_beginR16common_ngram_mapRKSt6vectorIiSaIiEE = private unnamed_addr constant [23 x i8] c"common_ngram_map_begin\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: shrink cleanup begin: %zu -> %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"%s: key_map stats: entries=%zu, min_idx=%u, max_idx=%u, key_map_last_idx=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"%s: delete key %d at index %zu (>= idx_begin_cleanup=%zu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"%s: delete key %d at index %zu (no values left)\0A\00", align 1
@.str.6 = private unnamed_addr constant [120 x i8] c"%s: refresh map: idx_last_draft=%zu, new begin=%zu, #keys_checked=%zu, #keys_del=%zu, #values_del=%zu, #hashes_upd=%zu\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/llama-cpp/llama.cpp/common/ngram-map.cpp\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%s: cur_len exceeds UINT32_MAX: %zu\00", align 1
@__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_ = private unnamed_addr constant [23 x i8] c"common_ngram_map_draft\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"%s: map.idx_last_check > cur_len: %zu > %zu\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"%s: map.size_last_begin > cur_len: %zu > %zu\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%s: key hash %x -> idx_key %d: match %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"%s: cur_len = %zu, n = %d, m = %d, sz_tkns = %zu, sampled = %d, match_pos = %zu\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"%s: key_idx = %zu, key_offset = %zu, key_num = %d, draft.size = %zu\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"%s: key_offset = %zu, key_num = %d, min_hits = %d, no draft\0A\00", align 1
@.str.15 = private unnamed_addr constant [102 x i8] c"%s: key_offset = %zu, max_occur = %d, sum_occur = %d, slot_max = %d [%zu/%d, %zu/%d, %zu/%d, %zu/%d]\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"%s: value[%d] = %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"%s: key_offset = %zu, slot_max = %d, key_num = %d, draft.size = %zu\0A\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"common_ngram_map_send_accepted: n_accepted = %d, prev value_num = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.23 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z25common_ngram_simple_draftRK26common_ngram_simple_configRKSt6vectorIiSaIiEEi(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %2, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 6 uses
  %i.h = load i16, ptr %1, align 2, !tbaa !56     ; 2 uses
  %i.i = zext i16 %i.h to i64                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !57
  %i.l = zext i16 %i.k to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.m = add nuw nsw i64 %i.i, 1
  %i.n = add nuw nsw i64 %i.m, %i.l
  %.not = icmp ugt i64 %i.g, %i.n
  br i1 %.not, label %bb.b, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %.not122 = icmp eq i16 %i.h, 0
  br i1 %.not122, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.o = shl nuw nsw i64 %i.i, 2
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #12
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i unwind label %bb.h ; 2 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.i
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.b
  %.sroa.0.3 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.b ] ; 4 uses
  %.sroa.25.3 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.b ] ; 2 uses
  %i.r = sub nuw nsw i64 %i.g, %i.i               ; 2 uses
  %.049141 = add nsw i64 %i.r, 1                  ; 2 uses
  %i.s = icmp ult i64 %.049141, %i.g
  br i1 %i.s, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77 ] ; 7 uses
  %.sroa.15.0.lcssa = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.15.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77 ] ; 6 uses
  %.sroa.25.0.lcssa = phi ptr [ %.sroa.25.3, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.25.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77 ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.15.0.lcssa, %.sroa.25.0.lcssa
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  store i32 %3, ptr %.sroa.15.0.lcssa, align 4, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %._crit_edge
  %i.t = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.u = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775804
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #13
          to label %.noexc66 unwind label %bb.h

.noexc66:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.x = ashr exact i64 %i.v, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 2305843009213693951)
  %i.ab = select i1 %i.z, i64 2305843009213693951, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #12
          to label %.noexc67 unwind label %bb.h   ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store i32 %3, ptr %i.ae, align 4, !tbaa !14
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc67
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %.sroa.0.0.lcssa, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc67
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.v) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.0.4 = phi ptr [ %i.ad, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.0.lcssa, %bb.c ] ; 9 uses
  %.pn = phi ptr [ %i.ae, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.15.0.lcssa, %bb.c ]
  %.sroa.25.4 = phi ptr [ %i.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.25.0.lcssa, %bb.c ] ; 4 uses
  %.047153 = add nsw i64 %i.r, -1                 ; 3 uses
  %cond154 = icmp eq i64 %.047153, 0
  br i1 %cond154, label %.loopexit126, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.15.2 to i64
  %i.ai = ptrtoint ptr %.sroa.0.4 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  %.not62148.not = icmp eq ptr %.sroa.15.2, %.sroa.0.4
  br i1 %.not62148.not, label %.thread, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.al = load ptr, ptr %2, align 8, !tbaa !12
  br label %.preheader.us

.preheader.us:                                    ; preds = %.loopexit125.us, %.preheader.lr.ph.split.us
  %.047155.us = phi i64 [ %.047153, %.preheader.lr.ph.split.us ], [ %.047.us, %.loopexit125.us ] ; 3 uses
  %4 = getelementptr [4 x i8], ptr %i.al, i64 %.047155.us
  br label %7

5:                                                ; preds = %7
  %6 = add nuw i64 %.045149.us, 1                 ; 2 uses
  %exitcond180.not = icmp eq i64 %6, %i.ak
  br i1 %exitcond180.not, label %.thread, label %7, !llvm.loop !53

7:                                                ; preds = %.preheader.us, %5
  %.045149.us = phi i64 [ 0, %.preheader.us ], [ %6, %5 ] ; 3 uses
  %8 = getelementptr [4 x i8], ptr %4, i64 %.045149.us
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.045149.us
  %11 = load i32, ptr %10, align 4, !tbaa !14
  %.not61.us = icmp eq i32 %9, %11
  br i1 %.not61.us, label %5, label %.loopexit125.us

.loopexit125.us:                                  ; preds = %7
  %.047.us = add i64 %.047155.us, -1              ; 2 uses
  %cond.us = icmp eq i64 %.047.us, 0
  br i1 %cond.us, label %.loopexit126.thread, label %.preheader.us

bb.h:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.e, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.lcssa, %bb.e ], [ %.sroa.0.0.lcssa, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %.sroa.25.1 = phi ptr [ %.sroa.15.0.lcssa, %bb.e ], [ %.sroa.15.0.lcssa, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77
  %.049145 = phi i64 [ %.049, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77 ], [ %.049141, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 2 uses
  %.sroa.25.0144 = phi ptr [ %.sroa.25.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77 ], [ %.sroa.25.3, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 5 uses
  %.sroa.15.0143 = phi ptr [ %.sroa.15.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77 ], [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 3 uses
  %.sroa.0.0142 = phi ptr [ %.sroa.0.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77 ], [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ] ; 7 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.049145 ; 2 uses
  %.not.i68 = icmp eq ptr %.sroa.15.0143, %.sroa.25.0144
  br i1 %.not.i68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !14
  store i32 %i.ap, ptr %.sroa.15.0143, align 4, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77

bb.j:                                             ; preds = %.lr.ph
  %i.aq = ptrtoint ptr %.sroa.25.0144 to i64
  %i.ar = ptrtoint ptr %.sroa.0.0142 to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #13
          to label %.noexc75 unwind label %.loopexit.split-lp128

.noexc75:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69: ; preds = %bb.j
  %i.au = ashr exact i64 %i.as, 2                 ; 3 uses
  %.sroa.speculated.i.i.i70 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i70, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 2305843009213693951)
  %i.ay = select i1 %i.aw, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i71 = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i71)
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #12
          to label %.noexc76 unwind label %.loopexit127 ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !14
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !14
  %i.bd = icmp sgt i64 %i.as, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

bb.l:                                             ; preds = %.noexc76
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %.sroa.0.0142, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72: ; preds = %bb.l, %.noexc76
  %.not.i17.i.i73 = icmp eq ptr %.sroa.0.0142, null
  br i1 %.not.i17.i.i73, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0142, i64 noundef %i.as) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit77

_ZNSt6vectorIiSaIiEE9push_backERKi.exit77:        ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74
  %.sroa.0.5 = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74 ], [ %.sroa.0.0142, %bb.i ] ; 2 uses
  %.pn123 = phi ptr [ %i.bb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74 ], [ %.sroa.15.0143, %bb.i ]
  %.sroa.25.5 = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74 ], [ %.sroa.25.0144, %bb.i ] ; 2 uses
  %.sroa.15.3 = getelementptr inbounds nuw i8, ptr %.pn123, i64 4 ; 2 uses
  %.049 = add nuw i64 %.049145, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.049, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.loopexit127:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %lpad.loopexit129 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp128:                            ; preds = %bb.k
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.thread:                                          ; preds = %5, %.preheader.lr.ph
  %.047.lcssa132 = phi i64 [ %.047153, %.preheader.lr.ph ], [ %.047155.us, %5 ] ; 2 uses
  %i.bf = add i64 %.047.lcssa132, %i.i            ; 2 uses
  %i.bg = sub i64 %i.g, %i.bf
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.l) ; 7 uses
  %i.bh = icmp samesign ult i64 %.sroa.speculated, %i.i
  br i1 %i.bh, label %.loopexit126, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.bi = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp sgt i32 %i.bi, 4
  br i1 %i.bj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bk = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.bk, i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__._Z25common_ngram_simple_draftRK26common_ngram_simple_configRKSt6vectorIiSaIiEEi, i64 noundef %i.g, i64 noundef %.047.lcssa132, i64 noundef %i.ak, i64 noundef %.sroa.speculated)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i78, %bb.q, %bb.p, %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %bb.o, %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !16 ; 3 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !12    ; 6 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = ashr exact i64 %i.br, 2
  %i.bt = icmp ult i64 %i.bs, %.sroa.speculated
  br i1 %i.bt, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i78, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit84

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i78: ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !11
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.bq                    ; 3 uses
  %i.by = shl nuw nsw i64 %.sroa.speculated, 2
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #12
          to label %.noexc83 unwind label %bb.r   ; 5 uses

.noexc83:                                         ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i78
  %i.ca = icmp sgt i64 %i.bx, 0
  br i1 %i.ca, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i79

bb.t:                                             ; preds = %.noexc83
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %i.bo, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i79

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i79: ; preds = %bb.t, %.noexc83
  %.not.i8.i80 = icmp eq ptr %i.bo, null
  br i1 %.not.i8.i80, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit84.thread, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i79
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.br) #14
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit84.thread

_ZNSt6vectorIiSaIiEE7reserveEm.exit84.thread:     ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i79, %bb.u
  store ptr %i.bz, ptr %0, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store ptr %i.cb, ptr %i.bu, align 8, !tbaa !11
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.sroa.speculated ; 2 uses
  store ptr %i.cc, ptr %i.bm, align 8, !tbaa !16
  br label %.lr.ph163

_ZNSt6vectorIiSaIiEE7reserveEm.exit84:            ; preds = %bb.s
  %.not166 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not166, label %.loopexit, label %.lr.ph163

.lr.ph163:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit84.thread, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84
  %.promoted200 = phi ptr [ %i.cc, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84.thread ], [ %i.bn, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84 ]
  %.promoted158199 = phi ptr [ %i.bz, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84.thread ], [ %i.bo, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph163, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94
  %i.ce = phi ptr [ %.pre, %.lr.ph163 ], [ %i.dc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94 ] ; 4 uses
  %.0162 = phi i64 [ 0, %.lr.ph163 ], [ %i.df, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94 ] ; 2 uses
  %i.cf = phi ptr [ %.promoted200, %.lr.ph163 ], [ %i.de, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94 ] ; 4 uses
  %i.cg = phi ptr [ %.promoted158199, %.lr.ph163 ], [ %i.dd, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94 ] ; 7 uses
  %i.ch = load ptr, ptr %2, align 8, !tbaa !12
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %i.bf
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %.0162 ; 2 uses
  %.not.i85 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i85, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !14
  store i32 %i.ck, ptr %i.ce, align 4, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94

bb.x:                                             ; preds = %bb.v
  %i.cm = ptrtoint ptr %i.ce to i64
  %i.cn = ptrtoint ptr %i.cg to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775804
  br i1 %i.cp, label %bb.y, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i86

bb.y:                                             ; preds = %bb.x
  store ptr %i.cf, ptr %i.bm, align 8
  store ptr %i.cg, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #13
          to label %.noexc92 unwind label %.loopexit.split-lp

.noexc92:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i86: ; preds = %bb.x
  %i.cq = ashr exact i64 %i.co, 2                 ; 3 uses
  %.sroa.speculated.i.i.i87 = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i87, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 2305843009213693951)
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i88 = icmp ne i64 %i.cu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i88)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #12
          to label %.noexc93 unwind label %.loopexit124 ; 4 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i86
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  %i.cy = load i32, ptr %i.cj, align 4, !tbaa !14
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !14
  %i.cz = icmp sgt i64 %i.co, 0
  br i1 %i.cz, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i89

bb.z:                                             ; preds = %.noexc93
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cg, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i89

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i89: ; preds = %bb.z, %.noexc93
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %.not.i17.i.i90 = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i90, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i91, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i89
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.co) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i91

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i91: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i89
  store ptr %i.da, ptr %i.cd, align 8, !tbaa !11
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94

_ZNSt6vectorIiSaIiEE9push_backERKi.exit94:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i91, %bb.w
  %i.dc = phi ptr [ %i.da, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i91 ], [ %i.cl, %bb.w ]
  %i.dd = phi ptr [ %i.cw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i91 ], [ %i.cg, %bb.w ] ; 2 uses
  %i.de = phi ptr [ %i.db, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i91 ], [ %i.cf, %bb.w ] ; 2 uses
  %i.df = add nuw nsw i64 %.0162, 1               ; 2 uses
  %exitcond181.not = icmp eq i64 %i.df, %.sroa.speculated
  br i1 %exitcond181.not, label %.loopexit, label %bb.v, !llvm.loop !54

.loopexit124:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i86
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cf, ptr %i.bm, align 8
  store ptr %i.cg, ptr %0, align 8
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84
  %.lcssa159 = phi ptr [ %i.bo, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84 ], [ %i.dd, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94 ]
  %.lcssa = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84 ], [ %i.de, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit94 ]
  store ptr %.lcssa, ptr %i.bm, align 8
  store ptr %.lcssa159, ptr %0, align 8
  br label %.loopexit126

.loopexit126:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.loopexit, %.thread
  %.not.i.i.i95 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.loopexit126.thread

.loopexit126.thread:                              ; preds = %.loopexit125.us, %.loopexit126
  %i.dg = ptrtoint ptr %.sroa.25.4 to i64
  %i.dh = ptrtoint ptr %.sroa.0.4 to i64
  %i.di = sub i64 %i.dg, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.di) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ab:                                            ; preds = %.loopexit124, %.loopexit.split-lp, %.loopexit127, %.loopexit.split-lp128, %bb.r, %bb.h
  %.sroa.0.2 = phi ptr [ %.sroa.0.0142, %.loopexit.split-lp128 ], [ %.sroa.0.1, %bb.h ], [ %.sroa.0.4, %bb.r ], [ %.sroa.0.0142, %.loopexit127 ], [ %.sroa.0.4, %.loopexit.split-lp ], [ %.sroa.0.4, %.loopexit124 ] ; 3 uses
  %.sroa.25.2 = phi ptr [ %.sroa.25.0144, %.loopexit.split-lp128 ], [ %.sroa.25.1, %bb.h ], [ %.sroa.25.4, %bb.r ], [ %.sroa.25.0144, %.loopexit127 ], [ %.sroa.25.4, %.loopexit.split-lp ], [ %.sroa.25.4, %.loopexit124 ]
  %.pn64 = phi { ptr, i32 } [ %lpad.loopexit.split-lp130, %.loopexit.split-lp128 ], [ %i.am, %bb.h ], [ %i.bl, %bb.r ], [ %lpad.loopexit129, %.loopexit127 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit124 ]
  %.not.i.i.i96 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIiSaIiEED2Ev.exit97, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = ptrtoint ptr %.sroa.25.2 to i64
  %i.dk = ptrtoint ptr %.sroa.0.2 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.dl) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit97

_ZNSt6vectorIiSaIiEED2Ev.exit97:                  ; preds = %bb.ab, %bb.ac
  %i.dm = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIiSaIiEED2Ev.exit99, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit97
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !16
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit99

_ZNSt6vectorIiSaIiEED2Ev.exit99:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit97, %bb.ad
  resume { ptr, i32 } %.pn64

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit126.thread, %.loopexit126, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_Z30common_log_get_verbosity_tholdv() local_unnamed_addr #2

declare void @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noundef ptr @_Z15common_log_mainv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z22common_ngram_map_beginR16common_ngram_mapRKSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(108) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 8 uses
  %i.h = tail call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.i = icmp sgt i32 %i.h, 4
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_Z15common_log_mainv()
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 88
  tail call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._Z22common_ngram_map_beginR16common_ngram_mapRKSt6vectorIiSaIiEE, i64 noundef %i.l, i64 noundef %i.g, i64 noundef %i.t)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.g
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = load i16, ptr %0, align 8, !tbaa !33
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !34
  %i.ab = zext i16 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  %.0105 = tail call i64 @llvm.usub.sat.i64(i64 %i.g, i64 %i.ac) ; 3 uses
  %i.ad = tail call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.ae = icmp sgt i32 %i.ad, 2
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = tail call noundef ptr @_Z15common_log_mainv()
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !32
  tail call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.af, i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._Z22common_ngram_map_beginR16common_ngram_mapRKSt6vectorIiSaIiEE, i64 noundef %i.ag, i64 noundef %.0105)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.1 = phi i64 [ %.0105, %bb.e ], [ %.0105, %bb.d ], [ %i.v, %bb.c ] ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load i64, ptr %i.am, align 8, !tbaa !29
  %i.ao = icmp ult i64 %i.g, %i.an
  br i1 %i.ao, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !61, !range !36, !noundef !37
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.preheader, label %bb.n

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.as = ptrtoint ptr %i.ak to i64
  %i.at = ptrtoint ptr %i.ai to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %i.aw = icmp eq i64 %i.au, 4
  br i1 %i.aw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.av, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.l
  %i.ax = and i64 %i.au, 4
  %lcmp.mod.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0113152.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bk, %._crit_edge.unr-lcssa ]
  %.0114151.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1115.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0116150.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %.2118.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0120149.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.1121.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod210 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0113152.epil.init
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %.not134.epil = icmp eq i32 %i.az, 0
  br i1 %.not134.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.ba = add i64 %.0120149.epil.init, 1
  %spec.select138.epil = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %.0116150.epil.init)
  %spec.select140.epil = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %.0114151.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.i, %._crit_edge.unr-lcssa
  %.1121.lcssa = phi i64 [ %.1121.1, %._crit_edge.unr-lcssa ], [ %.0120149.epil.init, %.lr.ph.epil.preheader ], [ %i.ba, %bb.i ] ; 2 uses
  %.2118.lcssa = phi i32 [ %.2118.1, %._crit_edge.unr-lcssa ], [ %.0116150.epil.init, %.lr.ph.epil.preheader ], [ %spec.select138.epil, %bb.i ]
  %.1115.lcssa = phi i32 [ %.1115.1, %._crit_edge.unr-lcssa ], [ %.0114151.epil.init, %.lr.ph.epil.preheader ], [ %spec.select140.epil, %bb.i ]
  %i.bb = tail call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.bc = icmp sgt i32 %i.bb, 2
  br i1 %i.bc, label %bb.m, label %bb.n

.lr.ph:                                           ; preds = %bb.l, %.lr.ph.preheader.new
  %.0113152 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bk, %bb.l ] ; 3 uses
  %.0114151 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1115.1, %bb.l ] ; 2 uses
  %.0116150 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %.2118.1, %bb.l ] ; 2 uses
  %.0120149 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.1121.1, %bb.l ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0113152
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14 ; 3 uses
  %.not134 = icmp eq i32 %i.be, 0
  br i1 %.not134, label %.lr.ph.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bf = add i64 %.0120149, 1
  %spec.select138 = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %.0116150)
  %spec.select140 = tail call i32 @llvm.umax.i32(i32 %i.be, i32 %.0114151)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.j, %.lr.ph
  %.1121 = phi i64 [ %.0120149, %.lr.ph ], [ %i.bf, %bb.j ] ; 2 uses
  %.2118 = phi i32 [ %.0116150, %.lr.ph ], [ %spec.select138, %bb.j ] ; 2 uses
  %.1115 = phi i32 [ %.0114151, %.lr.ph ], [ %spec.select140, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0113152
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14 ; 3 uses
  %.not134.1 = icmp eq i32 %i.bi, 0
  br i1 %.not134.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.1
end_hunk_0
begin_hunk_1_@_Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_:bb.a
  %lpad.loopexit.split-lp569 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g
  %.sroa.28.4 = phi ptr [ %i.as, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.28.0.lcssa, %bb.g ] ; 14 uses
  %.pn = phi ptr [ %i.aq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.19.0.lcssa, %bb.g ]
  %.sroa.0.4 = phi ptr [ %i.ap, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.0.lcssa, %bb.g ] ; 27 uses
  %.sroa.19.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !32 ; 5 uses
  %i.bo = icmp ugt i64 %i.bn, %i.l
  br i1 %i.bo, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.7, i32 noundef 257, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %i.bn, i64 noundef %i.l) #13
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.am, %bb.al, %.critedge.thread, %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35 ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.v
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.bv = icmp ult i16 %.fr, 4
  br i1 %i.bv, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.z, 65532
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cp, %.lr.ph.i ] ; 5 uses
  %.071.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.co, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bw = mul i32 %.071.i, -1640531535
  %i.bx = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = add i32 %i.by, %i.bw
  %i.ca = mul i32 %i.bz, -1640531535
  %i.cb = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14
  %i.ce = add i32 %i.cd, %i.ca
  %i.cf = mul i32 %i.ce, -1640531535
  %i.cg = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !14
  %i.cj = add i32 %i.ci, %i.cf
  %i.ck = mul i32 %i.cj, -1640531535
  %i.cl = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !14
  %i.co = add i32 %i.cn, %i.ck                    ; 3 uses
  %i.cp = add nuw nsw i64 %.02.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !67

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.02.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cp, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ]
  %.071.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.co, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod901 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod901)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.02.i.epil = phi i64 [ %i.cu, %.lr.ph.i.epil ], [ %.02.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.071.i.epil = phi i32 [ %i.ct, %.lr.ph.i.epil ], [ %.071.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cq = mul i32 %.071.i.epil, -1640531535
  %i.cr = getelementptr [4 x i8], ptr %.sroa.0.4, i64 %.02.i.epil
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.ct = add i32 %i.cs, %i.cq                    ; 2 uses
  %i.cu = add nuw nsw i64 %.02.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !68

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit: ; preds = %.lr.ph.i.epil, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa
  %.lcssa895 = phi i32 [ %i.co, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit.unr-lcssa ], [ %i.ct, %.lr.ph.i.epil ]
  %i.cv = zext i32 %.lcssa895 to i64
  br label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit: ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit, %bb.v
  %.07.lcssa.i = phi i64 [ 0, %bb.v ], [ %i.cv, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit.loopexit ]
  %i.cw = ptrtoint ptr %i.bt to i64
  %i.cx = ptrtoint ptr %i.br to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2
  %i.da = urem i64 %.07.lcssa.i, %i.cz            ; 2 uses
  %i.db = trunc nuw i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !14 ; 3 uses
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %.thread, label %bb.w

bb.w:                                             ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit
  %i.de = zext i32 %i.dd to i64                   ; 3 uses
  %i.df = zext i16 %.fr665 to i64
  %i.dg = xor i64 %i.df, -1
  %i.dh = add nsw i64 %i.ad, %i.dg
  %i.di = icmp ugt i64 %i.dh, %i.de
  br i1 %i.di, label %.preheader565, label %.thread

.preheader565:                                    ; preds = %bb.w
  br i1 %.not543, label %._crit_edge604, label %.lr.ph603

.lr.ph603:                                        ; preds = %.preheader565
  %i.dj = load ptr, ptr %1, align 8, !tbaa !12
  %invariant.gep = getelementptr [4 x i8], ptr %i.dj, i64 %i.de
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph603
  %.0335601 = phi i64 [ 0, %.lr.ph603 ], [ %i.dn, %bb.x ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0335601
  %i.dk = load i32, ptr %gep, align 4, !tbaa !14
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0335601
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !14
  %.not373 = icmp eq i32 %i.dk, %i.dm             ; 2 uses
  %i.dn = add nuw nsw i64 %.0335601, 1            ; 2 uses
  %exitcond684.not = icmp ne i64 %i.dn, %i.z
  %or.cond.not = select i1 %.not373, i1 %exitcond684.not, i1 false
  br i1 %or.cond.not, label %bb.x, label %._crit_edge604, !llvm.loop !69

._crit_edge604:                                   ; preds = %bb.x, %.preheader565
  %.not374.lcssa = phi i1 [ true, %.preheader565 ], [ %.not373, %bb.x ] ; 2 uses
  %i.do = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %._crit_edge604
  %i.dp = icmp sgt i32 %i.do, 4
  br i1 %i.dp, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dq = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = zext i1 %.not374.lcssa to i32
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.dq, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i32 noundef %i.db, i32 noundef %i.dd, i32 noundef %i.dr)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge604
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ac:                                            ; preds = %bb.aa, %bb.y
  br i1 %.not374.lcssa, label %.critedge.thread, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.ac
  %.pre = load i64, ptr %i.bm, align 8, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit, %bb.w, %bb.u
  %i.dt = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.bn, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit ], [ %i.bn, %bb.w ], [ %i.bn, %bb.u ] ; 4 uses
  %i.du = add nuw nsw i32 %i.p, 1
  %i.dv = add nuw nsw i32 %i.du, %i.r
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = icmp ugt i64 %i.dt, %i.dw
  %i.dy = zext i16 %.fr665 to i64                 ; 2 uses
  br i1 %i.dx, label %bb.ad, label %.thread518

bb.ad:                                            ; preds = %.thread
  %i.dz = add nuw nsw i64 %i.dy, %i.z
  %i.ea = xor i64 %i.dz, -1
  %i.eb = add i64 %i.dt, %i.ea                    ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !38
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = icmp ugt i64 %i.eb, %i.ee
  br i1 %i.ef, label %.preheader562.lr.ph, label %.thread518

.preheader562.lr.ph:                              ; preds = %bb.ad
  br i1 %.not543, label %.critedge.thread, label %.preheader562.lr.ph.split.us

.preheader562.lr.ph.split.us:                     ; preds = %.preheader562.lr.ph
  %i.eg = load ptr, ptr %1, align 8, !tbaa !12
  br label %.preheader562.us

.preheader562.us:                                 ; preds = %bb.ag, %.preheader562.lr.ph.split.us
  %.0334613.us = phi i64 [ %i.eb, %.preheader562.lr.ph.split.us ], [ %i.en, %bb.ag ] ; 3 uses
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %.0334613.us
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %i.ei = add nuw nsw i64 %.0332609.us, 1         ; 2 uses
  %exitcond685.not = icmp eq i64 %i.ei, %i.z
  br i1 %exitcond685.not, label %.critedge.thread, label %bb.af, !llvm.loop !70

bb.af:                                            ; preds = %.preheader562.us, %bb.ae
  %.0332609.us = phi i64 [ 0, %.preheader562.us ], [ %i.ei, %bb.ae ] ; 3 uses
  %i.ej = getelementptr [4 x i8], ptr %i.eh, i64 %.0332609.us
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !14
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0332609.us
  %i.em = load i32, ptr %i.el, align 4, !tbaa !14
  %.not375.us = icmp eq i32 %i.ek, %i.em
  br i1 %.not375.us, label %bb.ae, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = add i64 %.0334613.us, -1                ; 2 uses
  %i.eo = icmp ugt i64 %i.en, %i.ee
  br i1 %i.eo, label %.preheader562.us, label %.thread518, !llvm.loop !71

.thread518:                                       ; preds = %bb.ag, %.thread, %bb.ad
  %i.ep = xor i64 %i.dy, -1
  %i.eq = add nsw i64 %i.ad, %i.ep                ; 4 uses
  %i.er = icmp ugt i64 %i.eq, %i.dt
  br i1 %i.er, label %.lr.ph620, label %.critedge.thread836

.lr.ph620:                                        ; preds = %.thread518
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.et = load i32, ptr %i.es, align 8, !tbaa !38
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  br i1 %.not543, label %.lr.ph620.split, label %.lr.ph620.split.us

.lr.ph620.split.us:                               ; preds = %.lr.ph620, %bb.aj
  %.0331619.us = phi i64 [ %i.fb, %bb.aj ], [ %i.eq, %.lr.ph620 ] ; 4 uses
  %i.ev = icmp ugt i64 %.0331619.us, %i.eu
  br i1 %i.ev, label %.preheader560.us, label %.critedge.thread836

.preheader560.us:                                 ; preds = %.lr.ph620.split.us
  %6 = load ptr, ptr %1, align 8, !tbaa !12
  %7 = getelementptr [4 x i8], ptr %6, i64 %.0331619.us
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %i.ew = add nuw nsw i64 %.0329615.us, 1         ; 2 uses
  %exitcond686.not = icmp eq i64 %i.ew, %i.z
  br i1 %exitcond686.not, label %.critedge.thread, label %bb.ai, !llvm.loop !72

bb.ai:                                            ; preds = %.preheader560.us, %bb.ah
  %.0329615.us = phi i64 [ 0, %.preheader560.us ], [ %i.ew, %bb.ah ] ; 3 uses
  %i.ex = getelementptr [4 x i8], ptr %7, i64 %.0329615.us
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0329615.us
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !14
  %.not377.us = icmp eq i32 %i.ey, %i.fa
  br i1 %.not377.us, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fb = add i64 %.0331619.us, -1                ; 2 uses
  %i.fc = icmp ugt i64 %i.fb, %i.dt
  br i1 %i.fc, label %.lr.ph620.split.us, label %.critedge.thread836, !llvm.loop !73

.lr.ph620.split:                                  ; preds = %.lr.ph620
  %i.fd = icmp ugt i64 %i.eq, %i.eu
  br i1 %i.fd, label %.critedge.thread, label %.critedge.thread836

.critedge.thread:                                 ; preds = %bb.ae, %bb.ah, %.lr.ph620.split, %.preheader562.lr.ph, %bb.ac
  %.10527 = phi i64 [ %.0331619.us, %bb.ah ], [ %i.eq, %.lr.ph620.split ], [ %i.de, %bb.ac ], [ %i.eb, %.preheader562.lr.ph ], [ %.0334613.us, %bb.ae ] ; 3 uses
  %i.fe = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ak unwind label %bb.t

bb.ak:                                            ; preds = %.critedge.thread
  %i.ff = icmp sgt i32 %i.fe, 4
  br i1 %i.ff, label %bb.al, label %.critedge.thread836

bb.al:                                            ; preds = %bb.ak
  %i.fg = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.am unwind label %bb.t

bb.am:                                            ; preds = %bb.al
  %i.fh = ptrtoint ptr %.sroa.19.2 to i64
  %i.fi = ptrtoint ptr %.sroa.0.4 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 2
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.fg, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._Z22common_ngram_map_draftR16common_ngram_mapRKSt6vectorIiSaIiEEiRS3_, i64 noundef %i.l, i32 noundef %i.p, i32 noundef %i.r, i64 noundef %i.fk, i32 noundef %2, i64 noundef %.10527)
          to label %.critedge.thread836 unwind label %bb.t

.critedge.thread836:                              ; preds = %bb.aj, %.lr.ph620.split.us, %.lr.ph620.split, %.thread518, %bb.ak, %bb.am
  %.not379530 = phi i1 [ false, %bb.ak ], [ false, %bb.am ], [ true, %.lr.ph620.split ], [ true, %.thread518 ], [ true, %.lr.ph620.split.us ], [ true, %bb.aj ]
  %.10528 = phi i64 [ %.10527, %bb.ak ], [ %.10527, %bb.am ], [ 0, %.lr.ph620.split ], [ 0, %.thread518 ], [ 0, %.lr.ph620.split.us ], [ 0, %bb.aj ] ; 7 uses
  %i.fl = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 5 uses
  %i.fm = load ptr, ptr %i.bs, align 8, !tbaa !35 ; 3 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %.critedge.thread836
  %i.fo = load i64, ptr %i.bm, align 8, !tbaa !32 ; 4 uses
  %i.fp = add nuw nsw i32 %i.p, 1
  %i.fq = add nuw nsw i32 %i.fp, %i.r
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = icmp ugt i64 %i.fo, %i.fr
  %i.ft = zext i16 %.fr665 to i64                 ; 2 uses
  br i1 %i.fs, label %bb.ao, label %.loopexit559

bb.ao:                                            ; preds = %bb.an
  %i.fu = add nuw nsw i64 %i.ft, %i.z
  %i.fv = xor i64 %i.fu, -1
  %i.fw = add i64 %i.fo, %i.fv                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !38 ; 2 uses
  %i.fz = zext i32 %i.fy to i64
  %i.ga = icmp ugt i64 %i.fw, %i.fz
  br i1 %i.ga, label %.lr.ph624, label %.loopexit559

.lr.ph624:                                        ; preds = %bb.ao
  %i.gb = ptrtoint ptr %i.fm to i64
  %i.gc = ptrtoint ptr %i.fl to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 2
  %xtraiter902 = and i64 %i.z, 3                  ; 3 uses
  %i.gf = icmp ult i16 %.fr, 4
  %unroll_iter907 = and i64 %i.z, 65532
  %lcmp.mod904.not = icmp eq i64 %xtraiter902, 0
  %lcmp.mod906 = icmp ne i64 %xtraiter902, 0
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph624, %bb.as
  %i.gg = phi i32 [ %i.fy, %.lr.ph624 ], [ %i.hn, %bb.as ]
  %.0328622 = phi i64 [ %i.fw, %.lr.ph624 ], [ %i.ho, %bb.as ] ; 3 uses
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427, label %.lr.ph.i422

.lr.ph.i422:                                      ; preds = %bb.ap
  %.val = load ptr, ptr %1, align 8
  %i.gh = getelementptr [4 x i8], ptr %.val, i64 %.0328622 ; 5 uses
  br i1 %i.gf, label %.epil.preheader, label %.lr.ph.i422.new

.lr.ph.i422.new:                                  ; preds = %.lr.ph.i422, %.lr.ph.i422.new
  %.02.i423 = phi i64 [ %i.hb, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ] ; 5 uses
  %.071.i424 = phi i32 [ %i.ha, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ]
  %niter908 = phi i64 [ %niter908.next.3, %.lr.ph.i422.new ], [ 0, %.lr.ph.i422 ]
  %i.gi = mul i32 %.071.i424, -1640531535
  %i.gj = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !14
  %i.gl = add i32 %i.gk, %i.gi
  %i.gm = mul i32 %i.gl, -1640531535
  %i.gn = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !14
  %i.gq = add i32 %i.gp, %i.gm
  %i.gr = mul i32 %i.gq, -1640531535
  %i.gs = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !14
  %i.gv = add i32 %i.gu, %i.gr
  %i.gw = mul i32 %i.gv, -1640531535
  %i.gx = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423
  %i.gy = getelementptr i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !14
  %i.ha = add i32 %i.gz, %i.gw                    ; 3 uses
  %i.hb = add nuw nsw i64 %.02.i423, 4            ; 2 uses
  %niter908.next.3 = add i64 %niter908, 4         ; 2 uses
  %niter908.ncmp.3 = icmp eq i64 %niter908.next.3, %unroll_iter907
  br i1 %niter908.ncmp.3, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa, label %.lr.ph.i422.new, !llvm.loop !67

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa: ; preds = %.lr.ph.i422.new
  br i1 %lcmp.mod904.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa, %.lr.ph.i422
  %.02.i423.epil.init = phi i64 [ 0, %.lr.ph.i422 ], [ %i.hb, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ]
  %.071.i424.epil.init = phi i32 [ 0, %.lr.ph.i422 ], [ %i.ha, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod906)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.epil.preheader
  %.02.i423.epil = phi i64 [ %.02.i423.epil.init, %.epil.preheader ], [ %i.hg, %bb.aq ] ; 2 uses
  %.071.i424.epil = phi i32 [ %.071.i424.epil.init, %.epil.preheader ], [ %i.hf, %bb.aq ]
  %epil.iter903 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter903.next, %bb.aq ]
  %i.hc = mul i32 %.071.i424.epil, -1640531535
  %i.hd = getelementptr [4 x i8], ptr %i.gh, i64 %.02.i423.epil
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !14
  %i.hf = add i32 %i.he, %i.hc                    ; 2 uses
  %i.hg = add nuw nsw i64 %.02.i423.epil, 1
  %epil.iter903.next = add i64 %epil.iter903, 1   ; 2 uses
  %epil.iter903.cmp.not = icmp eq i64 %epil.iter903.next, %xtraiter902
  br i1 %epil.iter903.cmp.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, label %bb.aq, !llvm.loop !74

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit: ; preds = %bb.aq, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa
  %.lcssa891 = phi i32 [ %i.ha, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit.unr-lcssa ], [ %i.hf, %bb.aq ]
  %i.hh = zext i32 %.lcssa891 to i64
  br label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427: ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit, %bb.ap
  %.07.lcssa.i426 = phi i64 [ 0, %bb.ap ], [ %i.hh, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427.loopexit ]
  %i.hi = urem i64 %.07.lcssa.i426, %i.ge
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.hi ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !14
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427
  %i.hm = trunc i64 %.0328622 to i32
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !14
  %.pre757 = load i32, ptr %i.fx, align 8, !tbaa !38
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427
  %i.hn = phi i32 [ %.pre757, %bb.ar ], [ %i.gg, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit427 ] ; 2 uses
  %i.ho = add i64 %.0328622, -1                   ; 2 uses
  %i.hp = zext i32 %i.hn to i64
  %i.hq = icmp ugt i64 %i.ho, %i.hp
  br i1 %i.hq, label %bb.ap, label %.loopexit559, !llvm.loop !75

.loopexit559:                                     ; preds = %bb.as, %bb.an, %bb.ao
  %i.hr = xor i64 %i.ft, -1
  %i.hs = add nsw i64 %i.ad, %i.hr                ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.hu = icmp ugt i64 %i.hs, %i.fo
  br i1 %i.hu, label %.lr.ph627, label %.critedge5

.lr.ph627:                                        ; preds = %.loopexit559
  %i.hv = ptrtoint ptr %i.fm to i64
  %i.hw = ptrtoint ptr %i.fl to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 2
  %xtraiter910 = and i64 %i.z, 3                  ; 3 uses
  %i.hz = icmp ult i16 %.fr, 4
  %unroll_iter915 = and i64 %i.z, 65532
  %lcmp.mod912.not = icmp eq i64 %xtraiter910, 0
  %lcmp.mod914 = icmp ne i64 %xtraiter910, 0
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph627, %bb.ax
  %.0327625 = phi i64 [ %i.hs, %.lr.ph627 ], [ %i.jl, %bb.ax ] ; 4 uses
  %i.ia = load i32, ptr %i.ht, align 8, !tbaa !38
  %i.ib = zext i32 %i.ia to i64
  %i.ic = icmp ugt i64 %.0327625, %i.ib
  br i1 %i.ic, label %bb.au, label %.critedge5

.critedge5:                                       ; preds = %bb.at, %bb.ax, %.loopexit559
  %i.id = trunc i64 %i.hs to i32
  %i.ie = load i32, ptr %i.ht, align 8, !tbaa !14
  %.sroa.speculated491 = tail call i32 @llvm.umax.i32(i32 %i.ie, i32 %i.id)
  store i32 %.sroa.speculated491, ptr %i.ht, align 8, !tbaa !38
  br label %bb.ay

bb.au:                                            ; preds = %bb.at
  br i1 %.not543, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434, label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %bb.au
  %.val406 = load ptr, ptr %1, align 8
  %i.if = getelementptr [4 x i8], ptr %.val406, i64 %.0327625 ; 5 uses
  br i1 %i.hz, label %.epil.preheader909, label %.lr.ph.i429.new

.lr.ph.i429.new:                                  ; preds = %.lr.ph.i429, %.lr.ph.i429.new
  %.02.i430 = phi i64 [ %i.iz, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ] ; 5 uses
  %.071.i431 = phi i32 [ %i.iy, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ]
  %niter916 = phi i64 [ %niter916.next.3, %.lr.ph.i429.new ], [ 0, %.lr.ph.i429 ]
  %i.ig = mul i32 %.071.i431, -1640531535
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %.02.i430
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !14
  %i.ij = add i32 %i.ii, %i.ig
  %i.ik = mul i32 %i.ij, -1640531535
  %i.il = getelementptr [4 x i8], ptr %i.if, i64 %.02.i430
  %i.im = getelementptr i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !14
  %i.io = add i32 %i.in, %i.ik
  %i.ip = mul i32 %i.io, -1640531535
  %i.iq = getelementptr [4 x i8], ptr %i.if, i64 %.02.i430
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !14
  %i.it = add i32 %i.is, %i.ip
  %i.iu = mul i32 %i.it, -1640531535
  %i.iv = getelementptr [4 x i8], ptr %i.if, i64 %.02.i430
  %i.iw = getelementptr i8, ptr %i.iv, i64 12
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !14
  %i.iy = add i32 %i.ix, %i.iu                    ; 3 uses
  %i.iz = add nuw nsw i64 %.02.i430, 4            ; 2 uses
  %niter916.next.3 = add i64 %niter916, 4         ; 2 uses
  %niter916.ncmp.3 = icmp eq i64 %niter916.next.3, %unroll_iter915
  br i1 %niter916.ncmp.3, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa, label %.lr.ph.i429.new, !llvm.loop !67

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa: ; preds = %.lr.ph.i429.new
  br i1 %lcmp.mod912.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit, label %.epil.preheader909

.epil.preheader909:                               ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa, %.lr.ph.i429
  %.02.i430.epil.init = phi i64 [ 0, %.lr.ph.i429 ], [ %i.iz, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa ]
  %.071.i431.epil.init = phi i32 [ 0, %.lr.ph.i429 ], [ %i.iy, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod914)
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.epil.preheader909
  %.02.i430.epil = phi i64 [ %.02.i430.epil.init, %.epil.preheader909 ], [ %i.je, %bb.av ] ; 2 uses
  %.071.i431.epil = phi i32 [ %.071.i431.epil.init, %.epil.preheader909 ], [ %i.jd, %bb.av ]
  %epil.iter911 = phi i64 [ 0, %.epil.preheader909 ], [ %epil.iter911.next, %bb.av ]
  %i.ja = mul i32 %.071.i431.epil, -1640531535
  %i.jb = getelementptr [4 x i8], ptr %i.if, i64 %.02.i430.epil
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !14
  %i.jd = add i32 %i.jc, %i.ja                    ; 2 uses
  %i.je = add nuw nsw i64 %.02.i430.epil, 1
  %epil.iter911.next = add i64 %epil.iter911, 1   ; 2 uses
  %epil.iter911.cmp.not = icmp eq i64 %epil.iter911.next, %xtraiter910
  br i1 %epil.iter911.cmp.not, label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit, label %bb.av, !llvm.loop !76

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit: ; preds = %bb.av, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa
  %.lcssa890 = phi i32 [ %i.iy, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit.unr-lcssa ], [ %i.jd, %bb.av ]
  %i.jf = zext i32 %.lcssa890 to i64
  br label %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434

_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434: ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit, %bb.au
  %.07.lcssa.i433 = phi i64 [ 0, %bb.au ], [ %i.jf, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434.loopexit ]
  %i.jg = urem i64 %.07.lcssa.i433, %i.hy
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !14
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434
  %i.jk = trunc i64 %.0327625 to i32
  store i32 %i.jk, ptr %i.jh, align 4, !tbaa !14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZL21common_ngram_map_hashRKSt6vectorIiSaIiEEmm.exit434
  %i.jl = add i64 %.0327625, -1                   ; 2 uses
  %i.jm = icmp ugt i64 %i.jl, %i.fo
  br i1 %i.jm, label %bb.at, label %.critedge5, !llvm.loop !77

bb.ay:                                            ; preds = %.critedge5, %.critedge.thread836
  br i1 %.not379530, label %bb.eb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !30 ; 20 uses
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !31 ; 7 uses
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js                    ; 4 uses
  %i.ju = sdiv exact i64 %i.jt, 88                ; 6 uses
  %.not664 = icmp eq ptr %i.jp, %i.jq             ; 2 uses
  br i1 %.not664, label %.loopexit557.thread.thread, label %.preheader556.lr.ph

.preheader556.lr.ph:                              ; preds = %bb.az
  br i1 %.not543, label %.loopexit557, label %.preheader556.lr.ph.split.us

.preheader556.lr.ph.split.us:                     ; preds = %.preheader556.lr.ph
  %i.jv = load ptr, ptr %1, align 8, !tbaa !12
  br label %.preheader556.us

.preheader556.us:                                 ; preds = %bb.bc, %.preheader556.lr.ph.split.us
  %.0323634.us = phi i64 [ 0, %.preheader556.lr.ph.split.us ], [ %i.ke, %bb.bc ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [88 x i8], ptr %i.jq, i64 %.0323634.us
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !40
  %i.jy = getelementptr [4 x i8], ptr %i.jv, i64 %i.jx
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bb
  %i.jz = add nuw nsw i64 %.0321630.us, 1         ; 2 uses
  %exitcond687.not = icmp eq i64 %i.jz, %i.z
  br i1 %exitcond687.not, label %.loopexit557, label %bb.bb, !llvm.loop !78

bb.bb:                                            ; preds = %.preheader556.us, %bb.ba
  %.0321630.us = phi i64 [ 0, %.preheader556.us ], [ %i.jz, %bb.ba ] ; 3 uses
  %i.ka = getelementptr [4 x i8], ptr %i.jy, i64 %.0321630.us
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !14
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.4, i64 %.0321630.us
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !14
  %.not380.us = icmp eq i32 %i.kb, %i.kd
  br i1 %.not380.us, label %bb.ba, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ke = add nuw i64 %.0323634.us, 1             ; 2 uses
  %exitcond688.not = icmp eq i64 %i.ke, %i.ju
  br i1 %exitcond688.not, label %.loopexit557.thread, label %.preheader556.us, !llvm.loop !79

.loopexit557:                                     ; preds = %bb.ba, %.preheader556.lr.ph
  %.2326 = phi i64 [ 0, %.preheader556.lr.ph ], [ %.0323634.us, %bb.ba ] ; 3 uses
  %i.kf = icmp eq i64 %.2326, %i.ju
  br i1 %i.kf, label %.loopexit557.thread, label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit

.loopexit557.thread:                              ; preds = %bb.bc, %.loopexit557
  %.2326844 = phi i64 [ %.2326, %.loopexit557 ], [ %i.ju, %bb.bc ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !98
  %.not.i435 = icmp eq ptr %i.jp, %i.kh
  br i1 %.not.i435, label %bb.be, label %bb.bd

.loopexit557.thread.thread:                       ; preds = %bb.az
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !98
  %.not.i435850 = icmp eq ptr %i.jp, %i.kj
  br i1 %.not.i435850, label %_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %.loopexit557.thread.thread, %.loopexit557.thread
  %.2326844852 = phi i64 [ 0, %.loopexit557.thread.thread ], [ %.2326844, %.loopexit557.thread ]
  store i64 %.10528, ptr %i.jp, align 8, !tbaa !41
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !41
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store i16 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !42
  %.sroa.8721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  store i64 0, ptr %.sroa.8721.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  store i16 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 34
  store i16 %.fr665, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.13730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  store i64 0, ptr %.sroa.13730.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 50
  store i16 %.fr665, ptr %.sroa.16.0..sroa_idx, align 2
  %.sroa.18739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 56
  store i64 0, ptr %.sroa.18739.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  store i16 0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 66
  store i16 %.fr665, ptr %.sroa.21.0..sroa_idx, align 2
  %.sroa.23748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  store i64 0, ptr %.sroa.23748.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  store i16 0, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jp, i64 82
  store i16 %.fr665, ptr %.sroa.26.0..sroa_idx, align 2
  %i.kk = load ptr, ptr %i.jo, align 8, !tbaa !30
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 88
  store ptr %i.kl, ptr %i.jo, align 8, !tbaa !30
  %.pre758.pre = load ptr, ptr %i.jn, align 8, !tbaa !31
  br label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit

bb.be:                                            ; preds = %.loopexit557.thread
  %i.km = icmp eq i64 %i.jt, 9223372036854775800
  br i1 %i.km, label %bb.bf, label %_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #13
          to label %.noexc438 unwind label %bb.bh

.noexc438:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.loopexit557.thread.thread, %bb.be
  %.2326844851855 = phi i64 [ %.2326844, %bb.be ], [ 0, %.loopexit557.thread.thread ]
  %i.kn = phi ptr [ %i.kg, %bb.be ], [ %i.ki, %.loopexit557.thread.thread ]
  %.sroa.speculated.i.i.i436 = tail call i64 @llvm.umax.i64(i64 %i.ju, i64 1)
  %i.ko = add nsw i64 %.sroa.speculated.i.i.i436, %i.ju ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.ju
  %i.kq = tail call i64 @llvm.umin.i64(i64 %i.ko, i64 104811045873349725)
  %i.kr = select i1 %i.kp, i64 104811045873349725, i64 %i.kq ; 3 uses
  %.not.i.i.i437 = icmp ne i64 %i.kr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i437)
  %i.ks = mul nuw nsw i64 %i.kr, 88
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #12
          to label %.noexc439 unwind label %bb.bh ; 6 uses

.noexc439:                                        ; preds = %_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.jt ; 15 uses
  store i64 %.10528, ptr %i.ku, align 8, !tbaa !41
  %.sroa.6.0..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx716, align 8, !tbaa !41
  %.sroa.7.0..sroa_idx718 = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store i16 0, ptr %.sroa.7.0..sroa_idx718, align 8, !tbaa !42
  %.sroa.8721.0..sroa_idx722 = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  store i64 0, ptr %.sroa.8721.0..sroa_idx722, align 8
  %.sroa.9.0..sroa_idx724 = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  store i16 0, ptr %.sroa.9.0..sroa_idx724, align 8
  %.sroa.11.0..sroa_idx726 = getelementptr inbounds nuw i8, ptr %i.ku, i64 34
  store i16 %.fr665, ptr %.sroa.11.0..sroa_idx726, align 2
  %.sroa.13730.0..sroa_idx731 = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  store i64 0, ptr %.sroa.13730.0..sroa_idx731, align 8
  %.sroa.14.0..sroa_idx733 = getelementptr inbounds nuw i8, ptr %i.ku, i64 48
  store i16 0, ptr %.sroa.14.0..sroa_idx733, align 8
  %.sroa.16.0..sroa_idx735 = getelementptr inbounds nuw i8, ptr %i.ku, i64 50
  store i16 %.fr665, ptr %.sroa.16.0..sroa_idx735, align 2
  %.sroa.18739.0..sroa_idx740 = getelementptr inbounds nuw i8, ptr %i.ku, i64 56
  store i64 0, ptr %.sroa.18739.0..sroa_idx740, align 8
  %.sroa.19.0..sroa_idx742 = getelementptr inbounds nuw i8, ptr %i.ku, i64 64
  store i16 0, ptr %.sroa.19.0..sroa_idx742, align 8
  %.sroa.21.0..sroa_idx744 = getelementptr inbounds nuw i8, ptr %i.ku, i64 66
  store i16 %.fr665, ptr %.sroa.21.0..sroa_idx744, align 2
  %.sroa.23748.0..sroa_idx749 = getelementptr inbounds nuw i8, ptr %i.ku, i64 72
  store i64 0, ptr %.sroa.23748.0..sroa_idx749, align 8
  %.sroa.24.0..sroa_idx751 = getelementptr inbounds nuw i8, ptr %i.ku, i64 80
  store i16 0, ptr %.sroa.24.0..sroa_idx751, align 8
  %.sroa.26.0..sroa_idx753 = getelementptr inbounds nuw i8, ptr %i.ku, i64 82
  store i16 %.fr665, ptr %.sroa.26.0..sroa_idx753, align 2
  br i1 %.not664, label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc439, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i ], [ %i.kt, %.noexc439 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i ], [ %i.jq, %.noexc439 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i.i.i, i64 88, i1 false), !tbaa.struct !44, !alias.scope !99
  %i.kv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 88 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kv, %i.jp
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !83

_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc439
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kt, %.noexc439 ], [ %i.kw, %.lr.ph.i.i.i.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 88
  %.not.i23.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.jt) #14
  br label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.kt, ptr %i.jn, align 8, !tbaa !31
  store ptr %i.kx, ptr %i.jo, align 8, !tbaa !30
  %i.ky = getelementptr inbounds nuw [88 x i8], ptr %i.kt, i64 %i.kr
  store ptr %i.ky, ptr %i.kn, align 8, !tbaa !98
  br label %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit

bb.bh:                                            ; preds = %_ZNKSt6vectorI20common_ngram_map_keySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.bf
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit: ; preds = %bb.bd, %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %.loopexit557
  %.2326843 = phi i64 [ %.2326, %.loopexit557 ], [ %.2326844851855, %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.2326844852, %bb.bd ] ; 7 uses
  %i.la = phi ptr [ %i.jq, %.loopexit557 ], [ %i.kt, %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.pre758.pre, %bb.bd ]
  %i.lb = getelementptr inbounds nuw [88 x i8], ptr %i.la, i64 %.2326843 ; 22 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 5 uses
  %i.ld = load i16, ptr %i.lc, align 8, !tbaa !100
  %i.le = tail call i16 @llvm.umin.i16(i16 %i.ld, i16 16379)
  %narrow = add nuw nsw i16 %i.le, 1              ; 2 uses
  store i16 %narrow, ptr %i.lc, align 8, !tbaa !100
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lg = load i8, ptr %i.lf, align 4, !tbaa !45, !range !36, !noundef !37
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.bi, label %bb.bu

bb.bi:                                            ; preds = %_ZNSt6vectorI20common_ngram_map_keySaIS0_EE9push_backERKS0_.exit
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 34
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !52
  %i.lk = sext i16 %i.lj to i32
  %.sroa.speculated481 = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.r) ; 2 uses
  %i.ll = icmp sgt i32 %.sroa.speculated481, 0
  br i1 %i.ll, label %.lr.ph662, label %._crit_edge663

.lr.ph662:                                        ; preds = %bb.bi
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.trip.count713 = zext nneg i32 %.sroa.speculated481 to i64
  %.pre761 = load ptr, ptr %i.lm, align 8, !tbaa !11
  %.pre762 = load ptr, ptr %i.ln, align 8, !tbaa !16
  br label %bb.bj

._crit_edge663:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit451, %bb.bi
end_hunk_1
