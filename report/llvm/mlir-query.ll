Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/mlir-query?download=true
inline.NumInlined: 1804
inline.NumDeleted: 1086
begin_hunk_0_@_ZN4mlir5query7matcher8internalL20matcherMarshallFixedINS_6detail19constant_op_matcherEJEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS2_11SourceRangeENS9_8ArrayRefINS1_11ParserValueEEEPNS2_11DiagnosticsE:bb.a
  br i1 %i.ai, label %bb.f, label %_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #19, !inline_history !493
  br label %_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #21
  br label %_ZN4mlir5query7matcher8internalL24matcherMarshallFixedImplINS_6detail19constant_op_matcherEJETpTnmJEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS2_11SourceRangeENS9_8ArrayRefINS1_11ParserValueEEEPNS2_11DiagnosticsESt16integer_sequenceImJXspT1_EEE.exit

_ZN4mlir5query7matcher8internalL24matcherMarshallFixedImplINS_6detail19constant_op_matcherEJETpTnmJEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS2_11SourceRangeENS9_8ArrayRefINS1_11ParserValueEEEPNS2_11DiagnosticsESt16integer_sequenceImJXspT1_EEE.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir5query7matcher13MatcherFnImplINS_6detail19constant_op_matcherEED0Ev(ptr noundef nonnull align 8 dereferenceable(13) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir5query7matcher13MatcherFnImplINS_6detail19constant_op_matcherEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6detail19constant_op_matcher5matchEPNS_9OperationE.exit, !prof !131

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir6detail19constant_op_matcher5matchEPNS_9OperationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.25, i64 49), i64 34) #19
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6detail19constant_op_matcher5matchEPNS_9OperationE.exit

_ZN4mlir6detail19constant_op_matcher5matchEPNS_9OperationE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !133
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %.sroa.01.0.copyload.i.i.i.i.i.i) #19, !inline_history !497
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir5query7matcher13MatcherFnImplINS_6detail19constant_op_matcherEE5matchEPNS_9OperationERN4llvm9SetVectorIS7_NS8_11SmallVectorIS7_Lj0EEENS8_8DenseSetIS7_NS8_12DenseMapInfoIS7_vEEEELj0EEE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4mlir5query7matcher8internalL20matcherMarshallFixedINS_6detail32constant_float_predicate_matcherEJEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS2_11SourceRangeENS9_8ArrayRefINS1_11ParserValueEEEPNS2_11DiagnosticsE(ptr dead_on_unwind noalias writable sret(%"class.mlir::query::matcher::VariantMatcher") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6, ptr noundef %7) #3 {
bb.a:
  %8 = alloca [2 x %"class.llvm::Twine"], align 8 ; 9 uses
  %9 = alloca %"class.mlir::query::matcher::DynMatcher", align 8 ; 8 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.1.0.copyload = load i64, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.not.i.i = icmp eq i64 %.sroa.1.0.copyload, 0
  br i1 %.not.i.i, label %_ZN4mlir5query7matcher10DynMatcherC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !509
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 11, ptr %i.a, align 8, !tbaa !63, !noalias !509
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !62, !noalias !509
  store i64 0, ptr %8, align 8, !tbaa !20, !noalias !509
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i8 11, ptr %i.d, align 8, !tbaa !63, !noalias !509
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 73
  store i8 1, ptr %i.e, align 1, !tbaa !62, !noalias !509
  store i64 %.sroa.1.0.copyload, ptr %i.c, align 8, !tbaa !20, !noalias !509
  call void @_ZN4mlir5query7matcher8internal8addErrorEPNS2_11DiagnosticsENS2_11SourceRangeENS2_9ErrorTypeESt16initializer_listIN4llvm5TwineEE(ptr noundef %7, i64 %4, i64 %5, i32 noundef 18, ptr nonnull %8, i64 2) #19, !noalias !509
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !509
  call void @_ZN4mlir5query7matcher14VariantMatcherC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br label %_ZN4mlir5query7matcher8internalL24matcherMarshallFixedImplINS_6detail32constant_float_predicate_matcherEJETpTnmJEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS2_11SourceRangeENS9_8ArrayRefINS1_11ParserValueEEEPNS2_11DiagnosticsESt16integer_sequenceImJXspT1_EEE.exit

_ZN4mlir5query7matcher10DynMatcherC2ERKS2_.exit.i: ; preds = %bb.a
  %i.f = tail call ptr %1() #19, !noalias !509, !inline_history !500
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20, !noalias !510 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !81, !noalias !510
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4mlir5query7matcher13MatcherFnImplINS_6detail32constant_float_predicate_matcherEEE, i64 16), ptr %i.g, align 8, !tbaa !22, !noalias !510
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = ptrtoint ptr %i.f to i64
  store i64 %i.j, ptr %i.i, align 8, !tbaa !72, !noalias !510
  %i.k = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20, !noalias !511 ; 6 uses
  store ptr %i.g, ptr %i.k, align 8, !tbaa !79, !noalias !511
  %i.l = atomicrmw add ptr %i.h, i32 1 monotonic, align 4, !noalias !511 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !16, !noalias !511
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !19, !noalias !511
  store i8 0, ptr %i.n, align 8, !tbaa !20, !noalias !511
  store ptr %i.g, ptr %9, align 8, !tbaa !79, !noalias !509
  %i.p = atomicrmw add ptr %i.h, i32 1 monotonic, align 4, !noalias !509 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !16, !noalias !509
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.s, align 8, !tbaa !19, !noalias !509
  store i8 0, ptr %i.r, align 8, !tbaa !20, !noalias !509
  call void @_ZN4mlir5query7matcher14VariantMatcher13SingleMatcherENS1_10DynMatcherE(ptr dead_on_unwind writable sret(%"class.mlir::query::matcher::VariantMatcher") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(40) %9) #19
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !35, !noalias !509 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4mlir5query7matcher10DynMatcherC2ERKS2_.exit.i
  %i.v = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !509
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN4mlir5query7matcher10DynMatcherC2ERKS2_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.x = load ptr, ptr %9, align 8, !tbaa !79, !noalias !509 ; 4 uses
  %.not.i.i.i7.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i7.i, label %_ZN4mlir5query7matcher10DynMatcherD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = atomicrmw sub ptr %i.y, i32 1 acq_rel, align 4
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.d, label %_ZN4mlir5query7matcher10DynMatcherD2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #19, !inline_history !507
  br label %_ZN4mlir5query7matcher10DynMatcherD2Ev.exit.i

_ZN4mlir5query7matcher10DynMatcherD2Ev.exit.i:    ; preds = %bb.d, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !35  ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.n
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN4mlir5query7matcher10DynMatcherD2Ev.exit.i
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !20
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZN4mlir5query7matcher10DynMatcherD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !79  ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw sub ptr %i.aj, i32 1 acq_rel, align 4
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.f, label %_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #19, !inline_history !508
  br label %_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 40) #21
  br label %_ZN4mlir5query7matcher8internalL24matcherMarshallFixedImplINS_6detail32constant_float_predicate_matcherEJETpTnmJEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS2_11SourceRangeENS9_8ArrayRefINS1_11ParserValueEEEPNS2_11DiagnosticsESt16integer_sequenceImJXspT1_EEE.exit

_ZN4mlir5query7matcher8internalL24matcherMarshallFixedImplINS_6detail32constant_float_predicate_matcherEJETpTnmJEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS2_11SourceRangeENS9_8ArrayRefINS1_11ParserValueEEEPNS2_11DiagnosticsESt16integer_sequenceImJXspT1_EEE.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN4mlir5query7matcher10DynMatcherESt14default_deleteIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir5query7matcher13MatcherFnImplINS_6detail32constant_float_predicate_matcherEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir5query7matcher13MatcherFnImplINS_6detail32constant_float_predicate_matcherEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::APFloat", align 8     ; 6 uses
  %3 = alloca %"struct.mlir::detail::constant_float_value_binder", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase8semBogusE) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %2, ptr %3, align 8, !tbaa !138
  %4 = call noundef zeroext i1 @_ZN4mlir6detail27constant_float_value_binder5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  br i1 %4, label %bb.b, label %_ZN4mlir6detail32constant_float_predicate_matcher5matchEPNS_9OperationE.exit

bb.b:                                             ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.a = load ptr, ptr %5, align 8, !tbaa !514
  %i.b = call noundef zeroext i1 %i.a(ptr noundef nonnull align 8 dereferenceable(24) %2) #19, !inline_history !512
  br label %_ZN4mlir6detail32constant_float_predicate_matcher5matchEPNS_9OperationE.exit

_ZN4mlir6detail32constant_float_predicate_matcher5matchEPNS_9OperationE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir5query7matcher13MatcherFnImplINS_6detail32constant_float_predicate_matcherEE5matchEPNS_9OperationERN4llvm9SetVectorIS7_NS8_11SmallVectorIS7_Lj0EEENS8_8DenseSetIS7_NS8_12DenseMapInfoIS7_vEEEELj0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail27constant_float_value_binder5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::Attribute", align 8   ; 5 uses
  %3 = alloca %"struct.mlir::detail::constant_op_binder", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %2, ptr %3, align 8, !tbaa !142
  %i.a = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !131

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.29, i64 49), i64 15) #19
  store ptr %i.j, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !133 ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !49   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.o = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1    ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.o ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.q = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = xor i64 %i.o, -1
  %i.t = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.s
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, ptr %i.r, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.q, i64 %i.t, i64 %i.o ; 2 uses
  %i.u = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !515

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.w = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !517
  %i.x = icmp eq ptr %i.w, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.x, label %_ZN4llvm8CastInfoIN4mlir9FloatTypeEKNS1_4TypeEvE10isPossibleES3_.exit.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm8CastInfoIN4mlir9FloatTypeEKNS1_4TypeEvE10isPossibleES3_.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !519
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.e, %_ZN4llvm8CastInfoIN4mlir9FloatTypeEKNS1_4TypeEvE10isPossibleES3_.exit.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 2 uses
  %i.ac = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %i.ad = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  %spec.select.i = or i1 %i.ac, %i.ad
  br i1 %spec.select.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.f

_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm8CastInfoIN4mlir9FloatTypeEKNS1_4TypeEvE10isPossibleES3_.exit.i, %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !146
  %i.ae = call noundef zeroext i1 @_ZN4mlir6detail27constant_float_value_binder5matchENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.copyload)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread, %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.ae, %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit.thread ], [ false, %_ZN4llvm3isaIJN4mlir9FloatTypeENS1_10VectorTypeENS1_16RankedTensorTypeEENS1_4TypeEEEbRKT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 %.1
}

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_9AttributeEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.243", align 8 ; 8 uses
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit, !prof !131

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.25, i64 49), i64 34) #19
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !133
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %.sroa.01.0.copyload.i.i.i.i.i) #19, !inline_history !520
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !521
  %i.n = call i8 @_ZN4mlir9Operation4foldEN4llvm8ArrayRefINS_9AttributeEEERNS1_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(16) %2) #19 ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !49     ; 3 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i, -5         ; 2 uses
  %i.q = icmp ne i64 %i.p, 0                      ; 2 uses
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !142    ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.p, ptr %i.r, align 8, !tbaa !146
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.e
  %i.s = icmp eq ptr %i.o, %i.k
  br i1 %i.s, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.o) #19
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.h

bb.h:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit
  %.2 = phi i1 [ %i.q, %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj1EED2Ev.exit ], [ false, %_ZN4mlir9Operation8hasTraitINS_7OpTrait12ConstantLikeEEEbv.exit ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir6detail27constant_float_value_binder5matchENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::FloatAttr", align 8   ; 4 uses
  %3 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %4 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 3 uses
  %6 = alloca %"class.mlir::DenseElementsAttr::AttributeElementIterator", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 5 uses
  %8 = alloca %"class.mlir::FloatAttr", align 8   ; 5 uses
  %9 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %10 = alloca %"class.mlir::SplatElementsAttr", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !138    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.b = load ptr, ptr %1, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE ; 2 uses
  %spec.select.i.i.i = select i1 %i.d, ptr %1, ptr null
  store ptr %spec.select.i.i.i, ptr %8, align 8
  br i1 %i.d, label %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit.thread, label %bb.b

_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  %i.e = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %9) #19 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.f = tail call noundef zeroext i1 @_ZN4mlir17DenseElementsAttr7classofENS_9AttributeE(ptr nonnull %1) #19
  %spec.select.i.i.i.i.i.i = select i1 %i.f, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i.i.i.i, ptr %7, align 8
  %.not.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.thread.i.i, label %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i

_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.thread.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread

_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i: ; preds = %bb.b
  %i.g = call noundef zeroext i1 @_ZNK4mlir17DenseElementsAttr7isSplatEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %i.g, label %bb.c, label %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread

bb.c:                                             ; preds = %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i
  store ptr %1, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !526
  %i.h = call { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #19, !noalias !527 ; 0 uses
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %10, align 8, !noalias !527
  call void @_ZN4mlir17DenseElementsAttr24AttributeElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.01.0.copyload.i.i.i.i, i64 noundef 0) #19, !noalias !527
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %10, align 8, !noalias !527
  %i.i = call noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #19, !noalias !527
  call void @_ZN4mlir17DenseElementsAttr24AttributeElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.0.0.copyload.i.i.i.i, i64 noundef %i.i) #19, !noalias !527
  %i.j = load ptr, ptr %4, align 8, !noalias !527
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !526
  store ptr %i.j, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = call ptr @_ZNK4mlir17DenseElementsAttr24AttributeElementIteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i4 = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.q = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i4, @_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE ; 3 uses
  %spec.select.i.i.i5 = select i1 %i.q, ptr %i.n, ptr null
  store ptr %spec.select.i.i.i5, ptr %2, align 8
  br i1 %i.q, label %bb.d, label %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APFloat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %i.r = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3) #19 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6

_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread

_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread: ; preds = %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.thread.i.i, %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i, %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6
  %spec.select = phi i1 [ %i.q, %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit6 ], [ false, %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.i.i ], [ false, %_ZN4llvm8CastInfoIN4mlir17SplatElementsAttrENS1_9AttributeEvE10isPossibleES3_.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit.thread, %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread
  %.1 = phi i1 [ %spec.select, %_ZN4llvm8dyn_castIN4mlir17SplatElementsAttrENS1_9AttributeEEEDcRT0_.exit.thread ], [ true, %_ZN4mlir6detail17attr_value_binderINS_9FloatAttrEN4llvm7APFloatEvE5matchENS_9AttributeE.exit.thread ]
  ret i1 %.1
}

declare i8 @_ZN4mlir9Operation4foldEN4llvm8ArrayRefINS_9AttributeEEERNS1_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4mlir9FloatAttr8getValueEv(ptr dead_on_unwind writable sret(%"class.llvm::APFloat") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir17DenseElementsAttr7isSplatEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir17DenseElementsAttr7classofENS_9AttributeE(ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir17DenseElementsAttr24AttributeElementIteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir17DenseElementsAttr24AttributeElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64 noundef) unnamed_addr #2

declare noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4mlir5query7matcher8internalL20matcherMarshallFixedINS_6detail30constant_int_predicate_matcherEJEEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS2_11SourceRangeENS9_8ArrayRefINS1_11ParserValueEEEPNS2_11DiagnosticsE(ptr dead_on_unwind noalias writable sret(%"class.mlir::query::matcher::VariantMatcher") align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6, ptr noundef %7) #3 {
bb.a:
  %8 = alloca [2 x %"class.llvm::Twine"], align 8 ; 9 uses
  %9 = alloca %"class.mlir::query::matcher::DynMatcher", align 8 ; 8 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.1.0.copyload = load i64, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.not.i.i = icmp eq i64 %.sroa.1.0.copyload, 0
  br i1 %.not.i.i, label %_ZN4mlir5query7matcher10DynMatcherC2ERKS2_.exit.i, label %bb.b
end_hunk_0
