inline.NumInlined: 29462
inline.NumDeleted: 10401
loop-unroll.NumCompletelyUnrolled: 582
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 594
begin_hunk_0_@_ZNSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EE19_M_range_initializeIPKS2_EEvT_S8_St20forward_iterator_tag:bb.a
bb.d:                                             ; preds = %.noexc13.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.m, i64 %i.p, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc13.i.i.i.i
  %i.z = icmp eq i64 %i.p, 4
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.m, align 4, !tbaa !211
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !211
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e, %bb.d
  %i.ab = phi ptr [ %i.w, %bb.f ], [ %i.w, %bb.e ], [ %i.w, %bb.d ], [ %i.r, %.thread ]
  %i.ac = phi ptr [ %i.v, %bb.f ], [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %i.q, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1457
  %i.ad = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN12_GLOBAL__N_117UnorderedSequenceIiEEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3312

.loopexit.i.i.i.i:                                ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %i.af = extractvalue { ptr, i32 } %lpad.phi.i.i.i.i, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #30 ; 0 uses
  tail call fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_117UnorderedSequenceIiEEEvT_S4_(ptr noundef nonnull %i.h, ptr noundef nonnull %.019.i.i.i.i)
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

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
  %.069 = phi i64 [ 0, %.lr.ph70 ], [ %i.fa, %bb.bb ] ; 3 uses
  %.sroa.014.068 = phi ptr [ %.0.val, %.lr.ph70 ], [ %i.im, %bb.bb ] ; 4 uses
  %i.m = phi ptr [ null, %.lr.ph70 ], [ %i.ee, %bb.bb ] ; 11 uses
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
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit
  %.sroa.012.057 = phi ptr [ %i.m, %.lr.ph ], [ %i.dh, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.057, align 8, !tbaa !3315
  %i.s = load ptr, ptr %.val194, align 8, !tbaa !3318, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.s, align 8, !tbaa !3298 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !1454 ; 3 uses
  %i.t = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.t, align 8, !tbaa !1457
  %i.u = ptrtoint ptr %.val196.val198 to i64
  %i.v = ptrtoint ptr %.val196.val to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp eq i64 %i.q, %i.w
  br i1 %i.x, label %bb.d, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit

bb.d:                                             ; preds = %bb.c
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.042.054.i = phi ptr [ %i.ab, %bb.e ], [ %.val195.val, %bb.d ] ; 3 uses
  %.sroa.038.053.i = phi ptr [ %i.ac, %bb.e ], [ %.val196.val, %bb.d ] ; 3 uses
  %i.y = load i32, ptr %.sroa.042.054.i, align 4, !tbaa !211
  %i.z = load i32, ptr %.sroa.038.053.i, align 4, !tbaa !211
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.042.054.i, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.053.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ab, %.val195.val197
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3321

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.038.0.lcssa.i = phi ptr [ %.val196.val, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.038.053.i, %.lr.ph.i ] ; 4 uses
  %.sroa.042.0.lcssa.i = phi ptr [ %.val195.val, %bb.d ], [ %i.ab, %bb.e ], [ %.sroa.042.054.i, %.lr.ph.i ] ; 6 uses
  %i.ad = icmp eq ptr %.sroa.042.0.lcssa.i, %.val195.val197
  br i1 %i.ad, label %.loopexit32, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.ae = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.af = sub i64 %i.o, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.af
  %i.ah = sub i64 %i.o, %i.ae
  %65 = add i64 %i.ah, -4                         ; 2 uses
  %i.ai = lshr i64 %65, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check403 = icmp ult i64 %65, 12
  %n.vec405 = and i64 %i.aj, 9223372036854775804  ; 3 uses
  %i.ak = shl i64 %n.vec405, 2
  %i.al = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.ak
  %cmp.n418 = icmp eq i64 %i.aj, %n.vec405
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.dg, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.am = shl i64 %indvar, 2
  %i.an = add i64 %i.am, %i.ae
  %i.ao = sub i64 %i.r, %i.an                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.as = sub i64 %i.ar, %i.ae                    ; 3 uses
  %i.at = ashr i64 %i.as, 4                       ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.f
  %i.av = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.aw = and i64 %i.as, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.aw ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i826 ], [ %i.bj, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bi, %bb.k ] ; 9 uses
  %i.ax = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.ay = icmp eq i32 %i.ax, %i.av
  br i1 %i.ay, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !211
  %i.bb = icmp eq i32 %i.ba, %i.av
  br i1 %i.bb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !211
  %i.be = icmp eq i32 %i.bd, %i.av
  br i1 %i.be, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !211
  %i.bh = icmp eq i32 %i.bg, %i.av
  br i1 %i.bh, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bj = add nsw i64 %.052.i.i.i, -1
  %i.bk = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bk, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ar, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.as, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bl = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bl, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
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
  %i.bm = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.bn = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.bq = phi i32 [ %i.bn, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bp, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.br = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.bs = icmp eq i32 %i.br, %i.bq
  br i1 %i.bs, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.bu = phi i32 [ %i.bq, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.bt, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bv = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.bw = icmp eq i32 %i.bv, %i.bu
  %spec.select.i.i.i = select i1 %i.bw, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365: ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367: ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bz, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367 ], [ %i.by, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365 ], [ %i.bx, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.ca = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %bb.q
  %broadcast.splatinsert406 = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat407 = shufflevector <2 x i32> %broadcast.splatinsert406, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph404
  %index409 = phi i64 [ 0, %vector.ph404 ], [ %index.next415, %vector.body408 ] ; 2 uses
  %vec.phi410 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.ch, %vector.body408 ]
  %vec.phi411 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.ci, %vector.body408 ]
  %i.cb = shl i64 %index409, 2
  %next.gep412 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep412, i64 8
  %wide.load413 = load <2 x i32>, ptr %next.gep412, align 4, !tbaa !211
  %wide.load414 = load <2 x i32>, ptr %i.cc, align 4, !tbaa !211
  %i.cd = icmp eq <2 x i32> %wide.load413, %broadcast.splat407
  %i.ce = icmp eq <2 x i32> %wide.load414, %broadcast.splat407
  %i.cf = zext <2 x i1> %i.cd to <2 x i64>
  %i.cg = zext <2 x i1> %i.ce to <2 x i64>
  %i.ch = add <2 x i64> %vec.phi410, %i.cf        ; 2 uses
  %i.ci = add <2 x i64> %vec.phi411, %i.cg        ; 2 uses
  %index.next415 = add nuw i64 %index409, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next415, %n.vec405
  br i1 %i.cj, label %middle.block416, label %vector.body408, !llvm.loop !3323

middle.block416:                                  ; preds = %vector.body408
  %bin.rdx417 = add <2 x i64> %i.ci, %i.ch
  %i.ck = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx417) ; 2 uses
  br i1 %cmp.n418, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402.preheader

scalar.ph402.preheader:                           ; preds = %bb.q, %middle.block416
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.ck, %middle.block416 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.al, %middle.block416 ]
  br label %scalar.ph402

scalar.ph402:                                     ; preds = %scalar.ph402.preheader, %scalar.ph402
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph402 ], [ %.07.i.i.ph, %scalar.ph402.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.co, %scalar.ph402 ], [ %.sroa.03.06.i.i.ph, %scalar.ph402.preheader ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.cm = icmp eq i32 %i.cl, %i.ca
  %i.cn = zext i1 %i.cm to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.cn ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.co, %i.ag
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402, !llvm.loop !3326

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph402, %middle.block416
  %spec.select.i.i.lcssa = phi i64 [ %i.ck, %middle.block416 ], [ %spec.select.i.i, %scalar.ph402 ] ; 2 uses
  %i.cp = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cp, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESE_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISI_EEEEE4typeEE4typeEOSR_EEEE4typeEOSG_DpOSI_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.ao, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader427, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775804     ; 3 uses
  %i.cq = shl i64 %n.vec, 2
  %i.cr = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cq
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %vec.phi400 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load401 = load <2 x i32>, ptr %i.ct, align 4, !tbaa !211
  %i.cu = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.cv = icmp eq <2 x i32> %wide.load401, %broadcast.splat
  %i.cw = zext <2 x i1> %i.cu to <2 x i64>
  %i.cx = zext <2 x i1> %i.cv to <2 x i64>
  %i.cy = add <2 x i64> %vec.phi, %i.cw           ; 2 uses
  %i.cz = add <2 x i64> %vec.phi400, %i.cx        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !3327

middle.block:                                     ; preds = %vector.body
end_hunk_0
begin_hunk_1_@_ZZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_ENK4Info8ToStringB5cxx11Ev:bb.a
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
  %.sroa.042.054 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.038.053 = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.a = load i32, ptr %.sroa.042.054, align 4, !tbaa !211
  %i.b = load i32, ptr %.sroa.038.053, align 4, !tbaa !211
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.042.054, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.038.053, i64 4 ; 2 uses
  %.not49 = icmp eq ptr %i.d, %1
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !3321

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.sroa.038.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.038.053, %.lr.ph ], [ %i.e, %bb.b ] ; 4 uses
  %.sroa.042.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.042.054, %.lr.ph ], [ %i.d, %bb.b ] ; 6 uses
  %i.f = icmp eq ptr %.sroa.042.0.lcssa, %1
  br i1 %i.f, label %.critedge24, label %.lr.ph70

.lr.ph70:                                         ; preds = %._crit_edge
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = ptrtoint ptr %.sroa.042.0.lcssa to i64   ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa, i64 %i.i
  %i.k = add i64 %i.g, -4
  %3 = sub i64 %i.g, %i.h
  %4 = add i64 %3, -4                             ; 2 uses
  %i.l = lshr i64 %4, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check104 = icmp ult i64 %4, 12
  %n.vec106 = and i64 %i.m, 9223372036854775804   ; 3 uses
  %i.n = shl i64 %n.vec106, 2
  %i.o = getelementptr i8, ptr %.sroa.038.0.lcssa, i64 %i.n
  %cmp.n119 = icmp eq i64 %i.m, %n.vec106
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph70, %.critedge
  %indvar = phi i64 [ 0, %.lr.ph70 ], [ %indvar.next, %.critedge ] ; 2 uses
  %.sroa.033.068 = phi ptr [ %.sroa.042.0.lcssa, %.lr.ph70 ], [ %i.cj, %.critedge ] ; 13 uses
  %i.p = shl i64 %indvar, 2
  %i.q = add i64 %i.p, %i.h
  %i.r = sub i64 %i.k, %i.q                       ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
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
  br i1 %i.an, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !3322

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
  br i1 %i.bm, label %middle.block117, label %vector.body109, !llvm.loop !3414

middle.block117:                                  ; preds = %vector.body109
  %bin.rdx118 = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx118) ; 2 uses
  br i1 %cmp.n119, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.lr.ph.i, %middle.block117
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bn, %middle.block117 ]
  %.sroa.03.06.i.ph = phi ptr [ %.sroa.038.0.lcssa, %.lr.ph.i ], [ %i.o, %middle.block117 ]
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
  br i1 %.not.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit, label %scalar.ph103, !llvm.loop !3415

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit: ; preds = %scalar.ph103, %middle.block117
  %spec.select.i.lcssa = phi i64 [ %i.bn, %middle.block117 ], [ %spec.select.i, %scalar.ph103 ] ; 2 uses
  %i.bs = icmp eq i64 %spec.select.i.lcssa, 0
  br i1 %i.bs, label %.critedge24, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit
  %min.iters.check = icmp ult i64 %i.r, 12
  br i1 %min.iters.check, label %.lr.ph.i26.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.preheader
  %n.vec = and i64 %i.t, 9223372036854775804      ; 3 uses
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
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EE19_M_range_initializeIPKS7_EEvT_SD_St20forward_iterator_tag:bb.a
bb.d:                                             ; preds = %.noexc13.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.m, i64 %i.p, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc13.i.i.i.i
  %i.z = icmp eq i64 %i.p, 4
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.m, align 4, !tbaa !211
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !211
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e, %bb.d
  %i.ab = phi ptr [ %i.w, %bb.f ], [ %i.w, %bb.e ], [ %i.w, %bb.d ], [ %i.r, %.thread ]
  %i.ac = phi ptr [ %i.v, %bb.f ], [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %i.q, %.thread ]
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1457
  %i.ad = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEPS7_S7_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3578

.loopexit.i.i.i.i:                                ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  %i.af = extractvalue { ptr, i32 } %lpad.phi.i.i.i.i, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #30 ; 0 uses
  tail call fastcc void @_ZSt8_DestroyIPN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEvT_S9_(ptr noundef nonnull %i.h, ptr noundef nonnull %.019.i.i.i.i)
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

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
  %.069 = phi i64 [ 0, %.lr.ph70 ], [ %i.fa, %bb.bb ] ; 3 uses
  %.sroa.014.068 = phi ptr [ %.0.val, %.lr.ph70 ], [ %i.im, %bb.bb ] ; 4 uses
  %i.m = phi ptr [ null, %.lr.ph70 ], [ %i.ee, %bb.bb ] ; 11 uses
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
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit
  %.sroa.012.057 = phi ptr [ %i.m, %.lr.ph ], [ %i.dh, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ] ; 4 uses
  %.val194 = load ptr, ptr %.sroa.012.057, align 8, !tbaa !3581
  %i.s = load ptr, ptr %.val194, align 8, !tbaa !3584, !nonnull !27, !align !310
  %.val196 = load ptr, ptr %i.s, align 8, !tbaa !3565 ; 2 uses
  %.val196.val = load ptr, ptr %.val196, align 8, !tbaa !1454 ; 3 uses
  %i.t = getelementptr i8, ptr %.val196, i64 8
  %.val196.val198 = load ptr, ptr %i.t, align 8, !tbaa !1457
  %i.u = ptrtoint ptr %.val196.val198 to i64
  %i.v = ptrtoint ptr %.val196.val to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp eq i64 %i.q, %i.w
  br i1 %i.x, label %bb.d, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

bb.d:                                             ; preds = %bb.c
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.042.054.i = phi ptr [ %i.ab, %bb.e ], [ %.val195.val, %bb.d ] ; 3 uses
  %.sroa.038.053.i = phi ptr [ %i.ac, %bb.e ], [ %.val196.val, %bb.d ] ; 3 uses
  %i.y = load i32, ptr %.sroa.042.054.i, align 4, !tbaa !211
  %i.z = load i32, ptr %.sroa.038.053.i, align 4, !tbaa !211
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.042.054.i, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.053.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.ab, %.val195.val197
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3321

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.038.0.lcssa.i = phi ptr [ %.val196.val, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.038.053.i, %.lr.ph.i ] ; 4 uses
  %.sroa.042.0.lcssa.i = phi ptr [ %.val195.val, %bb.d ], [ %i.ab, %bb.e ], [ %.sroa.042.054.i, %.lr.ph.i ] ; 6 uses
  %i.ad = icmp eq ptr %.sroa.042.0.lcssa.i, %.val195.val197
  br i1 %i.ad, label %.loopexit32, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.ae = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.af = sub i64 %i.o, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.af
  %i.ah = sub i64 %i.o, %i.ae
  %65 = add i64 %i.ah, -4                         ; 2 uses
  %i.ai = lshr i64 %65, 2
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check403 = icmp ult i64 %65, 12
  %n.vec405 = and i64 %i.aj, 9223372036854775804  ; 3 uses
  %i.ak = shl i64 %n.vec405, 2
  %i.al = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.ak
  %cmp.n418 = icmp eq i64 %i.aj, %n.vec405
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.dg, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.am = shl i64 %indvar, 2
  %i.an = add i64 %i.am, %i.ae
  %i.ao = sub i64 %i.r, %i.an                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.ar = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.as = sub i64 %i.ar, %i.ae                    ; 3 uses
  %i.at = ashr i64 %i.as, 4                       ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.f
  %i.av = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.aw = and i64 %i.as, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.aw ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i826 ], [ %i.bj, %bb.k ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bi, %bb.k ] ; 9 uses
  %i.ax = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.ay = icmp eq i32 %i.ax, %i.av
  br i1 %i.ay, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !211
  %i.bb = icmp eq i32 %i.ba, %i.av
  br i1 %i.bb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !211
  %i.be = icmp eq i32 %i.bd, %i.av
  br i1 %i.be, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !211
  %i.bh = icmp eq i32 %i.bg, %i.av
  br i1 %i.bh, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bj = add nsw i64 %.052.i.i.i, -1
  %i.bk = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bk, label %bb.g, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.k
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ar, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.f
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.as, %bb.f ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.f ] ; 5 uses
  %i.bl = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.bl, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
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
  %i.bm = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.bn = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge.i.i.i
  %i.bq = phi i32 [ %i.bn, %bb.m ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.bp, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.br = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.bs = icmp eq i32 %i.br, %i.bq
  br i1 %i.bs, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge._crit_edge57.i.i.i
  %i.bu = phi i32 [ %i.bq, %bb.o ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.bt, %bb.o ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.bv = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.bw = icmp eq i32 %i.bv, %i.bu
  %spec.select.i.i.i = select i1 %i.bw, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365: ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367: ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.g, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.n ], [ %spec.select.i.i.i, %bb.p ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.l ], [ %i.bz, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit367 ], [ %i.by, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit365 ], [ %i.bx, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.g ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.ca = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check403, label %scalar.ph402.preheader, label %vector.ph404

vector.ph404:                                     ; preds = %bb.q
  %broadcast.splatinsert406 = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat407 = shufflevector <2 x i32> %broadcast.splatinsert406, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph404
  %index409 = phi i64 [ 0, %vector.ph404 ], [ %index.next415, %vector.body408 ] ; 2 uses
  %vec.phi410 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.ch, %vector.body408 ]
  %vec.phi411 = phi <2 x i64> [ zeroinitializer, %vector.ph404 ], [ %i.ci, %vector.body408 ]
  %i.cb = shl i64 %index409, 2
  %next.gep412 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep412, i64 8
  %wide.load413 = load <2 x i32>, ptr %next.gep412, align 4, !tbaa !211
  %wide.load414 = load <2 x i32>, ptr %i.cc, align 4, !tbaa !211
  %i.cd = icmp eq <2 x i32> %wide.load413, %broadcast.splat407
  %i.ce = icmp eq <2 x i32> %wide.load414, %broadcast.splat407
  %i.cf = zext <2 x i1> %i.cd to <2 x i64>
  %i.cg = zext <2 x i1> %i.ce to <2 x i64>
  %i.ch = add <2 x i64> %vec.phi410, %i.cf        ; 2 uses
  %i.ci = add <2 x i64> %vec.phi411, %i.cg        ; 2 uses
  %index.next415 = add nuw i64 %index409, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next415, %n.vec405
  br i1 %i.cj, label %middle.block416, label %vector.body408, !llvm.loop !3587

middle.block416:                                  ; preds = %vector.body408
  %bin.rdx417 = add <2 x i64> %i.ci, %i.ch
  %i.ck = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx417) ; 2 uses
  br i1 %cmp.n418, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402.preheader

scalar.ph402.preheader:                           ; preds = %bb.q, %middle.block416
  %.07.i.i.ph = phi i64 [ 0, %bb.q ], [ %i.ck, %middle.block416 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.q ], [ %i.al, %middle.block416 ]
  br label %scalar.ph402

scalar.ph402:                                     ; preds = %scalar.ph402.preheader, %scalar.ph402
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph402 ], [ %.07.i.i.ph, %scalar.ph402.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.co, %scalar.ph402 ], [ %.sroa.03.06.i.i.ph, %scalar.ph402.preheader ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.cm = icmp eq i32 %i.cl, %i.ca
  %i.cn = zext i1 %i.cm to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.cn ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.co, %i.ag
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph402, !llvm.loop !3588

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph402, %middle.block416
  %spec.select.i.i.lcssa = phi i64 [ %i.ck, %middle.block416 ], [ %spec.select.i.i, %scalar.ph402 ] ; 2 uses
  %i.cp = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.cp, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKNS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.ao, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader427, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775804     ; 3 uses
  %i.cq = shl i64 %n.vec, 2
  %i.cr = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cq
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %vec.phi400 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !211
  %wide.load401 = load <2 x i32>, ptr %i.ct, align 4, !tbaa !211
  %i.cu = icmp eq <2 x i32> %wide.load, %broadcast.splat
  %i.cv = icmp eq <2 x i32> %wide.load401, %broadcast.splat
  %i.cw = zext <2 x i1> %i.cu to <2 x i64>
  %i.cx = zext <2 x i1> %i.cv to <2 x i64>
  %i.cy = add <2 x i64> %vec.phi, %i.cw           ; 2 uses
  %i.cz = add <2 x i64> %vec.phi400, %i.cx        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !3589

middle.block:                                     ; preds = %vector.body
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE16clear_and_deleteEPS5_PSaIiE:bb.a
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !5358

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35
  %i.q = zext i8 %i.p to i64
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !5326
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.q, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.r, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.147
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !5326 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35    ; 2 uses
  %.not.i55 = icmp eq i8 %i.w, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.y, %.lr.ph66 ], [ %i.u, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !5326 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35   ; 2 uses
  %.not.i56 = icmp eq i8 %i.aa, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !5359

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i64
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !5326
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.af = phi i8 [ %i.aa, %._crit_edge67 ], [ %i.w, %bb.d ]
  %.251 = phi ptr [ %i.y, %._crit_edge67 ], [ %i.u, %bb.d ]
  %.248 = phi i64 [ %i.ad, %._crit_edge67 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.ae, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 16
  %i.aj = and i64 %i.ai, 2040
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.aj) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = zext i8 %i.al to i64
  %.not.not = icmp samesign ult i64 %.248, %i.am
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.at, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.ap, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !5360

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.ap, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !35  ; 2 uses
  %i.ap = load ptr, ptr %.3, align 8, !tbaa !5326 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 752) #33
  %i.aq = icmp eq ptr %i.ap, %i.j
  br i1 %i.aq, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %.not = icmp ult i8 %i.ao, %i.as
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !5361

bb.g:                                             ; preds = %bb.f
  %i.at = zext i8 %i.ao to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 752, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE23rebalance_right_to_leftEhPS5_PSaIiE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !5326   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h
  %i.n = load i32, ptr %i.m, align 4
  store i32 %i.n, ptr %i.k, align 1
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.idx.i = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.t = zext i8 %1 to i64
  %i.u = add nuw nsw i64 %i.t, 4611686018427387902
  %i.v = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 19
  br i1 %min.iters.check, label %.lr.ph.i.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 2
  %i.y = add i64 %i.x, %i.b
  %i.z = sub i64 %i.y, %i.a
  %i.aa = add i64 %i.z, 3
  %diff.check = icmp ult i64 %i.aa, 31
  br i1 %diff.check, label %.lr.ph.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ae ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ag = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4
  %wide.load63 = load <4 x i32>, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.af, align 1
  store <4 x i32> %wide.load63, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !5362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit, label %.lr.ph.i.preheader81

.lr.ph.i.preheader81:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader81, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader81 ]
  %.01214.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader81 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 4 ; 2 uses
  %i.aj = load i32, ptr %.01214.i, align 4
  store i32 %i.aj, ptr %.015.i, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit, label %.lr.ph.i, !llvm.loop !5363

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !5326
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !35
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit ], [ %i.h, %bb.a ]
  %i.al = phi ptr [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit.loopexit ], [ %i.i, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35  ; 3 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.o
  %i.au = sext i32 %i.at to i64
  %i.av = zext i8 %1 to i64                       ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.av ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.au, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ar, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit
  %i.ay = zext i8 %i.ar to i64
  %4 = sub nsw i64 %i.ay, %i.av
  %i.az = add nsw i64 %4, 4611686018427387903
  %5 = and i64 %i.az, 4611686018427387903         ; 2 uses
  %i.ba = add nuw nsw i64 %5, 1                   ; 2 uses
  %min.iters.check66 = icmp samesign ult i64 %5, 7
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader80, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec68 = and i64 %i.ba, 9223372036854775800   ; 3 uses
  %i.bb = shl i64 %n.vec68, 2                     ; 2 uses
  %i.bc = getelementptr i8, ptr %i.r, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.bb
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next75, %vector.body69 ] ; 2 uses
  %i.be = shl i64 %index70, 2                     ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.r, i64 %i.be ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.aw, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load73 = load <4 x i32>, ptr %next.gep72, align 4
  %wide.load74 = load <4 x i32>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep71, i64 16
  store <4 x i32> %wide.load73, ptr %next.gep71, align 1
  store <4 x i32> %wide.load74, ptr %i.bg, align 1
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.bh, label %middle.block76, label %vector.body69, !llvm.loop !5364

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %i.ba, %n.vec68
  br i1 %cmp.n77, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit51, label %.lr.ph.i47.preheader80

.lr.ph.i47.preheader80:                           ; preds = %.lr.ph.i47.preheader, %middle.block76
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bc, %middle.block76 ]
  %.01214.i49.ph = phi ptr [ %i.aw, %.lr.ph.i47.preheader ], [ %i.bd, %middle.block76 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader80, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bk, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader80 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bj, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader80 ] ; 2 uses
  %i.bi = load i32, ptr %.01214.i49, align 4
  store i32 %i.bi, ptr %.015.i48, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.015.i48, i64 4
  %.not.i50 = icmp eq ptr %i.bj, %i.ax
  br i1 %.not.i50, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit51, label %.lr.ph.i47, !llvm.loop !5365

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit51: ; preds = %.lr.ph.i47, %middle.block76, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35
  %.not.i52 = icmp eq i8 %i.bm, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.bp = icmp eq i32 %i.p, 0
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod82 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.bq = load i8, ptr %i.c, align 2, !tbaa !35
  %i.br = trunc i64 %indvars.iv.epil.init to i8
  %i.bs = add i8 %i.br, 1
  %i.bt = add i8 %i.bq, %i.bs                     ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !5326 ; 3 uses
  %i.bw = zext i8 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bw
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !5326
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 %i.bt, ptr %i.by, align 1, !tbaa !35
  store ptr %0, ptr %i.bv, align 8, !tbaa !5326
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.bz = load i8, ptr %i.aq, align 1, !tbaa !35
  %.not55 = icmp ult i8 %i.bz, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cb = load i8, ptr %i.c, align 2, !tbaa !35
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next to i8
  %i.cd = add i8 %i.cb, %i.cc                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !5326 ; 3 uses
  %i.cg = zext i8 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !5326
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %i.cd, ptr %i.ci, align 1, !tbaa !35
  store ptr %0, ptr %i.cf, align 8, !tbaa !5326
  %i.cj = load i8, ptr %i.c, align 2, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ck = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cl = add i8 %i.cj, %i.ck                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !5326 ; 3 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !5326
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !35
  store ptr %0, ptr %i.cn, align 8, !tbaa !5326
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !5366

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.cy, %bb.c ] ; 4 uses
  %i.cr = add i8 %.056, %1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !5326 ; 3 uses
  %i.cv = zext i8 %.056 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !5326
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %.056, ptr %i.cx, align 1, !tbaa !35
  store ptr %2, ptr %i.cu, align 8, !tbaa !5326
  %i.cy = add i8 %.056, 1                         ; 2 uses
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.db = zext i8 %i.da to i32
  %i.dc = sub nsw i32 %i.db, %i.o
  %.not = icmp slt i32 %i.dc, %i.cz
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !5367

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE10transfer_nEmmmPS5_PSaIiE.exit51
  %i.dd = load i8, ptr %i.c, align 2, !tbaa !35
  %i.de = add i8 %i.dd, %1
  store i8 %i.de, ptr %i.c, align 2, !tbaa !35
  %i.df = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.dg = sub i8 %i.df, %1
  store i8 %i.dg, ptr %i.aq, align 1, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE23rebalance_left_to_rightEhPS5_PSaIiE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE19transfer_n_backwardEmmmPS5_PSaIiE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 2               ; 2 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 3 uses
  %i.l = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = mul i64 %n.vec, -4                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.r ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %next.gep65, i64 -16
  %i.t = getelementptr inbounds i8, ptr %next.gep65, i64 -32
  %wide.load = load <4 x i32>, ptr %i.s, align 4
  %wide.load66 = load <4 x i32>, ptr %i.t, align 4
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.u, align 1
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaIS2_EEC2ERKS4_:bb.a

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
  %.073 = phi i64 [ 0, %.lr.ph74 ], [ %i.fr, %bb.az ] ; 3 uses
  %.sroa.014.072 = phi ptr [ %.0.val, %.lr.ph74 ], [ %i.jd, %bb.az ] ; 4 uses
  %i.m = phi ptr [ null, %.lr.ph74 ], [ %i.ev, %bb.az ] ; 12 uses
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
  %.sroa.012.060 = phi ptr [ %i.dy, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit ], [ %i.m, %.lr.ph ] ; 3 uses
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
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dx, %.loopexit34 ], [ %.val196.val, %.lr.ph.split ] ; 3 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.loopexit34 ], [ %.val195.val, %.lr.ph.split ] ; 3 uses
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
  %.sroa.042.054.i = phi ptr [ %i.aq, %bb.c ], [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.038.053.i = phi ptr [ %i.ar, %bb.c ], [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.an = load i32, ptr %.sroa.042.054.i, align 4, !tbaa !211
  %i.ao = load i32, ptr %.sroa.038.053.i, align 4, !tbaa !211
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.042.054.i, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.038.053.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.aq, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3321

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.038.0.lcssa.i = phi ptr [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ar, %bb.c ], [ %.sroa.038.053.i, %.lr.ph.i ] ; 4 uses
  %.sroa.042.0.lcssa.i = phi ptr [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_1eqERKNS_17UnorderedSequenceIiEES3_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.c ], [ %.sroa.042.054.i, %.lr.ph.i ] ; 6 uses
  %i.as = icmp eq ptr %.sroa.042.0.lcssa.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.as, label %.loopexit34, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.at = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.au = sub i64 %i.ag, %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.au
  %i.aw = add i64 %i.ag, -4
  %65 = sub i64 %i.ag, %i.at
  %66 = add i64 %65, -4                           ; 2 uses
  %i.ax = lshr i64 %66, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check415 = icmp ult i64 %66, 12
  %n.vec417 = and i64 %i.ay, 9223372036854775804  ; 3 uses
  %i.az = shl i64 %n.vec417, 2
  %i.ba = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.az
  %cmp.n430 = icmp eq i64 %i.ay, %n.vec417
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.dv, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.bb = shl i64 %indvar, 2
  %i.bc = add i64 %i.bb, %i.at
  %i.bd = sub i64 %i.aw, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %i.bg = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.at                    ; 3 uses
  %i.bi = ashr i64 %i.bh, 4                       ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.d
  %i.bk = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.bl = and i64 %i.bh, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.bl ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i826 ], [ %i.by, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bx, %bb.i ] ; 9 uses
  %i.bm = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.bn = icmp eq i32 %i.bm, %i.bk
  br i1 %i.bn, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !211
  %i.bq = icmp eq i32 %i.bp, %i.bk
  br i1 %i.bq, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !211
  %i.bt = icmp eq i32 %i.bs, %i.bk
  br i1 %i.bt, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !211
  %i.bw = icmp eq i32 %i.bv, %i.bk
  br i1 %i.bw, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.by = add nsw i64 %.052.i.i.i, -1
  %i.bz = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bz, label %bb.e, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bg, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bh, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.d ] ; 5 uses
  %i.ca = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.ca, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
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
  %i.cb = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.cc = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.cf = phi i32 [ %i.cc, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.ce, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cg = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.ch = icmp eq i32 %i.cg, %i.cf
  br i1 %i.ch, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge57.i.i.i
  %i.cj = phi i32 [ %i.cf, %bb.m ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.ci, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.ck = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.cl = icmp eq i32 %i.ck, %i.cj
  %spec.select.i.i.i = select i1 %i.cl, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375: ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377: ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.e, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377, %bb.n, %bb.l, %bb.j, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.n ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.co, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377 ], [ %i.cn, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375 ], [ %i.cm, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.cp = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check415, label %scalar.ph414.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %bb.o
  %broadcast.splatinsert418 = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %broadcast.splat419 = shufflevector <2 x i32> %broadcast.splatinsert418, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph416
  %index421 = phi i64 [ 0, %vector.ph416 ], [ %index.next427, %vector.body420 ] ; 2 uses
  %vec.phi422 = phi <2 x i64> [ zeroinitializer, %vector.ph416 ], [ %i.cw, %vector.body420 ]
  %vec.phi423 = phi <2 x i64> [ zeroinitializer, %vector.ph416 ], [ %i.cx, %vector.body420 ]
  %i.cq = shl i64 %index421, 2
  %next.gep424 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep424, i64 8
  %wide.load425 = load <2 x i32>, ptr %next.gep424, align 4, !tbaa !211
  %wide.load426 = load <2 x i32>, ptr %i.cr, align 4, !tbaa !211
  %i.cs = icmp eq <2 x i32> %wide.load425, %broadcast.splat419
  %i.ct = icmp eq <2 x i32> %wide.load426, %broadcast.splat419
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = zext <2 x i1> %i.ct to <2 x i64>
  %i.cw = add <2 x i64> %vec.phi422, %i.cu        ; 2 uses
  %i.cx = add <2 x i64> %vec.phi423, %i.cv        ; 2 uses
  %index.next427 = add nuw i64 %index421, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next427, %n.vec417
  br i1 %i.cy, label %middle.block428, label %vector.body420, !llvm.loop !6098

middle.block428:                                  ; preds = %vector.body420
  %bin.rdx429 = add <2 x i64> %i.cx, %i.cw
  %i.cz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx429) ; 2 uses
  br i1 %cmp.n430, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %bb.o, %middle.block428
  %.07.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.cz, %middle.block428 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.o ], [ %i.ba, %middle.block428 ]
  br label %scalar.ph414

scalar.ph414:                                     ; preds = %scalar.ph414.preheader, %scalar.ph414
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph414 ], [ %.07.i.i.ph, %scalar.ph414.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.dd, %scalar.ph414 ], [ %.sroa.03.06.i.i.ph, %scalar.ph414.preheader ] ; 2 uses
  %i.da = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.db = icmp eq i32 %i.da, %i.cp
  %i.dc = zext i1 %i.db to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.dc ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.dd, %i.av
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph414, !llvm.loop !6099

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph414, %middle.block428
  %spec.select.i.i.lcssa = phi i64 [ %i.cz, %middle.block428 ], [ %spec.select.i.i, %scalar.ph414 ] ; 2 uses
  %i.de = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.de, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorIN12_GLOBAL__N_117UnorderedSequenceIiEESaISA_EEEESH_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.bd, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader439, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.bf, 9223372036854775804     ; 3 uses
  %i.df = shl i64 %n.vec, 2
  %i.dg = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.df
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi412 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 2
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN4absl12lts_2026052618hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaIS7_EEC2ERKS9_:bb.a

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
  %.073 = phi i64 [ 0, %.lr.ph74 ], [ %i.fr, %bb.az ] ; 3 uses
  %.sroa.014.072 = phi ptr [ %.0.val, %.lr.ph74 ], [ %i.jd, %bb.az ] ; 4 uses
  %i.m = phi ptr [ null, %.lr.ph74 ], [ %i.ev, %bb.az ] ; 12 uses
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
  %.sroa.012.060 = phi ptr [ %i.dy, %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit ], [ %i.m, %.lr.ph ] ; 3 uses
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
  %.013.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dx, %.loopexit34 ], [ %.val196.val, %.lr.ph.split ] ; 3 uses
  %.0812.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.loopexit34 ], [ %.val195.val, %.lr.ph.split ] ; 3 uses
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
  %.sroa.042.054.i = phi ptr [ %i.aq, %bb.c ], [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.038.053.i = phi ptr [ %i.ar, %bb.c ], [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.an = load i32, ptr %.sroa.042.054.i, align 4, !tbaa !211
  %i.ao = load i32, ptr %.sroa.038.053.i, align 4, !tbaa !211
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.042.054.i, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.038.053.i, i64 4 ; 2 uses
  %.not49.i = icmp eq ptr %i.aq, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3321

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.038.0.lcssa.i = phi ptr [ %.0.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ar, %bb.c ], [ %.sroa.038.053.i, %.lr.ph.i ] ; 4 uses
  %.sroa.042.0.lcssa.i = phi ptr [ %.08.val.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618hash_test_internal15TypeErasedValueIN12_GLOBAL__N_117UnorderedSequenceIiEEEeqERKS6_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %bb.c ], [ %.sroa.042.054.i, %.lr.ph.i ] ; 6 uses
  %i.as = icmp eq ptr %.sroa.042.0.lcssa.i, %.08.val9.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.as, label %.loopexit34, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.at = ptrtoint ptr %.sroa.042.0.lcssa.i to i64 ; 4 uses
  %i.au = sub i64 %i.ag, %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.038.0.lcssa.i, i64 %i.au
  %i.aw = add i64 %i.ag, -4
  %65 = sub i64 %i.ag, %i.at
  %66 = add i64 %65, -4                           ; 2 uses
  %i.ax = lshr i64 %66, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check415 = icmp ult i64 %66, 12
  %n.vec417 = and i64 %i.ay, 9223372036854775804  ; 3 uses
  %i.az = shl i64 %n.vec417, 2
  %i.ba = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.az
  %cmp.n430 = icmp eq i64 %i.ay, %n.vec417
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %.lr.ph70.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i ], [ 0, %.lr.ph70.i ] ; 2 uses
  %.sroa.033.068.i = phi ptr [ %i.dv, %.critedge.i ], [ %.sroa.042.0.lcssa.i, %.lr.ph70.i ] ; 13 uses
  %i.bb = shl i64 %indvar, 2
  %i.bc = add i64 %i.bb, %i.at
  %i.bd = sub i64 %i.aw, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %i.bg = ptrtoint ptr %.sroa.033.068.i to i64    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.at                    ; 3 uses
  %i.bi = ashr i64 %i.bh, 4                       ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i826, label %._crit_edge.i.i.i

.lr.ph.i.i.i826:                                  ; preds = %bb.d
  %i.bk = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  %i.bl = and i64 %i.bh, -16
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.042.0.lcssa.i, i64 %i.bl ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i826
  %.052.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i826 ], [ %i.by, %bb.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.042.0.lcssa.i, %.lr.ph.i.i.i826 ], [ %i.bx, %bb.i ] ; 9 uses
  %i.bm = load i32, ptr %.sroa.032.051.i.i.i, align 4, !tbaa !211
  %i.bn = icmp eq i32 %i.bm, %i.bk
  br i1 %i.bn, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !211
  %i.bq = icmp eq i32 %i.bp, %i.bk
  br i1 %i.bq, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !211
  %i.bt = icmp eq i32 %i.bs, %i.bk
  br i1 %i.bt, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !211
  %i.bw = icmp eq i32 %i.bv, %i.bk
  br i1 %i.bw, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.by = add nsw i64 %.052.i.i.i, -1
  %i.bz = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bz, label %bb.e, label %._crit_edge.loopexit.i.i.i, !llvm.loop !3322

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bg, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.d
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bh, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.042.0.lcssa.i, %bb.d ] ; 5 uses
  %i.ca = ashr exact i64 %.pre-phi61.i.i.i, 2
  switch i64 %i.ca, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i [
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
  %i.cb = load i32, ptr %.sroa.032.0.lcssa.i.i.i, align 4, !tbaa !211
  %i.cc = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 2 uses
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.cf = phi i32 [ %i.cc, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i = phi ptr [ %i.ce, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.cg = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !211
  %i.ch = icmp eq i32 %i.cg, %i.cf
  br i1 %i.ch, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge57.i.i.i
  %i.cj = phi i32 [ %i.cf, %bb.m ], [ %.pre58.i.i.i, %._crit_edge._crit_edge57.i.i.i ]
  %.sroa.032.2.i.i.i = phi ptr [ %i.ci, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge._crit_edge57.i.i.i ] ; 2 uses
  %i.ck = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !211
  %i.cl = icmp eq i32 %i.ck, %i.cj
  %spec.select.i.i.i = select i1 %i.cl, ptr %.sroa.032.2.i.i.i, ptr %.sroa.033.068.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375: ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377: ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i: ; preds = %bb.e, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377, %bb.n, %bb.l, %bb.j, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %spec.select.i.i.i, %bb.n ], [ %.sroa.033.068.i, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.co, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit377 ], [ %i.cn, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit375 ], [ %i.cm, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.e ]
  %.not51.i = icmp eq ptr %.sroa.033.068.i, %.sroa.08.0.in.sroa.speculated.i.i.i
  br i1 %.not51.i, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEET_SB_SB_T0_.exit.i
  %i.cp = load i32, ptr %.sroa.033.068.i, align 4, !tbaa !211 ; 4 uses
  br i1 %min.iters.check415, label %scalar.ph414.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %bb.o
  %broadcast.splatinsert418 = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %broadcast.splat419 = shufflevector <2 x i32> %broadcast.splatinsert418, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph416
  %index421 = phi i64 [ 0, %vector.ph416 ], [ %index.next427, %vector.body420 ] ; 2 uses
  %vec.phi422 = phi <2 x i64> [ zeroinitializer, %vector.ph416 ], [ %i.cw, %vector.body420 ]
  %vec.phi423 = phi <2 x i64> [ zeroinitializer, %vector.ph416 ], [ %i.cx, %vector.body420 ]
  %i.cq = shl i64 %index421, 2
  %next.gep424 = getelementptr i8, ptr %.sroa.038.0.lcssa.i, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep424, i64 8
  %wide.load425 = load <2 x i32>, ptr %next.gep424, align 4, !tbaa !211
  %wide.load426 = load <2 x i32>, ptr %i.cr, align 4, !tbaa !211
  %i.cs = icmp eq <2 x i32> %wide.load425, %broadcast.splat419
  %i.ct = icmp eq <2 x i32> %wide.load426, %broadcast.splat419
  %i.cu = zext <2 x i1> %i.cs to <2 x i64>
  %i.cv = zext <2 x i1> %i.ct to <2 x i64>
  %i.cw = add <2 x i64> %vec.phi422, %i.cu        ; 2 uses
  %i.cx = add <2 x i64> %vec.phi423, %i.cv        ; 2 uses
  %index.next427 = add nuw i64 %index421, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next427, %n.vec417
  br i1 %i.cy, label %middle.block428, label %vector.body420, !llvm.loop !6274

middle.block428:                                  ; preds = %vector.body420
  %bin.rdx429 = add <2 x i64> %i.cx, %i.cw
  %i.cz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx429) ; 2 uses
  br i1 %cmp.n430, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %bb.o, %middle.block428
  %.07.i.i.ph = phi i64 [ 0, %bb.o ], [ %i.cz, %middle.block428 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.038.0.lcssa.i, %bb.o ], [ %i.ba, %middle.block428 ]
  br label %scalar.ph414

scalar.ph414:                                     ; preds = %scalar.ph414.preheader, %scalar.ph414
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph414 ], [ %.07.i.i.ph, %scalar.ph414.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.dd, %scalar.ph414 ], [ %.sroa.03.06.i.i.ph, %scalar.ph414.preheader ] ; 2 uses
  %i.da = load i32, ptr %.sroa.03.06.i.i, align 4, !tbaa !211
  %i.db = icmp eq i32 %i.da, %i.cp
  %i.dc = zext i1 %i.db to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.dc ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 4 ; 2 uses
  %.not.i.i824 = icmp eq ptr %i.dd, %i.av
  br i1 %.not.i.i824, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i, label %scalar.ph414, !llvm.loop !6275

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i: ; preds = %scalar.ph414, %middle.block428
  %spec.select.i.i.lcssa = phi i64 [ %i.cz, %middle.block428 ], [ %spec.select.i.i, %scalar.ph414 ] ; 2 uses
  %i.de = icmp eq i64 %spec.select.i.i.lcssa, 0
  br i1 %i.de, label %_ZSt5visitIN4absl12lts_2026052613hash_internal9EqVisitorINS2_13DefaultEqualsEEEJRKSt7variantIJPKSt6vectorINS1_18hash_test_internal19TypeErasedContainerIN12_GLOBAL__N_117UnorderedSequenceIiEEEESaISD_EEEESK_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISO_EEEEE4typeEE4typeEOSX_EEEE4typeEOSM_DpOSO_.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS0_5__ops17_Iter_equals_iterIS7_EEENSt15iterator_traitsIT_E15difference_typeESC_SC_T0_.exit.i
  %min.iters.check = icmp ult i64 %i.bd, 12
  br i1 %min.iters.check, label %.lr.ph.i26.i.preheader439, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i26.i.preheader
  %n.vec = and i64 %i.bf, 9223372036854775804     ; 3 uses
  %i.df = shl i64 %n.vec, 2
  %i.dg = getelementptr i8, ptr %.sroa.033.068.i, i64 %i.df
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %vec.phi412 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %i.dh = shl i64 %index, 2
end_hunk_5
