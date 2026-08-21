Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/condition?download=true
inline.NumInlined: 658
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::nothrow_t" = type { i8 }

$_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm = comdat any

$_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_SE_T0_T1_ = comdat any

$_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_ = comdat any

$_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_SE_T0_SF_T1_T2_ = comdat any

$_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_ = comdat any

$_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_16less_conditionedEEEEvT_SE_T0_T1_T2_ = comdat any

$_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_SE_T0_SF_T1_ = comdat any

$_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag = comdat any

$_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_SE_T0_SF_T1_SF_T2_ = comdat any

$_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal12conditioningEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !154, !range !155, !noundef !156
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3532
  %i.g = load i32, ptr %i.f, align 4
  %.not7 = icmp ne i32 %i.g, 0
  %or.cond.not = select i1 %i.e, i1 true, i1 %.not7
  br i1 %or.cond.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.i = load i64, ptr %i.h, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.k = load i64, ptr %i.j, align 8, !tbaa !158
  %i.l = icmp sgt i64 %i.i, %i.k
  br i1 %i.l, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.n = load i32, ptr %i.m, align 4, !tbaa !159  ; 2 uses
  %.not8 = icmp eq i32 %i.n, 0
  br i1 %.not8, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sitofp i32 %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.q = load double, ptr %i.p, align 8, !tbaa !160
  %i.r = fcmp ult double %i.q, %i.o
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.t = load i64, ptr %i.s, align 8, !tbaa !161  ; 2 uses
  %.not9 = icmp eq i64 %i.t, 0
  br i1 %.not9, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5536
  %i.v = load i64, ptr %i.u, align 8, !tbaa !162
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %.not10 = icmp eq i32 %i.w, 0
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sitofp i32 %i.w to double
  %i.y = sitofp i64 %i.t to double
  %i.z = fdiv double %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3324
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !163
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fcmp ole double %i.z, %i.ac
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.a ], [ %i.ad, %bb.h ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal18condition_unassignEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  store i8 0, ptr %i.d, align 1, !tbaa !165
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.f = sub nsw i32 0, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  store i8 0, ptr %i.h, align 1, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal16condition_assignEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c
  store i8 1, ptr %i.d, align 1, !tbaa !165
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.f = sub nsw i32 0, %1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  store i8 -1, ptr %i.h, align 1, !tbaa !165
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7CaDiCaL8Internal15condition_roundEl(ptr noundef nonnull align 8 dereferenceable(5704) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !166
  %.0239 = tail call i64 @llvm.sadd.sat.i64(i64 %1, i64 %i.b) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !159  ; 4 uses
  tail call void @_ZN7CaDiCaL8Internal15protect_reasonsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5688 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169, !nonnull !156, !align !170
  %i.o = load i32, ptr %i.n, align 4, !tbaa !171  ; 2 uses
  %.not6481026 = icmp eq i32 %i.o, 0
  br i1 %.not6481026, label %._crit_edge1033, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.v = add nsw i32 %i.l, 1
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !169
  %.pre1376 = load i32, ptr %.pre, align 4, !tbaa !171 ; 2 uses
  %.not6491028 = icmp eq i32 %.pre1376, 0
  br i1 %.not6491028, label %._crit_edge1033, label %.lr.ph1032

.lr.ph1032:                                       ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !164
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %bb.q

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.0570.01027 = phi i32 [ 1, %.lr.ph ], [ %4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %2 = load ptr, ptr %i.p, align 8, !tbaa !164    ; 2 uses
  %3 = sext i32 %.sroa.0570.01027 to i64
  %i.z = getelementptr inbounds i8, ptr %2, i64 %3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !165  ; 2 uses
  %i.ab = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.0570.01027, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 7 uses
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !172
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %.not375 = icmp eq i8 %i.aa, 0
  br i1 %.not375, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !173
  %.not376 = icmp eq i32 %i.af, 0
  br i1 %.not376, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp slt i8 %i.aa, 0
  %i.ah = sub nsw i32 0, %.sroa.0570.01027
  %i.ai = select i1 %i.ag, i32 %i.ah, i32 %.sroa.0570.01027 ; 4 uses
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !175
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ac
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = and i32 %i.al, 117440512
  %i.an = icmp eq i32 %i.am, 16777216
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = sext i32 %i.ai to i64
  %i.ap = getelementptr inbounds i8, ptr %2, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !165
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.ar = sub nsw i32 0, %i.ai
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !165
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !176
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !177 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 2
  %i.ba = icmp ugt i64 %i.az, %i.ac
  br i1 %i.ba, label %_ZN7CaDiCaL8Internal6frozenEi.exit, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN7CaDiCaL8Internal6frozenEi.exit:               ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ac
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !171
  %.not662 = icmp eq i32 %i.bc, 0
  br i1 %.not662, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.be = sext i32 %i.ai to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !165
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.bh = sub nsw i32 0, %i.ai
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.b
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !176
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !177 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  %i.bq = icmp ugt i64 %i.bp, %i.ac
  br i1 %i.bq, label %_ZN7CaDiCaL8Internal6frozenEi.exit388, label %_ZN7CaDiCaL8Internal6frozenEi.exit388.thread

_ZN7CaDiCaL8Internal6frozenEi.exit388:            ; preds = %bb.h
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ac
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !171
  %.not663 = icmp eq i32 %i.bs, 0
  br i1 %.not663, label %_ZN7CaDiCaL8Internal6frozenEi.exit388.thread, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZN7CaDiCaL8Internal6frozenEi.exit388.thread:     ; preds = %bb.h, %_ZN7CaDiCaL8Internal6frozenEi.exit388
  %i.bt = load ptr, ptr %i.r, align 8, !tbaa !175
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ac
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = and i32 %i.bv, 117440512
  %i.bx = icmp eq i32 %i.bw, 16777216
  br i1 %i.bx, label %bb.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit388.thread
  %i.by = load i32, ptr %i.k, align 4, !tbaa !159
  %i.bz = icmp eq i32 %i.l, %i.by
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.v, ptr %i.k, align 4, !tbaa !159
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ca = tail call noundef i32 @_ZN7CaDiCaL8Internal12decide_phaseEib(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %.sroa.0570.01027, i1 noundef zeroext true) ; 4 uses
  %i.cb = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 %i.cc
  store i8 1, ptr %i.cd, align 1, !tbaa !165
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.cf = sub nsw i32 0, %i.ca
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 %i.cg
  store i8 -1, ptr %i.ch, align 1, !tbaa !165
  %i.ci = load i32, ptr %i.k, align 4, !tbaa !159
  store i32 %i.ci, ptr %i.ae, align 8, !tbaa !173
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !167 ; 4 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !178
  %.not.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ca, ptr %i.cj, align 4, !tbaa !171
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store ptr %i.cl, ptr %i.d, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.m:                                             ; preds = %bb.k
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !168 ; 4 uses
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cr = ashr exact i64 %i.cp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 2305843009213693951)
  %i.cv = select i1 %i.ct, i64 2305843009213693951, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 2
  %i.cx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #14 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i32 %i.ca, ptr %i.cy, align 4, !tbaa !171
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cx, ptr align 4 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %.not.i17.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cm) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !168
  store ptr %i.da, ptr %i.d, align 8, !tbaa !167
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.db, ptr %i.u, align 8, !tbaa !178
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.l, %_ZN7CaDiCaL8Internal6frozenEi.exit, %bb.g, %_ZN7CaDiCaL8Internal6frozenEi.exit388, %_ZN7CaDiCaL8Internal6frozenEi.exit388.thread, %bb.c
  %4 = add i32 %.sroa.0570.01027, 1
  %.not648 = icmp eq i32 %.sroa.0570.01027, %i.o
  br i1 %.not648, label %._crit_edge, label %bb.b

._crit_edge1033:                                  ; preds = %bb.s, %bb.a, %._crit_edge
  %.sroa.0197.0.lcssa = phi i64 [ 0, %._crit_edge ], [ 0, %bb.a ], [ %.sroa.0197.1, %bb.s ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !179
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !180
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = add nsw i64 %i.dj, 1
  tail call void @_ZN7CaDiCaL8Internal9init_occsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !181 ; 2 uses
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !181 ; 2 uses
  %.not6501052 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not6501052, label %._crit_edge1066, label %.lr.ph1065

.lr.ph1065:                                       ; preds = %._crit_edge1033
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph1032, %bb.s
  %.sroa.0197.01030.a = phi i64 [ 0, %.lr.ph1032 ], [ %.sroa.0197.1, %bb.s ] ; 2 uses
  %.sroa.0564.01029 = phi i32 [ 1, %.lr.ph1032 ], [ %6, %bb.s ] ; 4 uses
  %5 = sext i32 %.sroa.0564.01029 to i64
  %i.dr = getelementptr inbounds i8, ptr %i.x, i64 %5
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !165
  %.not373 = icmp eq i8 %i.ds, 0
  br i1 %.not373, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.0564.01029, i1 true)
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = load ptr, ptr %i.y, align 8, !tbaa !172
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !173
  %.not374 = icmp ne i32 %i.dx, 0
  %i.dy = zext i1 %.not374 to i64
  %spec.select386 = add i64 %.sroa.0197.01030.a, %i.dy
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0197.1 = phi i64 [ %spec.select386, %bb.r ], [ %.sroa.0197.01030.a, %bb.q ] ; 2 uses
  %6 = add i32 %.sroa.0564.01029, 1
  %.not649 = icmp eq i32 %.sroa.0564.01029, %.pre1376
  br i1 %.not649, label %._crit_edge1033, label %bb.q

._crit_edge1066.loopexit:                         ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread
  %i.dz = icmp ne i64 %.3278, 0
  %i.ea = icmp eq ptr %.sroa.19.2, %.sroa.0533.2
  br label %._crit_edge1066

._crit_edge1066:                                  ; preds = %._crit_edge1066.loopexit, %._crit_edge1033
  %.sroa.0544.0.lcssa = phi ptr [ null, %._crit_edge1033 ], [ %.sroa.0544.3, %._crit_edge1066.loopexit ] ; 3 uses
  %.sroa.17.0573.lcssa = phi ptr [ null, %._crit_edge1033 ], [ %.sroa.17.3574, %._crit_edge1066.loopexit ] ; 2 uses
  %.sroa.30.0.lcssa = phi ptr [ null, %._crit_edge1033 ], [ %.sroa.30.3, %._crit_edge1066.loopexit ] ; 2 uses
  %.sroa.0533.0.lcssa = phi ptr [ null, %._crit_edge1033 ], [ %.sroa.0533.2, %._crit_edge1066.loopexit ] ; 24 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %._crit_edge1033 ], [ %.sroa.13.2, %._crit_edge1066.loopexit ] ; 9 uses
  %.sroa.19.0.lcssa = phi i1 [ true, %._crit_edge1033 ], [ %i.ea, %._crit_edge1066.loopexit ]
  %.sroa.17.0.lcssa = phi i64 [ %.sroa.0197.0.lcssa, %._crit_edge1033 ], [ %.sroa.17.3, %._crit_edge1066.loopexit ] ; 3 uses
  %.sroa.10.0.lcssa = phi i64 [ 0, %._crit_edge1033 ], [ %.sroa.10.3, %._crit_edge1066.loopexit ] ; 4 uses
  %.0279.lcssa = phi i64 [ 0, %._crit_edge1033 ], [ %.3282, %._crit_edge1066.loopexit ] ; 2 uses
  %.0275.lcssa = phi i1 [ false, %._crit_edge1033 ], [ %i.dz, %._crit_edge1066.loopexit ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4072 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !182
  %i.ed = add i64 %i.ec, %.sroa.0197.0.lcssa
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !182
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 4128 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !183
  %i.eg = add i64 %i.ef, %.sroa.10.0.lcssa
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !183
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !184
  %i.ej = add i64 %i.ei, %.sroa.17.0.lcssa
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !184
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 5536
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !162
  %sext = shl i64 %i.el, 32
  %i.em = ashr exact i64 %sext, 32
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !185
  %i.ep = add nsw i64 %i.em, %i.eo
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !185
  %i.eq = load ptr, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !186 ; 2 uses
  %.not6511077 = icmp eq ptr %i.eq, %i.er
  br i1 %.not6511077, label %._crit_edge1081, label %.lr.ph1080

.lr.ph1080:                                       ; preds = %._crit_edge1066
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %bb.at

bb.t:                                             ; preds = %.lr.ph1065, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread
  %.02751063 = phi i64 [ 0, %.lr.ph1065 ], [ %.3278, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 5 uses
  %.02791062 = phi i64 [ 0, %.lr.ph1065 ], [ %.3282, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 5 uses
  %.sroa.10.01061 = phi i64 [ 0, %.lr.ph1065 ], [ %.sroa.10.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 7 uses
  %.sroa.17.01060 = phi i64 [ %.sroa.0197.0.lcssa, %.lr.ph1065 ], [ %.sroa.17.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 7 uses
  %.sroa.0530.01059 = phi ptr [ %i.dl, %.lr.ph1065 ], [ %i.jw, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 6 uses
  %.sroa.19.01058 = phi ptr [ null, %.lr.ph1065 ], [ %.sroa.19.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 7 uses
  %.sroa.13.01057 = phi ptr [ null, %.lr.ph1065 ], [ %.sroa.13.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 7 uses
  %.sroa.0533.01056 = phi ptr [ null, %.lr.ph1065 ], [ %.sroa.0533.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 13 uses
  %.sroa.30.01055 = phi ptr [ null, %.lr.ph1065 ], [ %.sroa.30.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 8 uses
  %.sroa.17.05731054 = phi ptr [ null, %.lr.ph1065 ], [ %.sroa.17.3574, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 8 uses
  %.sroa.0544.01053 = phi ptr [ null, %.lr.ph1065 ], [ %.sroa.0544.3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread ] ; 12 uses
  %i.eu = load ptr, ptr %.sroa.0530.01059, align 8, !tbaa !187 ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = and i32 %i.ew, 2064
  %or.cond387 = icmp eq i32 %i.ex, 0
  br i1 %or.cond387, label %bb.u, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread

bb.u:                                             ; preds = %bb.t
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !171 ; 3 uses
  %i.fb = sext i32 %i.fa to i64
  %.idx2133 = shl nsw i64 %i.fb, 2
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %.idx2133 ; 3 uses
  %.not358206320712080 = icmp eq i32 %i.fa, 0
  br i1 %.not358206320712080, label %.critedge, label %.lr.ph2065.lr.ph.preheader

.lr.ph2065.lr.ph.preheader:                       ; preds = %bb.u
  %i.fd = load ptr, ptr %i.dn, align 8, !tbaa !164
  br label %.lr.ph2065.lr.ph

.lr.ph2065.lr.ph:                                 ; preds = %.lr.ph2065.lr.ph.preheader, %.split1434
  %.02731034.ph2085 = phi i32 [ %i.gd, %.split1434 ], [ 0, %.lr.ph2065.lr.ph.preheader ] ; 3 uses
  %.02711035.ph2084 = phi i32 [ %.02711035.ph14832073, %.split1434 ], [ 0, %.lr.ph2065.lr.ph.preheader ]
  %.02681036.ph2083 = phi i32 [ %spec.select, %.split1434 ], [ 0, %.lr.ph2065.lr.ph.preheader ] ; 3 uses
  %.02651037.ph2082 = phi i64 [ %spec.select378, %.split1434 ], [ %i.dk, %.lr.ph2065.lr.ph.preheader ] ; 2 uses
  %.02621038.ph2081 = phi ptr [ %i.ge, %.split1434 ], [ %i.ey, %.lr.ph2065.lr.ph.preheader ]
  br label %.lr.ph2065

.lr.ph2065:                                       ; preds = %.lr.ph2065.lr.ph, %.split1433
  %.02711035.ph14832073 = phi i32 [ %.02711035.ph2084, %.lr.ph2065.lr.ph ], [ %i.fp, %.split1433 ] ; 4 uses
  %.02621038.ph14822072 = phi ptr [ %.02621038.ph2081, %.lr.ph2065.lr.ph ], [ %i.fq, %.split1433 ]
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2065, %.backedge
  %.026210382064 = phi ptr [ %.02621038.ph14822072, %.lr.ph2065 ], [ %.02621038.be, %.backedge ] ; 4 uses
  %i.fe = load i32, ptr %.026210382064, align 4, !tbaa !171 ; 4 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !165 ; 3 uses
  %.not359 = icmp eq i8 %i.fh, 0
  br i1 %.not359, label %.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = tail call noundef i32 @llvm.abs.i32(i32 %i.fe, i1 true) ; 2 uses
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = load ptr, ptr %i.do, align 8, !tbaa !172
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fj
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !173
  %.not360 = icmp eq i32 %i.fm, 0
  br i1 %.not360, label %.split1435, label %bb.x

.split1435:                                       ; preds = %bb.w
  %i.fn = icmp sgt i8 %i.fh, 0
  br i1 %i.fn, label %.critedge377, label %.backedge

.backedge:                                        ; preds = %bb.v, %.split1435
  %.02621038.be = getelementptr inbounds nuw i8, ptr %.026210382064, i64 4 ; 2 uses
  %.not358 = icmp eq ptr %.02621038.be, %i.fc
  br i1 %.not358, label %.critedge, label %bb.v, !llvm.loop !188

bb.x:                                             ; preds = %bb.w
  %i.fo = icmp slt i8 %i.fh, 0
  br i1 %i.fo, label %.split1433, label %.split1434

.split1433:                                       ; preds = %bb.x
  %i.fp = add nsw i32 %.02711035.ph14832073, 1    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.026210382064, i64 4 ; 2 uses
  %.not3582063 = icmp eq ptr %i.fq, %i.fc
  br i1 %.not3582063, label %.critedge, label %.lr.ph2065, !llvm.loop !188

.split1434:                                       ; preds = %bb.x
  %i.fr = tail call noundef i32 @llvm.fshl.i32(i32 %i.fi, i32 %i.fe, i32 1)
  %i.fs = zext i32 %i.fr to i64
  %i.ft = load ptr, ptr %i.dp, align 8, !tbaa !190
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.fs ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !179
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !180
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 3                 ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %.02651037.ph2082
  %spec.select = select i1 %i.gc, i32 %i.fe, i32 %.02681036.ph2083 ; 2 uses
  %spec.select378 = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 %.02651037.ph2082)
  %i.gd = add nuw nsw i32 %.02731034.ph2085, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.026210382064, i64 4 ; 2 uses
  %.not35820632071 = icmp eq ptr %i.ge, %i.fc
  br i1 %.not35820632071, label %.critedge, label %.lr.ph2065.lr.ph, !llvm.loop !188

.critedge377:                                     ; preds = %.split1435
  invoke void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull %i.eu)
          to label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403.thread unwind label %.loopexit689

.loopexit689:                                     ; preds = %.critedge377, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit691 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit464

.loopexit.split-lp690:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp692 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit464

.critedge:                                        ; preds = %.split1434, %.split1433, %.backedge, %bb.u
  %.02681036.ph.lcssa = phi i32 [ %.02681036.ph2083, %.split1433 ], [ %.02681036.ph2083, %.backedge ], [ 0, %bb.u ], [ %spec.select, %.split1434 ] ; 2 uses
  %.02731034.ph.lcssa = phi i32 [ %.02731034.ph2085, %.split1433 ], [ %.02731034.ph2085, %.backedge ], [ 0, %bb.u ], [ 1, %.split1434 ]
  %.02711035.ph1483.lcssa = phi i32 [ %i.fp, %.split1433 ], [ %.02711035.ph14832073, %.backedge ], [ 0, %bb.u ], [ %.02711035.ph14832073, %.split1434 ] ; 2 uses
  %.not1773 = icmp eq i32 %.02731034.ph.lcssa, 0
  br i1 %.not1773, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit403, label %bb.y

bb.y:                                             ; preds = %.critedge
  %.not.i389 = icmp eq ptr %.sroa.13.01057, %.sroa.19.01058
  br i1 %.not.i389, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.eu, ptr %.sroa.13.01057, align 8, !tbaa !187
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.aa:                                            ; preds = %bb.y
  %i.gf = ptrtoint ptr %.sroa.19.01058 to i64
  %i.gg = ptrtoint ptr %.sroa.0533.01056 to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 5 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.ab, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
          to label %.noexc unwind label %.loopexit.split-lp690

.noexc:                                           ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.gj = ashr exact i64 %i.gh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i390 = tail call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i390, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.umin.i64(i64 %i.gk, i64 1152921504606846975)
end_hunk_0
