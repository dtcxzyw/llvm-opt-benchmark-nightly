inline.NumInlined: 29462
inline.NumDeleted: 10401
loop-unroll.NumCompletelyUnrolled: 582
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 594
begin_hunk_0_@_ZNSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EE19_M_range_initializeIPKS2_EEvT_S8_St20forward_iterator_tag:bb.a

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ah

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #29
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable

_ZSt22__uninitialized_copy_aIPKN12_GLOBAL__N_117UnorderedSequenceIiEEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EE11_M_allocateEm.exit.thread ], [ %i.ae, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ak, align 8, !tbaa !3309
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
  %40 = alloca %"class.std::vector.613", align 8  ; 20 uses
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
  %.not67 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not67, label %.critedge172.thread, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.a
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

bb.b:                                             ; preds = %.lr.ph70, %bb.bb
  %.012069 = phi i64 [ 0, %.lr.ph70 ], [ %i.ex, %bb.bb ] ; 3 uses
  %.sroa.014.068 = phi ptr [ %.0.val, %.lr.ph70 ], [ %i.ij, %bb.bb ] ; 4 uses
  %i.m = phi ptr [ null, %.lr.ph70 ], [ %i.eb, %bb.bb ] ; 11 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !3313 ; 8 uses
  %.not3056 = icmp eq ptr %i.m, %.val184          ; 3 uses
  br i1 %.not3056, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.068, align 8, !tbaa !3298 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !1454 ; 4 uses
  %i.n = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.n, align 8, !tbaa !1457 ; 6 uses
  %i.o = ptrtoint ptr %.val195.val197 to i64      ; 4 uses
  %i.p = ptrtoint ptr %.val195.val to i64
  %i.q = sub i64 %i.o, %i.p
  %.not4952.i = icmp eq ptr %.val195.val, %.val195.val197
  %i.r = add i64 %i.o, -4
  %i.s = add i64 %i.o, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit
  %.sroa.012.057 = phi ptr [ %i.m, %.lr.ph ], [ %i.de, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.057, align 8, !tbaa !3315
  %i.t = load ptr, ptr %.val194, align 8, !tbaa !3318, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.t, align 8, !tbaa !3298 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !1454 ; 3 uses
  %i.u = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.u, align 8, !tbaa !1457
  %i.v = ptrtoint ptr %.val196.val198 to i64
  %i.w = ptrtoint ptr %.val196.val to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp eq i64 %i.q, %i.x
  br i1 %i.y, label %bb.d, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit

bb.d:                                             ; preds = %bb.c
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.038.054.i = phi ptr [ %i.ad, %bb.e ], [ %.val196.val, %bb.d ] ; 3 uses
  %.sroa.042.053.i = phi ptr [ %i.ac, %bb.e ], [ %.val195.val, %bb.d ] ; 3 uses
  %i.z = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !211
  %i.aa = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !211
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ac, %.val195.val197
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3321

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.042.0.lcssa.i = phi ptr [ %.val195.val, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.val196.val, %bb.d ], [ %i.ad, %bb.e ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.ae = icmp eq ptr %.sroa.042.0.lcssa.i, %.val195.val197
  br i1 %i.ae, label %.loopexit32, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.af = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.ag = sub i64 %i.o, %i.af
  %i.ah = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.ag
  %65 = sub i64 %i.r, %i.af
  %66 = lshr i64 %65, 2
  %67 = add nuw nsw i64 %66, 1
  %i.ai = sub i64 %i.s, %i.af                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check403 = icmp ult i64 %i.ai, 12
  %n.vec405 = and i64 %i.ak, 9223372036854775804  ; 3 uses
  %i.al = shl i64 %n.vec405, 2
  %i.am = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.al
  %cmp.n418 = icmp eq i64 %i.ak, %n.vec405
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.dd, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %68 = mul i64 %indvar, 4611686018427387903
  %i.an = add i64 %67, %68                        ; 3 uses
  %i.ao = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.ap = sub i64 %i.ao, %i.af                    ; 3 uses
  %i.aq = ashr i64 %i.ap, 4                       ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.f
  %i.as = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.at = and i64 %i.ap, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.at ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i826 ], [ %i.bg, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bf, %bb.k ] ; 9 uses
  %i.au = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.av = icmp eq i32 %i.au, %i.as
  br i1 %i.av, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !211
  %i.ay = icmp eq i32 %i.ax, %i.as
  br i1 %i.ay, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !211
  %i.bb = icmp eq i32 %i.ba, %i.as
  br i1 %i.bb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !211
  %i.be = icmp eq i32 %i.bd, %i.as
  br i1 %i.be, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bg = add nsw i64 %.052.i.i.i, -1
  %i.bh = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bh, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ao, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ap, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bi = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bi, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
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
  %i.bj = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.bk = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.bn = phi i32 [ %i.bk, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bm, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.bo = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.bp = icmp eq i32 %i.bo, %i.bn
  br i1 %i.bp, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.br = phi i32 [ %i.bn, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.bq, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bs = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.bt = icmp eq i32 %i.bs, %i.br
  %spec.select.i.i.i = select i1 %i.bt, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365: ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367: ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bw, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367 ], [ %i.bv, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365 ], [ %i.bu, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.bx = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %bb.q
  %broadcast.splatinsert406 = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat407 = shufflevector <2 x i32> %broadcast.splatinsert406, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph404
  %index409 = phi i64 [ 0, %vector.ph404 ], [ %index.next415, %vector.body408 ] ; 2 uses
  %vec.phi410 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.ce, %vector.body408 ]
  %vec.phi411 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.cf, %vector.body408 ]
  %i.by = shl i64 %index409, 2
  %next.gep412 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep412, i64 8
  %wide.load413 = load <2 x i32>, ptr %next.gep412, align 4, !tbaa !211
  %wide.load414 = load <2 x i32>, ptr %i.bz, align 4, !tbaa !211
  %i.ca = icmp eq <2 x i32> %wide.load413, %broadcast.splat407
  %i.cb = icmp eq <2 x i32> %wide.load414, %broadcast.splat407
  %i.cc = zext <2 x i1> %i.ca to <2 x i64>
  %i.cd = zext <2 x i1> %i.cb to <2 x i64>
  %i.ce = add <2 x i64> %vec.phi410, %i.cc        ; 2 uses
  %i.cf = add <2 x i64> %vec.phi411, %i.cd        ; 2 uses
  %index.next415 = add nuw i64 %index409, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next415, %n.vec405
  br i1 %i.cg, label %middle.block416, label %vector.body408, !llvm.loop !3323

middle.block416:                                  ; preds = %vector.body408
  %bin.rdx417 = add <2 x i64> %i.cf, %i.ce
  %i.ch = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx417) ; 2 uses
  br i1 %cmp.n418, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402.preheader

scalar.ph402.preheader:                           ; preds = %bb.q, %middle.block416
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.ch, %middle.block416 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.am, %middle.block416 ]
  br label %scalar.ph402

scalar.ph402:                                     ; preds = %scalar.ph402.preheader, %scalar.ph402
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph402 ], [ %.07.i.i.ph, %scalar.ph402.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cl, %scalar.ph402 ], [ %.sroa.03.06.i.i.ph, %scalar.ph402.preheader ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.cj = icmp eq i32 %i.ci, %i.bx
  %i.ck = zext i1 %i.cj to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.ck ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cl, %i.ah
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402, !llvm.loop !3326

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph402, %middle.block416
  %spec.select.i.i.lcssa = phi i64 [ %i.ch, %middle.block416 ], [ %spec.select.i.i, %scalar.ph402 ] ; 2 uses
  %i.cm = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cm, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader427, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.an, -4                      ; 3 uses
  %i.cn = shl i64 %n.vec, 2
  %i.co = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cn
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi400 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.cp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load401 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !211
  %i.cr = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.cs = icmp eq <2 x i32> %wide.load401, %broadcast.splat
  %i.ct = zext <2 x i1> %i.cr to <2 x i64>
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = add <2 x i64> %vec.phi, %i.ct           ; 2 uses
  %i.cw = add <2 x i64> %vec.phi400, %i.cu        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !3327

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cw, %i.cv
  %i.cy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader427

.lr.ph.i26.i.preheader427:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.cy, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader427, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader427 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dc, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader427 ] ; 2 uses
  %i.cz = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.da = icmp eq i32 %i.cz, %i.bx
  %i.db = zext i1 %i.da to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dc, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !3328

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.cy, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.dd, %.val195.val197
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit32, label %bb.f, !llvm.loop !3329

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.057, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.de, %.val184
  br i1 %.not30, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, %bb.b
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !3330
  %.not.i = icmp eq ptr %.val184, %i.df
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !3332
  br label %.loopexit32

bb.s:                                             ; preds = %.thread
  %i.dh = ptrtoint ptr %.val184 to i64
  %i.di = ptrtoint ptr %i.m to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 4 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.t, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  store ptr %i.m, ptr %40, align 8
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
          to label %.noexc258 unwind label %.loopexit34 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  br i1 %.not3056, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %i.dr, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %i.m, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  call void @llvm.experimental.noalias.scope.decl(metadata !3336)
  %i.dt = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !3338, !alias.scope !3336, !noalias !3333
  store <2 x ptr> %i.dt, ptr %.03.i.i.i.i.i, align 8, !tbaa !3338, !alias.scope !3333, !noalias !3336
  %i.du = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !3339, !alias.scope !3336, !noalias !3333
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !3339, !alias.scope !3333, !noalias !3336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3336, !noalias !3333
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dx, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3340

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %.noexc258 ], [ %i.dy, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.dj) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE11_S_relocateEPSM_SP_SP_RSN_.exit25.i.i
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !3332
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !3330
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %40, align 8
  br label %bb.lb

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit32:                                      ; preds = %._crit_edge.i, %.critedge.i, %bb.r, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i
  %i.eb = phi ptr [ %i.m, %.critedge.i ], [ %i.m, %bb.r ], [ %i.dr, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i ], [ %i.m, %._crit_edge.i ] ; 10 uses
  %.3109 = phi ptr [ %.sroa.012.057, %.critedge.i ], [ %.val184, %bb.r ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSM_SO_EEDpOT_.exit.i ], [ %.sroa.012.057, %._crit_edge.i ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !3341 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !3339
  %.not.i.i = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.068, ptr %i.ed, align 8, !tbaa !3342
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %.012069, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !3341
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE9push_backEOSK_.exit

bb.w:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !3315 ; 5 uses
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = ptrtoint ptr %.val.i.i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 6 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775792
  br i1 %i.ek, label %bb.x, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  store ptr %i.eb, ptr %40, align 8
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
          to label %.noexc260 unwind label %.loopexit35 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info8ToStringB5cxx11Ev:bb.a
_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.b
  %i.aa = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !3402 ; 2 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !67, !noalias !3402
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !3402
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !3386
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !67, !noalias !3402
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !3402
  store ptr %i.af, ptr %i.g, align 8, !tbaa !67, !noalias !3402
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !67, !noalias !3402
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30, !noalias !3402 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i.i.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !35, !noalias !3402
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #33, !noalias !3386
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
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #30, !noalias !3386
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !3402
  br label %common.resume.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !67, !noalias !3402
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #30, !noalias !3386
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !3402 ; 2 uses
  store ptr %i.ap, ptr %2, align 8, !tbaa !67, !noalias !3402
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !3402
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8, !noalias !3386
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !67, !noalias !3402
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !747, !noalias !3402
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #30, !noalias !3386
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !3402
  %i.aw = load ptr, ptr %4, align 8, !tbaa !30, !noalias !3386
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !36, !noalias !3386
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !3411
  store i64 1, ptr %1, align 8, !noalias !3411
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.63, ptr %i.ay, align 8, !noalias !3411
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i5.i.i.i.i.i.i.i = load i64, ptr %3, align 8, !tbaa !34, !noalias !3411
  %.sroa.2.0.copyload.i7.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !16, !noalias !3411
  store i64 %.sroa.0.0.copyload.i5.i.i.i.i.i.i.i, ptr %i.az, align 8, !noalias !3411
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.2.0.copyload.i7.i.i.i.i.i.i.i, ptr %i.ba, align 8, !noalias !3411
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 1, ptr %i.bb, align 8, !noalias !3411
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr @.str.64, ptr %i.bc, align 8, !noalias !3411
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ax, ptr %i.bd, align 8, !noalias !3411
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.aw, ptr %i.be, align 8, !noalias !3411
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 1, ptr %i.bf, align 8, !noalias !3411
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr @.str.65, ptr %i.bg, align 8, !noalias !3411
  invoke void @_ZN4absl12lts_2026052616strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %1, i64 5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !3411
  %i.bh = load ptr, ptr %4, align 8, !tbaa !30, !noalias !3386 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.h
  br i1 %i.bi, label %_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !35, !noalias !3386
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #33
  br label %_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !30, !noalias !3386 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i: ; preds = %bb.g
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !35, !noalias !3386
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !3386
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !3386
  br label %common.resume.i.i.i.i.i.i

_ZSt5visitB5cxx11IN4absl12lts_2026052613hash_internal12PrintVisitorEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISG_EEEEE4typeEE4typeEOSP_EEEE4typeEOSE_DpOSG_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !3386
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !3386
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISK_EESaISM_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3347   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3332 ; 2 uses
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
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3348

_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EEEvPSH_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !3347
  br label %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit

_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseISt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESaISN_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS0_ISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISB_EENS3_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISL_EESN_EvSH_SH_RSaISK_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8, !tbaa !3330
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
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !3321

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
  %3 = add i64 %i.g, -4
  %4 = sub i64 %3, %i.h
  %5 = lshr i64 %4, 2
  %i.k = add nuw nsw i64 %5, 1
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
  %.sroa.033.068 = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph70 ], [ %i.ch, %.critedge ] ; 13 uses
  %6 = mul i64 %indvar, 4611686018427387903
  %i.r = add i64 %i.k, %6                         ; 3 uses
  %i.s = ptrtoint ptr %.sroa.033.068 to i64       ; 2 uses
  %i.t = sub i64 %i.s, %i.h                       ; 3 uses
  %i.u = ashr i64 %i.t, 4                         ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.w = load i32, ptr %.sroa.033.068, align 4, !tbaa !211 ; 4 uses
  %i.x = and i64 %i.t, -16
  %scevgep.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa, i64 %i.x ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.052.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.ak, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph.i.i ], [ %i.aj, %bb.h ] ; 9 uses
  %i.y = load i32, ptr %.sroa.032.051.i.i, align 4, !tbaa !211
  %i.z = icmp eq i32 %i.y, %i.w
  br i1 %i.z, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !211
  %i.ac = icmp eq i32 %i.ab, %i.w
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !211
  %i.af = icmp eq i32 %i.ae, %i.w
  br i1 %i.af, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !211
  %i.ai = icmp eq i32 %i.ah, %i.w
  br i1 %i.ai, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 16
  %i.ak = add nsw i64 %.052.i.i, -1
  %i.al = icmp sgt i64 %.052.i.i, 1
  br i1 %i.al, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre59.i.i = ptrtoint ptr %scevgep.i.i to i64
  %.pre60.i.i = sub i64 %i.s, %.pre59.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi61.i.i = phi i64 [ %.pre60.i.i, %._crit_edge.loopexit.i.i ], [ %i.t, %bb.c ]
  %.sroa.032.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %.sroa.042.0.lcssa, %bb.c ] ; 5 uses
  %i.am = ashr exact i64 %.pre-phi61.i.i, 2
  switch i64 %i.am, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit [
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
  %i.an = load i32, ptr %.sroa.032.0.lcssa.i.i, align 4, !tbaa !211
  %i.ao = load i32, ptr %.sroa.033.068, align 4, !tbaa !211 ; 2 uses
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.ar = phi i32 [ %i.ao, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.sroa.032.1.i.i = phi ptr [ %i.aq, %bb.j ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.as = load i32, ptr %.sroa.032.1.i.i, align 4, !tbaa !211
  %i.at = icmp eq i32 %i.as, %i.ar
  br i1 %i.at, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i
  %i.av = phi i32 [ %i.ar, %bb.l ], [ %.pre58.i.i, %._crit_edge._crit_edge57.i.i ]
  %.sroa.032.2.i.i = phi ptr [ %i.au, %bb.l ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge57.i.i ] ; 2 uses
  %i.aw = load i32, ptr %.sroa.032.2.i.i, align 4, !tbaa !211
  %i.ax = icmp eq i32 %i.aw, %i.av
  %spec.select.i.i = select i1 %i.ax, ptr %.sroa.032.2.i.i, ptr %.sroa.033.068
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit: ; preds = %bb.d, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91, %._crit_edge.i.i, %bb.i, %bb.k, %bb.m
  %.sroa.08.0.in.sroa.speculated.i.i = phi ptr [ %.sroa.032.1.i.i, %bb.k ], [ %spec.select.i.i, %bb.m ], [ %.sroa.033.068, %._crit_edge.i.i ], [ %.sroa.032.0.lcssa.i.i, %bb.i ], [ %i.ba, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit91 ], [ %i.ay, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit ], [ %i.az, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.loopexit.split.loop.exit89 ], [ %.sroa.032.051.i.i, %bb.d ]
  %.not51 = icmp eq ptr %.sroa.033.068, %.sroa.08.0.in.sroa.speculated.i.i
  br i1 %.not51, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit
  %i.bb = load i32, ptr %.sroa.033.068, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert107 = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat108 = shufflevector <2 x i32> %broadcast.splatinsert107, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next116, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <2 x i64> [ zeroinitializer, %vector.ph105 ], [ %i.bi, %vector.body109 ]
  %vec.phi112 = phi <2 x i64> [ zeroinitializer, %vector.ph105 ], [ %i.bj, %vector.body109 ]
  %i.bc = shl i64 %index110, 2
  %next.gep113 = getelementptr i8, ptr %.sroa.038.0.lcssa, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep113, i64 8
  %wide.load114 = load <2 x i32>, ptr %next.gep113, align 4, !tbaa !211
  %wide.load115 = load <2 x i32>, ptr %i.bd, align 4, !tbaa !211
  %i.be = icmp eq <2 x i32> %wide.load114, %broadcast.splat108
  %i.bf = icmp eq <2 x i32> %wide.load115, %broadcast.splat108
  %i.bg = zext <2 x i1> %i.be to <2 x i64>
  %i.bh = zext <2 x i1> %i.bf to <2 x i64>
  %i.bi = add <2 x i64> %vec.phi111, %i.bg        ; 2 uses
  %i.bj = add <2 x i64> %vec.phi112, %i.bh        ; 2 uses
  %index.next116 = add nuw i64 %index110, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next116, %n.vec106
  br i1 %i.bk, label %middle.block117, label %vector.body109, !llvm.loop !3414

middle.block117:                                  ; preds = %vector.body109
  %bin.rdx118 = add <2 x i64> %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx118) ; 2 uses
  br i1 %cmp.n119, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.lr.ph.i, %middle.block117
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bl, %middle.block117 ]
  %.sroa.03.06.i.ph = phi ptr [ %.sroa.038.0.lcssa, %.lr.ph.i ], [ %i.q, %middle.block117 ]
  br label %scalar.ph103

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %.07.i = phi i64 [ %spec.select.i, %scalar.ph103 ], [ %.07.i.ph, %scalar.ph103.preheader ]
  %.sroa.03.06.i = phi ptr [ %i.bp, %scalar.ph103 ], [ %.sroa.03.06.i.ph, %scalar.ph103.preheader ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.03.06.i, align 4, !tbaa !211
  %i.bn = icmp eq i32 %i.bm, %i.bb
  %i.bo = zext i1 %i.bn to i64
  %spec.select.i = add nuw nsw i64 %.07.i, %i.bo  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, %i.j
  br i1 %.not.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103, !llvm.loop !3415

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit: ; preds = %scalar.ph103, %middle.block117
  %spec.select.i.lcssa = phi i64 [ %i.bl, %middle.block117 ], [ %spec.select.i, %scalar.ph103 ] ; 2 uses
  %i.bq = icmp eq i64 %spec.select.i.lcssa, 0
  br i1 %i.bq, label %.critedge24, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i26.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.preheader
  %n.vec = and i64 %i.r, -4                       ; 3 uses
  %i.br = shl i64 %n.vec, 2
  %i.bs = getelementptr i8, ptr %.sroa.033.068, i64 %i.br
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %vec.phi101 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ca, %vector.body ]
  %i.bt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load102 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !211
  %i.bv = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.bw = icmp eq <2 x i32> %wide.load102, %broadcast.splat
  %i.bx = zext <2 x i1> %i.bv to <2 x i64>
  %i.by = zext <2 x i1> %i.bw to <2 x i64>
  %i.bz = add <2 x i64> %vec.phi, %i.bx           ; 2 uses
  %i.ca = add <2 x i64> %vec.phi101, %i.by        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !3416

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, label %.lr.ph.i26.preheader122

.lr.ph.i26.preheader122:                          ; preds = %.lr.ph.i26.preheader, %middle.block
  %.07.i27.ph = phi i64 [ 0, %.lr.ph.i26.preheader ], [ %i.cc, %middle.block ]
  %.sroa.03.06.i28.ph = phi ptr [ %.sroa.033.068, %.lr.ph.i26.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader122, %.lr.ph.i26
  %.07.i27 = phi i64 [ %spec.select.i29, %.lr.ph.i26 ], [ %.07.i27.ph, %.lr.ph.i26.preheader122 ]
  %.sroa.03.06.i28 = phi ptr [ %i.cg, %.lr.ph.i26 ], [ %.sroa.03.06.i28.ph, %.lr.ph.i26.preheader122 ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.03.06.i28, align 4, !tbaa !211
  %i.ce = icmp eq i32 %i.cd, %i.bb
  %i.cf = zext i1 %i.ce to i64
  %spec.select.i29 = add nuw nsw i64 %.07.i27, %i.cf ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %i.cg, %1
  br i1 %.not.i30, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, label %.lr.ph.i26, !llvm.loop !3417

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32: ; preds = %.lr.ph.i26, %middle.block
  %spec.select.i29.lcssa = phi i64 [ %i.cc, %middle.block ], [ %spec.select.i29, %.lr.ph.i26 ]
  %.not = icmp eq i64 %spec.select.i29.lcssa, %spec.select.i.lcssa
  br i1 %.not, label %.critedge, label %.critedge24

.critedge:                                        ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.033.068, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.ch, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50, label %.critedge24, label %bb.c, !llvm.loop !3329

.critedge24:                                      ; preds = %.critedge, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32, %._crit_edge
  %.5 = phi i1 [ true, %._crit_edge ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32 ], [ true, %.critedge ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit ]
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
  call void @llvm.experimental.noalias.scope.decl(metadata !3418)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %21, i8 0, i64 41, i1 false), !noalias !3418
  %i.c = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %21, ptr noundef nonnull align 8 dereferenceable(41) %23) #30, !noalias !3418 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3421)
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !3418
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !3418
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %20, i8 0, i64 41, i1 false), !noalias !3424
  %i.d = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %20, ptr noundef nonnull align 8 dereferenceable(41) %21) #30, !noalias !3424 ; 0 uses
  %.val8.i.i = load ptr, ptr %2, align 8, !tbaa !227, !noalias !3424 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val9.i.i = load ptr, ptr %i.e, align 8, !tbaa !227, !noalias !3424 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3425)
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !3424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %18, i8 0, i64 41, i1 false), !noalias !3428
  %i.f = call fastcc noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(41) %18, ptr noundef nonnull align 8 dereferenceable(41) %20) #30, !noalias !3428 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !3428
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !3432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false), !noalias !3432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %17, i8 0, i64 24, i1 false), !noalias !3432
  call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.g = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %bb.c unwind label %bb.b, !noalias !3432 ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(41) %17) #30, !noalias !3432
  br label %.body.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !364, !noalias !3436
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !366, !noalias !3436
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !67, !noalias !3436
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i8 0, ptr %i.m, align 8, !tbaa !361, !noalias !3436
  store ptr %i.g, ptr %i.j, align 16, !tbaa !363, !alias.scope !3433, !noalias !3432
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.i, align 8, !tbaa !407, !alias.scope !3433, !noalias !3432
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !350, !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !3432
  %.not52.i.i.i.i.i = icmp eq ptr %.val8.i.i, %.val9.i.i
  br i1 %.not52.i.i.i.i.i, label %.loopexit46.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit46.thread.i.i.i.i:                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !3432
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

bb.d:                                             ; preds = %_ZNKSt17reference_wrapperIN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEE25UnorderedCombinerCallbackEEclIJRNS3_IvEEEEENSt15__invoke_resultIRS8_JDpT_EE4typeEDpOSF_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.042.0.i.i.i.i = phi ptr [ %.val8.i.i, %.lr.ph.i.i.i.i.i ], [ %i.pa, %_ZNKSt17reference_wrapperIN4absl12lts_2026052613hash_internal16SpyHashStateImplIN12_GLOBAL__N_117UnorderedSequenceIiEEE25UnorderedCombinerCallbackEEclIJRNS3_IvEEEEENSt15__invoke_resultIRS8_JDpT_EE4typeEDpOSF_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !3432
  store i64 0, ptr %i.u, align 8, !noalias !3432
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EE19_M_range_initializeIPKS7_EEvT_SD_St20forward_iterator_tag:bb.a

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ah

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #29
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable

_ZSt22__uninitialized_copy_aIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEPS7_S7_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EE11_M_allocateEm.exit.thread ], [ %i.ae, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ak, align 8, !tbaa !3576
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
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !3577

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
  %40 = alloca %"class.std::vector.688", align 8  ; 20 uses
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
  %.not67 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not67, label %.critedge172.thread, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.a
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

bb.b:                                             ; preds = %.lr.ph70, %bb.bb
  %.012069 = phi i64 [ 0, %.lr.ph70 ], [ %i.ex, %bb.bb ] ; 3 uses
  %.sroa.014.068 = phi ptr [ %.0.val, %.lr.ph70 ], [ %i.ij, %bb.bb ] ; 4 uses
  %i.m = phi ptr [ null, %.lr.ph70 ], [ %i.eb, %bb.bb ] ; 11 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !3579 ; 8 uses
  %.not3056 = icmp eq ptr %i.m, %.val184          ; 3 uses
  br i1 %.not3056, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.068, align 8, !tbaa !3565 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !1454 ; 4 uses
  %i.n = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.n, align 8, !tbaa !1457 ; 6 uses
  %i.o = ptrtoint ptr %.val195.val197 to i64      ; 4 uses
  %i.p = ptrtoint ptr %.val195.val to i64
  %i.q = sub i64 %i.o, %i.p
  %.not4952.i = icmp eq ptr %.val195.val, %.val195.val197
  %i.r = add i64 %i.o, -4
  %i.s = add i64 %i.o, -4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit
  %.sroa.012.057 = phi ptr [ %i.m, %.lr.ph ], [ %i.de, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.057, align 8, !tbaa !3581
  %i.t = load ptr, ptr %.val194, align 8, !tbaa !3584, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.t, align 8, !tbaa !3565 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !1454 ; 3 uses
  %i.u = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.u, align 8, !tbaa !1457
  %i.v = ptrtoint ptr %.val196.val198 to i64
  %i.w = ptrtoint ptr %.val196.val to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp eq i64 %i.q, %i.x
  br i1 %i.y, label %bb.d, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

bb.d:                                             ; preds = %bb.c
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.038.054.i = phi ptr [ %i.ad, %bb.e ], [ %.val196.val, %bb.d ] ; 3 uses
  %.sroa.042.053.i = phi ptr [ %i.ac, %bb.e ], [ %.val195.val, %bb.d ] ; 3 uses
  %i.z = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !211
  %i.aa = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !211
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ac, %.val195.val197
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3321

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.042.0.lcssa.i = phi ptr [ %.val195.val, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.val196.val, %bb.d ], [ %i.ad, %bb.e ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.ae = icmp eq ptr %.sroa.042.0.lcssa.i, %.val195.val197
  br i1 %i.ae, label %.loopexit32, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.af = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.ag = sub i64 %i.o, %i.af
  %i.ah = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.ag
  %65 = sub i64 %i.r, %i.af
  %66 = lshr i64 %65, 2
  %67 = add nuw nsw i64 %66, 1
  %i.ai = sub i64 %i.s, %i.af                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check403 = icmp ult i64 %i.ai, 12
  %n.vec405 = and i64 %i.ak, 9223372036854775804  ; 3 uses
  %i.al = shl i64 %n.vec405, 2
  %i.am = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.al
  %cmp.n418 = icmp eq i64 %i.ak, %n.vec405
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.dd, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %68 = mul i64 %indvar, 4611686018427387903
  %i.an = add i64 %67, %68                        ; 3 uses
  %i.ao = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.ap = sub i64 %i.ao, %i.af                    ; 3 uses
  %i.aq = ashr i64 %i.ap, 4                       ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.f
  %i.as = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.at = and i64 %i.ap, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.at ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i826 ], [ %i.bg, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bf, %bb.k ] ; 9 uses
  %i.au = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.av = icmp eq i32 %i.au, %i.as
  br i1 %i.av, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !211
  %i.ay = icmp eq i32 %i.ax, %i.as
  br i1 %i.ay, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !211
  %i.bb = icmp eq i32 %i.ba, %i.as
  br i1 %i.bb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !211
  %i.be = icmp eq i32 %i.bd, %i.as
  br i1 %i.be, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bg = add nsw i64 %.052.i.i.i, -1
  %i.bh = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bh, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ao, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ap, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bi = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bi, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
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
  %i.bj = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.bk = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.bn = phi i32 [ %i.bk, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bm, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.bo = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.bp = icmp eq i32 %i.bo, %i.bn
  br i1 %i.bp, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.br = phi i32 [ %i.bn, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.bq, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bs = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.bt = icmp eq i32 %i.bs, %i.br
  %spec.select.i.i.i = select i1 %i.bt, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365: ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367: ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bw, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367 ], [ %i.bv, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365 ], [ %i.bu, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.bx = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %bb.q
  %broadcast.splatinsert406 = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat407 = shufflevector <2 x i32> %broadcast.splatinsert406, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph404
  %index409 = phi i64 [ 0, %vector.ph404 ], [ %index.next415, %vector.body408 ] ; 2 uses
  %vec.phi410 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.ce, %vector.body408 ]
  %vec.phi411 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.cf, %vector.body408 ]
  %i.by = shl i64 %index409, 2
  %next.gep412 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep412, i64 8
  %wide.load413 = load <2 x i32>, ptr %next.gep412, align 4, !tbaa !211
  %wide.load414 = load <2 x i32>, ptr %i.bz, align 4, !tbaa !211
  %i.ca = icmp eq <2 x i32> %wide.load413, %broadcast.splat407
  %i.cb = icmp eq <2 x i32> %wide.load414, %broadcast.splat407
  %i.cc = zext <2 x i1> %i.ca to <2 x i64>
  %i.cd = zext <2 x i1> %i.cb to <2 x i64>
  %i.ce = add <2 x i64> %vec.phi410, %i.cc        ; 2 uses
  %i.cf = add <2 x i64> %vec.phi411, %i.cd        ; 2 uses
  %index.next415 = add nuw i64 %index409, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next415, %n.vec405
  br i1 %i.cg, label %middle.block416, label %vector.body408, !llvm.loop !3587

middle.block416:                                  ; preds = %vector.body408
  %bin.rdx417 = add <2 x i64> %i.cf, %i.ce
  %i.ch = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx417) ; 2 uses
  br i1 %cmp.n418, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402.preheader

scalar.ph402.preheader:                           ; preds = %bb.q, %middle.block416
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.ch, %middle.block416 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.am, %middle.block416 ]
  br label %scalar.ph402

scalar.ph402:                                     ; preds = %scalar.ph402.preheader, %scalar.ph402
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph402 ], [ %.07.i.i.ph, %scalar.ph402.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.cl, %scalar.ph402 ], [ %.sroa.03.06.i.i.ph, %scalar.ph402.preheader ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.cj = icmp eq i32 %i.ci, %i.bx
  %i.ck = zext i1 %i.cj to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.ck ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.cl, %i.ah
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402, !llvm.loop !3588

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph402, %middle.block416
  %spec.select.i.i.lcssa = phi i64 [ %i.ch, %middle.block416 ], [ %spec.select.i.i, %scalar.ph402 ] ; 2 uses
  %i.cm = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cm, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader427, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.an, -4                      ; 3 uses
  %i.cn = shl i64 %n.vec, 2
  %i.co = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cn
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi400 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cw, %vector.body ]
  %i.cp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load401 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !211
  %i.cr = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.cs = icmp eq <2 x i32> %wide.load401, %broadcast.splat
  %i.ct = zext <2 x i1> %i.cr to <2 x i64>
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = add <2 x i64> %vec.phi, %i.ct           ; 2 uses
  %i.cw = add <2 x i64> %vec.phi400, %i.cu        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !3589

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cw, %i.cv
  %i.cy = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader427

.lr.ph.i26.i.preheader427:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.cy, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader427, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader427 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.dc, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader427 ] ; 2 uses
  %i.cz = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.da = icmp eq i32 %i.cz, %i.bx
  %i.db = zext i1 %i.da to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.db ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dc, %.val195.val197
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !3590

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.cy, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.dd, %.val195.val197
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit32, label %bb.f, !llvm.loop !3329

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.057, i64 24 ; 2 uses
  %.not30 = icmp eq ptr %i.de, %.val184
  br i1 %.not30, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, %bb.b
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !3591
  %.not.i = icmp eq ptr %.val184, %i.df
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !3593
  br label %.loopexit32

bb.s:                                             ; preds = %.thread
  %i.dh = ptrtoint ptr %.val184 to i64
  %i.di = ptrtoint ptr %i.m to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 4 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.t, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  store ptr %i.m, ptr %40, align 8
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
          to label %.noexc258 unwind label %.loopexit34 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  br i1 %.not3056, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %i.dr, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %i.m, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3594)
  call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  %i.dt = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !3599, !alias.scope !3597, !noalias !3594
  store <2 x ptr> %i.dt, ptr %.03.i.i.i.i.i, align 8, !tbaa !3599, !alias.scope !3594, !noalias !3597
  %i.du = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !3600, !alias.scope !3597, !noalias !3594
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !3600, !alias.scope !3594, !noalias !3597
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3597, !noalias !3594
  %i.dx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dx, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3601

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dr, %.noexc258 ], [ %i.dy, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.dj) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE11_S_relocateEPSP_SS_SS_RSQ_.exit25.i.i
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !3593
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !3591
  br label %.loopexit32

.loopexit34:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %40, align 8
  br label %bb.lb

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

.loopexit32:                                      ; preds = %._crit_edge.i, %.critedge.i, %bb.r, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i
  %i.eb = phi ptr [ %i.m, %.critedge.i ], [ %i.m, %bb.r ], [ %i.dr, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i ], [ %i.m, %._crit_edge.i ] ; 10 uses
  %.3109 = phi ptr [ %.sroa.012.057, %.critedge.i ], [ %.val184, %bb.r ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EESaISP_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSP_SR_EEDpOT_.exit.i ], [ %.sroa.012.057, %._crit_edge.i ] ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !3602 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !3600
  %.not.i.i = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit32
  store ptr %.sroa.014.068, ptr %i.ed, align 8, !tbaa !3603
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %.012069, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !3602
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE9push_backEOSN_.exit

bb.w:                                             ; preds = %.loopexit32
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !3581 ; 5 uses
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = ptrtoint ptr %.val.i.i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 6 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775792
  br i1 %i.ek, label %bb.x, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  store ptr %i.eb, ptr %40, align 8
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
          to label %.noexc260 unwind label %.loopexit35 ; 4 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESaISD_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISN_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EEC2ERKS4_:bb.a

bb.m:                                             ; preds = %.body
  %.val9 = load ptr, ptr %i.k, align 8, !tbaa !3297
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
  %40 = alloca %"class.std::vector.1288", align 8 ; 20 uses
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
  %.not71 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not71, label %.critedge172.thread, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.a
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

bb.b:                                             ; preds = %.lr.ph74, %bb.az
  %.012073 = phi i64 [ 0, %.lr.ph74 ], [ %i.fp, %bb.az ] ; 3 uses
  %.sroa.014.072 = phi ptr [ %.0.val, %.lr.ph74 ], [ %i.jb, %bb.az ] ; 4 uses
  %i.m = phi ptr [ null, %.lr.ph74 ], [ %i.et, %bb.az ] ; 12 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !6089 ; 9 uses
  %.not3259 = icmp eq ptr %i.m, %.val184          ; 3 uses
  br i1 %.not3259, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.072, align 8, !tbaa !6091 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !3294 ; 3 uses
  %i.n = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.n, align 8, !tbaa !3309 ; 3 uses
  %i.o = ptrtoint ptr %.val195.val197 to i64
  %i.p = ptrtoint ptr %.val195.val to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val195.val, %.val195.val197
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr = freeze i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us
  %.sroa.012.060.us = phi ptr [ %i.x, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us ], [ %i.m, %.lr.ph ] ; 3 uses
  %.val194.us = load ptr, ptr %.sroa.012.060.us, align 8, !tbaa !6092
  %i.r = load ptr, ptr %.val194.us, align 8, !tbaa !6095, !nonnull !27, !align !310
  %.val196.us = load ptr, ptr %i.r, align 8, !tbaa !6091 ; 2 uses
  %.val196.val.us = load ptr, ptr %.val196.us, align 8, !tbaa !3294
  %i.s = getelementptr i8, ptr %.val196.us, i64 8
  %.val196.val198.us = load ptr, ptr %i.s, align 8, !tbaa !3309
  %i.t = ptrtoint ptr %.val196.val198.us to i64
  %i.u = ptrtoint ptr %.val196.val.us to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp eq i64 %i.q, %i.v
  br i1 %i.w, label %.thread19, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us: ; preds = %.lr.ph.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.060.us, i64 24 ; 2 uses
  %.not32.us = icmp eq ptr %i.x, %.val184
  br i1 %.not32.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit
  %.sroa.012.060 = phi ptr [ %i.dw, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ], [ %i.m, %.lr.ph ] ; 3 uses
  %.val194 = load ptr, ptr %.sroa.012.060, align 8, !tbaa !6092
  %i.y = load ptr, ptr %.val194, align 8, !tbaa !6095, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.y, align 8, !tbaa !6091 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !3294 ; 2 uses
  %i.z = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.z, align 8, !tbaa !3309
  %i.aa = ptrtoint ptr %.val196.val198 to i64
  %i.ab = ptrtoint ptr %.val196.val to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.q, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split, %.loopexit34
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.loopexit34 ], [ %.val196.val, %.lr.ph.split ] ; 3 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.du, %.loopexit34 ], [ %.val195.val, %.lr.ph.split ] ; 3 uses
  %.08.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1454 ; 4 uses
  %i.ae = getelementptr i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !1457 ; 6 uses
  %.0.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1454 ; 3 uses
  %i.af = getelementptr i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !1457
  %i.ag = ptrtoint ptr %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 4 uses
  %i.ah = ptrtoint ptr %.08.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ptrtoint ptr %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ak = ptrtoint ptr %.0.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp eq i64 %i.ai, %i.al
  br i1 %i.am, label %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.not4952.i = icmp eq ptr %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.038.054.i = phi ptr [ %i.ar, %bb.c ], [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.042.053.i = phi ptr [ %i.aq, %bb.c ], [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.an = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !211
  %i.ao = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !211
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.aq, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3321

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.042.0.lcssa.i = phi ptr [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.c ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ar, %bb.c ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.as = icmp eq ptr %.sroa.042.0.lcssa.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.as, label %.loopexit34, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.at = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.au = sub i64 %i.ag, %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.au
  %i.aw = add i64 %i.ag, -4
  %65 = sub i64 %i.aw, %i.at
  %66 = lshr i64 %65, 2
  %67 = add nuw nsw i64 %66, 1
  %i.ax = add i64 %i.ag, -4
  %i.ay = sub i64 %i.ax, %i.at                    ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check415 = icmp ult i64 %i.ay, 12
  %n.vec417 = and i64 %i.ba, 9223372036854775804  ; 3 uses
  %i.bb = shl i64 %n.vec417, 2
  %i.bc = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.bb
  %cmp.n430 = icmp eq i64 %i.ba, %n.vec417
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.dt, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %68 = mul i64 %indvar, 4611686018427387903
  %i.bd = add i64 %67, %68                        ; 3 uses
  %i.be = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.bf = sub i64 %i.be, %i.at                    ; 3 uses
  %i.bg = ashr i64 %i.bf, 4                       ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.d
  %i.bi = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.bj = and i64 %i.bf, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.bj ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i826 ], [ %i.bw, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bv, %bb.i ] ; 9 uses
  %i.bk = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.bl = icmp eq i32 %i.bk, %i.bi
  br i1 %i.bl, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !211
  %i.bo = icmp eq i32 %i.bn, %i.bi
  br i1 %i.bo, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !211
  %i.br = icmp eq i32 %i.bq, %i.bi
  br i1 %i.br, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !211
  %i.bu = icmp eq i32 %i.bt, %i.bi
  br i1 %i.bu, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bw = add nsw i64 %.052.i.i.i, -1
  %i.bx = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bx, label %bb.e, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.be, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bf, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.d ] ; 5 uses
  %i.by = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.by, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
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
  %i.bz = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.ca = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.cd = phi i32 [ %i.ca, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.cc, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.ce = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.cf = icmp eq i32 %i.ce, %i.cd
  br i1 %i.cf, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge57.i.i.i
  %i.ch = phi i32 [ %i.cd, %bb.m ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.cg, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.cj = icmp eq i32 %i.ci, %i.ch
  %spec.select.i.i.i = select i1 %i.cj, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375: ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377: ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.e, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377, %bb.n, %bb.l, %bb.j, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.n ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.cm, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377 ], [ %i.cl, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375 ], [ %i.ck, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.cn = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check415, label %scalar.ph414.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %bb.o
  %broadcast.splatinsert418 = insertelement <2 x i32> poison, i32 %i.cn, i64 0
  %broadcast.splat419 = shufflevector <2 x i32> %broadcast.splatinsert418, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph416
  %index421 = phi i64 [ 0, %vector.ph416 ], [ %index.next427, %vector.body420 ] ; 2 uses
  %vec.phi422 = phi <2 x i64> [ zeroinitializer, %vector.ph416 ], [ %i.cu, %vector.body420 ]
  %vec.phi423 = phi <2 x i64> [ zeroinitializer, %vector.ph416 ], [ %i.cv, %vector.body420 ]
  %i.co = shl i64 %index421, 2
  %next.gep424 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep424, i64 8
  %wide.load425 = load <2 x i32>, ptr %next.gep424, align 4, !tbaa !211
  %wide.load426 = load <2 x i32>, ptr %i.cp, align 4, !tbaa !211
  %i.cq = icmp eq <2 x i32> %wide.load425, %broadcast.splat419
  %i.cr = icmp eq <2 x i32> %wide.load426, %broadcast.splat419
  %i.cs = zext <2 x i1> %i.cq to <2 x i64>
  %i.ct = zext <2 x i1> %i.cr to <2 x i64>
  %i.cu = add <2 x i64> %vec.phi422, %i.cs        ; 2 uses
  %i.cv = add <2 x i64> %vec.phi423, %i.ct        ; 2 uses
  %index.next427 = add nuw i64 %index421, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next427, %n.vec417
  br i1 %i.cw, label %middle.block428, label %vector.body420, !llvm.loop !6098

middle.block428:                                  ; preds = %vector.body420
  %bin.rdx429 = add <2 x i64> %i.cv, %i.cu
  %i.cx = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx429) ; 2 uses
  br i1 %cmp.n430, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %bb.o, %middle.block428
  %.07.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.cx, %middle.block428 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.o ], [ %i.bc, %middle.block428 ]
  br label %scalar.ph414

scalar.ph414:                                     ; preds = %scalar.ph414.preheader, %scalar.ph414
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph414 ], [ %.07.i.i.ph, %scalar.ph414.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.db, %scalar.ph414 ], [ %.sroa.03.06.i.i.ph, %scalar.ph414.preheader ] ; 2 uses
  %i.cy = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.cz = icmp eq i32 %i.cy, %i.cn
  %i.da = zext i1 %i.cz to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.db, %i.av
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph414, !llvm.loop !6099

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph414, %middle.block428
  %spec.select.i.i.lcssa = phi i64 [ %i.cx, %middle.block428 ], [ %spec.select.i.i, %scalar.ph414 ] ; 2 uses
  %i.dc = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.dc, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader439, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.bd, -4                      ; 3 uses
  %i.dd = shl i64 %n.vec, 2
  %i.de = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.dd
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi412 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load413 = load <2 x i32>, ptr %i.dg, align 4, !tbaa !211
  %i.dh = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.di = icmp eq <2 x i32> %wide.load413, %broadcast.splat
  %i.dj = zext <2 x i1> %i.dh to <2 x i64>
  %i.dk = zext <2 x i1> %i.di to <2 x i64>
  %i.dl = add <2 x i64> %vec.phi, %i.dj           ; 2 uses
  %i.dm = add <2 x i64> %vec.phi412, %i.dk        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !6100

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dm, %i.dl
  %i.do = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader439

.lr.ph.i26.i.preheader439:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.do, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader439, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader439 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.ds, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader439 ] ; 2 uses
  %i.dp = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.dq = icmp eq i32 %i.dp, %i.cn
  %i.dr = zext i1 %i.dq to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.dr ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.ds, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !6101

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.do, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.dt, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit34, label %bb.d, !llvm.loop !3329

.loopexit34:                                      ; preds = %.critedge.i, %._crit_edge.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, %.val195.val197
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread19, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6102

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %.lr.ph.split
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.012.060, i64 24 ; 2 uses
  %.not32 = icmp eq ptr %i.dw, %.val184
  br i1 %.not32, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit.us, %bb.b
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !6103
  %.not.i = icmp eq ptr %.val184, %i.dx
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dy, ptr %i.c, align 8, !tbaa !6105
  br label %.thread19

bb.q:                                             ; preds = %.thread
  %i.dz = ptrtoint ptr %.val184 to i64
  %i.ea = ptrtoint ptr %i.m to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 4 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775800
  br i1 %i.ec, label %bb.r, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.m, ptr %40, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ed = sdiv exact i64 %i.eb, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3259, i64 1, i64 %i.ed
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 384307168202282325)
  %i.eh = select i1 %i.ef, i64 384307168202282325, i64 %i.eg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ei = mul nuw nsw i64 %i.eh, 24
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #35
          to label %.noexc258 unwind label %.loopexit37 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false)
  br i1 %.not3259, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i ], [ %i.ej, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i ], [ %i.m, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6106)
  call void @llvm.experimental.noalias.scope.decl(metadata !6109)
  %i.el = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !6111, !alias.scope !6109, !noalias !6106
  store <2 x ptr> %i.el, ptr %.03.i.i.i.i.i, align 8, !tbaa !6111, !alias.scope !6106, !noalias !6109
  %i.em = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !6112, !alias.scope !6109, !noalias !6106
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !6112, !alias.scope !6106, !noalias !6109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !6109, !noalias !6106
  %i.ep = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ep, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6113

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ej, %.noexc258 ], [ %i.eq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.eb) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE11_S_relocateEPSO_SR_SR_RSP_.exit25.i.i
  store ptr %i.er, ptr %i.c, align 8, !tbaa !6105
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.eh
  store ptr %i.es, ptr %i.d, align 8, !tbaa !6103
  br label %.thread19

.loopexit37:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %40, align 8
  br label %bb.kz

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

.thread19:                                        ; preds = %.lr.ph.split.us, %.loopexit34, %bb.p, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i
  %i.et = phi ptr [ %i.m, %.loopexit34 ], [ %i.m, %bb.p ], [ %i.ej, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i ], [ %i.m, %.lr.ph.split.us ] ; 10 uses
  %.3109 = phi ptr [ %.sroa.012.060, %.loopexit34 ], [ %.val184, %bb.p ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EESaISO_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSO_SQ_EEDpOT_.exit.i ], [ %.sroa.012.060.us, %.lr.ph.split.us ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !6114 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !6112
  %.not.i.i = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread19
  store ptr %.sroa.014.072, ptr %i.ev, align 8, !tbaa !6115
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.012073, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !6114
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE9push_backEOSM_.exit

bb.u:                                             ; preds = %.thread19
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !6092 ; 5 uses
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = ptrtoint ptr %.val.i.i.i to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 6 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775792
  br i1 %i.fc, label %bb.v, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_IN12_GLOBAL__N_117UnorderedSequenceIiEESaIS7_EEEESaISC_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISM_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  store ptr %i.et, ptr %40, align 8
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
  %i.fh = call i64 @llvm.umin.i64(i64 %i.ff, i64 576460752303423487)
  %i.fi = select i1 %i.fg, i64 576460752303423487, i64 %i.fh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fi, 0
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EEC2ERKS9_:bb.a

bb.m:                                             ; preds = %.body
  %.val9 = load ptr, ptr %i.k, align 8, !tbaa !3564
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
  %40 = alloca %"class.std::vector.1352", align 8 ; 20 uses
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
  %.not71 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not71, label %.critedge172.thread, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.a
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

bb.b:                                             ; preds = %.lr.ph74, %bb.az
  %.012073 = phi i64 [ 0, %.lr.ph74 ], [ %i.fp, %bb.az ] ; 3 uses
  %.sroa.014.072 = phi ptr [ %.0.val, %.lr.ph74 ], [ %i.jb, %bb.az ] ; 4 uses
  %i.m = phi ptr [ null, %.lr.ph74 ], [ %i.et, %bb.az ] ; 12 uses
  %.val184 = load ptr, ptr %i.c, align 8, !tbaa !6265 ; 9 uses
  %.not3259 = icmp eq ptr %i.m, %.val184          ; 3 uses
  br i1 %.not3259, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.val195 = load ptr, ptr %.sroa.014.072, align 8, !tbaa !6267 ; 2 uses
  %.val195.val = load ptr, ptr %.val195, align 8, !tbaa !3561 ; 3 uses
  %i.n = getelementptr i8, ptr %.val195, i64 8
  %.val195.val197 = load ptr, ptr %i.n, align 8, !tbaa !3576 ; 3 uses
  %i.o = ptrtoint ptr %.val195.val197 to i64
  %i.p = ptrtoint ptr %.val195.val to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val195.val, %.val195.val197
  %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr = freeze i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i.i.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us
  %.sroa.012.060.us = phi ptr [ %i.x, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us ], [ %i.m, %.lr.ph ] ; 3 uses
  %.val194.us = load ptr, ptr %.sroa.012.060.us, align 8, !tbaa !6268
  %i.r = load ptr, ptr %.val194.us, align 8, !tbaa !6271, !nonnull !27, !align !310
  %.val196.us = load ptr, ptr %i.r, align 8, !tbaa !6267 ; 2 uses
  %.val196.val.us = load ptr, ptr %.val196.us, align 8, !tbaa !3561
  %i.s = getelementptr i8, ptr %.val196.us, i64 8
  %.val196.val198.us = load ptr, ptr %i.s, align 8, !tbaa !3576
  %i.t = ptrtoint ptr %.val196.val198.us to i64
  %i.u = ptrtoint ptr %.val196.val.us to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp eq i64 %i.q, %i.v
  br i1 %i.w, label %.thread19, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us: ; preds = %.lr.ph.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.060.us, i64 24 ; 2 uses
  %.not32.us = icmp eq ptr %i.x, %.val184
  br i1 %.not32.us, label %.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit
  %.sroa.012.060 = phi ptr [ %i.dw, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit ], [ %i.m, %.lr.ph ] ; 3 uses
  %.val194 = load ptr, ptr %.sroa.012.060, align 8, !tbaa !6268
  %i.y = load ptr, ptr %.val194, align 8, !tbaa !6271, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.y, align 8, !tbaa !6267 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !3561 ; 2 uses
  %i.z = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.z, align 8, !tbaa !3576
  %i.aa = ptrtoint ptr %.val196.val198 to i64
  %i.ab = ptrtoint ptr %.val196.val to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp eq i64 %i.q, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split, %.loopexit34
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.loopexit34 ], [ %.val196.val, %.lr.ph.split ] ; 3 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.du, %.loopexit34 ], [ %.val195.val, %.lr.ph.split ] ; 3 uses
  %.08.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1454 ; 4 uses
  %i.ae = getelementptr i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !1457 ; 6 uses
  %.0.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1454 ; 3 uses
  %i.af = getelementptr i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !1457
  %i.ag = ptrtoint ptr %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 4 uses
  %i.ah = ptrtoint ptr %.08.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ptrtoint ptr %.0.val10.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ak = ptrtoint ptr %.0.val.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp eq i64 %i.ai, %i.al
  br i1 %i.am, label %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.not4952.i = icmp eq ptr %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.038.054.i = phi ptr [ %i.ar, %bb.c ], [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.042.053.i = phi ptr [ %i.aq, %bb.c ], [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.an = load i32, ptr %.sroa.042.053.i, align 4, !tbaa !211
  %i.ao = load i32, ptr %.sroa.038.054.i, align 4, !tbaa !211
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.042.053.i, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.038.054.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.aq, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3321

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.042.0.lcssa.i = phi ptr [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.c ], [ %.sroa.042.053.i, %.lr.ph.i ] ; 6 uses
  %.sroa.038.0.lcssa.i = phi ptr [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ar, %bb.c ], [ %.sroa.038.054.i, %.lr.ph.i ] ; 4 uses
  %i.as = icmp eq ptr %.sroa.042.0.lcssa.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.as, label %.loopexit34, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.at = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.au = sub i64 %i.ag, %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.au
  %i.aw = add i64 %i.ag, -4
  %65 = sub i64 %i.aw, %i.at
  %66 = lshr i64 %65, 2
  %67 = add nuw nsw i64 %66, 1
  %i.ax = add i64 %i.ag, -4
  %i.ay = sub i64 %i.ax, %i.at                    ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check415 = icmp ult i64 %i.ay, 12
  %n.vec417 = and i64 %i.ba, 9223372036854775804  ; 3 uses
  %i.bb = shl i64 %n.vec417, 2
  %i.bc = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.bb
  %cmp.n430 = icmp eq i64 %i.ba, %n.vec417
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.dt, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %68 = mul i64 %indvar, 4611686018427387903
  %i.bd = add i64 %67, %68                        ; 3 uses
  %i.be = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.bf = sub i64 %i.be, %i.at                    ; 3 uses
  %i.bg = ashr i64 %i.bf, 4                       ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.d
  %i.bi = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.bj = and i64 %i.bf, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.bj ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i826 ], [ %i.bw, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bv, %bb.i ] ; 9 uses
  %i.bk = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.bl = icmp eq i32 %i.bk, %i.bi
  br i1 %i.bl, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !211
  %i.bo = icmp eq i32 %i.bn, %i.bi
  br i1 %i.bo, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !211
  %i.br = icmp eq i32 %i.bq, %i.bi
  br i1 %i.br, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !211
  %i.bu = icmp eq i32 %i.bt, %i.bi
  br i1 %i.bu, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bw = add nsw i64 %.052.i.i.i, -1
  %i.bx = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bx, label %bb.e, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.be, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bf, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.d ] ; 5 uses
  %i.by = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.by, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
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
  %i.bz = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.ca = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.cd = phi i32 [ %i.ca, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.cc, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.ce = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.cf = icmp eq i32 %i.ce, %i.cd
  br i1 %i.cf, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge57.i.i.i
  %i.ch = phi i32 [ %i.cd, %bb.m ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.cg, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.cj = icmp eq i32 %i.ci, %i.ch
  %spec.select.i.i.i = select i1 %i.cj, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375: ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377: ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.e, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377, %bb.n, %bb.l, %bb.j, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.n ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.cm, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377 ], [ %i.cl, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375 ], [ %i.ck, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.cn = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check415, label %scalar.ph414.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %bb.o
  %broadcast.splatinsert418 = insertelement <2 x i32> poison, i32 %i.cn, i64 0
  %broadcast.splat419 = shufflevector <2 x i32> %broadcast.splatinsert418, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph416
  %index421 = phi i64 [ 0, %vector.ph416 ], [ %index.next427, %vector.body420 ] ; 2 uses
  %vec.phi422 = phi <2 x i64> [ zeroinitializer, %vector.ph416 ], [ %i.cu, %vector.body420 ]
  %vec.phi423 = phi <2 x i64> [ zeroinitializer, %vector.ph416 ], [ %i.cv, %vector.body420 ]
  %i.co = shl i64 %index421, 2
  %next.gep424 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep424, i64 8
  %wide.load425 = load <2 x i32>, ptr %next.gep424, align 4, !tbaa !211
  %wide.load426 = load <2 x i32>, ptr %i.cp, align 4, !tbaa !211
  %i.cq = icmp eq <2 x i32> %wide.load425, %broadcast.splat419
  %i.cr = icmp eq <2 x i32> %wide.load426, %broadcast.splat419
  %i.cs = zext <2 x i1> %i.cq to <2 x i64>
  %i.ct = zext <2 x i1> %i.cr to <2 x i64>
  %i.cu = add <2 x i64> %vec.phi422, %i.cs        ; 2 uses
  %i.cv = add <2 x i64> %vec.phi423, %i.ct        ; 2 uses
  %index.next427 = add nuw i64 %index421, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next427, %n.vec417
  br i1 %i.cw, label %middle.block428, label %vector.body420, !llvm.loop !6274

middle.block428:                                  ; preds = %vector.body420
  %bin.rdx429 = add <2 x i64> %i.cv, %i.cu
  %i.cx = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx429) ; 2 uses
  br i1 %cmp.n430, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %bb.o, %middle.block428
  %.07.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.cx, %middle.block428 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.o ], [ %i.bc, %middle.block428 ]
  br label %scalar.ph414

scalar.ph414:                                     ; preds = %scalar.ph414.preheader, %scalar.ph414
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph414 ], [ %.07.i.i.ph, %scalar.ph414.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.db, %scalar.ph414 ], [ %.sroa.03.06.i.i.ph, %scalar.ph414.preheader ] ; 2 uses
  %i.cy = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.cz = icmp eq i32 %i.cy, %i.cn
  %i.da = zext i1 %i.cz to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.da ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.db, %i.av
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph414, !llvm.loop !6275

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph414, %middle.block428
  %spec.select.i.i.lcssa = phi i64 [ %i.cx, %middle.block428 ], [ %spec.select.i.i, %scalar.ph414 ] ; 2 uses
  %i.dc = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.dc, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader439, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.bd, -4                      ; 3 uses
  %i.dd = shl i64 %n.vec, 2
  %i.de = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.dd
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi412 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load413 = load <2 x i32>, ptr %i.dg, align 4, !tbaa !211
  %i.dh = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.di = icmp eq <2 x i32> %wide.load413, %broadcast.splat
  %i.dj = zext <2 x i1> %i.dh to <2 x i64>
  %i.dk = zext <2 x i1> %i.di to <2 x i64>
  %i.dl = add <2 x i64> %vec.phi, %i.dj           ; 2 uses
  %i.dm = add <2 x i64> %vec.phi412, %i.dk        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !6276

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dm, %i.dl
  %i.do = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i.preheader439

.lr.ph.i26.i.preheader439:                        ; preds = %.lr.ph.i26.i.preheader, %middle.block
  %.07.i27.i.ph = phi i64 [ 0, %.lr.ph.i26.i.preheader ], [ %i.do, %middle.block ]
  %.sroa.03.06.i28.i.ph = phi ptr [ %.sroa.033.068.i, %.lr.ph.i26.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.preheader439, %.lr.ph.i26.i
  %.07.i27.i = phi i64 [ %spec.select.i29.i, %.lr.ph.i26.i ], [ %.07.i27.i.ph, %.lr.ph.i26.i.preheader439 ]
  %.sroa.03.06.i28.i = phi ptr [ %i.ds, %.lr.ph.i26.i ], [ %.sroa.03.06.i28.i.ph, %.lr.ph.i26.i.preheader439 ] ; 2 uses
  %i.dp = load i32, ptr %.sroa.03.06.i28.i, align 4, !tbaa !211
  %i.dq = icmp eq i32 %i.dp, %i.cn
  %i.dr = zext i1 %i.dq to i64
  %spec.select.i29.i = add nuw nsw i64 %.07.i27.i, %i.dr ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i28.i, i64 4 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.ds, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i30.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, label %.lr.ph.i26.i, !llvm.loop !6277

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i: ; preds = %.lr.ph.i26.i, %middle.block
  %spec.select.i29.i.lcssa = phi i64 [ %i.do, %middle.block ], [ %spec.select.i29.i, %.lr.ph.i26.i ]
  %.not.i825 = icmp eq i64 %spec.select.i29.i.lcssa, %spec.select.i.i.lcssa
  br i1 %.not.i825, label %.critedge.i, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit

.critedge.i:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.033.068.i, i64 4 ; 2 uses
  %.not50.i = icmp eq ptr %i.dt, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not50.i, label %.loopexit34, label %bb.d, !llvm.loop !3329

.loopexit34:                                      ; preds = %.critedge.i, %._crit_edge.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, %.val195.val197
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread19, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6278

_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit32.i, %.lr.ph.split
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.012.060, i64 24 ; 2 uses
  %.not32 = icmp eq ptr %i.dw, %.val184
  br i1 %.not32, label %.thread, label %.lr.ph.split

.thread:                                          ; preds = %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit.us, %bb.b
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !6279
  %.not.i = icmp eq ptr %.val184, %i.dx
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val184, i8 0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val184, i64 24
  store ptr %i.dy, ptr %i.c, align 8, !tbaa !6281
  br label %.thread19

bb.q:                                             ; preds = %.thread
  %i.dz = ptrtoint ptr %.val184 to i64
  %i.ea = ptrtoint ptr %i.m to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 4 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775800
  br i1 %i.ec, label %bb.r, label %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.m, ptr %40, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc257 unwind label %.loopexit.split-lp

.noexc257:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ed = sdiv exact i64 %i.eb, 24                ; 3 uses
  %.sroa.speculated.i.i.i = select i1 %.not3259, i64 1, i64 %i.ed
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 384307168202282325)
  %i.eh = select i1 %i.ef, i64 384307168202282325, i64 %i.eg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ei = mul nuw nsw i64 %i.eh, 24
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #35
          to label %.noexc258 unwind label %.loopexit37 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false)
  br i1 %.not3259, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc258, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i ], [ %i.ej, %.noexc258 ] ; 3 uses
  %.092.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i ], [ %i.m, %.noexc258 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6282)
  call void @llvm.experimental.noalias.scope.decl(metadata !6285)
  %i.el = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !6287, !alias.scope !6285, !noalias !6282
  store <2 x ptr> %i.el, ptr %.03.i.i.i.i.i, align 8, !tbaa !6287, !alias.scope !6282, !noalias !6285
  %i.em = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !6288, !alias.scope !6285, !noalias !6282
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !6288, !alias.scope !6282, !noalias !6285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !6285, !noalias !6282
  %i.ep = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ep, %.val184
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6289

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc258
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ej, %.noexc258 ], [ %i.eq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i26.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i26.i.i, label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.eb) #33
  br label %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i

_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE11_S_relocateEPSR_SU_SU_RSS_.exit25.i.i
  store ptr %i.er, ptr %i.c, align 8, !tbaa !6281
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.eh
  store ptr %i.es, ptr %i.d, align 8, !tbaa !6279
  br label %.thread19

.loopexit37:                                      ; preds = %_ZNKSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %40, align 8
  br label %bb.kz

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

.thread19:                                        ; preds = %.lr.ph.split.us, %.loopexit34, %bb.p, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i
  %i.et = phi ptr [ %i.m, %.loopexit34 ], [ %i.m, %bb.p ], [ %i.ej, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i ], [ %i.m, %.lr.ph.split.us ] ; 10 uses
  %.3109 = phi ptr [ %.sroa.012.060, %.loopexit34 ], [ %.val184, %bb.p ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIS_IZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EESaISR_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPSR_ST_EEDpOT_.exit.i ], [ %.sroa.012.060.us, %.lr.ph.split.us ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.3109, i64 8 ; 4 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !6290 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.3109, i64 16 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !6288
  %.not.i.i = icmp eq ptr %i.ev, %i.ex
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread19
  store ptr %.sroa.014.072, ptr %i.ev, align 8, !tbaa !6291
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %.012073, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !6290
  br label %_ZNSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE9push_backEOSP_.exit

bb.u:                                             ; preds = %.thread19
  %.val.i.i.i = load ptr, ptr %.3109, align 8, !tbaa !6268 ; 5 uses
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = ptrtoint ptr %.val.i.i.i to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 6 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775792
  br i1 %i.fc, label %bb.v, label %_ZNKSt6vectorIZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyIS_ISt7variantIJPKS_INS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EEEESaISF_EENS2_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_E4InfoSaISP_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  store ptr %i.et, ptr %40, align 8
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
  %i.fh = call i64 @llvm.umin.i64(i64 %i.ff, i64 576460752303423487)
  %i.fi = select i1 %i.fg, i64 576460752303423487, i64 %i.fh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fi, 0
end_hunk_4
