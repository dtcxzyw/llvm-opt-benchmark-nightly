Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/status_internal?download=true
inline.NumInlined: 786
inline.NumDeleted: 427
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_15status_internal7PayloadEESt13move_iteratorIPS4_EE10AssignNextES7_:bb.a
  %i.s = load i64, ptr %i.f, align 8, !tbaa !17
  store i64 %i.s, ptr %i.c, align 8, !tbaa !17
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.t = load i64, ptr %i.c, align 8, !tbaa !17
  store ptr %i.e, ptr %1, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !22
  %i.x = load i64, ptr %i.f, align 8, !tbaa !17
  store i64 %i.x, ptr %i.c, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.b, ptr %i.a, align 8, !tbaa !21
  store i64 %i.t, ptr %i.f, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.f, ptr %i.a, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.b
  %i.y = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.b, %bb.f ], [ %i.f, %bb.g ], [ %i.e, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !22
  store i8 0, ptr %i.y, align 1, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !17
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %_ZN4absl12lts_2026052615status_internal7PayloadaSEOS2_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  invoke void @_ZN4absl12lts_202605264Cord9InlineRep9UnrefTreeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_ZN4absl12lts_2026052615status_internal7PayloadaSEOS2_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #20
  unreachable

_ZN4absl12lts_2026052615status_internal7PayloadaSEOS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.ah, ptr %0, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_14SourceLocationELm1ESaIS3_EE15EmplaceBackSlowIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16, !noalias !109 ; 4 uses
  %i.b = trunc i64 %i.a to i1                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !109 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !109 ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 4 uses
  %i.g = shl i64 %i.f, 1
  %i.h = select i1 %i.b, i64 %i.g, i64 2          ; 4 uses
  %i.i = icmp ugt i64 %i.h, 576460752303423487
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_14SourceLocationEELb0EE8AllocateERS4_m.exit.i, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.j, label %.noexc, label %.noexc13

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc13:                                         ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_14SourceLocationEELb0EE8AllocateERS4_m.exit.i: ; preds = %bb.a
  %i.k = shl nuw nsw i64 %i.h, 4
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22 ; 7 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sink1.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !49
  %.not.i = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_14SourceLocationEELb0EE8AllocateERS4_m.exit.i
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 2 uses
  %xtraiter = and i64 %.sink1.i, 3                ; 3 uses
  %i.n = icmp ult i64 %i.a, 8
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.sink1.i, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.018.0 = phi ptr [ %.sink2.i, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %.012.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.z, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.012.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.018.0, i64 16, i1 false), !tbaa.struct !49
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 16
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.012.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !49
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 32
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.012.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !49
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 48
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.012.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !49
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 64 ; 2 uses
  %i.z = add nuw nsw i64 %.012.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !107

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.018.0.epil.init = phi ptr [ %.sink2.i, %.lr.ph.i.preheader ], [ %i.y, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.loopexit.unr-lcssa ]
  %.012.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.z, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.018.0.epil = phi ptr [ %i.ab, %.lr.ph.i.epil ], [ %.sroa.018.0.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.012.i.epil = phi i64 [ %i.ac, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.012.i.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.018.0.epil, i64 16, i1 false), !tbaa.struct !49
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.018.0.epil, i64 16
  %i.ac = add nuw nsw i64 %.012.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i.epil, !llvm.loop !108

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_14SourceLocationEELb0EE8AllocateERS4_m.exit.i
  br i1 %i.b, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_14SourceLocationEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit
  %i.ad = shl i64 %i.f, 4
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.ad) #21
  %.pre = load i64, ptr %0, align 8, !tbaa !16
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_14SourceLocationEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaINS0_14SourceLocationEEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit
  %i.ae = phi i64 [ %.pre, %bb.c ], [ %i.a, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_14SourceLocationEENS1_20IteratorValueAdapterIS4_St13move_iteratorIPS3_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit ]
  store ptr %i.l, ptr %i.c, align 8, !tbaa !17
  store i64 %i.h, ptr %i.e, align 8, !tbaa !17
  %i.af = or i64 %i.ae, 1
  %i.ag = add i64 %i.af, 2
  store i64 %i.ag, ptr %0, align 8, !tbaa !16
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNKS0_15status_internal9StatusRep8ToStringB5cxx11ENS0_18StatusToStringModeEE3$_0vJSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::optional.39", align 8  ; 11 uses
  %6 = alloca %"class.std::optional.39", align 8  ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  store i8 0, ptr %i.b, align 8, !tbaa !56
  %i.c = load ptr, ptr %0, align 8, !tbaa !111, !nonnull !57, !align !112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %bb.b

.thread.i.i.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113, !nonnull !57, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.39") align 8 %6, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) #23
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !56, !range !58, !noundef !57
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.g, align 8, !tbaa !56
  %i.j = load ptr, ptr %6, align 8, !tbaa !21     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !17
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre.i.i.i.i = load i8, ptr %i.b, align 8, !tbaa !56, !range !58
  %i.p = trunc nuw i8 %.pre.i.i.i.i to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113, !nonnull !57, !align !112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br i1 %i.p, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.s, ptr %7, align 8, !tbaa !29
  %i.t = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.v, ptr %i.a, align 8, !tbaa !16
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i unwind label %bb.o ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i
  store ptr %i.x, ptr %7, align 8, !tbaa !21
  %i.y = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.y, ptr %i.s, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i, %bb.f
  %i.z = phi ptr [ %i.x, %.noexc.i.i.i.i ], [ %i.s, %bb.f ] ; 2 uses
  switch i64 %i.v, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !17
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !22
  %i.ad = load ptr, ptr %7, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.k

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i
  %i.af = phi ptr [ %i.f, %.thread.i.i.i.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNK4absl12lts_202605264CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %8, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22
  invoke void @_ZN4absl12lts_2026052610CHexEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 %i.ai, ptr %i.ag)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread.i.i.i.i

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.aj = phi ptr [ %i.af, %bb.j ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i ]
  %i.ak = phi i1 [ false, %bb.j ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i ] ; 3 uses
  %i.al = load ptr, ptr %7, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 2, ptr %4, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.11, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.12, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.an, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.al, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 2, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr @.str.13, ptr %i.aw, align 8
  invoke void @_ZN4absl12lts_2026052616strings_internal12AppendPiecesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listISt17basic_string_viewIcS5_EE(ptr noundef nonnull %i.aj, ptr nonnull %4, i64 5)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ax = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  br i1 %i.ak, label %.critedge.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.bc = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i.i: ; preds = %bb.m
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !17
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bh = load i8, ptr %i.b, align 8, !tbaa !56, !range !58, !noundef !57
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.n, label %"_ZSt6invokeIRZNK4absl12lts_2026052615status_internal9StatusRep8ToStringB5cxx11ENS1_18StatusToStringModeEE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS1_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit"

bb.n:                                             ; preds = %.critedge.i.i.i.i
  store i8 0, ptr %i.b, align 8, !tbaa !56
  %i.bj = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %"_ZSt6invokeIRZNK4absl12lts_2026052615status_internal9StatusRep8ToStringB5cxx11ENS1_18StatusToStringModeEE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS1_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i.i: ; preds = %bb.n
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #21
  br label %"_ZSt6invokeIRZNK4absl12lts_2026052615status_internal9StatusRep8ToStringB5cxx11ENS1_18StatusToStringModeEE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS1_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit"

bb.o:                                             ; preds = %.noexc.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i

bb.p:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread.i.i.i.i: ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bs = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i: ; preds = %bb.q
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !17
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #21
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i: ; preds = %bb.q
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread.i.i.i.i
  %.pn61.i.i.i.i = phi { ptr, i32 } [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread.i.i.i.i ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i ] ; 2 uses
  %i.bx = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i: ; preds = %bb.r
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !17
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42.i.i.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i, %bb.p
  %.pn.pn.ph.i.i.i.i = phi { ptr, i32 } [ %.pn61.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i.i.i ], [ %i.bp, %bb.p ], [ %.pn61.i.i.i.i, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i, %bb.o
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42.i.i.i.i ], [ %i.bo, %bb.o ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i.i ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i, %bb.e
  %.pn.pn.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %.pn.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i.i.i.i ]
  %i.cc = load i8, ptr %i.b, align 8, !tbaa !56, !range !58, !noundef !57
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.t, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit46.i.i.i.i

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.b, align 8, !tbaa !56
  %i.ce = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit46.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i44.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i44.i.i.i.i: ; preds = %bb.t
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !17
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit46.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit46.i.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i44.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.i.i.i.i

"_ZSt6invokeIRZNK4absl12lts_2026052615status_internal9StatusRep8ToStringB5cxx11ENS1_18StatusToStringModeEE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS1_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit": ; preds = %bb.n, %.critedge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

declare void @_ZN4absl12lts_2026052610CHexEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #6

declare void @_ZNK4absl12lts_202605264CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !58, !noundef !57
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !58
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.j, align 1, !tbaa !17
  store i8 %i.p, ptr %i.g, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !22
  %i.s = load ptr, ptr %0, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !17
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22
  store i64 %i.w, ptr %i.u, align 8, !tbaa !22
  %i.x = load i64, ptr %i.k, align 8, !tbaa !17
  store i64 %i.x, ptr %i.h, align 8, !tbaa !17
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !17
  store ptr %i.j, ptr %0, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !22
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !17
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !21
  store i64 %i.y, ptr %i.k, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !22
  store i8 0, ptr %i.ad, align 1, !tbaa !17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !29
  %i.ag = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !22 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ag, ptr %0, align 8, !tbaa !21
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !17
  store i64 %i.an, ptr %i.af, align 8, !tbaa !17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !22
  store ptr %i.ah, ptr %1, align 8, !tbaa !21
  store i64 0, ptr %i.ao, align 8, !tbaa !22
  store i8 0, ptr %i.ah, align 8, !tbaa !17
  store i8 1, ptr %i.a, align 8, !tbaa !56
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.i
  br i1 %i.c, label %bb.m, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.a, align 8, !tbaa !56
  %i.ar = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #21
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

declare void @_ZN4absl12lts_2026052616strings_internal12AppendPiecesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listISt17basic_string_viewIcS5_EE(ptr noundef, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %i.b, ptr %i.d, ptr %i.c
  %i.f = lshr i64 %i.a, 1                         ; 2 uses
  %.not5.i = icmp eq i64 %i.f, 0
  br i1 %.not5.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4absl12lts_2026052615status_internal7PayloadD2Ev.exit.i
  %.06.i = phi i64 [ %i.g, %_ZN4absl12lts_2026052615status_internal7PayloadD2Ev.exit.i ], [ %i.f, %bb.a ]
  %i.g = add nsw i64 %.06.i, -1                   ; 3 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit.i.i:         ; preds = %bb.b, %.lr.ph.i
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052615status_internal7PayloadD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZN4absl12lts_2026052615status_internal7PayloadD2Ev.exit.i

_ZN4absl12lts_2026052615status_internal7PayloadD2Ev.exit.i: ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit, label %.lr.ph.i, !llvm.loop !2

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit: ; preds = %_ZN4absl12lts_2026052615status_internal7PayloadD2Ev.exit.i
  %.pre = load i64, ptr %0, align 8, !tbaa !16
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit, %bb.a
  %i.s = phi i64 [ %.pre, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit ], [ %i.a, %bb.a ]
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE21DeallocateIfAllocatedEv.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = mul i64 %i.w, 48
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #21
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE21DeallocateIfAllocatedEv.exit

_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE21DeallocateIfAllocatedEv.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_15status_internal7PayloadELm1ESaIS4_EE8InitFromERKS6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::inlined_vector_internal::IteratorValueAdapter.50", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !16     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 3 uses
  %i.c = trunc i64 %i.a to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.a, 384307168202282325
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_15status_internal7PayloadEELb0EE8AllocateERS5_m.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ugt i64 %i.a, 768614336404564651
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_15status_internal7PayloadEELb0EE8AllocateERS5_m.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 2) ; 2 uses
  %i.h = mul nuw nsw i64 %.sroa.speculated.i, 48
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.speculated.i, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_15status_internal7PayloadEELb0EE8AllocateERS5_m.exit, %bb.b
  %storemerge = phi ptr [ %i.e, %bb.b ], [ %i.m, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_15status_internal7PayloadEELb0EE8AllocateERS5_m.exit ]
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.i, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_15status_internal7PayloadEELb0EE8AllocateERS5_m.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %storemerge, ptr %2, align 8, !tbaa !60
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_15status_internal7PayloadEENS1_20IteratorValueAdapterIS5_PKS4_EEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.j
  %.013.i = phi i64 [ %i.s, %bb.j ], [ 0, %bb.g ] ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.0, i64 %.013.i
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal20IteratorValueAdapterISaINS0_15status_internal7PayloadEEPKS4_E13ConstructNextERS5_PS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.n)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = call ptr @__cxa_begin_catch(ptr %i.p) #23 ; 0 uses
  call void @_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_15status_internal7PayloadEELb0EE15DestroyElementsERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %.0, i64 noundef %.013.i)
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.lr.ph.i
  %i.s = add nuw nsw i64 %.013.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.b
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_15status_internal7PayloadEENS1_20IteratorValueAdapterIS5_PKS4_EEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !114

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.r

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #20
  unreachable

bb.m:                                             ; preds = %bb.h
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaINS0_15status_internal7PayloadEENS1_20IteratorValueAdapterIS5_PKS4_EEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISB_E7pointerERT0_NSG_9size_typeE.exit: ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.v = load i64, ptr %1, align 8, !tbaa !16
end_hunk_0
