Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BufferizationTransformOps?download=true
inline.NumInlined: 6474
inline.NumDeleted: 2940
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4mlir9transform6detail20applyTransformToEachINS0_26EmptyTensorToAllocTensorOpERN4llvm14iterator_rangeINS4_20filter_iterator_implIPKPNS_9OperationEZNKS0_14TransformState13getPayloadOpsENS_5ValueEEUlS8_E_St26bidirectional_iterator_tagEEEEEENS_27DiagnosedSilenceableFailureET_RNS0_17TransformRewriterEOT0_RNS4_15SmallVectorImplINS0_21ApplyToEachResultListEEERSB_:bb.a
  store <2 x ptr> %i.c, ptr %i.a, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.ac, %bb.ad
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform13OperationTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS6_31FunctionalStyleTransformOpTraitENS_23MemoryEffectOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_20TransformEachOpTraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 49), i64 33) #24
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !153

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.110, i64 49), i64 31) #24
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplEEES0_v.exit, !prof !153

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.111, i64 49), i64 74) #24
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !153

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 49), i64 36) #24
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform13OperationTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !153

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.103, i64 49), i64 32) #24
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !153

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.104, i64 49), i64 34) #24
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit, !prof !153

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.112, i64 49), i64 55) #24
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !153

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.105, i64 49), i64 43) #24
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !153

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.107, i64 49), i64 51) #24
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit, !prof !153

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.106, i64 49), i64 44) #24
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.ao = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.ap = insertelement <8 x ptr> %i.ao, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.aq = insertelement <8 x ptr> %i.ap, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.ar = insertelement <8 x ptr> %i.aq, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.as = insertelement <8 x ptr> %i.ar, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.aw = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.ax = shufflevector <8 x ptr> %i.aw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ay = icmp eq <8 x ptr> %i.av, %i.ax
  %i.az = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.ba = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bb = freeze <8 x i1> %i.ay
  %i.bc = bitcast <8 x i1> %i.bb to i8
  %i.bd = icmp ne i8 %i.bc, 0
  %op.rdx = select i1 %i.bd, i1 true, i1 %i.az
  %op.rdx36 = select i1 %op.rdx, i1 true, i1 %i.ba
  ret i1 %op.rdx36
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform26EmptyTensorToAllocTensorOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_13OperationTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS4_31FunctionalStyleTransformOpTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_20TransformEachOpTraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::EmptyTensorToAllocTensorOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #24
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #24
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #24
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform26EmptyTensorToAllocTensorOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i8 @_ZN4mlir9transform31FunctionalStyleTransformOpTraitINS0_26EmptyTensorToAllocTensorOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #24
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i8 @_ZN4mlir9transform20TransformEachOpTraitINS0_26EmptyTensorToAllocTensorOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  %i.p = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.o, %bb.h ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i8 %i.p
}

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform31FunctionalStyleTransformOpTraitINS0_26EmptyTensorToAllocTensorOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !81 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.94, i64 49), i64 29) #24
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !145 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !145
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !4

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !84
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !155
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.j

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !45
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #24
  %i.y = load ptr, ptr %2, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i32 3, ptr %1, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.113, ptr %i.aa, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 101, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !32
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.pr = load ptr, ptr %2, align 8, !tbaa !53
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !62, !range !63, !noundef !64
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !62
  br i1 %i.am, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir9transform20TransformEachOpTraitINS0_26EmptyTensorToAllocTensorOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform6detail35TransformOpInterfaceInterfaceTraits5ModelINS0_18OneShotBufferizeOpEE5applyEPKNS2_7ConceptEPNS_9OperationERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE:bb.a
  call void @_ZN4mlir9transform18OneShotBufferizeOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE(ptr dead_on_unwind writable sret(%"class.mlir::DiagnosedSilenceableFailure") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull align 8 dereferenceable(328) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir9transform6detail35TransformOpInterfaceInterfaceTraits5ModelINS0_18OneShotBufferizeOpEE28allowsRepeatedHandleOperandsEPKNS2_7ConceptEPNS_9OperationE(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_31FunctionalStyleTransformOpTraitENS_23MemoryEffectOpInterface5TraitENS6_20TransformOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 49), i64 33) #24
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !153

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.110, i64 49), i64 31) #24
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, !prof !153

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 89) #24
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !153

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 49), i64 36) #24
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !153

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.103, i64 49), i64 32) #24
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !153

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.104, i64 49), i64 34) #24
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !153

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.116, i64 49), i64 39) #24
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit, !prof !153

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.112, i64 49), i64 55) #24
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform31FunctionalStyleTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !153

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.105, i64 49), i64 43) #24
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform31FunctionalStyleTransformOpTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !153

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.107, i64 49), i64 51) #24
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !145
  %i.ao = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.ap = insertelement <8 x ptr> %i.ao, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.aq = insertelement <8 x ptr> %i.ap, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.ar = insertelement <8 x ptr> %i.aq, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.as = insertelement <8 x ptr> %i.ar, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.aw = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.ax = shufflevector <8 x ptr> %i.aw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ay = icmp eq <8 x ptr> %i.av, %i.ax
  %i.az = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.ba = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bb = freeze <8 x i1> %i.ay
  %i.bc = bitcast <8 x i1> %i.bb to i8
  %i.bd = icmp ne i8 %i.bc, 0
  %op.rdx = select i1 %i.bd, i1 true, i1 %i.az
  %op.rdx36 = select i1 %op.rdx, i1 true, i1 %i.ba
  ret i1 %op.rdx36
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform18OneShotBufferizeOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_28TransformHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_31FunctionalStyleTransformOpTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::OneShotBufferizeOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #24
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #24
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #24
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform18OneShotBufferizeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i8 @_ZN4mlir9transform31FunctionalStyleTransformOpTraitINS0_18OneShotBufferizeOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.m, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i8 %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform31FunctionalStyleTransformOpTraitINS0_18OneShotBufferizeOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !81 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.94, i64 49), i64 29) #24
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !145 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !145
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !4

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !84
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !155
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.j

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !45
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #24
  %i.y = load ptr, ptr %2, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i32 3, ptr %1, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.113, ptr %i.aa, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 101, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !32
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.pr = load ptr, ptr %2, align 8, !tbaa !53
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !62, !range !63, !noundef !64
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !62
  br i1 %i.am, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA102_KcEEOS0_OT_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt8functionIFvPN4mlir9transform16TransformDialectEEEEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.686", align 16 ; 10 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::function.686", align 16 ; 10 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
