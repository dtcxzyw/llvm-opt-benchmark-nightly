Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/hash_instantiated_test?download=true
inline.NumInlined: 29463
inline.NumDeleted: 10401
loop-unroll.NumCompletelyUnrolled: 582
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 594
begin_hunk_0_@_ZNSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EE19_M_range_initializeIPKS2_EEvT_S8_St20forward_iterator_tag:bb.a

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ag

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #29
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable

_ZSt22__uninitialized_copy_aIPKN12_GLOBAL__N_117UnorderedSequenceIiEEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EE11_M_allocateEm.exit.thread ], [ %i.ad, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.aj, align 8, !tbaa !512
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_117UnorderedSequenceIiEEEvT_S4_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_117UnorderedSequenceIiEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN12_GLOBAL__N_117UnorderedSequenceIiEEEvPT_.exit.i
  %.06.i = phi ptr [ %i.e, %_ZSt8_DestroyIN12_GLOBAL__N_117UnorderedSequenceIiEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %.0.val.i = load ptr, ptr %.06.i, align 8, !tbaa !383 ; 3 uses
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
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN12_GLOBAL__N_117UnorderedSequenceIiEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !58

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
  %.012061 = phi i64 [ 0, %.lr.ph62 ], [ %i.ez, %bb.bb ] ; 3 uses
  %.sroa.014.060 = phi ptr [ %.0.val, %.lr.ph62 ], [ %i.il, %bb.bb ] ; 4 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !3950 ; 8 uses
  %.not3056 = icmp eq ptr %.val181, %.val184      ; 3 uses
  br i1 %.not3056, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.060, align 8, !tbaa !511 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !383 ; 4 uses
  %i.m = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.m, align 8, !tbaa !385 ; 6 uses
  %i.n = ptrtoint ptr %.val195.val197 to i64      ; 4 uses
  %i.o = ptrtoint ptr %.val195.val to i64
  %i.p = sub i64 %i.n, %i.o
  %.not4952.i = icmp eq ptr %.val195.val, %.val195.val197
  %i.q = add i64 %i.n, -4
  %i.r = add i64 %i.n, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit
  %.sroa.012.057 = phi ptr [ %.val181, %.lr.ph ], [ %i.de, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.057, align 8, !tbaa !3953
  %i.s = load ptr, ptr %.val194, align 8, !tbaa !3956, !nonnull !192, !align !279
  %.val196 = load ptr, ptr %i.s, align 8, !tbaa !511 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !383 ; 3 uses
  %i.t = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.t, align 8, !tbaa !385
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
  %i.y = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !232
  %i.z = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !232
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ab, %.val195.val197
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.042.0.lcssa.i = phi ptr [ %.val195.val, %bb.d ], [ %i.ab, %bb.e ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.val196.val, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.ad = icmp eq ptr %.sroa.042.0.lcssa.i, %.val195.val197
  br i1 %i.ad, label %.loopexit32, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.ae = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.af = sub i64 %i.n, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.af
  %i.ah = sub i64 %i.q, %i.ae                     ; 2 uses
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
  %.sroa.033.068.i = phi ptr [ %i.dd, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.am = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.an = sub i64 %i.am, %i.ae                    ; 3 uses
  %i.ao = ashr i64 %i.an, 4                       ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.f
  %i.aq = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 4 uses
  %i.ar = and i64 %i.an, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.ar ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i826 ], [ %i.be, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bd, %bb.k ] ; 9 uses
  %i.as = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !232
  %i.at = icmp eq i32 %i.as, %i.aq
  br i1 %i.at, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !232
  %i.aw = icmp eq i32 %i.av, %i.aq
  br i1 %i.aw, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !232
  %i.az = icmp eq i32 %i.ay, %i.aq
  br i1 %i.az, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !232
  %i.bc = icmp eq i32 %i.bb, %i.aq
  br i1 %i.bc, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.be = add nsw i64 %.052.i.i.i, -1
  %i.bf = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bf, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !60

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.am, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.an, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bg = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bg, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232
  br label %bb.p

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !232
  %i.bi = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 2 uses
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.bl = phi i32 [ %i.bi, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bk, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.bm = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !232
  %i.bn = icmp eq i32 %i.bm, %i.bl
  br i1 %i.bn, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.bp = phi i32 [ %i.bl, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !232
  %i.br = icmp eq i32 %i.bq, %i.bp
  %spec.select.i.i.i = select i1 %i.br, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333: ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335: ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bu, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335 ], [ %i.bt, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333 ], [ %i.bs, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.bv = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 4 uses
  br i1 %min.iters.check358, label %scalar.ph357.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %bb.q
  %broadcast.splatinsert361 = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat362 = shufflevector <2 x i32> %broadcast.splatinsert361, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph359
  %index364 = phi i64 [ 0, %vector.ph359 ], [ %index.next370, %vector.body363 ] ; 2 uses
  %vec.phi365 = phi <2 x i64> [ zeroinitializer, %vector.ph359 ], [ %i.cc, %vector.body363 ]
  %vec.phi366 = phi <2 x i64> [ zeroinitializer, %vector.ph359 ], [ %i.cd, %vector.body363 ]
  %i.bw = shl i64 %index364, 2
  %next.gep367 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep367, i64 8
  %wide.load368 = load <2 x i32>, ptr %next.gep367, align 4, !tbaa !232
  %wide.load369 = load <2 x i32>, ptr %i.bx, align 4, !tbaa !232
  %i.by = icmp eq <2 x i32> %wide.load368, %broadcast.splat362
  %i.bz = icmp eq <2 x i32> %wide.load369, %broadcast.splat362
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = zext <2 x i1> %i.bz to <2 x i64>
  %i.cc = add <2 x i64> %vec.phi365, %i.ca        ; 2 uses
  %i.cd = add <2 x i64> %vec.phi366, %i.cb        ; 2 uses
  %index.next370 = add nuw i64 %index364, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next370, %n.vec360
  br i1 %i.ce, label %middle.block371, label %vector.body363, !llvm.loop !3940

middle.block371:                                  ; preds = %vector.body363
  %bin.rdx372 = add <2 x i64> %i.cd, %i.cc
  %i.cf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx372) ; 2 uses
  br i1 %cmp.n373, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph357.preheader

scalar.ph357.preheader:                           ; preds = %bb.q, %middle.block371
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.cf, %middle.block371 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.al, %middle.block371 ]
  br label %scalar.ph357

scalar.ph357:                                     ; preds = %scalar.ph357.preheader, %scalar.ph357
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph357 ], [ %.07.i.i.ph, %scalar.ph357.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cj, %scalar.ph357 ], [ %.sroa.03.06.i.i.ph, %scalar.ph357.preheader ] ; 2 uses
  %i.cg = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !232
  %i.ch = icmp eq i32 %i.cg, %i.bv
  %i.ci = zext i1 %i.ch to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.ci ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cj, %i.ag
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph357, !llvm.loop !3941

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph357, %middle.block371
  %spec.select.i.i.lcssa = phi i64 [ %i.cf, %middle.block371 ], [ %spec.select.i.i, %scalar.ph357 ] ; 2 uses
  %i.ck = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.ck, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %65 = shl i64 %indvar, 2
  %66 = add i64 %65, %i.ae
  %67 = sub i64 %i.r, %66                         ; 2 uses
  %i.cl = lshr i64 %67, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %67, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader382, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.cm, 9223372036854775804     ; 3 uses
  %i.cn = shl i64 %n.vec, 2
  %i.co = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cn
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi355 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.cp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !232
  %wide.load356 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !232
  %i.cr = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.cs = icmp eq <2 x i32> %wide.load356, %broadcast.splat
  %i.ct = zext <2 x i1> %i.cr to <2 x i64>
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = add <2 x i64> %vec.phi, %i.ct           ; 2 uses
  %i.cw = add <2 x i64> %vec.phi355, %i.cu        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !3942

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cw, %i.cv
  %i.cy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader382

.lr.ph.i26.i.preheader382:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.cy, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader382, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader382 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dc, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader382 ] ; 2 uses
  %i.cz = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !232
  %i.da = icmp eq i32 %i.cz, %i.bv
  %i.db = zext i1 %i.da to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dc, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !3943

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.cy, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.dd, %.val195.val197
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit32, label %bb.f, !llvm.loop !61

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.057, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.de, %.val184
  br i1 %.not30, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, %bb.b
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !517
  %.not.i = icmp eq ptr %.val184, %i.df
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !518
  br label %.loopexit32

bb.s:                                             ; preds = %.thread
  %i.dh = ptrtoint ptr %.val184 to i64
  %i.di = ptrtoint ptr %.val181 to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 4 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.t, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.dl = sdiv exact i64 %i.dj, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3056, i64 1, i64 %i.dl
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 384307168202282325)
  %i.dp = select i1 %i.dn, i64 384307168202282325, i64 %i.do ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dq = mul nuw nsw i64 %i.dp, 24
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #35
          to label %.noexc258 unwind label %.loopexit34 ; 6 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  br i1 %.not3056, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %i.dr, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.val181, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3957)
  call void @llvm.experimental.noalias.scope.decl(metadata !3958)
  %i.dt = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !3959, !alias.scope !3958, !noalias !3957
  store <2 x ptr> %i.dt, ptr %.03.i.i.i.i.i, align 8, !tbaa !3959, !alias.scope !3957, !noalias !3958
  %i.du = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !3960, !alias.scope !3958, !noalias !3957
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !3960, !alias.scope !3957, !noalias !3958
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3958, !noalias !3957
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dx, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3947

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %.noexc258 ], [ %i.dy, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val181, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val181, i64 noundef %i.dj) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i
  store ptr %i.dr, ptr %40, align 8, !tbaa !519
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !518
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !517
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
  %.val18189 = phi ptr [ %.val181, %.critedge.i ], [ %.val181, %bb.r ], [ %i.dr, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i ], [ %.val181, %._crit_edge.i ]
  %.3109 = phi ptr [ %.sroa.012.057, %.critedge.i ], [ %.val184, %bb.r ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i ], [ %.sroa.012.057, %._crit_edge.i ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !3961 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !3960
  %.not.i.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.060, ptr %i.ec, align 8, !tbaa !3962
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %.012061, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !199
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ef, ptr %i.eb, align 8, !tbaa !3961
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE9push_backEOSK_.exit

bb.w:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !3953 ; 5 uses
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 5 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775792
  br i1 %i.ej, label %bb.x, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.ek = ashr exact i64 %i.ei, 4                 ; 3 uses
  %i.el = icmp eq ptr %i.ec, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.el, i64 1, i64 %i.ek
  %i.em = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ek ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.ek
  %i.eo = call i64 @llvm.umin.i64(i64 %i.em, i64 576460752303423487)
  %i.ep = select i1 %i.en, i64 576460752303423487, i64 %i.eo ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ep, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
end_hunk_0
begin_hunk_1_@_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info8ToStringB5cxx11Ev:bb.a
_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.b
  %i.aa = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !4022 ; 2 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !212, !noalias !4022
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !4022
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !4020
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !212, !noalias !4022
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !4022
  store ptr %i.af, ptr %i.g, align 8, !tbaa !212, !noalias !4022
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !212, !noalias !4022
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197, !noalias !4022 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !200, !noalias !4022
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #33, !noalias !4020
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
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #30, !noalias !4020
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !4022
  br label %common.resume.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !212, !noalias !4022
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #30, !noalias !4020
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !4022 ; 2 uses
  store ptr %i.ap, ptr %2, align 8, !tbaa !212, !noalias !4022
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !4022
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8, !noalias !4020
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !212, !noalias !4022
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !326, !noalias !4022
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #30, !noalias !4020
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !4022
  %i.aw = load ptr, ptr %4, align 8, !tbaa !197, !noalias !4020
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !201, !noalias !4020
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !4027
  store i64 1, ptr %1, align 8, !noalias !4027
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.63, ptr %i.ay, align 8, !noalias !4027
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i5.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !tbaa !199, !noalias !4027
  %.sroa.2.0.copyload.i7.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !182, !noalias !4027
  store i64 %.sroa.0.0.copyload.i5.i.i.i.i.i.i.i, ptr %i.az, align 8, !noalias !4027
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.2.0.copyload.i7.i.i.i.i.i.i.i, ptr %i.ba, align 8, !noalias !4027
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 1, ptr %i.bb, align 8, !noalias !4027
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @.str.64, ptr %i.bc, align 8, !noalias !4027
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ax, ptr %i.bd, align 8, !noalias !4027
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.aw, ptr %i.be, align 8, !noalias !4027
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 1, ptr %i.bf, align 8, !noalias !4027
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @.str.65, ptr %i.bg, align 8, !noalias !4027
  invoke void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %1, i64 5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !4027
  %i.bh = load ptr, ptr %4, align 8, !tbaa !197, !noalias !4020 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.h
  br i1 %i.bi, label %_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !200, !noalias !4020
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #33
  br label %_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !197, !noalias !4020 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i: ; preds = %bb.g
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !200, !noalias !4020
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !4020
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !4020
  br label %common.resume.i.i.i.i.i.i

_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !4020
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !4020
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !519    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !518  ; 2 uses
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
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !62

_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EEEvPSH_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !519
  br label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit

_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESaISN_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8, !tbaa !517
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
  %i.a = load i32, ptr %.sroa.042.053, align 4, !tbaa !232
  %i.b = load i32, ptr %.sroa.038.054, align 4, !tbaa !232
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.042.053, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.038.054, i64 4 ; 2 uses
  %.not49 = icmp eq ptr %i.d, %1
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !59

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
  %i.l = sub i64 %i.k, %i.h                       ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check104 = icmp ult i64 %i.l, 12
  %n.vec106 = and i64 %i.n, 9223372036854775804   ; 3 uses
  %i.o = shl i64 %n.vec106, 2
  %i.p = getelementptr i8, ptr %.sroa.038.0.lcssa, i64 %i.o
  %cmp.n119 = icmp eq i64 %i.n, %n.vec106
  %3 = add i64 %i.g, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph70, %.critedge
  %indvar = phi i64 [ 0, %.lr.ph70 ], [ %indvar.next, %.critedge ] ; 2 uses
  %.sroa.033.068 = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph70 ], [ %i.ch, %.critedge ] ; 13 uses
  %i.q = ptrtoint ptr %.sroa.033.068 to i64       ; 2 uses
  %i.r = sub i64 %i.q, %i.h                       ; 3 uses
  %i.s = ashr i64 %i.r, 4                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.u = load i32, ptr %.sroa.033.068, align 4, !tbaa !232 ; 4 uses
  %i.v = and i64 %i.r, -16
  %scevgep.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa, i64 %i.v ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.052.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.ai, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph.i.i ], [ %i.ah, %bb.h ] ; 9 uses
  %i.w = load i32, ptr %.sroa.032.051.i.i, align 4, !tbaa !232
  %i.x = icmp eq i32 %i.w, %i.u
  br i1 %i.x, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !232
  %i.aa = icmp eq i32 %i.z, %i.u
  br i1 %i.aa, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !232
  %i.ad = icmp eq i32 %i.ac, %i.u
  br i1 %i.ad, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !232
  %i.ag = icmp eq i32 %i.af, %i.u
  br i1 %i.ag, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 16
  %i.ai = add nsw i64 %.052.i.i, -1
  %i.aj = icmp sgt i64 %.052.i.i, 1
  br i1 %i.aj, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !60

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre59.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre60.i.i = sub i64 %i.q, %.pre59.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi61.i.i = phi i64 [ %.pre60.i.i, %._crit_edge.loopexit.i.i ], [ %i.r, %bb.c ]
  %.sroa.032.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %.sroa.042.0.lcssa, %bb.c ] ; 5 uses
  %i.ak = ashr exact i64 %.pre-phi61.i.i, 2
  switch i64 %i.ak, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i
  ]

._crit_edge._crit_edge57.i.i:                     ; preds = %._crit_edge.i.i
  %.pre58.i.i = load i32, ptr %.sroa.033.068, align 4, !tbaa !232
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i32, ptr %.sroa.033.068, align 4, !tbaa !232
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.al = load i32, ptr %.sroa.032.0.lcssa.i.i, align 4, !tbaa !232
  %i.am = load i32, ptr %.sroa.033.068, align 4, !tbaa !232 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.ap = phi i32 [ %i.am, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.sroa.032.1.i.i = phi ptr [ %i.ao, %bb.j ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.aq = load i32, ptr %.sroa.032.1.i.i, align 4, !tbaa !232
  %i.ar = icmp eq i32 %i.aq, %i.ap
  br i1 %i.ar, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i
  %i.at = phi i32 [ %i.ap, %bb.l ], [ %.pre58.i.i, %._crit_edge._crit_edge57.i.i ]
  %.sroa.032.2.i.i = phi ptr [ %i.as, %bb.l ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge57.i.i ] ; 2 uses
  %i.au = load i32, ptr %.sroa.032.2.i.i, align 4, !tbaa !232
  %i.av = icmp eq i32 %i.au, %i.at
  %spec.select.i.i = select i1 %i.av, ptr %.sroa.032.2.i.i, ptr %.sroa.033.068
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89: ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91: ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit: ; preds = %bb.d, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91, %._crit_edge.i.i, %bb.i, %bb.k, %bb.m
  %.sroa.08.0.in.sroa.speculated.i.i = phi ptr [ %.sroa.032.1.i.i, %bb.k ], [ %spec.select.i.i, %bb.m ], [ %.sroa.033.068, %._crit_edge.i.i ], [ %.sroa.032.0.lcssa.i.i, %bb.i ], [ %i.ay, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91 ], [ %i.aw, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit ], [ %i.ax, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89 ], [ %.sroa.032.051.i.i, %bb.d ]
  %.not51 = icmp eq ptr %.sroa.033.068, %.sroa.08.0.in.sroa.speculated.i.i
  br i1 %.not51, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit
  %i.az = load i32, ptr %.sroa.033.068, align 4, !tbaa !232 ; 4 uses
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert107 = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat108 = shufflevector <2 x i32> %broadcast.splatinsert107, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next116, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <2 x i64> [ zeroinitializer, %vector.ph105 ], [ %i.bg, %vector.body109 ]
  %vec.phi112 = phi <2 x i64> [ zeroinitializer, %vector.ph105 ], [ %i.bh, %vector.body109 ]
  %i.ba = shl i64 %index110, 2
  %next.gep113 = getelementptr i8, ptr %.sroa.038.0.lcssa, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep113, i64 8
  %wide.load114 = load <2 x i32>, ptr %next.gep113, align 4, !tbaa !232
  %wide.load115 = load <2 x i32>, ptr %i.bb, align 4, !tbaa !232
  %i.bc = icmp eq <2 x i32> %wide.load114, %broadcast.splat108
  %i.bd = icmp eq <2 x i32> %wide.load115, %broadcast.splat108
  %i.be = zext <2 x i1> %i.bc to <2 x i64>
  %i.bf = zext <2 x i1> %i.bd to <2 x i64>
  %i.bg = add <2 x i64> %vec.phi111, %i.be        ; 2 uses
  %i.bh = add <2 x i64> %vec.phi112, %i.bf        ; 2 uses
  %index.next116 = add nuw i64 %index110, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next116, %n.vec106
  br i1 %i.bi, label %middle.block117, label %vector.body109, !llvm.loop !4028

middle.block117:                                  ; preds = %vector.body109
  %bin.rdx118 = add <2 x i64> %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx118) ; 2 uses
  br i1 %cmp.n119, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.lr.ph.i, %middle.block117
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bj, %middle.block117 ]
  %.sroa.03.06.i.ph = phi ptr [ %.sroa.038.0.lcssa, %.lr.ph.i ], [ %i.p, %middle.block117 ]
  br label %scalar.ph103

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %.07.i = phi i64 [ %spec.select.i, %scalar.ph103 ], [ %.07.i.ph, %scalar.ph103.preheader ]
  %.sroa.03.06.i = phi ptr [ %i.bn, %scalar.ph103 ], [ %.sroa.03.06.i.ph, %scalar.ph103.preheader ] ; 2 uses
  %i.bk = load i32, ptr %.sroa.03.06.i, align 4, !tbaa !232
  %i.bl = icmp eq i32 %i.bk, %i.az
  %i.bm = zext i1 %i.bl to i64
  %spec.select.i = add nuw nsw i64 %.07.i, %i.bm  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bn, %i.j
  br i1 %.not.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103, !llvm.loop !4029

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit: ; preds = %scalar.ph103, %middle.block117
  %spec.select.i.lcssa = phi i64 [ %i.bj, %middle.block117 ], [ %spec.select.i, %scalar.ph103 ] ; 2 uses
  %i.bo = icmp eq i64 %spec.select.i.lcssa, 0
  br i1 %i.bo, label %.critedge24, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit
  %4 = shl i64 %indvar, 2
  %5 = add i64 %4, %i.h
  %6 = sub i64 %3, %5                             ; 2 uses
  %i.bp = lshr i64 %6, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 12
  br i1 %min.iters.check, label %.lr.ph.i26.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.preheader
  %n.vec = and i64 %i.bq, 9223372036854775804     ; 3 uses
  %i.br = shl i64 %n.vec, 2
  %i.bs = getelementptr i8, ptr %.sroa.033.068, i64 %i.br
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %vec.phi101 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %i.bt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !232
  %wide.load102 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !232
  %i.bv = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.bw = icmp eq <2 x i32> %wide.load102, %broadcast.splat
  %i.bx = zext <2 x i1> %i.bv to <2 x i64>
  %i.by = zext <2 x i1> %i.bw to <2 x i64>
  %i.bz = add <2 x i64> %vec.phi, %i.bx           ; 2 uses
  %i.ca = add <2 x i64> %vec.phi101, %i.by        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !4030

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, label %.lr.ph.i26.preheader122

.lr.ph.i26.preheader122:                          ; preds = %.lr.ph.i26.preheader, %middle.block
  %.07.i27.ph = phi i64 [ 0, %.lr.ph.i26.preheader ], [ %i.cc, %middle.block ]
  %.sroa.03.06.i28.ph = phi ptr [ %.sroa.033.068, %.lr.ph.i26.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader122, %.lr.ph.i26
  %.07.i27 = phi i64 [ %spec.select.i29, %.lr.ph.i26 ], [ %.07.i27.ph, %.lr.ph.i26.preheader122 ]
  %.sroa.03.06.i28 = phi ptr [ %i.cg, %.lr.ph.i26 ], [ %.sroa.03.06.i28.ph, %.lr.ph.i26.preheader122 ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.03.06.i28, align 4, !tbaa !232
  %i.ce = icmp eq i32 %i.cd, %i.az
  %i.cf = zext i1 %i.ce to i64
  %spec.select.i29 = add nuw nsw i64 %.07.i27, %i.cf ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %i.cg, %1
  br i1 %.not.i30, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, label %.lr.ph.i26, !llvm.loop !4031

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32: ; preds = %.lr.ph.i26, %middle.block
  %spec.select.i29.lcssa = phi i64 [ %i.cc, %middle.block ], [ %spec.select.i29, %.lr.ph.i26 ]
  %.not = icmp eq i64 %spec.select.i29.lcssa, %spec.select.i.lcssa
  br i1 %.not, label %.critedge, label %.critedge24

.critedge:                                        ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.033.068, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.ch, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50, label %.critedge24, label %bb.c, !llvm.loop !61

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
  call void @llvm.experimental.noalias.scope.decl(metadata !4077)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %21, i8 0, i64 41, i1 false), !noalias !4077
  %i.c = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %21, ptr noundef nonnull align 8 dereferenceable(41) %23) #30, !noalias !4077 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4078)
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !4077
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !4077
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %20, i8 0, i64 41, i1 false), !noalias !4079
  %i.d = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %20, ptr noundef nonnull align 8 dereferenceable(41) %21) #30, !noalias !4079 ; 0 uses
  %.val8.i.i = load ptr, ptr %2, align 8, !tbaa !246, !noalias !4079 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val9.i.i = load ptr, ptr %i.e, align 8, !tbaa !246, !noalias !4079 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4080)
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !4079
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %18, i8 0, i64 41, i1 false), !noalias !4081
  %i.f = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %18, ptr noundef nonnull align 8 dereferenceable(41) %20) #30, !noalias !4081 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4082)
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !4081
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !4083
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false), !noalias !4083
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %17, i8 0, i64 24, i1 false), !noalias !4083
  call void @llvm.experimental.noalias.scope.decl(metadata !4084)
  %i.g = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %bb.c unwind label %bb.b, !noalias !4083 ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(41) %17) #30, !noalias !4083
  br label %.body.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !301, !noalias !4085
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !302, !noalias !4085
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !212, !noalias !4085
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 0, ptr %i.m, align 8, !tbaa !298, !noalias !4085
  store ptr %i.g, ptr %i.j, align 16, !tbaa !299, !alias.scope !4084, !noalias !4083
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.i, align 8, !tbaa !305, !alias.scope !4084, !noalias !4083
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !295, !noalias !4083
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !4083
  %.not52.i.i.i.i.i = icmp eq ptr %.val8.i.i, %.val9.i.i
  br i1 %.not52.i.i.i.i.i, label %.loopexit46.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit46.thread.i.i.i.i:                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !4083
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
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EE19_M_range_initializeIPKS7_EEvT_SD_St20forward_iterator_tag:bb.a

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ag

bb.k:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #29
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable

_ZSt22__uninitialized_copy_aIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEPS7_S7_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EE11_M_allocateEm.exit.thread ], [ %i.ad, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.aj, align 8, !tbaa !527
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvT_S9_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not5.i = icmp eq ptr %0, %1
  br i1 %.not5.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvPT_.exit.i
  %.06.i = phi ptr [ %i.e, %_ZSt8_DestroyIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %.0.val.i = load ptr, ptr %.06.i, align 8, !tbaa !383 ; 3 uses
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
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !63

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
  %.012061 = phi i64 [ 0, %.lr.ph62 ], [ %i.ez, %bb.bb ] ; 3 uses
  %.sroa.014.060 = phi ptr [ %.0.val, %.lr.ph62 ], [ %i.il, %bb.bb ] ; 4 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !4196 ; 8 uses
  %.not3056 = icmp eq ptr %.val181, %.val184      ; 3 uses
  br i1 %.not3056, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.060, align 8, !tbaa !526 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !383 ; 4 uses
  %i.m = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.m, align 8, !tbaa !385 ; 6 uses
  %i.n = ptrtoint ptr %.val195.val197 to i64      ; 4 uses
  %i.o = ptrtoint ptr %.val195.val to i64
  %i.p = sub i64 %i.n, %i.o
  %.not4952.i = icmp eq ptr %.val195.val, %.val195.val197
  %i.q = add i64 %i.n, -4
  %i.r = add i64 %i.n, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit
  %.sroa.012.057 = phi ptr [ %.val181, %.lr.ph ], [ %i.de, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.057, align 8, !tbaa !4199
  %i.s = load ptr, ptr %.val194, align 8, !tbaa !4202, !nonnull !192, !align !279
  %.val196 = load ptr, ptr %i.s, align 8, !tbaa !526 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !383 ; 3 uses
  %i.t = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.t, align 8, !tbaa !385
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
  %i.y = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !232
  %i.z = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !232
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ab, %.val195.val197
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.042.0.lcssa.i = phi ptr [ %.val195.val, %bb.d ], [ %i.ab, %bb.e ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.val196.val, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.ad = icmp eq ptr %.sroa.042.0.lcssa.i, %.val195.val197
  br i1 %i.ad, label %.loopexit32, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.ae = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.af = sub i64 %i.n, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.af
  %i.ah = sub i64 %i.q, %i.ae                     ; 2 uses
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
  %.sroa.033.068.i = phi ptr [ %i.dd, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.am = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.an = sub i64 %i.am, %i.ae                    ; 3 uses
  %i.ao = ashr i64 %i.an, 4                       ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.f
  %i.aq = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 4 uses
  %i.ar = and i64 %i.an, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.ar ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i826 ], [ %i.be, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bd, %bb.k ] ; 9 uses
  %i.as = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !232
  %i.at = icmp eq i32 %i.as, %i.aq
  br i1 %i.at, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !232
  %i.aw = icmp eq i32 %i.av, %i.aq
  br i1 %i.aw, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !232
  %i.az = icmp eq i32 %i.ay, %i.aq
  br i1 %i.az, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !232
  %i.bc = icmp eq i32 %i.bb, %i.aq
  br i1 %i.bc, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.be = add nsw i64 %.052.i.i.i, -1
  %i.bf = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bf, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !60

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.am, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.an, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bg = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bg, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232
  br label %bb.p

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !232
  %i.bi = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 2 uses
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.bl = phi i32 [ %i.bi, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bk, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.bm = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !232
  %i.bn = icmp eq i32 %i.bm, %i.bl
  br i1 %i.bn, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.bp = phi i32 [ %i.bl, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.bo, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !232
  %i.br = icmp eq i32 %i.bq, %i.bp
  %spec.select.i.i.i = select i1 %i.br, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333: ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335: ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bu, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit335 ], [ %i.bt, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit333 ], [ %i.bs, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.bv = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 4 uses
  br i1 %min.iters.check358, label %scalar.ph357.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %bb.q
  %broadcast.splatinsert361 = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat362 = shufflevector <2 x i32> %broadcast.splatinsert361, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph359
  %index364 = phi i64 [ 0, %vector.ph359 ], [ %index.next370, %vector.body363 ] ; 2 uses
  %vec.phi365 = phi <2 x i64> [ zeroinitializer, %vector.ph359 ], [ %i.cc, %vector.body363 ]
  %vec.phi366 = phi <2 x i64> [ zeroinitializer, %vector.ph359 ], [ %i.cd, %vector.body363 ]
  %i.bw = shl i64 %index364, 2
  %next.gep367 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep367, i64 8
  %wide.load368 = load <2 x i32>, ptr %next.gep367, align 4, !tbaa !232
  %wide.load369 = load <2 x i32>, ptr %i.bx, align 4, !tbaa !232
  %i.by = icmp eq <2 x i32> %wide.load368, %broadcast.splat362
  %i.bz = icmp eq <2 x i32> %wide.load369, %broadcast.splat362
  %i.ca = zext <2 x i1> %i.by to <2 x i64>
  %i.cb = zext <2 x i1> %i.bz to <2 x i64>
  %i.cc = add <2 x i64> %vec.phi365, %i.ca        ; 2 uses
  %i.cd = add <2 x i64> %vec.phi366, %i.cb        ; 2 uses
  %index.next370 = add nuw i64 %index364, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next370, %n.vec360
  br i1 %i.ce, label %middle.block371, label %vector.body363, !llvm.loop !4186

middle.block371:                                  ; preds = %vector.body363
  %bin.rdx372 = add <2 x i64> %i.cd, %i.cc
  %i.cf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx372) ; 2 uses
  br i1 %cmp.n373, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph357.preheader

scalar.ph357.preheader:                           ; preds = %bb.q, %middle.block371
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.cf, %middle.block371 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.al, %middle.block371 ]
  br label %scalar.ph357

scalar.ph357:                                     ; preds = %scalar.ph357.preheader, %scalar.ph357
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph357 ], [ %.07.i.i.ph, %scalar.ph357.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cj, %scalar.ph357 ], [ %.sroa.03.06.i.i.ph, %scalar.ph357.preheader ] ; 2 uses
  %i.cg = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !232
  %i.ch = icmp eq i32 %i.cg, %i.bv
  %i.ci = zext i1 %i.ch to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.ci ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cj, %i.ag
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph357, !llvm.loop !4187

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph357, %middle.block371
  %spec.select.i.i.lcssa = phi i64 [ %i.cf, %middle.block371 ], [ %spec.select.i.i, %scalar.ph357 ] ; 2 uses
  %i.ck = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.ck, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %65 = shl i64 %indvar, 2
  %66 = add i64 %65, %i.ae
  %67 = sub i64 %i.r, %66                         ; 2 uses
  %i.cl = lshr i64 %67, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %67, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader382, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.cm, 9223372036854775804     ; 3 uses
  %i.cn = shl i64 %n.vec, 2
  %i.co = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cn
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi355 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.cp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !232
  %wide.load356 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !232
  %i.cr = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.cs = icmp eq <2 x i32> %wide.load356, %broadcast.splat
  %i.ct = zext <2 x i1> %i.cr to <2 x i64>
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = add <2 x i64> %vec.phi, %i.ct           ; 2 uses
  %i.cw = add <2 x i64> %vec.phi355, %i.cu        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !4188

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cw, %i.cv
  %i.cy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader382

.lr.ph.i26.i.preheader382:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.cy, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader382, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader382 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dc, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader382 ] ; 2 uses
  %i.cz = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !232
  %i.da = icmp eq i32 %i.cz, %i.bv
  %i.db = zext i1 %i.da to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dc, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !4189

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.cy, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.dd, %.val195.val197
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit32, label %bb.f, !llvm.loop !61

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.057, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.de, %.val184
  br i1 %.not30, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, %bb.b
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !530
  %.not.i = icmp eq ptr %.val184, %i.df
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !531
  br label %.loopexit32

bb.s:                                             ; preds = %.thread
  %i.dh = ptrtoint ptr %.val184 to i64
  %i.di = ptrtoint ptr %.val181 to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 4 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.t, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.dl = sdiv exact i64 %i.dj, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3056, i64 1, i64 %i.dl
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 384307168202282325)
  %i.dp = select i1 %i.dn, i64 384307168202282325, i64 %i.do ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dq = mul nuw nsw i64 %i.dp, 24
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #35
          to label %.noexc258 unwind label %.loopexit34 ; 6 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  br i1 %.not3056, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %i.dr, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.val181, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4203)
  call void @llvm.experimental.noalias.scope.decl(metadata !4204)
  %i.dt = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !4205, !alias.scope !4204, !noalias !4203
  store <2 x ptr> %i.dt, ptr %.03.i.i.i.i.i, align 8, !tbaa !4205, !alias.scope !4203, !noalias !4204
  %i.du = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !4206, !alias.scope !4204, !noalias !4203
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !4206, !alias.scope !4203, !noalias !4204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !4204, !noalias !4203
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dx, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4193

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %.noexc258 ], [ %i.dy, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val181, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val181, i64 noundef %i.dj) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i
  store ptr %i.dr, ptr %40, align 8, !tbaa !532
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !531
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !530
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
  %.val18189 = phi ptr [ %.val181, %.critedge.i ], [ %.val181, %bb.r ], [ %i.dr, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i ], [ %.val181, %._crit_edge.i ]
  %.3109 = phi ptr [ %.sroa.012.057, %.critedge.i ], [ %.val184, %bb.r ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i ], [ %.sroa.012.057, %._crit_edge.i ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !4207 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !4206
  %.not.i.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.060, ptr %i.ec, align 8, !tbaa !4208
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %.012061, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !199
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ef, ptr %i.eb, align 8, !tbaa !4207
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE9push_backEOSN_.exit

bb.w:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !4199 ; 5 uses
  %i.eg = ptrtoint ptr %i.ec to i64
  %i.eh = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 5 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775792
  br i1 %i.ej, label %bb.x, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp36

.noexc259:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.ek = ashr exact i64 %i.ei, 4                 ; 3 uses
  %i.el = icmp eq ptr %i.ec, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.el, i64 1, i64 %i.ek
  %i.em = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ek ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.ek
  %i.eo = call i64 @llvm.umin.i64(i64 %i.em, i64 576460752303423487)
  %i.ep = select i1 %i.en, i64 576460752303423487, i64 %i.eo ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ep, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EEC2ERKS4_:bb.a
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.body
  %.val9 = load ptr, ptr %i.k, align 8, !tbaa !510
  %i.an = ptrtoint ptr %.val9 to i64
  %i.ao = ptrtoint ptr %.val to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.ap) #33
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EED2Ev.exit: ; preds = %bb.m, %.body
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKS3_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
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
  %.012065 = phi i64 [ 0, %.lr.ph66 ], [ %i.fq, %bb.az ] ; 3 uses
  %.sroa.014.064 = phi ptr [ %.0.val, %.lr.ph66 ], [ %i.jc, %bb.az ] ; 4 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !6496 ; 9 uses
  %.not3259 = icmp eq ptr %.val181, %.val184      ; 3 uses
  br i1 %.not3259, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.064, align 8, !tbaa !6497 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !509 ; 3 uses
  %i.m = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.m, align 8, !tbaa !512 ; 3 uses
  %i.n = ptrtoint ptr %.val195.val197 to i64
  %i.o = ptrtoint ptr %.val195.val to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val195.val, %.val195.val197
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr = freeze i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us
  %.sroa.012.060.us = phi ptr [ %i.w, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us ], [ %.val181, %.lr.ph ] ; 3 uses
  %.val194.us = load ptr, ptr %.sroa.012.060.us, align 8, !tbaa !6500
  %i.q = load ptr, ptr %.val194.us, align 8, !tbaa !6503, !nonnull !192, !align !279
  %.val196.us = load ptr, ptr %i.q, align 8, !tbaa !6497 ; 2 uses
  %.val196.val.us = load ptr, ptr %.val196.us, align 8, !tbaa !509
  %i.r = getelementptr i8, ptr %.val196.us, i64 8
  %.val196.val198.us = load ptr, ptr %i.r, align 8, !tbaa !512
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
  %.sroa.012.060 = phi ptr [ %i.dv, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ], [ %.val181, %.lr.ph ] ; 3 uses
  %.val194 = load ptr, ptr %.sroa.012.060, align 8, !tbaa !6500
  %i.x = load ptr, ptr %.val194, align 8, !tbaa !6503, !nonnull !192, !align !279
  %.val196 = load ptr, ptr %i.x, align 8, !tbaa !6497 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !509 ; 2 uses
  %i.y = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.y, align 8, !tbaa !512
  %i.z = ptrtoint ptr %.val196.val198 to i64
  %i.aa = ptrtoint ptr %.val196.val to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp eq i64 %i.p, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split, %.loopexit34
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.du, %.loopexit34 ], [ %.val196.val, %.lr.ph.split ] ; 3 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.loopexit34 ], [ %.val195.val, %.lr.ph.split ] ; 3 uses
  %.08.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !383 ; 4 uses
  %i.ad = getelementptr i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !385 ; 6 uses
  %.0.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !383 ; 3 uses
  %i.ae = getelementptr i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !385
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
  %i.am = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !232
  %i.an = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !232
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ap, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !59

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
  %i.aw = sub i64 %i.av, %i.as                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.aw, 12
  %n.vec372 = and i64 %i.ay, 9223372036854775804  ; 3 uses
  %i.az = shl i64 %n.vec372, 2
  %i.ba = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.az
  %cmp.n385 = icmp eq i64 %i.ay, %n.vec372
  %65 = add i64 %i.af, -4
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.ds, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.bb = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.bc = sub i64 %i.bb, %i.as                    ; 3 uses
  %i.bd = ashr i64 %i.bc, 4                       ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.d
  %i.bf = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 4 uses
  %i.bg = and i64 %i.bc, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.bg ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i826 ], [ %i.bt, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bs, %bb.i ] ; 9 uses
  %i.bh = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !232
  %i.bi = icmp eq i32 %i.bh, %i.bf
  br i1 %i.bi, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !232
  %i.bl = icmp eq i32 %i.bk, %i.bf
  br i1 %i.bl, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !232
  %i.bo = icmp eq i32 %i.bn, %i.bf
  br i1 %i.bo, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !232
  %i.br = icmp eq i32 %i.bq, %i.bf
  br i1 %i.br, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bt = add nsw i64 %.052.i.i.i, -1
  %i.bu = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bu, label %bb.e, label %._crit_edge.loopexit.i.i.i, !llvm.loop !60

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bb, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bc, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.d ] ; 5 uses
  %i.bv = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bv, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232
  br label %bb.n

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !232
  %i.bx = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 2 uses
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.ca = phi i32 [ %i.bx, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bz, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cb = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !232
  %i.cc = icmp eq i32 %i.cb, %i.ca
  br i1 %i.cc, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge57.i.i.i
  %i.ce = phi i32 [ %i.ca, %bb.m ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.cd, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !232
  %i.cg = icmp eq i32 %i.cf, %i.ce
  %spec.select.i.i.i = select i1 %i.cg, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343: ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345: ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.e, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345, %bb.n, %bb.l, %bb.j, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.n ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.cj, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345 ], [ %i.ci, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343 ], [ %i.ch, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.ck = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 4 uses
  br i1 %min.iters.check370, label %scalar.ph369.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %bb.o
  %broadcast.splatinsert373 = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat374 = shufflevector <2 x i32> %broadcast.splatinsert373, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph371
  %index376 = phi i64 [ 0, %vector.ph371 ], [ %index.next382, %vector.body375 ] ; 2 uses
  %vec.phi377 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.cr, %vector.body375 ]
  %vec.phi378 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.cs, %vector.body375 ]
  %i.cl = shl i64 %index376, 2
  %next.gep379 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep379, i64 8
  %wide.load380 = load <2 x i32>, ptr %next.gep379, align 4, !tbaa !232
  %wide.load381 = load <2 x i32>, ptr %i.cm, align 4, !tbaa !232
  %i.cn = icmp eq <2 x i32> %wide.load380, %broadcast.splat374
  %i.co = icmp eq <2 x i32> %wide.load381, %broadcast.splat374
  %i.cp = zext <2 x i1> %i.cn to <2 x i64>
  %i.cq = zext <2 x i1> %i.co to <2 x i64>
  %i.cr = add <2 x i64> %vec.phi377, %i.cp        ; 2 uses
  %i.cs = add <2 x i64> %vec.phi378, %i.cq        ; 2 uses
  %index.next382 = add nuw i64 %index376, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next382, %n.vec372
  br i1 %i.ct, label %middle.block383, label %vector.body375, !llvm.loop !6485

middle.block383:                                  ; preds = %vector.body375
  %bin.rdx384 = add <2 x i64> %i.cs, %i.cr
  %i.cu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx384) ; 2 uses
  br i1 %cmp.n385, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph369.preheader

scalar.ph369.preheader:                           ; preds = %bb.o, %middle.block383
  %.07.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.cu, %middle.block383 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.o ], [ %i.ba, %middle.block383 ]
  br label %scalar.ph369

scalar.ph369:                                     ; preds = %scalar.ph369.preheader, %scalar.ph369
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph369 ], [ %.07.i.i.ph, %scalar.ph369.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cy, %scalar.ph369 ], [ %.sroa.03.06.i.i.ph, %scalar.ph369.preheader ] ; 2 uses
  %i.cv = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !232
  %i.cw = icmp eq i32 %i.cv, %i.ck
  %i.cx = zext i1 %i.cw to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.cx ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cy, %i.au
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph369, !llvm.loop !6486

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph369, %middle.block383
  %spec.select.i.i.lcssa = phi i64 [ %i.cu, %middle.block383 ], [ %spec.select.i.i, %scalar.ph369 ] ; 2 uses
  %i.cz = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cz, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %66 = shl i64 %indvar, 2
  %67 = add i64 %66, %i.as
  %68 = sub i64 %65, %67                          ; 2 uses
  %i.da = lshr i64 %68, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %68, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader394, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.db, 9223372036854775804     ; 3 uses
  %i.dc = shl i64 %n.vec, 2
  %i.dd = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.dc
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi367 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %i.de = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !232
  %wide.load368 = load <2 x i32>, ptr %i.df, align 4, !tbaa !232
  %i.dg = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.dh = icmp eq <2 x i32> %wide.load368, %broadcast.splat
  %i.di = zext <2 x i1> %i.dg to <2 x i64>
  %i.dj = zext <2 x i1> %i.dh to <2 x i64>
  %i.dk = add <2 x i64> %vec.phi, %i.di           ; 2 uses
  %i.dl = add <2 x i64> %vec.phi367, %i.dj        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !6487

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dl, %i.dk
  %i.dn = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader394

.lr.ph.i26.i.preheader394:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.dn, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader394, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader394 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dr, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader394 ] ; 2 uses
  %i.do = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !232
  %i.dp = icmp eq i32 %i.do, %i.ck
  %i.dq = zext i1 %i.dp to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.dq ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dr, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !6488

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.dn, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.ds, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit34, label %bb.d, !llvm.loop !61

.loopexit34:                                      ; preds = %.critedge.i, %._crit_edge.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, %.val195.val197
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread19, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6489

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %.lr.ph.split
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.012.060, i64 24 ; 2 uses
  %.not32 = icmp eq ptr %i.dv, %.val184
  br i1 %.not32, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us, %bb.b
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !722
  %.not.i = icmp eq ptr %.val184, %i.dw
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !723
  br label %.thread19

bb.q:                                             ; preds = %.thread
  %i.dy = ptrtoint ptr %.val184 to i64
  %i.dz = ptrtoint ptr %.val181 to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.r, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ec = sdiv exact i64 %i.ea, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3259, i64 1, i64 %i.ec
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 384307168202282325)
  %i.eg = select i1 %i.ee, i64 384307168202282325, i64 %i.ef ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eh = mul nuw nsw i64 %i.eg, 24
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #35
          to label %.noexc258 unwind label %.loopexit37 ; 6 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  br i1 %.not3259, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i ], [ %i.ei, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i ], [ %.val181, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6504)
  call void @llvm.experimental.noalias.scope.decl(metadata !6505)
  %i.ek = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !6506, !alias.scope !6505, !noalias !6504
  store <2 x ptr> %i.ek, ptr %.03.i.i.i.i.i, align 8, !tbaa !6506, !alias.scope !6504, !noalias !6505
  %i.el = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !6507, !alias.scope !6505, !noalias !6504
  store ptr %i.en, ptr %i.el, align 8, !tbaa !6507, !alias.scope !6504, !noalias !6505
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !6505, !noalias !6504
  %i.eo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6493

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ei, %.noexc258 ], [ %i.ep, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val181, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val181, i64 noundef %i.ea) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i
  store ptr %i.ei, ptr %40, align 8, !tbaa !724
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !723
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.er, ptr %i.d, align 8, !tbaa !722
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
  %.val18195 = phi ptr [ %.val181, %.loopexit34 ], [ %.val181, %bb.p ], [ %i.ei, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i ], [ %.val181, %.lr.ph.split.us ]
  %.3109 = phi ptr [ %.sroa.012.060, %.loopexit34 ], [ %.val184, %bb.p ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i ], [ %.sroa.012.060.us, %.lr.ph.split.us ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !6508 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !6507
  %.not.i.i = icmp eq ptr %i.et, %i.ev
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread19
  store ptr %.sroa.014.064, ptr %i.et, align 8, !tbaa !6509
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.012065, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !199
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.ew, ptr %i.es, align 8, !tbaa !6508
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE9push_backEOSM_.exit

bb.u:                                             ; preds = %.thread19
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !6500 ; 5 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 5 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775792
  br i1 %i.fa, label %bb.v, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp39

.noexc259:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.fb = ashr exact i64 %i.ez, 4                 ; 3 uses
  %i.fc = icmp eq ptr %i.et, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.fc, i64 1, i64 %i.fb
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EEC2ERKS9_:bb.a
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.body
  %.val9 = load ptr, ptr %i.k, align 8, !tbaa !525
  %i.an = ptrtoint ptr %.val9 to i64
  %i.ao = ptrtoint ptr %.val to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.ap) #33
  br label %_ZNSt12_Vector_baseIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EED2Ev.exit: ; preds = %bb.m, %.body
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKS3_INS0_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
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
  %.012065 = phi i64 [ 0, %.lr.ph66 ], [ %i.fq, %bb.az ] ; 3 uses
  %.sroa.014.064 = phi ptr [ %.0.val, %.lr.ph66 ], [ %i.jc, %bb.az ] ; 4 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !6658 ; 9 uses
  %.not3259 = icmp eq ptr %.val181, %.val184      ; 3 uses
  br i1 %.not3259, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.064, align 8, !tbaa !6659 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !524 ; 3 uses
  %i.m = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.m, align 8, !tbaa !527 ; 3 uses
  %i.n = ptrtoint ptr %.val195.val197 to i64
  %i.o = ptrtoint ptr %.val195.val to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val195.val, %.val195.val197
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr = freeze i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us
  %.sroa.012.060.us = phi ptr [ %i.w, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us ], [ %.val181, %.lr.ph ] ; 3 uses
  %.val194.us = load ptr, ptr %.sroa.012.060.us, align 8, !tbaa !6662
  %i.q = load ptr, ptr %.val194.us, align 8, !tbaa !6665, !nonnull !192, !align !279
  %.val196.us = load ptr, ptr %i.q, align 8, !tbaa !6659 ; 2 uses
  %.val196.val.us = load ptr, ptr %.val196.us, align 8, !tbaa !524
  %i.r = getelementptr i8, ptr %.val196.us, i64 8
  %.val196.val198.us = load ptr, ptr %i.r, align 8, !tbaa !527
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
  %.sroa.012.060 = phi ptr [ %i.dv, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit ], [ %.val181, %.lr.ph ] ; 3 uses
  %.val194 = load ptr, ptr %.sroa.012.060, align 8, !tbaa !6662
  %i.x = load ptr, ptr %.val194, align 8, !tbaa !6665, !nonnull !192, !align !279
  %.val196 = load ptr, ptr %i.x, align 8, !tbaa !6659 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !524 ; 2 uses
  %i.y = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.y, align 8, !tbaa !527
  %i.z = ptrtoint ptr %.val196.val198 to i64
  %i.aa = ptrtoint ptr %.val196.val to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp eq i64 %i.p, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split, %.loopexit34
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.du, %.loopexit34 ], [ %.val196.val, %.lr.ph.split ] ; 3 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dt, %.loopexit34 ], [ %.val195.val, %.lr.ph.split ] ; 3 uses
  %.08.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !383 ; 4 uses
  %i.ad = getelementptr i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !385 ; 6 uses
  %.0.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !383 ; 3 uses
  %i.ae = getelementptr i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !385
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
  %i.am = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !232
  %i.an = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !232
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ap, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !59

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
  %i.aw = sub i64 %i.av, %i.as                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check370 = icmp ult i64 %i.aw, 12
  %n.vec372 = and i64 %i.ay, 9223372036854775804  ; 3 uses
  %i.az = shl i64 %n.vec372, 2
  %i.ba = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.az
  %cmp.n385 = icmp eq i64 %i.ay, %n.vec372
  %65 = add i64 %i.af, -4
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.ds, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.bb = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.bc = sub i64 %i.bb, %i.as                    ; 3 uses
  %i.bd = ashr i64 %i.bc, 4                       ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.d
  %i.bf = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 4 uses
  %i.bg = and i64 %i.bc, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.bg ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i826 ], [ %i.bt, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bs, %bb.i ] ; 9 uses
  %i.bh = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !232
  %i.bi = icmp eq i32 %i.bh, %i.bf
  br i1 %i.bi, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !232
  %i.bl = icmp eq i32 %i.bk, %i.bf
  br i1 %i.bl, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !232
  %i.bo = icmp eq i32 %i.bn, %i.bf
  br i1 %i.bo, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !232
  %i.br = icmp eq i32 %i.bq, %i.bf
  br i1 %i.br, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bt = add nsw i64 %.052.i.i.i, -1
  %i.bu = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bu, label %bb.e, label %._crit_edge.loopexit.i.i.i, !llvm.loop !60

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bb, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bc, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.d ] ; 5 uses
  %i.bv = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bv, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232
  br label %bb.n

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !232
  %i.bx = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 2 uses
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.ca = phi i32 [ %i.bx, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bz, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cb = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !232
  %i.cc = icmp eq i32 %i.cb, %i.ca
  br i1 %i.cc, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge57.i.i.i
  %i.ce = phi i32 [ %i.ca, %bb.m ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.cd, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !232
  %i.cg = icmp eq i32 %i.cf, %i.ce
  %spec.select.i.i.i = select i1 %i.cg, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343: ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345: ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.e, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345, %bb.n, %bb.l, %bb.j, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.n ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.cj, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit345 ], [ %i.ci, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit343 ], [ %i.ch, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.ck = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !232 ; 4 uses
  br i1 %min.iters.check370, label %scalar.ph369.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %bb.o
  %broadcast.splatinsert373 = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat374 = shufflevector <2 x i32> %broadcast.splatinsert373, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph371
  %index376 = phi i64 [ 0, %vector.ph371 ], [ %index.next382, %vector.body375 ] ; 2 uses
  %vec.phi377 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.cr, %vector.body375 ]
  %vec.phi378 = phi <2 x i64> [ zeroinitializer, %vector.ph371 ], [ %i.cs, %vector.body375 ]
  %i.cl = shl i64 %index376, 2
  %next.gep379 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep379, i64 8
  %wide.load380 = load <2 x i32>, ptr %next.gep379, align 4, !tbaa !232
  %wide.load381 = load <2 x i32>, ptr %i.cm, align 4, !tbaa !232
  %i.cn = icmp eq <2 x i32> %wide.load380, %broadcast.splat374
  %i.co = icmp eq <2 x i32> %wide.load381, %broadcast.splat374
  %i.cp = zext <2 x i1> %i.cn to <2 x i64>
  %i.cq = zext <2 x i1> %i.co to <2 x i64>
  %i.cr = add <2 x i64> %vec.phi377, %i.cp        ; 2 uses
  %i.cs = add <2 x i64> %vec.phi378, %i.cq        ; 2 uses
  %index.next382 = add nuw i64 %index376, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next382, %n.vec372
  br i1 %i.ct, label %middle.block383, label %vector.body375, !llvm.loop !6647

middle.block383:                                  ; preds = %vector.body375
  %bin.rdx384 = add <2 x i64> %i.cs, %i.cr
  %i.cu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx384) ; 2 uses
  br i1 %cmp.n385, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph369.preheader

scalar.ph369.preheader:                           ; preds = %bb.o, %middle.block383
  %.07.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.cu, %middle.block383 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.o ], [ %i.ba, %middle.block383 ]
  br label %scalar.ph369

scalar.ph369:                                     ; preds = %scalar.ph369.preheader, %scalar.ph369
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph369 ], [ %.07.i.i.ph, %scalar.ph369.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cy, %scalar.ph369 ], [ %.sroa.03.06.i.i.ph, %scalar.ph369.preheader ] ; 2 uses
  %i.cv = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !232
  %i.cw = icmp eq i32 %i.cv, %i.ck
  %i.cx = zext i1 %i.cw to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.cx ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cy, %i.au
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph369, !llvm.loop !6648

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph369, %middle.block383
  %spec.select.i.i.lcssa = phi i64 [ %i.cu, %middle.block383 ], [ %spec.select.i.i, %scalar.ph369 ] ; 2 uses
  %i.cz = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cz, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %66 = shl i64 %indvar, 2
  %67 = add i64 %66, %i.as
  %68 = sub i64 %65, %67                          ; 2 uses
  %i.da = lshr i64 %68, 2
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %68, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader394, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.db, 9223372036854775804     ; 3 uses
  %i.dc = shl i64 %n.vec, 2
  %i.dd = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.dc
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi367 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %i.de = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !232
  %wide.load368 = load <2 x i32>, ptr %i.df, align 4, !tbaa !232
  %i.dg = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.dh = icmp eq <2 x i32> %wide.load368, %broadcast.splat
  %i.di = zext <2 x i1> %i.dg to <2 x i64>
  %i.dj = zext <2 x i1> %i.dh to <2 x i64>
  %i.dk = add <2 x i64> %vec.phi, %i.di           ; 2 uses
  %i.dl = add <2 x i64> %vec.phi367, %i.dj        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !6649

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dl, %i.dk
  %i.dn = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader394

.lr.ph.i26.i.preheader394:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.dn, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader394, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader394 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dr, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader394 ] ; 2 uses
  %i.do = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !232
  %i.dp = icmp eq i32 %i.do, %i.ck
  %i.dq = zext i1 %i.dp to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.dq ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dr, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !6650

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.dn, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.ds, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit34, label %bb.d, !llvm.loop !61

.loopexit34:                                      ; preds = %.critedge.i, %._crit_edge.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, %.val195.val197
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread19, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6651

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %.lr.ph.split
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.012.060, i64 24 ; 2 uses
  %.not32 = icmp eq ptr %i.dv, %.val184
  br i1 %.not32, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us, %bb.b
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !734
  %.not.i = icmp eq ptr %.val184, %i.dw
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !735
  br label %.thread19

bb.q:                                             ; preds = %.thread
  %i.dy = ptrtoint ptr %.val184 to i64
  %i.dz = ptrtoint ptr %.val181 to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.r, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ec = sdiv exact i64 %i.ea, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3259, i64 1, i64 %i.ec
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 384307168202282325)
  %i.eg = select i1 %i.ee, i64 384307168202282325, i64 %i.ef ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eh = mul nuw nsw i64 %i.eg, 24
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #35
          to label %.noexc258 unwind label %.loopexit37 ; 6 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i8 0, i64 24, i1 false)
  br i1 %.not3259, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i ], [ %i.ei, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i ], [ %.val181, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6666)
  call void @llvm.experimental.noalias.scope.decl(metadata !6667)
  %i.ek = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !6668, !alias.scope !6667, !noalias !6666
  store <2 x ptr> %i.ek, ptr %.03.i.i.i.i.i, align 8, !tbaa !6668, !alias.scope !6666, !noalias !6667
  %i.el = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !6669, !alias.scope !6667, !noalias !6666
  store ptr %i.en, ptr %i.el, align 8, !tbaa !6669, !alias.scope !6666, !noalias !6667
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !6667, !noalias !6666
  %i.eo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6655

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ei, %.noexc258 ], [ %i.ep, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %.val181, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val181, i64 noundef %i.ea) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i
  store ptr %i.ei, ptr %40, align 8, !tbaa !736
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !735
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.er, ptr %i.d, align 8, !tbaa !734
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
  %.val18195 = phi ptr [ %.val181, %.loopexit34 ], [ %.val181, %bb.p ], [ %i.ei, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i ], [ %.val181, %.lr.ph.split.us ]
  %.3109 = phi ptr [ %.sroa.012.060, %.loopexit34 ], [ %.val184, %bb.p ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i ], [ %.sroa.012.060.us, %.lr.ph.split.us ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !6670 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !6669
  %.not.i.i = icmp eq ptr %i.et, %i.ev
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread19
  store ptr %.sroa.014.064, ptr %i.et, align 8, !tbaa !6671
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.012065, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !199
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.ew, ptr %i.es, align 8, !tbaa !6670
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE9push_backEOSP_.exit

bb.u:                                             ; preds = %.thread19
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !6662 ; 5 uses
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 5 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775792
  br i1 %i.fa, label %bb.v, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc259 unwind label %.loopexit.split-lp39

.noexc259:                                        ; preds = %bb.v
  unreachable

_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.fb = ashr exact i64 %i.ez, 4                 ; 3 uses
  %i.fc = icmp eq ptr %i.et, %.val.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.fc, i64 1, i64 %i.fb
end_hunk_4
