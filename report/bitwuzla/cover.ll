Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/cover?download=true
inline.NumInlined: 936
inline.NumDeleted: 312
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }
%"struct.CaDiCaL::Coveror" = type { %"class.std::vector.20", %"class.std::vector.20", %"class.std::vector.20", %"class.std::vector.20", i64, i64, %struct.anon.121 }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.anon.121 = type { i64, i64 }

$_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE = comdat any

$_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm = comdat any

$_ZN7CaDiCaL8Internal20cover_push_extensionEiRNS_7CoverorE = comdat any

$_ZN7CaDiCaL8Internal24covered_literal_additionEiRNS_7CoverorE = comdat any

$_ZN7CaDiCaL7CoverorD2Ev = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_SE_T0_T1_ = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_ = comdat any

$_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_SE_T0_SF_T1_T2_ = comdat any

$_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_ = comdat any

$_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_25clause_covered_or_smallerEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_SE_T0_SF_T1_ = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag = comdat any

$_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_SE_T0_SF_T1_SF_T2_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_ = comdat any

$_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_SE_T0_T1_ = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_T0_ = comdat any

$_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_SE_T0_SF_T1_T2_ = comdat any

$_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_T0_T1_ = comdat any

$_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_19clause_smaller_sizeEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_SE_T0_SF_T1_ = comdat any

$_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_19clause_smaller_sizeEEEEvT_SE_SE_T0_SF_T1_SF_T2_ = comdat any

@.str = private unnamed_addr constant [6 x i8] c"cover\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"covered clause elimination limit of %ld propagations\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"no previously untried clause left\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"scheduled %zd clauses %.0f%% with %ld untried %.0f%%\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"eliminated %ld covered clauses out of %zd tried %.0f%%\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"remaining %zu clauses %.0f%% untried\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"all scheduled clauses tried\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal26cover_propagate_asymmetricEiPNS_6ClauseERNS_7CoverorE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr nofree noundef readnone captures(address) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3944 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !165
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !165
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.e = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.f = tail call noundef i32 @llvm.fshl.i32(i32 %i.e, i32 %1, i32 1)
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !231  ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !231  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %4 = zext i32 %1 to i64                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit
  %.sroa.095.0212 = phi ptr [ %i.l, %bb.a ], [ %.sroa.095.3, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit ] ; 9 uses
  %.sroa.090.0211 = phi ptr [ %i.l, %bb.a ], [ %i.r, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit ] ; 4 uses
  %.not132.not = icmp ne ptr %.sroa.090.0211, %i.k ; 2 uses
  br i1 %.not132.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.090.0211, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.095.0212, i64 16 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.095.0212, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.090.0211, i64 16, i1 false), !tbaa.struct !169
  %.sroa.083.0.copyload = load ptr, ptr %.sroa.095.0212, align 8, !tbaa !167 ; 9 uses
  %.sroa.9.0..sroa.081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.095.0212, i64 8 ; 3 uses
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa.081.0..sroa_idx, align 8, !tbaa !168 ; 2 uses
  %.sroa.11.0..sroa.081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.095.0212, i64 12
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa.081.0..sroa_idx, align 4, !tbaa !168
  %i.t = icmp eq ptr %.sroa.083.0.copyload, %2
  br i1 %i.t, label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit, label %bb.d, !llvm.loop !223

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !171  ; 5 uses
  %i.v = sext i32 %.sroa.9.0.copyload to i64      ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !172   ; 2 uses
  %i.y = icmp sgt i8 %i.x, 0
  br i1 %i.y, label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit, label %bb.e, !llvm.loop !223

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 16
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.f, label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i32 %.sroa.11.0.copyload, 2
  br i1 %i.ac, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp slt i8 %i.x, 0
  br i1 %i.ad, label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = sub nsw i32 0, %.sroa.9.0.copyload      ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.u, i64 %i.af
  store i8 -1, ptr %i.ag, align 1, !tbaa !172
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !171
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.v
  store i8 1, ptr %i.ai, align 1, !tbaa !172
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !173 ; 4 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !174
  %.not.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !168
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.al, ptr %i.n, align 8, !tbaa !173
  br label %_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %3, align 8, !tbaa !175   ; 4 uses
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775804
  br i1 %i.aq, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ar = ashr exact i64 %i.ap, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 2305843009213693951)
  %i.av = select i1 %i.at, i64 2305843009213693951, i64 %i.au ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #14 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i32 %i.ae, ptr %i.ay, align 4, !tbaa !168
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.am, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ax, ptr %3, align 8, !tbaa !175
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !173
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bb, ptr %i.o, align 8, !tbaa !174
  br label %_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE.exit

_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE.exit: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.bc = load i64, ptr %i.p, align 8, !tbaa !178
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.p, align 8, !tbaa !178
  store i64 0, ptr %i.q, align 8, !tbaa !179
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

bb.n:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 24 ; 6 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !168
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 28 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !168
  %i.bi = xor i32 %i.bf, %i.bh
  %i.bj = xor i32 %i.bi, %1                       ; 4 uses
  store i32 %i.bj, ptr %i.be, align 8, !tbaa !168
  store i32 %1, ptr %i.bg, align 4, !tbaa !168
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.u, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !172 ; 2 uses
  %i.bn = icmp sgt i8 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.bj, ptr %.sroa.9.0..sroa.081.0..sroa_idx, align 8, !tbaa !233
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

bb.p:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !168 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 20 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !168 ; 3 uses
  %i.bu = sext i32 %i.bt to i64
  %.idx = shl nsw i64 %i.bu, 2
  %i.bv = getelementptr i8, ptr %i.be, i64 %.idx  ; 3 uses
  %.not74143 = icmp eq i32 %i.bt, %i.bp
  br i1 %.not74143, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.066144 = phi ptr [ %i.cb, %bb.q ], [ %i.bv, %bb.p ] ; 3 uses
  %i.bw = load i32, ptr %.066144, align 4, !tbaa !168 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.u, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !172 ; 2 uses
  %i.ca = icmp slt i8 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %.critedge5

bb.q:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.066144, i64 4 ; 2 uses
  %.not74 = icmp eq ptr %i.cb, %i.br
  br i1 %.not74, label %._crit_edge, label %.lr.ph, !llvm.loop !224

._crit_edge:                                      ; preds = %bb.q, %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 32 ; 2 uses
  %.not75145 = icmp eq i32 %i.bt, 2
  br i1 %.not75145, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %._crit_edge, %bb.r
  %.167146 = phi ptr [ %i.ci, %bb.r ], [ %i.cc, %._crit_edge ] ; 3 uses
  %i.cd = load i32, ptr %.167146, align 4, !tbaa !168 ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %i.u, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !172 ; 2 uses
  %i.ch = icmp slt i8 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %.critedge5

bb.r:                                             ; preds = %.lr.ph148
  %i.ci = getelementptr inbounds nuw i8, ptr %.167146, i64 4 ; 2 uses
  %.not75 = icmp eq ptr %i.ci, %i.bv
  br i1 %.not75, label %._crit_edge149, label %.lr.ph148, !llvm.loop !225

.critedge5:                                       ; preds = %.lr.ph, %.lr.ph148
  %.268 = phi ptr [ %.167146, %.lr.ph148 ], [ %.066144, %.lr.ph ] ; 2 uses
  %.365 = phi i8 [ %i.cg, %.lr.ph148 ], [ %i.bz, %.lr.ph ]
  %.361 = phi i32 [ %i.cd, %.lr.ph148 ], [ %i.bw, %.lr.ph ] ; 4 uses
  %i.cj = ptrtoint ptr %.268 to i64
  %i.ck = ptrtoint ptr %i.be to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = lshr exact i64 %i.cl, 2
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.bs, align 4, !tbaa !168
  %.not133 = icmp eq i8 %.365, 0
  br i1 %.not133, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge5
  store i32 %.361, ptr %.sroa.9.0..sroa.081.0..sroa_idx, align 8, !tbaa !233
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

bb.t:                                             ; preds = %.critedge5
  store i32 %.361, ptr %i.bg, align 4, !tbaa !168
  store i32 %1, ptr %.268, align 4, !tbaa !168
  %i.co = tail call noundef i32 @llvm.abs.i32(i32 %.361, i1 true)
  %i.cp = tail call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %.361, i32 1)
  %i.cq = zext i32 %i.cp to i64
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cq ; 4 uses
  %i.ct = load i32, ptr %i.bo, align 8, !tbaa !168
  %5 = freeze i32 %i.ct                           ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !181 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !182
  %.not.i.i.i = icmp eq ptr %i.cv, %i.cx
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %.sroa.083.0.copyload, ptr %i.cv, align 8, !tbaa !167
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %4
  store i64 %8, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.cy, ptr %i.cu, align 8, !tbaa !181
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

bb.v:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cs, align 8, !tbaa !183 ; 5 uses
  %i.da = ptrtoint ptr %i.cv to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775792
  br i1 %i.dd, label %bb.w, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #13
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.v
  %i.de = ashr exact i64 %i.dc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.di, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #14 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store ptr %.sroa.083.0.copyload, ptr %i.dl, align 8, !tbaa !167
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %9 = zext i32 %5 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or disjoint i64 %10, %4
  store i64 %11, ptr %.sroa.5.0..sroa_idx5.i, align 8
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cv
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dk, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cz, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !169, !alias.scope !234
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dm, %i.cv
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.dk, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cz) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.x, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.dk, ptr %i.cs, align 8, !tbaa !183
  store ptr %i.do, ptr %i.cu, align 8, !tbaa !181
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.dp, ptr %i.cw, align 8, !tbaa !182
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

._crit_edge149:                                   ; preds = %bb.r, %._crit_edge
  %.167.lcssa = phi ptr [ %i.cc, %._crit_edge ], [ %i.bv, %bb.r ]
  %i.dq = ptrtoint ptr %.167.lcssa to i64
  %i.dr = ptrtoint ptr %i.be to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = lshr exact i64 %i.ds, 2
  %i.du = trunc i64 %i.dt to i32
  store i32 %i.du, ptr %i.bs, align 4, !tbaa !168
  %.not77 = icmp eq i8 %i.bm, 0
  br i1 %.not77, label %bb.y, label %.critedge

bb.y:                                             ; preds = %._crit_edge149
  %i.dv = sub nsw i32 0, %i.bj
  tail call void @_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(128) %3)
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit: ; preds = %bb.o, %bb.s, %bb.y, %bb.u, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.e, %bb.d, %bb.g, %_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE.exit, %bb.c
  %.sroa.095.3 = phi ptr [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %i.s, %bb.g ], [ %i.s, %_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE.exit ], [ %.sroa.095.0212, %bb.e ], [ %i.s, %bb.o ], [ %.sroa.095.0212, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.s, %bb.y ], [ %i.s, %bb.s ], [ %.sroa.095.0212, %bb.u ] ; 2 uses
  %.6 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.g ], [ false, %_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE.exit ], [ false, %bb.e ], [ false, %bb.o ], [ false, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ false, %bb.y ], [ false, %bb.s ], [ false, %bb.u ]
  br i1 %.6, label %.critedge, label %bb.b

.critedge:                                        ; preds = %._crit_edge149, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit, %bb.b
  %.sroa.090.1 = phi ptr [ %i.r, %._crit_edge149 ], [ %i.r, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit ], [ %.sroa.090.0211, %bb.b ] ; 3 uses
  %.sroa.095.4 = phi ptr [ %i.s, %._crit_edge149 ], [ %.sroa.095.3, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit ], [ %.sroa.095.0212, %bb.b ] ; 3 uses
  %.not134 = icmp eq ptr %.sroa.095.4, %.sroa.090.1
  br i1 %.not134, label %bb.z, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.not135150 = icmp eq ptr %.sroa.090.1, %i.k
  br i1 %.not135150, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader, %.lr.ph153
  %.sroa.095.5152 = phi ptr [ %i.dx, %.lr.ph153 ], [ %.sroa.095.4, %.preheader ] ; 2 uses
  %.sroa.090.2151 = phi ptr [ %i.dw, %.lr.ph153 ], [ %.sroa.090.1, %.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.090.2151, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.095.5152, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.095.5152, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.090.2151, i64 16, i1 false), !tbaa.struct !169
  %.not135 = icmp eq ptr %i.dw, %i.k
  br i1 %.not135, label %._crit_edge154, label %.lr.ph153, !llvm.loop !229

._crit_edge154:                                   ; preds = %.lr.ph153, %.preheader
  %.sroa.095.5.lcssa = phi ptr [ %.sroa.095.4, %.preheader ], [ %i.dx, %.lr.ph153 ]
  %i.dy = load ptr, ptr %i.i, align 8, !tbaa !231
  %i.dz = ptrtoint ptr %.sroa.095.5.lcssa to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  tail call void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ec)
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge154, %.critedge
  ret i1 %.not132.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL8Internal27asymmetric_literal_additionEiRNS_7CoverorE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  store i8 -1, ptr %i.d, align 1, !tbaa !172
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.f = sub nsw i32 0, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  store i8 1, ptr %i.h, align 1, !tbaa !172
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !173  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !174
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.j, align 4, !tbaa !168
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.m, ptr %i.i, align 8, !tbaa !173
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !175    ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951)
  %i.w = select i1 %i.u, i64 2305843009213693951, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #14 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store i32 %1, ptr %i.z, align 4, !tbaa !168
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.y, ptr %2, align 8, !tbaa !175
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !173
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !174
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !178
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !178
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 0, ptr %i.ag, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !183    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
end_hunk_0
