Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/hash_instantiated_test?download=true
inline.NumInlined: 29463
inline.NumDeleted: 10401
loop-unroll.NumCompletelyUnrolled: 582
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 594
begin_hunk_0_@_ZNSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EE19_M_range_initializeIPKS2_EEvT_S8_St20forward_iterator_tag:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.aj, align 8, !tbaa !3309
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_117UnorderedSequenceIiEEEvT_S4_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_117UnorderedSequenceIiEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN12_GLOBAL__N_117UnorderedSequenceIiEEEvPT_.exit.i
  %.06.i = phi ptr [ %i.e, %_ZSt8_DestroyIN12_GLOBAL__N_117UnorderedSequenceIiEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %.0.val.i = load ptr, ptr %.06.i, align 8, !tbaa !1454 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN12_GLOBAL__N_117UnorderedSequenceIiEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = getelementptr i8, ptr %.06.i, i64 16
  %.0.val4.i = load ptr, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.0.val4.i to i64
  %i.c = ptrtoint ptr %.0.val.i to i64
  %i.d = sub i64 %i.b, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.val.i, i64 noundef %i.d) #33
  br label %_ZSt8_DestroyIN12_GLOBAL__N_117UnorderedSequenceIiEEEvPT_.exit.i

_ZSt8_DestroyIN12_GLOBAL__N_117UnorderedSequenceIiEEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_117UnorderedSequenceIiEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !3310

_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_117UnorderedSequenceIiEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_117UnorderedSequenceIiEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 8 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 8 uses
  %22 = alloca %"class.testing::Message", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 8 uses
  %28 = alloca %"class.testing::Message", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 8 uses
  %31 = alloca %"class.testing::Message", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 8 uses
  %34 = alloca %"class.testing::Message", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 8 uses
  %37 = alloca %"class.testing::Message", align 8 ; 8 uses
  %38 = alloca %"class.testing::Message", align 8 ; 8 uses
  %39 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %40 = alloca %"class.std::vector.613", align 8  ; 14 uses
  %41 = alloca %"class.std::optional", align 8    ; 17 uses
  %42 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 12 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %45 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 15 uses
  %46 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  %47 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 10 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 10 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  %55 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 14 uses
  %56 = alloca %"class.testing::AssertionResult", align 8 ; 14 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %.not59 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not59, label %.critedge172.thread, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %bb.bb
  %.val181 = phi ptr [ null, %.lr.ph62 ], [ %.val18188, %bb.bb ] ; 9 uses
  %.012061 = phi i64 [ 0, %.lr.ph62 ], [ %i.fa, %bb.bb ] ; 3 uses
  %.sroa.014.060 = phi ptr [ %.0.val, %.lr.ph62 ], [ %i.im, %bb.bb ] ; 4 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !3312 ; 8 uses
  %.not3056 = icmp eq ptr %.val181, %.val184      ; 3 uses
  br i1 %.not3056, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.060, align 8, !tbaa !3298 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !1454 ; 4 uses
  %i.m = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.m, align 8, !tbaa !1457 ; 6 uses
  %i.n = ptrtoint ptr %.val195.val197 to i64      ; 4 uses
  %i.o = ptrtoint ptr %.val195.val to i64
  %i.p = sub i64 %i.n, %i.o
  %.not4952.i = icmp eq ptr %.val195.val, %.val195.val197
  %i.q = add i64 %i.n, -4
  %i.r = add i64 %i.n, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit
  %.sroa.012.057 = phi ptr [ %.val181, %.lr.ph ], [ %i.df, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.057, align 8, !tbaa !3314
  %i.s = load ptr, ptr %.val194, align 8, !tbaa !3317, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.s, align 8, !tbaa !3298 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !1454 ; 3 uses
  %i.t = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.t, align 8, !tbaa !1457
  %i.u = ptrtoint ptr %.val196.val198 to i64
  %i.v = ptrtoint ptr %.val196.val to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp eq i64 %i.p, %i.w
  br i1 %i.x, label %bb.d, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit

bb.d:                                             ; preds = %bb.c
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.038.054.i = phi ptr [ %i.ac, %bb.e ], [ %.val196.val, %bb.d ] ; 3 uses
  %.sroa.042.053.i = phi ptr [ %i.ab, %bb.e ], [ %.val195.val, %bb.d ] ; 3 uses
  %i.y = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !211
  %i.z = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !211
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ab, %.val195.val197
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3320

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.042.0.lcssa.i = phi ptr [ %.val195.val, %bb.d ], [ %i.ab, %bb.e ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.val196.val, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.ad = icmp eq ptr %.sroa.042.0.lcssa.i, %.val195.val197
  br i1 %i.ad, label %.loopexit32, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.ae = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.af = sub i64 %i.n, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.af
  %i.ah = sub i64 %i.r, %i.ae                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check358 = icmp ult i64 %i.ah, 12
  %n.vec360 = and i64 %i.aj, 9223372036854775804  ; 3 uses
  %i.ak = shl i64 %n.vec360, 2
  %i.al = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.ak
  %cmp.n373 = icmp eq i64 %i.aj, %n.vec360
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.de, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.am = shl i64 %indvar, 2
  %i.an = add i64 %i.am, %i.ae
  %i.ao = sub i64 %i.q, %i.an                     ; 2 uses
  %65 = lshr i64 %i.ao, 2
  %66 = add nuw nsw i64 %65, 1                    ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.aq = sub i64 %i.ap, %i.ae                    ; 3 uses
  %i.ar = ashr i64 %i.aq, 4                       ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.f
  %i.at = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.au = and i64 %i.aq, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.au ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i826 ], [ %i.bh, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bg, %bb.k ] ; 9 uses
  %i.av = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.aw = icmp eq i32 %i.av, %i.at
  br i1 %i.aw, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !211
  %i.az = icmp eq i32 %i.ay, %i.at
  br i1 %i.az, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !211
  %i.bc = icmp eq i32 %i.bb, %i.at
  br i1 %i.bc, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !211
  %i.bf = icmp eq i32 %i.be, %i.at
  br i1 %i.bf, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bh = add nsw i64 %.052.i.i.i, -1
  %i.bi = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bi, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3321

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ap, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aq, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bj = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bj, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.p

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bk = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.bl = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.bo = phi i32 [ %i.bl, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bn, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.bp = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.bq = icmp eq i32 %i.bp, %i.bo
  br i1 %i.bq, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.bs = phi i32 [ %i.bo, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.br, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bt = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.bu = icmp eq i32 %i.bt, %i.bs
  %spec.select.i.i.i = select i1 %i.bu, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333: ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335: ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bx, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335 ], [ %i.bw, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333 ], [ %i.bv, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.by = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check358, label %scalar.ph357.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %bb.q
  %broadcast.splatinsert361 = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat362 = shufflevector <2 x i32> %broadcast.splatinsert361, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph359
  %index364 = phi i64 [ 0, %vector.ph359 ], [ %index.next370, %vector.body363 ] ; 2 uses
  %vec.phi365 = phi <2 x i64> [ zeroinitializer, %vector.ph359 ], [ %i.cf, %vector.body363 ]
  %vec.phi366 = phi <2 x i64> [ zeroinitializer, %vector.ph359 ], [ %i.cg, %vector.body363 ]
  %i.bz = shl i64 %index364, 2
  %next.gep367 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep367, i64 8
  %wide.load368 = load <2 x i32>, ptr %next.gep367, align 4, !tbaa !211
  %wide.load369 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !211
  %i.cb = icmp eq <2 x i32> %wide.load368, %broadcast.splat362
  %i.cc = icmp eq <2 x i32> %wide.load369, %broadcast.splat362
  %i.cd = zext <2 x i1> %i.cb to <2 x i64>
  %i.ce = zext <2 x i1> %i.cc to <2 x i64>
  %i.cf = add <2 x i64> %vec.phi365, %i.cd        ; 2 uses
  %i.cg = add <2 x i64> %vec.phi366, %i.ce        ; 2 uses
  %index.next370 = add nuw i64 %index364, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next370, %n.vec360
  br i1 %i.ch, label %middle.block371, label %vector.body363, !llvm.loop !3322

middle.block371:                                  ; preds = %vector.body363
  %bin.rdx372 = add <2 x i64> %i.cg, %i.cf
  %i.ci = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx372) ; 2 uses
  br i1 %cmp.n373, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph357.preheader

scalar.ph357.preheader:                           ; preds = %bb.q, %middle.block371
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.ci, %middle.block371 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.al, %middle.block371 ]
  br label %scalar.ph357

scalar.ph357:                                     ; preds = %scalar.ph357.preheader, %scalar.ph357
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph357 ], [ %.07.i.i.ph, %scalar.ph357.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cm, %scalar.ph357 ], [ %.sroa.03.06.i.i.ph, %scalar.ph357.preheader ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.ck = icmp eq i32 %i.cj, %i.by
  %i.cl = zext i1 %i.ck to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.cl ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cm, %i.ag
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph357, !llvm.loop !3325

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph357, %middle.block371
  %spec.select.i.i.lcssa = phi i64 [ %i.ci, %middle.block371 ], [ %spec.select.i.i, %scalar.ph357 ] ; 2 uses
  %i.cn = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cn, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.ao, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader382, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %66, 9223372036854775804       ; 3 uses
  %i.co = shl i64 %n.vec, 2
  %i.cp = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.co
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi355 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %i.cq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load356 = load <2 x i32>, ptr %i.cr, align 4, !tbaa !211
  %i.cs = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.ct = icmp eq <2 x i32> %wide.load356, %broadcast.splat
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = zext <2 x i1> %i.ct to <2 x i64>
  %i.cw = add <2 x i64> %vec.phi, %i.cu           ; 2 uses
  %i.cx = add <2 x i64> %vec.phi355, %i.cv        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !3326

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cx, %i.cw
  %i.cz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %66, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader382

.lr.ph.i26.i.preheader382:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.cz, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader382, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader382 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dd, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader382 ] ; 2 uses
  %i.da = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.db = icmp eq i32 %i.da, %i.by
  %i.dc = zext i1 %i.db to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.dc ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dd, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !3327

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.cz, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.de, %.val195.val197
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit32, label %bb.f, !llvm.loop !3328

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.057, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.df, %.val184
  br i1 %.not30, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, %bb.b
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !3329
  %.not.i = icmp eq ptr %.val184, %i.dg
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dh, ptr %i.c, align 8, !tbaa !3331
  br label %.loopexit32

bb.s:                                             ; preds = %.thread
  %i.di = ptrtoint ptr %.val184 to i64
  %i.dj = ptrtoint ptr %.val181 to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 4 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %bb.t, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.dm = sdiv exact i64 %i.dk, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3056, i64 1, i64 %i.dm
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 384307168202282325)
  %i.dq = select i1 %i.do, i64 384307168202282325, i64 %i.dp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dr = mul nuw nsw i64 %i.dq, 24
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #35
          to label %.noexc258 unwind label %.loopexit34 ; 6 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  br i1 %.not3056, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %i.ds, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.val181, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  call void @llvm.experimental.noalias.scope.decl(metadata !3335)
  %i.du = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !3337, !alias.scope !3335, !noalias !3332
  store <2 x ptr> %i.du, ptr %.03.i.i.i.i.i, align 8, !tbaa !3337, !alias.scope !3332, !noalias !3335
  %i.dv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !3338, !alias.scope !3335, !noalias !3332
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !3338, !alias.scope !3332, !noalias !3335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3335, !noalias !3332
  %i.dy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dy, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3339

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ds, %.noexc258 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val181, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val181, i64 noundef %i.dk) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i
  store ptr %i.ds, ptr %40, align 8, !tbaa !3340
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !3331
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.eb, ptr %i.d, align 8, !tbaa !3329
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit32:                                      ; preds = %._crit_edge.i, %.critedge.i, %bb.r, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i
  %.val18189 = phi ptr [ %.val181, %.critedge.i ], [ %.val181, %bb.r ], [ %i.ds, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i ], [ %.val181, %._crit_edge.i ]
  %.3109 = phi ptr [ %.sroa.012.057, %.critedge.i ], [ %.val184, %bb.r ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i ], [ %.sroa.012.057, %._crit_edge.i ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !3341 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !3338
  %.not.i.i = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.060, ptr %i.ed, align 8, !tbaa !3342
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %.012061, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !3341
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE9push_backEOSK_.exit

bb.w:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !3314 ; 5 uses
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 5 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775792
  br i1 %i.ek, label %bb.x, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.el = ashr exact i64 %i.ej, 4                 ; 3 uses
  %i.em = icmp eq ptr %i.ed, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.em, i64 1, i64 %i.el
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i, %i.el ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.el
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 576460752303423487)
  %i.eq = select i1 %i.eo, i64 576460752303423487, i64 %i.ep ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.er = shl nuw nsw i64 %i.eq, 4
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #35
end_hunk_0
begin_hunk_1_@_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info8ToStringB5cxx11Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !35, !noalias !3401
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #33, !noalias !3385
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

common.resume.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i
  %common.resume.op.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.c, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.an, %bb.e ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #30, !noalias !3385
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !3401
  br label %common.resume.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !67, !noalias !3401
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #30, !noalias !3385
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !3401 ; 2 uses
  store ptr %i.ap, ptr %2, align 8, !tbaa !67, !noalias !3401
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !3401
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8, !noalias !3385
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !67, !noalias !3401
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !747, !noalias !3401
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #30, !noalias !3385
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !3401
  %i.aw = load ptr, ptr %4, align 8, !tbaa !30, !noalias !3385
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !36, !noalias !3385
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !3410
  store i64 1, ptr %1, align 8, !noalias !3410
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.63, ptr %i.ay, align 8, !noalias !3410
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i5.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !tbaa !34, !noalias !3410
  %.sroa.2.0.copyload.i7.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !16, !noalias !3410
  store i64 %.sroa.0.0.copyload.i5.i.i.i.i.i.i.i, ptr %i.az, align 8, !noalias !3410
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.2.0.copyload.i7.i.i.i.i.i.i.i, ptr %i.ba, align 8, !noalias !3410
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 1, ptr %i.bb, align 8, !noalias !3410
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @.str.64, ptr %i.bc, align 8, !noalias !3410
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ax, ptr %i.bd, align 8, !noalias !3410
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.aw, ptr %i.be, align 8, !noalias !3410
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 1, ptr %i.bf, align 8, !noalias !3410
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @.str.65, ptr %i.bg, align 8, !noalias !3410
  invoke void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %1, i64 5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !3410
  %i.bh = load ptr, ptr %4, align 8, !tbaa !30, !noalias !3385 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.h
  br i1 %i.bi, label %_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !35, !noalias !3385
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #33
  br label %_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !30, !noalias !3385 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i: ; preds = %bb.g
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !35, !noalias !3385
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !3385
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !3385
  br label %common.resume.i.i.i.i.i.i

_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !3385
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !3385
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3340   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3331 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i.i, label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EEEvPSH_.exit.i.i
  %.06.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EEEvPSH_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.06.i.i, align 8   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EEEvPSH_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = getelementptr i8, ptr %.06.i.i, i64 16
  %.0.val4.i.i = load ptr, ptr %i.d, align 8
  %i.e = ptrtoint ptr %.0.val4.i.i to i64
  %i.f = ptrtoint ptr %.0.val.i.i to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i, i64 noundef %i.g) #33
  br label %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EEEvPSH_.exit.i.i

_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EEEvPSH_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3347

_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EEEvPSH_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !3340
  br label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit

_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESaISN_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8, !tbaa !3329
  %i.j = ptrtoint ptr %.val1 to i64
  %i.k = ptrtoint ptr %.val to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.l) #33
  br label %_ZNSt12_Vector_baseISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESaISN_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESaISN_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEES7_NS0_5__ops19_Iter_equal_to_iterEEbT_SA_T0_T1_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %.not4952 = icmp eq ptr %0, %1
  br i1 %.not4952, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.038.054 = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.042.053 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.a = load i32, ptr %.sroa.042.053, align 4, !tbaa !211
  %i.b = load i32, ptr %.sroa.038.054, align 4, !tbaa !211
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.042.053, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.038.054, i64 4 ; 2 uses
  %.not49 = icmp eq ptr %i.d, %1
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !3320

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.sroa.042.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.042.053, %.lr.ph ], [ %i.d, %bb.b ] ; 6 uses
  %.sroa.038.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.038.054, %.lr.ph ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp eq ptr %.sroa.042.0.lcssa, %1
  br i1 %i.f, label %.critedge24, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = ptrtoint ptr %.sroa.042.0.lcssa to i64   ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa, i64 %i.i
  %i.k = add i64 %i.g, -4
  %i.l = add i64 %i.g, -4
  %i.m = sub i64 %i.l, %i.h                       ; 2 uses
  %i.n = lshr i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check104 = icmp ult i64 %i.m, 12
  %n.vec106 = and i64 %i.o, 9223372036854775804   ; 3 uses
  %i.p = shl i64 %n.vec106, 2
  %i.q = getelementptr i8, ptr %.sroa.038.0.lcssa, i64 %i.p
  %cmp.n119 = icmp eq i64 %i.o, %n.vec106
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph70, %.critedge
  %indvar = phi i64 [ 0, %.lr.ph70 ], [ %indvar.next, %.critedge ] ; 2 uses
  %.sroa.033.068 = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph70 ], [ %i.cj, %.critedge ] ; 13 uses
  %i.r = shl i64 %indvar, 2
  %i.s = add i64 %i.r, %i.h
  %i.t = sub i64 %i.k, %i.s                       ; 2 uses
  %3 = lshr i64 %i.t, 2
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.u = ptrtoint ptr %.sroa.033.068 to i64       ; 2 uses
  %i.v = sub i64 %i.u, %i.h                       ; 3 uses
  %i.w = ashr i64 %i.v, 4                         ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.y = load i32, ptr %.sroa.033.068, align 4, !tbaa !211 ; 4 uses
  %i.z = and i64 %i.v, -16
  %scevgep.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa, i64 %i.z ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.052.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.am, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph.i.i ], [ %i.al, %bb.h ] ; 9 uses
  %i.aa = load i32, ptr %.sroa.032.051.i.i, align 4, !tbaa !211
  %i.ab = icmp eq i32 %i.aa, %i.y
  br i1 %i.ab, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !211
  %i.ae = icmp eq i32 %i.ad, %i.y
  br i1 %i.ae, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !211
  %i.ah = icmp eq i32 %i.ag, %i.y
  br i1 %i.ah, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !211
  %i.ak = icmp eq i32 %i.aj, %i.y
  br i1 %i.ak, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 16
  %i.am = add nsw i64 %.052.i.i, -1
  %i.an = icmp sgt i64 %.052.i.i, 1
  br i1 %i.an, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !3321

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre59.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre60.i.i = sub i64 %i.u, %.pre59.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi61.i.i = phi i64 [ %.pre60.i.i, %._crit_edge.loopexit.i.i ], [ %i.v, %bb.c ]
  %.sroa.032.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %.sroa.042.0.lcssa, %bb.c ] ; 5 uses
  %i.ao = ashr exact i64 %.pre-phi61.i.i, 2
  switch i64 %i.ao, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i
  ]

._crit_edge._crit_edge57.i.i:                     ; preds = %._crit_edge.i.i
  %.pre58.i.i = load i32, ptr %.sroa.033.068, align 4, !tbaa !211
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i32, ptr %.sroa.033.068, align 4, !tbaa !211
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = load i32, ptr %.sroa.032.0.lcssa.i.i, align 4, !tbaa !211
  %i.aq = load i32, ptr %.sroa.033.068, align 4, !tbaa !211 ; 2 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.at = phi i32 [ %i.aq, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.sroa.032.1.i.i = phi ptr [ %i.as, %bb.j ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.au = load i32, ptr %.sroa.032.1.i.i, align 4, !tbaa !211
  %i.av = icmp eq i32 %i.au, %i.at
  br i1 %i.av, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i
  %i.ax = phi i32 [ %i.at, %bb.l ], [ %.pre58.i.i, %._crit_edge._crit_edge57.i.i ]
  %.sroa.032.2.i.i = phi ptr [ %i.aw, %bb.l ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge57.i.i ] ; 2 uses
  %i.ay = load i32, ptr %.sroa.032.2.i.i, align 4, !tbaa !211
  %i.az = icmp eq i32 %i.ay, %i.ax
  %spec.select.i.i = select i1 %i.az, ptr %.sroa.032.2.i.i, ptr %.sroa.033.068
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit: ; preds = %bb.d, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91, %._crit_edge.i.i, %bb.i, %bb.k, %bb.m
  %.sroa.08.0.in.sroa.speculated.i.i = phi ptr [ %.sroa.032.1.i.i, %bb.k ], [ %spec.select.i.i, %bb.m ], [ %.sroa.033.068, %._crit_edge.i.i ], [ %.sroa.032.0.lcssa.i.i, %bb.i ], [ %i.bc, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91 ], [ %i.ba, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit ], [ %i.bb, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89 ], [ %.sroa.032.051.i.i, %bb.d ]
  %.not51 = icmp eq ptr %.sroa.033.068, %.sroa.08.0.in.sroa.speculated.i.i
  br i1 %.not51, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit
  %i.bd = load i32, ptr %.sroa.033.068, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert107 = insertelement <2 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat108 = shufflevector <2 x i32> %broadcast.splatinsert107, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next116, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <2 x i64> [ zeroinitializer, %vector.ph105 ], [ %i.bk, %vector.body109 ]
  %vec.phi112 = phi <2 x i64> [ zeroinitializer, %vector.ph105 ], [ %i.bl, %vector.body109 ]
  %i.be = shl i64 %index110, 2
  %next.gep113 = getelementptr i8, ptr %.sroa.038.0.lcssa, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep113, i64 8
  %wide.load114 = load <2 x i32>, ptr %next.gep113, align 4, !tbaa !211
  %wide.load115 = load <2 x i32>, ptr %i.bf, align 4, !tbaa !211
  %i.bg = icmp eq <2 x i32> %wide.load114, %broadcast.splat108
  %i.bh = icmp eq <2 x i32> %wide.load115, %broadcast.splat108
  %i.bi = zext <2 x i1> %i.bg to <2 x i64>
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = add <2 x i64> %vec.phi111, %i.bi        ; 2 uses
  %i.bl = add <2 x i64> %vec.phi112, %i.bj        ; 2 uses
  %index.next116 = add nuw i64 %index110, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next116, %n.vec106
  br i1 %i.bm, label %middle.block117, label %vector.body109, !llvm.loop !3413

middle.block117:                                  ; preds = %vector.body109
  %bin.rdx118 = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx118) ; 2 uses
  br i1 %cmp.n119, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.lr.ph.i, %middle.block117
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %middle.block117 ]
  %.sroa.03.06.i.ph = phi ptr [ %.sroa.038.0.lcssa, %.lr.ph.i ], [ %i.q, %middle.block117 ]
  br label %scalar.ph103

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %.07.i = phi i64 [ %spec.select.i, %scalar.ph103 ], [ %.07.i.ph, %scalar.ph103.preheader ]
  %.sroa.03.06.i = phi ptr [ %i.br, %scalar.ph103 ], [ %.sroa.03.06.i.ph, %scalar.ph103.preheader ] ; 2 uses
  %i.bo = load i32, ptr %.sroa.03.06.i, align 4, !tbaa !211
  %i.bp = icmp eq i32 %i.bo, %i.bd
  %i.bq = zext i1 %i.bp to i64
  %spec.select.i = add nuw nsw i64 %.07.i, %i.bq  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.br, %i.j
  br i1 %.not.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103, !llvm.loop !3414

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit: ; preds = %scalar.ph103, %middle.block117
  %spec.select.i.lcssa = phi i64 [ %i.bn, %middle.block117 ], [ %spec.select.i, %scalar.ph103 ] ; 2 uses
  %i.bs = icmp eq i64 %spec.select.i.lcssa, 0
  br i1 %i.bs, label %.critedge24, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit
  %min.iters.check = icmp ult i64 %i.t, 12
  br i1 %min.iters.check, label %.lr.ph.i26.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.preheader
  %n.vec = and i64 %4, 9223372036854775804        ; 3 uses
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %.sroa.033.068, i64 %i.bt
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi101 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load102 = load <2 x i32>, ptr %i.bw, align 4, !tbaa !211
  %i.bx = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.by = icmp eq <2 x i32> %wide.load102, %broadcast.splat
  %i.bz = zext <2 x i1> %i.bx to <2 x i64>
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = add <2 x i64> %vec.phi, %i.bz           ; 2 uses
  %i.cc = add <2 x i64> %vec.phi101, %i.ca        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !3415

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, label %.lr.ph.i26.preheader122

.lr.ph.i26.preheader122:                          ; preds = %.lr.ph.i26.preheader, %middle.block
  %.07.i27.ph = phi i64 [ 0, %.lr.ph.i26.preheader ], [ %i.ce, %middle.block ]
  %.sroa.03.06.i28.ph = phi ptr [ %.sroa.033.068, %.lr.ph.i26.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader122, %.lr.ph.i26
  %.07.i27 = phi i64 [ %spec.select.i29, %.lr.ph.i26 ], [ %.07.i27.ph, %.lr.ph.i26.preheader122 ]
  %.sroa.03.06.i28 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %.sroa.03.06.i28.ph, %.lr.ph.i26.preheader122 ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.03.06.i28, align 4, !tbaa !211
  %i.cg = icmp eq i32 %i.cf, %i.bd
  %i.ch = zext i1 %i.cg to i64
  %spec.select.i29 = add nuw nsw i64 %.07.i27, %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %i.ci, %1
  br i1 %.not.i30, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, label %.lr.ph.i26, !llvm.loop !3416

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32: ; preds = %.lr.ph.i26, %middle.block
  %spec.select.i29.lcssa = phi i64 [ %i.ce, %middle.block ], [ %spec.select.i29, %.lr.ph.i26 ]
  %.not = icmp eq i64 %spec.select.i29.lcssa, %spec.select.i.lcssa
  br i1 %.not, label %.critedge, label %.critedge24

.critedge:                                        ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.033.068, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.cj, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50, label %.critedge24, label %bb.c, !llvm.loop !3328

.critedge24:                                      ; preds = %.critedge, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, %._crit_edge
  %.5 = phi i1 [ true, %._crit_edge ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit ], [ true, %.critedge ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32 ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613hash_internal13HashStateBaseINS1_16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEEE7combineIS6_JEEES7_S7_RKT_DpRKT0_(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 16 ; 11 uses
  %4 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.83", align 16 ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.83", align 16 ; 12 uses
  %6 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 12 uses
  %9 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 16 ; 11 uses
  %10 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.75", align 16 ; 13 uses
  %11 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.75", align 16 ; 12 uses
  %12 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 12 uses
  %13 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 16 ; 12 uses
  %14 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 16 ; 13 uses
  %15 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 13 uses
  %16 = alloca %"struct.absl::lts_20260526::hash_internal::SpyHashStateImpl<(anonymous namespace)::UnorderedSequence<int>>::UnorderedCombinerCallback", align 8 ; 19 uses
  %17 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 16 ; 19 uses
  %18 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 15 uses
  %19 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 16 ; 15 uses
  %20 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 10 uses
  %22 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 10 uses
  %23 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl.656", align 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %23, i8 0, i64 41, i1 false)
  %i.b = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %23, ptr noundef nonnull align 8 dereferenceable(41) %1) #30 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %21, i8 0, i64 41, i1 false), !noalias !3417
  %i.c = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %21, ptr noundef nonnull align 8 dereferenceable(41) %23) #30, !noalias !3417 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3420)
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !3417
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !3417
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %20, i8 0, i64 41, i1 false), !noalias !3423
  %i.d = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %20, ptr noundef nonnull align 8 dereferenceable(41) %21) #30, !noalias !3423 ; 0 uses
  %.val8.i.i = load ptr, ptr %2, align 8, !tbaa !227, !noalias !3423 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val9.i.i = load ptr, ptr %i.e, align 8, !tbaa !227, !noalias !3423 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3424)
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !3423
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %18, i8 0, i64 41, i1 false), !noalias !3427
  %i.f = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %18, ptr noundef nonnull align 8 dereferenceable(41) %20) #30, !noalias !3427 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3428)
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !3427
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !3431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false), !noalias !3431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %17, i8 0, i64 24, i1 false), !noalias !3431
  call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  %i.g = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %bb.c unwind label %bb.b, !noalias !3431 ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(41) %17) #30, !noalias !3431
  br label %.body.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !364, !noalias !3435
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !366, !noalias !3435
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !67, !noalias !3435
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 0, ptr %i.m, align 8, !tbaa !361, !noalias !3435
  store ptr %i.g, ptr %i.j, align 16, !tbaa !363, !alias.scope !3432, !noalias !3431
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.i, align 8, !tbaa !407, !alias.scope !3432, !noalias !3431
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !350, !noalias !3431
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !3431
  %.not52.i.i.i.i.i = icmp eq ptr %.val8.i.i, %.val9.i.i
  br i1 %.not52.i.i.i.i.i, label %.loopexit46.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit46.thread.i.i.i.i:                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !3431
  br label %bb.cu

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.d

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EE19_M_range_initializeIPKS7_EEvT_SD_St20forward_iterator_tag:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.aj, align 8, !tbaa !3575
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvT_S9_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvPT_.exit.i
  %.06.i = phi ptr [ %i.e, %_ZSt8_DestroyIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %.0.val.i = load ptr, ptr %.06.i, align 8, !tbaa !1454 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = getelementptr i8, ptr %.06.i, i64 16
  %.0.val4.i = load ptr, ptr %i.a, align 8
  %i.b = ptrtoint ptr %.0.val4.i to i64
  %i.c = ptrtoint ptr %.0.val.i to i64
  %i.d = sub i64 %i.b, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.val.i, i64 noundef %i.d) #33
  br label %_ZSt8_DestroyIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvPT_.exit.i

_ZSt8_DestroyIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !3576

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 8 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 8 uses
  %22 = alloca %"class.testing::Message", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 8 uses
  %28 = alloca %"class.testing::Message", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 8 uses
  %31 = alloca %"class.testing::Message", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 8 uses
  %34 = alloca %"class.testing::Message", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 8 uses
  %37 = alloca %"class.testing::Message", align 8 ; 8 uses
  %38 = alloca %"class.testing::Message", align 8 ; 8 uses
  %39 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %40 = alloca %"class.std::vector.688", align 8  ; 14 uses
  %41 = alloca %"class.std::optional", align 8    ; 17 uses
  %42 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 12 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %45 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 15 uses
  %46 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  %47 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 10 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 10 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  %55 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 14 uses
  %56 = alloca %"class.testing::AssertionResult", align 8 ; 14 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %.not59 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not59, label %.critedge172.thread, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph62, %bb.bb
  %.val181 = phi ptr [ null, %.lr.ph62 ], [ %.val18188, %bb.bb ] ; 9 uses
  %.012061 = phi i64 [ 0, %.lr.ph62 ], [ %i.fa, %bb.bb ] ; 3 uses
  %.sroa.014.060 = phi ptr [ %.0.val, %.lr.ph62 ], [ %i.im, %bb.bb ] ; 4 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !3578 ; 8 uses
  %.not3056 = icmp eq ptr %.val181, %.val184      ; 3 uses
  br i1 %.not3056, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.060, align 8, !tbaa !3564 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !1454 ; 4 uses
  %i.m = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.m, align 8, !tbaa !1457 ; 6 uses
  %i.n = ptrtoint ptr %.val195.val197 to i64      ; 4 uses
  %i.o = ptrtoint ptr %.val195.val to i64
  %i.p = sub i64 %i.n, %i.o
  %.not4952.i = icmp eq ptr %.val195.val, %.val195.val197
  %i.q = add i64 %i.n, -4
  %i.r = add i64 %i.n, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit
  %.sroa.012.057 = phi ptr [ %.val181, %.lr.ph ], [ %i.df, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.057, align 8, !tbaa !3580
  %i.s = load ptr, ptr %.val194, align 8, !tbaa !3583, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.s, align 8, !tbaa !3564 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !1454 ; 3 uses
  %i.t = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.t, align 8, !tbaa !1457
  %i.u = ptrtoint ptr %.val196.val198 to i64
  %i.v = ptrtoint ptr %.val196.val to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp eq i64 %i.p, %i.w
  br i1 %i.x, label %bb.d, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

bb.d:                                             ; preds = %bb.c
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.038.054.i = phi ptr [ %i.ac, %bb.e ], [ %.val196.val, %bb.d ] ; 3 uses
  %.sroa.042.053.i = phi ptr [ %i.ab, %bb.e ], [ %.val195.val, %bb.d ] ; 3 uses
  %i.y = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !211
  %i.z = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !211
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ab, %.val195.val197
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3320

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.042.0.lcssa.i = phi ptr [ %.val195.val, %bb.d ], [ %i.ab, %bb.e ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.val196.val, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.ad = icmp eq ptr %.sroa.042.0.lcssa.i, %.val195.val197
  br i1 %i.ad, label %.loopexit32, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.ae = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.af = sub i64 %i.n, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.af
  %i.ah = sub i64 %i.r, %i.ae                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check358 = icmp ult i64 %i.ah, 12
  %n.vec360 = and i64 %i.aj, 9223372036854775804  ; 3 uses
  %i.ak = shl i64 %n.vec360, 2
  %i.al = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.ak
  %cmp.n373 = icmp eq i64 %i.aj, %n.vec360
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.de, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.am = shl i64 %indvar, 2
  %i.an = add i64 %i.am, %i.ae
  %i.ao = sub i64 %i.q, %i.an                     ; 2 uses
  %65 = lshr i64 %i.ao, 2
  %66 = add nuw nsw i64 %65, 1                    ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.aq = sub i64 %i.ap, %i.ae                    ; 3 uses
  %i.ar = ashr i64 %i.aq, 4                       ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.f
  %i.at = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.au = and i64 %i.aq, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.au ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i826 ], [ %i.bh, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bg, %bb.k ] ; 9 uses
  %i.av = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.aw = icmp eq i32 %i.av, %i.at
  br i1 %i.aw, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !211
  %i.az = icmp eq i32 %i.ay, %i.at
  br i1 %i.az, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !211
  %i.bc = icmp eq i32 %i.bb, %i.at
  br i1 %i.bc, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !211
  %i.bf = icmp eq i32 %i.be, %i.at
  br i1 %i.bf, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bh = add nsw i64 %.052.i.i.i, -1
  %i.bi = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bi, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3321

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ap, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aq, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bj = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bj, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.p

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bk = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.bl = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.bo = phi i32 [ %i.bl, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bn, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.bp = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.bq = icmp eq i32 %i.bp, %i.bo
  br i1 %i.bq, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.bs = phi i32 [ %i.bo, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.br, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bt = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.bu = icmp eq i32 %i.bt, %i.bs
  %spec.select.i.i.i = select i1 %i.bu, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333: ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335: ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bx, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335 ], [ %i.bw, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333 ], [ %i.bv, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.by = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check358, label %scalar.ph357.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %bb.q
  %broadcast.splatinsert361 = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat362 = shufflevector <2 x i32> %broadcast.splatinsert361, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph359
  %index364 = phi i64 [ 0, %vector.ph359 ], [ %index.next370, %vector.body363 ] ; 2 uses
  %vec.phi365 = phi <2 x i64> [ zeroinitializer, %vector.ph359 ], [ %i.cf, %vector.body363 ]
  %vec.phi366 = phi <2 x i64> [ zeroinitializer, %vector.ph359 ], [ %i.cg, %vector.body363 ]
  %i.bz = shl i64 %index364, 2
  %next.gep367 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep367, i64 8
  %wide.load368 = load <2 x i32>, ptr %next.gep367, align 4, !tbaa !211
  %wide.load369 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !211
  %i.cb = icmp eq <2 x i32> %wide.load368, %broadcast.splat362
  %i.cc = icmp eq <2 x i32> %wide.load369, %broadcast.splat362
  %i.cd = zext <2 x i1> %i.cb to <2 x i64>
  %i.ce = zext <2 x i1> %i.cc to <2 x i64>
  %i.cf = add <2 x i64> %vec.phi365, %i.cd        ; 2 uses
  %i.cg = add <2 x i64> %vec.phi366, %i.ce        ; 2 uses
  %index.next370 = add nuw i64 %index364, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next370, %n.vec360
  br i1 %i.ch, label %middle.block371, label %vector.body363, !llvm.loop !3586

middle.block371:                                  ; preds = %vector.body363
  %bin.rdx372 = add <2 x i64> %i.cg, %i.cf
  %i.ci = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx372) ; 2 uses
  br i1 %cmp.n373, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph357.preheader

scalar.ph357.preheader:                           ; preds = %bb.q, %middle.block371
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.ci, %middle.block371 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.al, %middle.block371 ]
  br label %scalar.ph357

scalar.ph357:                                     ; preds = %scalar.ph357.preheader, %scalar.ph357
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph357 ], [ %.07.i.i.ph, %scalar.ph357.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cm, %scalar.ph357 ], [ %.sroa.03.06.i.i.ph, %scalar.ph357.preheader ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.ck = icmp eq i32 %i.cj, %i.by
  %i.cl = zext i1 %i.ck to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.cl ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cm, %i.ag
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph357, !llvm.loop !3587

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph357, %middle.block371
  %spec.select.i.i.lcssa = phi i64 [ %i.ci, %middle.block371 ], [ %spec.select.i.i, %scalar.ph357 ] ; 2 uses
  %i.cn = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cn, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.ao, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader382, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %66, 9223372036854775804       ; 3 uses
  %i.co = shl i64 %n.vec, 2
  %i.cp = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.co
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi355 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %i.cq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load356 = load <2 x i32>, ptr %i.cr, align 4, !tbaa !211
  %i.cs = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.ct = icmp eq <2 x i32> %wide.load356, %broadcast.splat
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = zext <2 x i1> %i.ct to <2 x i64>
  %i.cw = add <2 x i64> %vec.phi, %i.cu           ; 2 uses
  %i.cx = add <2 x i64> %vec.phi355, %i.cv        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !3588

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cx, %i.cw
  %i.cz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %66, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader382

.lr.ph.i26.i.preheader382:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.cz, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader382, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader382 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dd, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader382 ] ; 2 uses
  %i.da = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.db = icmp eq i32 %i.da, %i.by
  %i.dc = zext i1 %i.db to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.dc ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dd, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !3589

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.cz, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.de, %.val195.val197
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit32, label %bb.f, !llvm.loop !3328

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.057, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.df, %.val184
  br i1 %.not30, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, %bb.b
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !3590
  %.not.i = icmp eq ptr %.val184, %i.dg
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dh, ptr %i.c, align 8, !tbaa !3592
  br label %.loopexit32

bb.s:                                             ; preds = %.thread
  %i.di = ptrtoint ptr %.val184 to i64
  %i.dj = ptrtoint ptr %.val181 to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 4 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %bb.t, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.dm = sdiv exact i64 %i.dk, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3056, i64 1, i64 %i.dm
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 384307168202282325)
  %i.dq = select i1 %i.do, i64 384307168202282325, i64 %i.dp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dr = mul nuw nsw i64 %i.dq, 24
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #35
          to label %.noexc258 unwind label %.loopexit34 ; 6 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  br i1 %.not3056, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %i.ds, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.val181, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3593)
  call void @llvm.experimental.noalias.scope.decl(metadata !3596)
  %i.du = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !3598, !alias.scope !3596, !noalias !3593
  store <2 x ptr> %i.du, ptr %.03.i.i.i.i.i, align 8, !tbaa !3598, !alias.scope !3593, !noalias !3596
  %i.dv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !3599, !alias.scope !3596, !noalias !3593
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !3599, !alias.scope !3593, !noalias !3596
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3596, !noalias !3593
  %i.dy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dy, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3600

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ds, %.noexc258 ], [ %i.dz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val181, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val181, i64 noundef %i.dk) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i
  store ptr %i.ds, ptr %40, align 8, !tbaa !3601
  store ptr %i.ea, ptr %i.c, align 8, !tbaa !3592
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.eb, ptr %i.d, align 8, !tbaa !3590
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit32:                                      ; preds = %._crit_edge.i, %.critedge.i, %bb.r, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i
  %.val18189 = phi ptr [ %.val181, %.critedge.i ], [ %.val181, %bb.r ], [ %i.ds, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i ], [ %.val181, %._crit_edge.i ]
  %.3109 = phi ptr [ %.sroa.012.057, %.critedge.i ], [ %.val184, %bb.r ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i ], [ %.sroa.012.057, %._crit_edge.i ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !3602 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !3599
  %.not.i.i = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.060, ptr %i.ed, align 8, !tbaa !3603
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %.012061, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !3602
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE9push_backEOSN_.exit

bb.w:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !3580 ; 5 uses
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 5 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775792
  br i1 %i.ek, label %bb.x, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.el = ashr exact i64 %i.ej, 4                 ; 3 uses
  %i.em = icmp eq ptr %i.ed, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.em, i64 1, i64 %i.el
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i, %i.el ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.el
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 576460752303423487)
  %i.eq = select i1 %i.eo, i64 576460752303423487, i64 %i.ep ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.er = shl nuw nsw i64 %i.eq, 4
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #35
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKS3_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 8 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 8 uses
  %22 = alloca %"class.testing::Message", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 8 uses
  %28 = alloca %"class.testing::Message", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 8 uses
  %31 = alloca %"class.testing::Message", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 8 uses
  %34 = alloca %"class.testing::Message", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 8 uses
  %37 = alloca %"class.testing::Message", align 8 ; 8 uses
  %38 = alloca %"class.testing::Message", align 8 ; 8 uses
  %39 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %40 = alloca %"class.std::vector.1288", align 8 ; 14 uses
  %41 = alloca %"class.std::optional", align 8    ; 17 uses
  %42 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 12 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %45 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 15 uses
  %46 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  %47 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 10 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 10 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  %55 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 14 uses
  %56 = alloca %"class.testing::AssertionResult", align 8 ; 14 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %.not63 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not63, label %.critedge172.thread, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.az
  %.val181 = phi ptr [ null, %.lr.ph66 ], [ %.val18194, %bb.az ] ; 10 uses
  %.012065 = phi i64 [ 0, %.lr.ph66 ], [ %i.fs, %bb.az ] ; 3 uses
  %.sroa.014.064 = phi ptr [ %.0.val, %.lr.ph66 ], [ %i.je, %bb.az ] ; 4 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !6105 ; 9 uses
  %.not3259 = icmp eq ptr %.val181, %.val184      ; 3 uses
  br i1 %.not3259, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.064, align 8, !tbaa !6107 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !3294 ; 3 uses
  %i.m = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.m, align 8, !tbaa !3309 ; 3 uses
  %i.n = ptrtoint ptr %.val195.val197 to i64
  %i.o = ptrtoint ptr %.val195.val to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val195.val, %.val195.val197
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr = freeze i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us
  %.sroa.012.060.us = phi ptr [ %i.w, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us ], [ %.val181, %.lr.ph ] ; 3 uses
  %.val194.us = load ptr, ptr %.sroa.012.060.us, align 8, !tbaa !6108
  %i.q = load ptr, ptr %.val194.us, align 8, !tbaa !6111, !nonnull !27, !align !310
  %.val196.us = load ptr, ptr %i.q, align 8, !tbaa !6107 ; 2 uses
  %.val196.val.us = load ptr, ptr %.val196.us, align 8, !tbaa !3294
  %i.r = getelementptr i8, ptr %.val196.us, i64 8
  %.val196.val198.us = load ptr, ptr %i.r, align 8, !tbaa !3309
  %i.s = ptrtoint ptr %.val196.val198.us to i64
  %i.t = ptrtoint ptr %.val196.val.us to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.p, %i.u
  br i1 %i.v, label %.thread19, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us: ; preds = %.lr.ph.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.060.us, i64 24 ; 2 uses
  %.not32.us = icmp eq ptr %i.w, %.val184
  br i1 %.not32.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit
  %.sroa.012.060 = phi ptr [ %i.dx, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ], [ %.val181, %.lr.ph ] ; 3 uses
  %.val194 = load ptr, ptr %.sroa.012.060, align 8, !tbaa !6108
  %i.x = load ptr, ptr %.val194, align 8, !tbaa !6111, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.x, align 8, !tbaa !6107 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !3294 ; 2 uses
  %i.y = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.y, align 8, !tbaa !3309
  %i.z = ptrtoint ptr %.val196.val198 to i64
  %i.aa = ptrtoint ptr %.val196.val to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp eq i64 %i.p, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split, %.loopexit34
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.loopexit34 ], [ %.val196.val, %.lr.ph.split ] ; 3 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.loopexit34 ], [ %.val195.val, %.lr.ph.split ] ; 3 uses
  %.08.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1454 ; 4 uses
  %i.ad = getelementptr i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !1457 ; 6 uses
  %.0.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1454 ; 3 uses
  %i.ae = getelementptr i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !1457
  %i.af = ptrtoint ptr %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 4 uses
  %i.ag = ptrtoint ptr %.08.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ptrtoint ptr %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aj = ptrtoint ptr %.0.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp eq i64 %i.ah, %i.ak
  br i1 %i.al, label %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.not4952.i = icmp eq ptr %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.038.054.i = phi ptr [ %i.aq, %bb.c ], [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.042.053.i = phi ptr [ %i.ap, %bb.c ], [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.am = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !211
  %i.an = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !211
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ap, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3320

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.042.0.lcssa.i = phi ptr [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.c ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.c ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.ar = icmp eq ptr %.sroa.042.0.lcssa.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ar, label %.loopexit34, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.as = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.at = sub i64 %i.af, %i.as
  %i.au = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.at
  %i.av = add i64 %i.af, -4
  %i.aw = add i64 %i.af, -4
  %i.ax = sub i64 %i.aw, %i.as                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.ax, 12
  %n.vec372 = and i64 %i.az, 9223372036854775804  ; 3 uses
  %i.ba = shl i64 %n.vec372, 2
  %i.bb = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.ba
  %cmp.n385 = icmp eq i64 %i.az, %n.vec372
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.du, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.bc = shl i64 %indvar, 2
  %i.bd = add i64 %i.bc, %i.as
  %i.be = sub i64 %i.av, %i.bd                    ; 2 uses
  %65 = lshr i64 %i.be, 2
  %66 = add nuw nsw i64 %65, 1                    ; 2 uses
  %i.bf = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.bg = sub i64 %i.bf, %i.as                    ; 3 uses
  %i.bh = ashr i64 %i.bg, 4                       ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.d
  %i.bj = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.bk = and i64 %i.bg, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.bk ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i826 ], [ %i.bx, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bw, %bb.i ] ; 9 uses
  %i.bl = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.bm = icmp eq i32 %i.bl, %i.bj
  br i1 %i.bm, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !211
  %i.bp = icmp eq i32 %i.bo, %i.bj
  br i1 %i.bp, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !211
  %i.bs = icmp eq i32 %i.br, %i.bj
  br i1 %i.bs, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !211
  %i.bv = icmp eq i32 %i.bu, %i.bj
  br i1 %i.bv, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bx = add nsw i64 %.052.i.i.i, -1
  %i.by = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.by, label %bb.e, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3321

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bf, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bg, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.d ] ; 5 uses
  %i.bz = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bz, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.n

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ca = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.cb = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.ce = phi i32 [ %i.cb, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.cd, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cf = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.cg = icmp eq i32 %i.cf, %i.ce
  br i1 %i.cg, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge57.i.i.i
  %i.ci = phi i32 [ %i.ce, %bb.m ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.ch, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.ck = icmp eq i32 %i.cj, %i.ci
  %spec.select.i.i.i = select i1 %i.ck, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343: ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345: ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.e, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345, %bb.n, %bb.l, %bb.j, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.n ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.cn, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345 ], [ %i.cm, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343 ], [ %i.cl, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.co = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check370, label %scalar.ph369.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %bb.o
  %broadcast.splatinsert373 = insertelement <2 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat374 = shufflevector <2 x i32> %broadcast.splatinsert373, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph371
  %index376 = phi i64 [ 0, %vector.ph371 ], [ %index.next382, %vector.body375 ] ; 2 uses
  %vec.phi377 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.cv, %vector.body375 ]
  %vec.phi378 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.cw, %vector.body375 ]
  %i.cp = shl i64 %index376, 2
  %next.gep379 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep379, i64 8
  %wide.load380 = load <2 x i32>, ptr %next.gep379, align 4, !tbaa !211
  %wide.load381 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !211
  %i.cr = icmp eq <2 x i32> %wide.load380, %broadcast.splat374
  %i.cs = icmp eq <2 x i32> %wide.load381, %broadcast.splat374
  %i.ct = zext <2 x i1> %i.cr to <2 x i64>
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = add <2 x i64> %vec.phi377, %i.ct        ; 2 uses
  %i.cw = add <2 x i64> %vec.phi378, %i.cu        ; 2 uses
  %index.next382 = add nuw i64 %index376, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next382, %n.vec372
  br i1 %i.cx, label %middle.block383, label %vector.body375, !llvm.loop !6114

middle.block383:                                  ; preds = %vector.body375
  %bin.rdx384 = add <2 x i64> %i.cw, %i.cv
  %i.cy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx384) ; 2 uses
  br i1 %cmp.n385, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph369.preheader

scalar.ph369.preheader:                           ; preds = %bb.o, %middle.block383
  %.07.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.cy, %middle.block383 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.o ], [ %i.bb, %middle.block383 ]
  br label %scalar.ph369

scalar.ph369:                                     ; preds = %scalar.ph369.preheader, %scalar.ph369
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph369 ], [ %.07.i.i.ph, %scalar.ph369.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.dc, %scalar.ph369 ], [ %.sroa.03.06.i.i.ph, %scalar.ph369.preheader ] ; 2 uses
  %i.cz = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.da = icmp eq i32 %i.cz, %i.co
  %i.db = zext i1 %i.da to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.dc, %i.au
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph369, !llvm.loop !6115

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph369, %middle.block383
  %spec.select.i.i.lcssa = phi i64 [ %i.cy, %middle.block383 ], [ %spec.select.i.i, %scalar.ph369 ] ; 2 uses
  %i.dd = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.dd, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.be, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader394, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %66, 9223372036854775804       ; 3 uses
  %i.de = shl i64 %n.vec, 2
  %i.df = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.de
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi367 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %i.dg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load368 = load <2 x i32>, ptr %i.dh, align 4, !tbaa !211
  %i.di = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.dj = icmp eq <2 x i32> %wide.load368, %broadcast.splat
  %i.dk = zext <2 x i1> %i.di to <2 x i64>
  %i.dl = zext <2 x i1> %i.dj to <2 x i64>
  %i.dm = add <2 x i64> %vec.phi, %i.dk           ; 2 uses
  %i.dn = add <2 x i64> %vec.phi367, %i.dl        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !6116

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dn, %i.dm
  %i.dp = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %66, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader394

.lr.ph.i26.i.preheader394:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.dp, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader394, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader394 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dt, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader394 ] ; 2 uses
  %i.dq = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.dr = icmp eq i32 %i.dq, %i.co
  %i.ds = zext i1 %i.dr to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.ds ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dt, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !6117

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.dp, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.du, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit34, label %bb.d, !llvm.loop !3328

.loopexit34:                                      ; preds = %.critedge.i, %._crit_edge.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %.val195.val197
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread19, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6118

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %.lr.ph.split
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.012.060, i64 24 ; 2 uses
  %.not32 = icmp eq ptr %i.dx, %.val184
  br i1 %.not32, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us, %bb.b
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !6119
  %.not.i = icmp eq ptr %.val184, %i.dy
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !6121
  br label %.thread19

bb.q:                                             ; preds = %.thread
  %i.ea = ptrtoint ptr %.val184 to i64
  %i.eb = ptrtoint ptr %.val181 to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.r, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ee = sdiv exact i64 %i.ec, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3259, i64 1, i64 %i.ee
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 384307168202282325)
  %i.ei = select i1 %i.eg, i64 384307168202282325, i64 %i.eh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ej = mul nuw nsw i64 %i.ei, 24
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #35
          to label %.noexc258 unwind label %.loopexit37 ; 6 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 24, i1 false)
  br i1 %.not3259, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.ek, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i ], [ %.val181, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6122)
  call void @llvm.experimental.noalias.scope.decl(metadata !6125)
  %i.em = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !6127, !alias.scope !6125, !noalias !6122
  store <2 x ptr> %i.em, ptr %.03.i.i.i.i.i, align 8, !tbaa !6127, !alias.scope !6122, !noalias !6125
  %i.en = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !6128, !alias.scope !6125, !noalias !6122
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !6128, !alias.scope !6122, !noalias !6125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !6125, !noalias !6122
  %i.eq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eq, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6129

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ek, %.noexc258 ], [ %i.er, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val181, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val181, i64 noundef %i.ec) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i
  store ptr %i.ek, ptr %40, align 8, !tbaa !6130
  store ptr %i.es, ptr %i.c, align 8, !tbaa !6121
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.et, ptr %i.d, align 8, !tbaa !6119
  br label %.thread19

.loopexit37:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

.thread19:                                        ; preds = %.lr.ph.split.us, %.loopexit34, %bb.p, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i
  %.val18195 = phi ptr [ %.val181, %.loopexit34 ], [ %.val181, %bb.p ], [ %i.ek, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i ], [ %.val181, %.lr.ph.split.us ]
  %.3109 = phi ptr [ %.sroa.012.060, %.loopexit34 ], [ %.val184, %bb.p ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i ], [ %.sroa.012.060.us, %.lr.ph.split.us ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !6131 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !6128
  %.not.i.i = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread19
  store ptr %.sroa.014.064, ptr %i.ev, align 8, !tbaa !6132
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.012065, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !6131
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE9push_backEOSM_.exit

bb.u:                                             ; preds = %.thread19
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !6108 ; 5 uses
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa                    ; 5 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775792
  br i1 %i.fc, label %bb.v, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp39

.noexc259:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.fd = ashr exact i64 %i.fb, 4                 ; 3 uses
  %i.fe = icmp eq ptr %i.ev, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.fe, i64 1, i64 %i.fd
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fd ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fd
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKS3_INS0_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_:bb.a
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 8 uses
  %18 = alloca %"class.testing::Message", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 8 uses
  %21 = alloca %"class.testing::Message", align 8 ; 8 uses
  %22 = alloca %"class.testing::Message", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 8 uses
  %24 = alloca %"class.testing::Message", align 8 ; 8 uses
  %25 = alloca %"class.testing::Message", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 8 uses
  %28 = alloca %"class.testing::Message", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %30 = alloca %"class.testing::Message", align 8 ; 8 uses
  %31 = alloca %"class.testing::Message", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 8 uses
  %33 = alloca %"class.testing::Message", align 8 ; 8 uses
  %34 = alloca %"class.testing::Message", align 8 ; 8 uses
  %35 = alloca %"class.testing::Message", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 8 uses
  %37 = alloca %"class.testing::Message", align 8 ; 8 uses
  %38 = alloca %"class.testing::Message", align 8 ; 8 uses
  %39 = alloca %"class.testing::Message", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %40 = alloca %"class.std::vector.1352", align 8 ; 14 uses
  %41 = alloca %"class.std::optional", align 8    ; 17 uses
  %42 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 12 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %45 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 15 uses
  %46 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  %47 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 10 uses
  %48 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %50 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 10 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  %55 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 14 uses
  %56 = alloca %"class.testing::AssertionResult", align 8 ; 14 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.testing::AssertionResult", align 8 ; 16 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %.not63 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not63, label %.critedge172.thread, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %41, i64 32 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.az
  %.val181 = phi ptr [ null, %.lr.ph66 ], [ %.val18194, %bb.az ] ; 10 uses
  %.012065 = phi i64 [ 0, %.lr.ph66 ], [ %i.fs, %bb.az ] ; 3 uses
  %.sroa.014.064 = phi ptr [ %.0.val, %.lr.ph66 ], [ %i.je, %bb.az ] ; 4 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !6281 ; 9 uses
  %.not3259 = icmp eq ptr %.val181, %.val184      ; 3 uses
  br i1 %.not3259, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.064, align 8, !tbaa !6283 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !3560 ; 3 uses
  %i.m = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.m, align 8, !tbaa !3575 ; 3 uses
  %i.n = ptrtoint ptr %.val195.val197 to i64
  %i.o = ptrtoint ptr %.val195.val to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val195.val, %.val195.val197
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr = freeze i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us
  %.sroa.012.060.us = phi ptr [ %i.w, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us ], [ %.val181, %.lr.ph ] ; 3 uses
  %.val194.us = load ptr, ptr %.sroa.012.060.us, align 8, !tbaa !6284
  %i.q = load ptr, ptr %.val194.us, align 8, !tbaa !6287, !nonnull !27, !align !310
  %.val196.us = load ptr, ptr %i.q, align 8, !tbaa !6283 ; 2 uses
  %.val196.val.us = load ptr, ptr %.val196.us, align 8, !tbaa !3560
  %i.r = getelementptr i8, ptr %.val196.us, i64 8
  %.val196.val198.us = load ptr, ptr %i.r, align 8, !tbaa !3575
  %i.s = ptrtoint ptr %.val196.val198.us to i64
  %i.t = ptrtoint ptr %.val196.val.us to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp eq i64 %i.p, %i.u
  br i1 %i.v, label %.thread19, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us: ; preds = %.lr.ph.split.us
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.060.us, i64 24 ; 2 uses
  %.not32.us = icmp eq ptr %i.w, %.val184
  br i1 %.not32.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit
  %.sroa.012.060 = phi ptr [ %i.dx, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit ], [ %.val181, %.lr.ph ] ; 3 uses
  %.val194 = load ptr, ptr %.sroa.012.060, align 8, !tbaa !6284
  %i.x = load ptr, ptr %.val194, align 8, !tbaa !6287, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.x, align 8, !tbaa !6283 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !3560 ; 2 uses
  %i.y = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.y, align 8, !tbaa !3575
  %i.z = ptrtoint ptr %.val196.val198 to i64
  %i.aa = ptrtoint ptr %.val196.val to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp eq i64 %i.p, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split, %.loopexit34
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.loopexit34 ], [ %.val196.val, %.lr.ph.split ] ; 3 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.loopexit34 ], [ %.val195.val, %.lr.ph.split ] ; 3 uses
  %.08.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1454 ; 4 uses
  %i.ad = getelementptr i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !1457 ; 6 uses
  %.0.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1454 ; 3 uses
  %i.ae = getelementptr i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !1457
  %i.af = ptrtoint ptr %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 4 uses
  %i.ag = ptrtoint ptr %.08.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ptrtoint ptr %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aj = ptrtoint ptr %.0.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp eq i64 %i.ah, %i.ak
  br i1 %i.al, label %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.not4952.i = icmp eq ptr %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.038.054.i = phi ptr [ %i.aq, %bb.c ], [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.042.053.i = phi ptr [ %i.ap, %bb.c ], [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.am = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !211
  %i.an = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !211
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ap, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3320

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.042.0.lcssa.i = phi ptr [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.c ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.c ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.ar = icmp eq ptr %.sroa.042.0.lcssa.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ar, label %.loopexit34, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.as = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.at = sub i64 %i.af, %i.as
  %i.au = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.at
  %i.av = add i64 %i.af, -4
  %i.aw = add i64 %i.af, -4
  %i.ax = sub i64 %i.aw, %i.as                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.ax, 12
  %n.vec372 = and i64 %i.az, 9223372036854775804  ; 3 uses
  %i.ba = shl i64 %n.vec372, 2
  %i.bb = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.ba
  %cmp.n385 = icmp eq i64 %i.az, %n.vec372
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.du, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.bc = shl i64 %indvar, 2
  %i.bd = add i64 %i.bc, %i.as
  %i.be = sub i64 %i.av, %i.bd                    ; 2 uses
  %65 = lshr i64 %i.be, 2
  %66 = add nuw nsw i64 %65, 1                    ; 2 uses
  %i.bf = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.bg = sub i64 %i.bf, %i.as                    ; 3 uses
  %i.bh = ashr i64 %i.bg, 4                       ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.d
  %i.bj = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.bk = and i64 %i.bg, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.bk ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i826 ], [ %i.bx, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bw, %bb.i ] ; 9 uses
  %i.bl = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.bm = icmp eq i32 %i.bl, %i.bj
  br i1 %i.bm, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !211
  %i.bp = icmp eq i32 %i.bo, %i.bj
  br i1 %i.bp, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !211
  %i.bs = icmp eq i32 %i.br, %i.bj
  br i1 %i.bs, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !211
  %i.bv = icmp eq i32 %i.bu, %i.bj
  br i1 %i.bv, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bx = add nsw i64 %.052.i.i.i, -1
  %i.by = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.by, label %bb.e, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3321

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bf, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bg, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.d ] ; 5 uses
  %i.bz = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bz, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.n

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ca = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.cb = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.ce = phi i32 [ %i.cb, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.cd, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cf = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.cg = icmp eq i32 %i.cf, %i.ce
  br i1 %i.cg, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge57.i.i.i
  %i.ci = phi i32 [ %i.ce, %bb.m ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.ch, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.ck = icmp eq i32 %i.cj, %i.ci
  %spec.select.i.i.i = select i1 %i.ck, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343: ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345: ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.e, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345, %bb.n, %bb.l, %bb.j, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.n ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.cn, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345 ], [ %i.cm, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343 ], [ %i.cl, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.co = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check370, label %scalar.ph369.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %bb.o
  %broadcast.splatinsert373 = insertelement <2 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat374 = shufflevector <2 x i32> %broadcast.splatinsert373, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph371
  %index376 = phi i64 [ 0, %vector.ph371 ], [ %index.next382, %vector.body375 ] ; 2 uses
  %vec.phi377 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.cv, %vector.body375 ]
  %vec.phi378 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.cw, %vector.body375 ]
  %i.cp = shl i64 %index376, 2
  %next.gep379 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep379, i64 8
  %wide.load380 = load <2 x i32>, ptr %next.gep379, align 4, !tbaa !211
  %wide.load381 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !211
  %i.cr = icmp eq <2 x i32> %wide.load380, %broadcast.splat374
  %i.cs = icmp eq <2 x i32> %wide.load381, %broadcast.splat374
  %i.ct = zext <2 x i1> %i.cr to <2 x i64>
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = add <2 x i64> %vec.phi377, %i.ct        ; 2 uses
  %i.cw = add <2 x i64> %vec.phi378, %i.cu        ; 2 uses
  %index.next382 = add nuw i64 %index376, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next382, %n.vec372
  br i1 %i.cx, label %middle.block383, label %vector.body375, !llvm.loop !6290

middle.block383:                                  ; preds = %vector.body375
  %bin.rdx384 = add <2 x i64> %i.cw, %i.cv
  %i.cy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx384) ; 2 uses
  br i1 %cmp.n385, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph369.preheader

scalar.ph369.preheader:                           ; preds = %bb.o, %middle.block383
  %.07.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.cy, %middle.block383 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.o ], [ %i.bb, %middle.block383 ]
  br label %scalar.ph369

scalar.ph369:                                     ; preds = %scalar.ph369.preheader, %scalar.ph369
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph369 ], [ %.07.i.i.ph, %scalar.ph369.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.dc, %scalar.ph369 ], [ %.sroa.03.06.i.i.ph, %scalar.ph369.preheader ] ; 2 uses
  %i.cz = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.da = icmp eq i32 %i.cz, %i.co
  %i.db = zext i1 %i.da to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.dc, %i.au
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph369, !llvm.loop !6291

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph369, %middle.block383
  %spec.select.i.i.lcssa = phi i64 [ %i.cy, %middle.block383 ], [ %spec.select.i.i, %scalar.ph369 ] ; 2 uses
  %i.dd = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.dd, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.be, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader394, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %66, 9223372036854775804       ; 3 uses
  %i.de = shl i64 %n.vec, 2
  %i.df = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.de
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi367 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %i.dg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load368 = load <2 x i32>, ptr %i.dh, align 4, !tbaa !211
  %i.di = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.dj = icmp eq <2 x i32> %wide.load368, %broadcast.splat
  %i.dk = zext <2 x i1> %i.di to <2 x i64>
  %i.dl = zext <2 x i1> %i.dj to <2 x i64>
  %i.dm = add <2 x i64> %vec.phi, %i.dk           ; 2 uses
  %i.dn = add <2 x i64> %vec.phi367, %i.dl        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !6292

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dn, %i.dm
  %i.dp = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %66, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader394

.lr.ph.i26.i.preheader394:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.dp, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.df, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader394, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader394 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dt, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader394 ] ; 2 uses
  %i.dq = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.dr = icmp eq i32 %i.dq, %i.co
  %i.ds = zext i1 %i.dr to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.ds ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dt, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !6293

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.dp, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.du, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit34, label %bb.d, !llvm.loop !3328

.loopexit34:                                      ; preds = %.critedge.i, %._crit_edge.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %.val195.val197
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread19, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6294

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %.lr.ph.split
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.012.060, i64 24 ; 2 uses
  %.not32 = icmp eq ptr %i.dx, %.val184
  br i1 %.not32, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us, %bb.b
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !6295
  %.not.i = icmp eq ptr %.val184, %i.dy
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !6297
  br label %.thread19

bb.q:                                             ; preds = %.thread
  %i.ea = ptrtoint ptr %.val184 to i64
  %i.eb = ptrtoint ptr %.val181 to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 4 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.r, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ee = sdiv exact i64 %i.ec, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3259, i64 1, i64 %i.ee
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 384307168202282325)
  %i.ei = select i1 %i.eg, i64 384307168202282325, i64 %i.eh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ej = mul nuw nsw i64 %i.ei, 24
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #35
          to label %.noexc258 unwind label %.loopexit37 ; 6 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 24, i1 false)
  br i1 %.not3259, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i ], [ %i.ek, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i ], [ %.val181, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6298)
  call void @llvm.experimental.noalias.scope.decl(metadata !6301)
  %i.em = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !6303, !alias.scope !6301, !noalias !6298
  store <2 x ptr> %i.em, ptr %.03.i.i.i.i.i, align 8, !tbaa !6303, !alias.scope !6298, !noalias !6301
  %i.en = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !6304, !alias.scope !6301, !noalias !6298
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !6304, !alias.scope !6298, !noalias !6301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !6301, !noalias !6298
  %i.eq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eq, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6305

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ek, %.noexc258 ], [ %i.er, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val181, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val181, i64 noundef %i.ec) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i
  store ptr %i.ek, ptr %40, align 8, !tbaa !6306
  store ptr %i.es, ptr %i.c, align 8, !tbaa !6297
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.et, ptr %i.d, align 8, !tbaa !6295
  br label %.thread19

.loopexit37:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

.thread19:                                        ; preds = %.lr.ph.split.us, %.loopexit34, %bb.p, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i
  %.val18195 = phi ptr [ %.val181, %.loopexit34 ], [ %.val181, %bb.p ], [ %i.ek, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i ], [ %.val181, %.lr.ph.split.us ]
  %.3109 = phi ptr [ %.sroa.012.060, %.loopexit34 ], [ %.val184, %bb.p ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i ], [ %.sroa.012.060.us, %.lr.ph.split.us ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !6307 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !6304
  %.not.i.i = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread19
  store ptr %.sroa.014.064, ptr %i.ev, align 8, !tbaa !6308
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.012065, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !6307
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE9push_backEOSP_.exit

bb.u:                                             ; preds = %.thread19
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !6284 ; 5 uses
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa                    ; 5 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775792
  br i1 %i.fc, label %bb.v, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp39

.noexc259:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.fd = ashr exact i64 %i.fb, 4                 ; 3 uses
  %i.fe = icmp eq ptr %i.ev, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.fe, i64 1, i64 %i.fd
  %i.ff = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fd ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.fd
end_hunk_4
