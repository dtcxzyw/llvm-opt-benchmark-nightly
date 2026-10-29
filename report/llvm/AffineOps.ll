Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineOps?download=true
inline.NumInlined: 28437
inline.NumDeleted: 11029
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9IndexTypeEE4ImplENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_22InferIntRangeInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.324, i64 49), i64 59) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.326, i64 49), i64 38) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.329, i64 49), i64 45) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.330, i64 49), i64 49) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.331, i64 49), i64 43) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.332, i64 49), i64 51) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_22InferIntRangeInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_22InferIntRangeInterface5TraitEEES0_v.exit, !prof !90

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_22InferIntRangeInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_22InferIntRangeInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.333, i64 49), i64 42) #32
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_22InferIntRangeInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_22InferIntRangeInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_22InferIntRangeInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_22InferIntRangeInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_22InferIntRangeInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !90

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_22InferIntRangeInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.334, i64 49), i64 40) #32
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_22InferIntRangeInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ba = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bb = insertelement <8 x ptr> %i.ba, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bc = insertelement <8 x ptr> %i.bb, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.be = insertelement <8 x ptr> %i.bd, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bf = insertelement <8 x ptr> %i.be, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bi = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bj = shufflevector <8 x ptr> %i.bi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bk = icmp eq <8 x ptr> %i.bh, %i.bj
  %i.bl = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bm = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bn = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bo = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bp = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.bq = freeze <8 x i1> %i.bk
  %i.br = bitcast <8 x i1> %i.bq to i8
  %i.bs = icmp ne i8 %i.br, 0
  %.fr = freeze i1 %i.bl
  %op.rdx = or i1 %i.bs, %.fr
  %1 = freeze i1 %i.bm
  %2 = freeze i1 %i.bo
  %3 = or i1 %op.rdx, %1
  %.fr49 = freeze i1 %i.bn
  %op.rdx47 = or i1 %3, %.fr49
  %4 = or i1 %op.rdx47, %2
  %op.rdx48 = select i1 %4, i1 true, i1 %i.bp
  ret i1 %op.rdx48
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !331
  %i.b = tail call i8 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #32, !inline_history !1921
  ret i8 %i.b
}

declare void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine24AffineDelinearizeIndexOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #32, !inline_history !428
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  tail call void @free(ptr noundef %i.k) #32, !inline_history !428
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine24AffineDelinearizeIndexOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::affine::AffineDelinearizeIndexOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::affine::AffineDelinearizeIndexOpGenericAdaptor", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i.i.i.i.i to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !354
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.f, align 8
  %i.n = and i32 %i.h, 8388607                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.n to i64
  %i.q = lshr i32 %i.h, 21
  %i.r = and i32 %i.q, 2040
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !148
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.w
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.4.0.i.i.i.i.i.i.i) #32
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.z, align 8, !tbaa !444
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !157
  %i.aa = call i8 @_ZN4mlir6affine24AffineDelinearizeIndexOp4foldENS0_38AffineDelinearizeIndexOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::affine::AffineDelinearizeIndexOpGenericAdaptor") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine24AffineDelinearizeIndexOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6affine24AffineDelinearizeIndexOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine24AffineDelinearizeIndexOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_31InferIntDivisibilityOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine24AffineDelinearizeIndexOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1823") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6affine24AffineDelinearizeIndexOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !331
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine24AffineDelinearizeIndexOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine24AffineDelinearizeIndexOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::affine::AffineDelinearizeIndexOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6affine24AffineDelinearizeIndexOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine24AffineDelinearizeIndexOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::affine::AffineDelinearizeIndexOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::affine::AffineDelinearizeIndexOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine24AffineDelinearizeIndexOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine24AffineDelinearizeIndexOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 1) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine24AffineDelinearizeIndexOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8
  %i.g = call i8 @_ZN4mlir6affine24AffineDelinearizeIndexOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine24AffineDelinearizeIndexOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine24AffineDelinearizeIndexOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine24AffineDelinearizeIndexOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br label %_ZN4mlir2OpINS_6affine24AffineDelinearizeIndexOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseENS_31InferIntDivisibilityOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine24AffineDelinearizeIndexOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  %i.i = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %1) #32
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_31InferIntDivisibilityOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.322, i64 49), i64 33) #32
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, !prof !90

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.335, i64 49), i64 37) #32
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !90

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.336, i64 49), i64 47) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.329, i64 49), i64 45) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.330, i64 49), i64 49) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.331, i64 49), i64 43) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.337, i64 49), i64 33) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.332, i64 49), i64 51) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.aw = insertelement <8 x ptr> %i.av, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.ba = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bb = shufflevector <8 x ptr> %i.ba, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bc = icmp eq <8 x ptr> %i.az, %i.bb
  %i.bd = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.be = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bf = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bg = freeze <8 x i1> %i.bc
  %i.bh = bitcast <8 x i1> %i.bg to i8
  %i.bi = icmp ne i8 %i.bh, 0
  %.fr = freeze i1 %i.bd
  %op.rdx = or i1 %i.bi, %.fr
  %1 = freeze i1 %i.be
  %2 = or i1 %op.rdx, %1
  %op.rdx40 = select i1 %2, i1 true, i1 %i.bf
  ret i1 %op.rdx40
}

declare i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #32, !inline_history !428
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  tail call void @free(ptr noundef %i.k) #32, !inline_history !428
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::affine::AffineDmaStartOpGenericAdaptor", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i.i.i.i.i to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !112
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !354
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = and i32 %i.h, 8388607                    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i32 %i.m to i64
  %i.p = lshr i32 %i.h, 21
  %i.q = and i32 %i.p, 2040
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !148
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.w, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.4.0.i.i.i.i.i.i.i) #32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %2, ptr %i.y, align 8, !tbaa !444
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !157
  %i.z = call i8 @_ZN4mlir6memref14foldMemRefCastEPNS_9OperationENS_5ValueE(ptr noundef nonnull %1, ptr null) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i8 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_19MemRefsNormalizableENS_6affine24AffineMapAccessInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1823") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6affine16AffineDmaStartOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !331
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::affine::AffineDmaStartOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6affine16AffineDmaStartOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::affine::AffineDmaStartOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::affine::AffineDmaStartOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %1) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br label %_ZN4mlir2OpINS_6affine16AffineDmaStartOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS3_19MemRefsNormalizableENS1_24AffineMapAccessInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8
  %i.g = call i8 @_ZN4mlir6affine16AffineDmaStartOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br i1 %i.h, label %bb.c, label %_ZN4mlir2OpINS_6affine16AffineDmaStartOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS3_19MemRefsNormalizableENS1_24AffineMapAccessInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.c:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.i = call i8 @_ZN4mlir6affine16AffineDmaStartOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4mlir2OpINS_6affine16AffineDmaStartOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS3_19MemRefsNormalizableENS1_24AffineMapAccessInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_6affine16AffineDmaStartOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS3_19MemRefsNormalizableENS1_24AffineMapAccessInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.c
  %i.j = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.i, %bb.c ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine16AffineDmaStartOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i8 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_6affine16AffineDmaStartOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_1
begin_hunk_2_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_24AttrSizedOperandSegmentsENS2_11SingleBlockENS2_29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_24AutomaticAllocationScopeENS_25ConditionallySpeculatable5TraitENS2_25HasRecursiveMemoryEffectsENS_19LoopLikeOpInterface5TraitENS_23RegionBranchOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.326, i64 49), i64 38) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.345, i64 49), i64 46) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.346, i64 49), i64 33) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.347, i64 49), i64 86) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.348, i64 49), i64 46) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.329, i64 49), i64 45) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, !prof !90

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.349, i64 49), i64 47) #32
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit, !prof !90

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.350, i64 49), i64 39) #32
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, !prof !90

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.351, i64 49), i64 43) #32
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.be = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bf = insertelement <8 x ptr> %i.be, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bm = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bn = shufflevector <8 x ptr> %i.bm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bo = icmp eq <8 x ptr> %i.bl, %i.bn
  %i.bp = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bq = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.br = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bs = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bt = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.bu = icmp eq ptr %.sroa.01.0.copyload.i.i.i31, %0
  %i.bv = freeze <8 x i1> %i.bo
  %i.bw = bitcast <8 x i1> %i.bv to i8
  %i.bx = icmp ne i8 %i.bw, 0
  %.fr = freeze i1 %i.bp
  %op.rdx = or i1 %i.bx, %.fr
  %1 = freeze i1 %i.bq
  %2 = freeze i1 %i.bs
  %.fr53 = freeze i1 %i.bt
  %op.rdx49 = or i1 %2, %.fr53
  %3 = or i1 %op.rdx, %1
  %.fr54 = freeze i1 %i.br
  %op.rdx50 = or i1 %3, %.fr54
  %4 = or i1 %op.rdx50, %op.rdx49
  %op.rdx52 = select i1 %4, i1 true, i1 %i.bu
  ret i1 %op.rdx52
}

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl21verifyOperandSizeAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_6affine11AffineForOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 8388607                    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = lshr i32 %i.b, 21
  %i.i = and i32 %i.h, 2040
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !148
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !328
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.u, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !173
  store ptr @.str.352, ptr %5, align 8, !tbaa !174
  store i8 3, ptr %i.x, align 8, !tbaa !175
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #32
  %i.z = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 5, ptr %3, align 8, !tbaa !303
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !118 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !168
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !205

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !118
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !118
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.pr = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i32 3, ptr %2, align 8, !tbaa !303
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.353, ptr %i.al, align 8, !tbaa !262
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !157
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !118 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !168
  %.not.i.i.i.i.i13 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i13, label %bb.i, label %bb.h, !prof !205

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !117
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !118
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !118
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #32
  %i.au = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !184, !range !164, !noundef !165
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !184
  br i1 %i.ax, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ay) #32
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.loopexit

bb.m:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !328
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.bc, align 8, !tbaa !175
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !173
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %7) #32
  %i.be = load ptr, ptr %6, align 8, !tbaa !183
  %.not.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store i32 3, ptr %1, align 8, !tbaa !303
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.354, ptr %i.bg, align 8, !tbaa !262
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !157
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !118 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !168
  %.not.i.i.i.i.i16 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i.i.i.i16, label %bb.q, label %bb.p, !prof !205

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA26_KcEERS0_OT_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !117
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
end_hunk_2
begin_hunk_3_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait8NRegionsILj2EE4ImplENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_11SingleBlockENS2_29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplENS2_17NoRegionArgumentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_32RecursivelySpeculatableImplTraitENS2_25HasRecursiveMemoryEffectsENS_23RegionBranchOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.326, i64 49), i64 38) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.346, i64 49), i64 33) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.347, i64 49), i64 86) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait17NoRegionArgumentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait17NoRegionArgumentsEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait17NoRegionArgumentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait17NoRegionArgumentsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.359, i64 49), i64 39) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait17NoRegionArgumentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait17NoRegionArgumentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait17NoRegionArgumentsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait17NoRegionArgumentsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait17NoRegionArgumentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait17NoRegionArgumentsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait17NoRegionArgumentsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.329, i64 49), i64 45) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.360, i64 49), i64 54) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, !prof !90

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.349, i64 49), i64 47) #32
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, !prof !90

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.351, i64 49), i64 43) #32
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ba = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bb = insertelement <8 x ptr> %i.ba, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bc = insertelement <8 x ptr> %i.bb, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.be = insertelement <8 x ptr> %i.bd, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bf = insertelement <8 x ptr> %i.be, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bi = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bj = shufflevector <8 x ptr> %i.bi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bk = icmp eq <8 x ptr> %i.bh, %i.bj
  %i.bl = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bm = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bn = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bo = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bp = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.bq = freeze <8 x i1> %i.bk
  %i.br = bitcast <8 x i1> %i.bq to i8
  %i.bs = icmp ne i8 %i.br, 0
  %.fr = freeze i1 %i.bl
  %op.rdx = or i1 %i.bs, %.fr
  %1 = freeze i1 %i.bm
  %2 = freeze i1 %i.bo
  %3 = or i1 %op.rdx, %1
  %.fr49 = freeze i1 %i.bn
  %op.rdx47 = or i1 %3, %.fr49
  %4 = or i1 %op.rdx47, %2
  %op.rdx48 = select i1 %4, i1 true, i1 %i.bp
  ret i1 %op.rdx48
}

declare i8 @_ZN4mlir7OpTrait4impl14verifyNRegionsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_6affine10AffineIfOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 8388607                    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = lshr i32 %i.b, 21
  %i.i = and i32 %i.h, 2040
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !148
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !328
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.u, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !173
  store ptr @.str.352, ptr %5, align 8, !tbaa !174
  store i8 3, ptr %i.x, align 8, !tbaa !175
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #32
  %i.z = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 5, ptr %3, align 8, !tbaa !303
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !118 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !168
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !205

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !118
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !118
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.pr = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i32 3, ptr %2, align 8, !tbaa !303
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.353, ptr %i.al, align 8, !tbaa !262
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !157
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !118 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !168
  %.not.i.i.i.i.i13 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i13, label %bb.i, label %bb.h, !prof !205

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !117
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !118
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !118
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #32
  %i.au = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !184, !range !164, !noundef !165
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !184
  br i1 %i.ax, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ay) #32
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.loopexit

bb.m:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !328
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.bc, align 8, !tbaa !175
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !173
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %7) #32
  %i.be = load ptr, ptr %6, align 8, !tbaa !183
  %.not.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store i32 3, ptr %1, align 8, !tbaa !303
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.354, ptr %i.bg, align 8, !tbaa !262
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !157
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !118 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !168
  %.not.i.i.i.i.i16 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i.i.i.i16, label %bb.q, label %bb.p, !prof !205

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA26_KcEERS0_OT_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !117
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !118
  %i.bp = add i32 %i.bo, 1
end_hunk_3
begin_hunk_4_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_24AttrSizedOperandSegmentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.323, i64 49), i64 31) #32
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, !prof !90

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.361, i64 49), i64 54) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.326, i64 49), i64 38) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.345, i64 49), i64 46) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.329, i64 49), i64 45) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.330, i64 49), i64 49) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.331, i64 49), i64 43) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !90

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.337, i64 49), i64 33) #32
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.aw = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.ba = insertelement <8 x ptr> %i.az, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bb = insertelement <8 x ptr> %i.ba, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bc = insertelement <8 x ptr> %i.bb, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.be = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bf = shufflevector <8 x ptr> %i.be, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bg = icmp eq <8 x ptr> %i.bd, %i.bf
  %i.bh = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bi = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bk = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bl = freeze <8 x i1> %i.bg
  %i.bm = bitcast <8 x i1> %i.bl to i8
  %i.bn = icmp ne i8 %i.bm, 0
  %.fr = freeze i1 %i.bh
  %op.rdx = or i1 %i.bn, %.fr
  %1 = freeze i1 %i.bi
  %2 = or i1 %op.rdx, %1
  %.fr45 = freeze i1 %i.bj
  %op.rdx43 = or i1 %2, %.fr45
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir2OpINS_6affine22AffineLinearizeIndexOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_4TypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_24AttrSizedOperandSegmentsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::affine::AffineLinearizeIndexOp", align 8 ; 4 uses
  %2 = alloca %"class.mlir::affine::AffineLinearizeIndexOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl21verifyOperandSizeAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef %0, ptr nonnull @.str.141, i64 19) #32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir6affine22AffineLinearizeIndexOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  br label %bb.g

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #32
  %i.l = trunc nuw i8 %i.k to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  store ptr %0, ptr %2, align 8
  %i.m = call i8 @_ZN4mlir6affine22AffineLinearizeIndexOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread, %bb.f, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.n = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.m, %bb.f ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine22AffineLinearizeIndexOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i8 %i.n
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #32, !inline_history !428
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  tail call void @free(ptr noundef %i.k) #32, !inline_history !428
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir2OpINS_6affine12AffineLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_4TypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE20foldSingleResultHookIS2_EEN4llvm13LogicalResultEPNS_9OperationENSQ_8ArrayRefINS_9AttributeEEERNSQ_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6affine12AffineLoadOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_6affine21AffineReadOpInterface5TraitENSG_24AffineMapAccessInterface5TraitENS2_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1823") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6affine12AffineLoadOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !331
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::affine::AffineLoadOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6affine12AffineLoadOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::affine::AffineLoadOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::affine::AffineLoadOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 1) #32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br label %_ZN4mlir2OpINS_6affine12AffineLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_4TypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir6affine12AffineLoadOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br i1 %i.j, label %bb.d, label %_ZN4mlir2OpINS_6affine12AffineLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_4TypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.d:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.k = call i8 @_ZN4mlir6affine12AffineLoadOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4mlir2OpINS_6affine12AffineLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_4TypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_6affine12AffineLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_4TypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.d
  %i.l = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.k, %bb.d ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine12AffineLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine12AffineLoadOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
end_hunk_4
begin_hunk_5_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_6affine21AffineReadOpInterface5TraitENSG_24AffineMapAccessInterface5TraitENS2_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.322, i64 49), i64 33) #32
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !90

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.323, i64 49), i64 31) #32
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, !prof !90

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.361, i64 49), i64 54) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.336, i64 49), i64 47) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.363, i64 49), i64 49) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.341, i64 49), i64 52) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.340, i64 49), i64 41) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.331, i64 49), i64 43) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.aw = insertelement <8 x ptr> %i.av, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.ba = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bb = shufflevector <8 x ptr> %i.ba, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bc = icmp eq <8 x ptr> %i.az, %i.bb
  %i.bd = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.be = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bf = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bg = freeze <8 x i1> %i.bc
  %i.bh = bitcast <8 x i1> %i.bg to i8
  %i.bi = icmp ne i8 %i.bh, 0
  %.fr = freeze i1 %i.bd
  %op.rdx = or i1 %i.bi, %.fr
  %1 = freeze i1 %i.be
  %2 = or i1 %op.rdx, %1
  %op.rdx40 = select i1 %2, i1 true, i1 %i.bf
  ret i1 %op.rdx40
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #32, !inline_history !428
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  tail call void @free(ptr noundef %i.k) #32, !inline_history !428
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir2OpINS_6affine11AffineMaxOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE20foldSingleResultHookIS2_EEN4llvm13LogicalResultEPNS_9OperationENSQ_8ArrayRefINS_9AttributeEEERNSQ_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6affine11AffineMaxOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9IndexTypeEE4ImplENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1823") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6affine11AffineMaxOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !331
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::affine::AffineMaxOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6affine11AffineMaxOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::affine::AffineMaxOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::affine::AffineMaxOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br label %_ZN4mlir2OpINS_6affine11AffineMaxOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8
  %i.g = call i8 @_ZN4mlir6affine11AffineMaxOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br i1 %i.h, label %bb.c, label %_ZN4mlir2OpINS_6affine11AffineMaxOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.c:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.i = call i8 @_ZN4mlir6affine11AffineMaxOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4mlir2OpINS_6affine11AffineMaxOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_6affine11AffineMaxOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.c
  %i.j = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.i, %bb.c ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMaxOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i8 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %1) #32
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #32 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %.not.i.i5 = icmp eq i64 %3, 3
  br i1 %.not.i.i5, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4mlir6affine11AffineMaxOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29AffineMaxOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.a
  %i.i = load i16, ptr %2, align 1
  %i.j = xor i16 %i.i, 24941
  %i.k = getelementptr i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = xor i16 %i.m, 112
  %i.o = or i16 %i.j, %i.n
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4mlir6affine11AffineMaxOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29AffineMaxOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.s = load i64, ptr %i.h, align 8, !tbaa !170
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4mlir6affine11AffineMaxOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29AffineMaxOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4mlir6affine11AffineMaxOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29AffineMaxOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit: ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %.sroa.03.0.i = phi ptr [ %i.t, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ undef, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ undef, %bb.a ]
  %.sroa.2.0.i = phi i8 [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 0, %bb.a ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.03.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.2.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMaxOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.d, 1
end_hunk_5
begin_hunk_6_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9IndexTypeEE4ImplENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.323, i64 49), i64 31) #32
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit, !prof !90

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.324, i64 49), i64 59) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.326, i64 49), i64 38) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.329, i64 49), i64 45) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.330, i64 49), i64 49) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.331, i64 49), i64 43) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.332, i64 49), i64 51) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_31InferIntDivisibilityOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !90

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.334, i64 49), i64 40) #32
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_31InferIntDivisibilityOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.aw = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.ba = insertelement <8 x ptr> %i.az, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bb = insertelement <8 x ptr> %i.ba, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bc = insertelement <8 x ptr> %i.bb, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.be = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bf = shufflevector <8 x ptr> %i.be, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bg = icmp eq <8 x ptr> %i.bd, %i.bf
  %i.bh = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bi = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bk = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bl = freeze <8 x i1> %i.bg
  %i.bm = bitcast <8 x i1> %i.bl to i8
  %i.bn = icmp ne i8 %i.bm, 0
  %.fr = freeze i1 %i.bh
  %op.rdx = or i1 %i.bn, %.fr
  %1 = freeze i1 %i.bi
  %2 = or i1 %op.rdx, %1
  %.fr45 = freeze i1 %i.bj
  %op.rdx43 = or i1 %2, %.fr45
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #32, !inline_history !428
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  tail call void @free(ptr noundef %i.k) #32, !inline_history !428
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir2OpINS_6affine11AffineMinOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE20foldSingleResultHookIS2_EEN4llvm13LogicalResultEPNS_9OperationENSQ_8ArrayRefINS_9AttributeEEERNSQ_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6affine11AffineMinOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9IndexTypeEE4ImplENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1823") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6affine11AffineMinOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !331
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::affine::AffineMinOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6affine11AffineMinOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::affine::AffineMinOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::affine::AffineMinOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br label %_ZN4mlir2OpINS_6affine11AffineMinOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8
  %i.g = call i8 @_ZN4mlir6affine11AffineMinOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br i1 %i.h, label %bb.c, label %_ZN4mlir2OpINS_6affine11AffineMinOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.c:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.i = call i8 @_ZN4mlir6affine11AffineMinOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4mlir2OpINS_6affine11AffineMinOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_6affine11AffineMinOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9IndexTypeEE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_31InferIntDivisibilityOpInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.c
  %i.j = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.i, %bb.c ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine11AffineMinOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9IndexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_31InferIntDivisibilityOpInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i8 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %1) #32
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #32 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %.not.i.i5 = icmp eq i64 %3, 3
  br i1 %.not.i.i5, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4mlir6affine11AffineMinOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29AffineMinOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.a
  %i.i = load i16, ptr %2, align 1
  %i.j = xor i16 %i.i, 24941
  %i.k = getelementptr i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = xor i16 %i.m, 112
  %i.o = or i16 %i.j, %i.n
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4mlir6affine11AffineMinOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29AffineMinOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.s = load i64, ptr %i.h, align 8, !tbaa !170
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4mlir6affine11AffineMinOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29AffineMinOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4mlir6affine11AffineMinOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29AffineMinOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit: ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %.sroa.03.0.i = phi ptr [ %i.t, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ undef, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ undef, %bb.a ]
  %.sroa.2.0.i = phi i8 [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 0, %bb.a ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.03.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.2.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine11AffineMinOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = lshr i32 %i.b, 23
end_hunk_6
begin_hunk_7_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_11SingleBlockENS2_29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_24AutomaticAllocationScopeENS_25ConditionallySpeculatable5TraitENS2_32RecursivelySpeculatableImplTraitENS2_25HasRecursiveMemoryEffectsENS_19LoopLikeOpInterface5TraitENS2_19MemRefsNormalizableEEEEbNS_6TypeIDE:bb.a
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.326, i64 49), i64 38) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.346, i64 49), i64 33) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.347, i64 49), i64 86) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6affine13AffineYieldOpEE4ImplEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.348, i64 49), i64 46) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.329, i64 49), i64 45) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.360, i64 49), i64 54) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait32RecursivelySpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, !prof !90

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.349, i64 49), i64 47) #32
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait32RecursivelySpeculatableImplTraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit, !prof !90

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.350, i64 49), i64 39) #32
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19LoopLikeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, !prof !90

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.340, i64 49), i64 41) #32
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19LoopLikeOpInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.be = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bf = insertelement <8 x ptr> %i.be, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bm = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bn = shufflevector <8 x ptr> %i.bm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bo = icmp eq <8 x ptr> %i.bl, %i.bn
  %i.bp = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bq = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.br = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bs = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bt = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.bu = icmp eq ptr %.sroa.01.0.copyload.i.i.i31, %0
  %i.bv = freeze <8 x i1> %i.bo
  %i.bw = bitcast <8 x i1> %i.bv to i8
  %i.bx = icmp ne i8 %i.bw, 0
  %.fr = freeze i1 %i.bp
  %op.rdx = or i1 %i.bx, %.fr
  %1 = freeze i1 %i.bq
  %2 = freeze i1 %i.bs
  %.fr53 = freeze i1 %i.bt
  %op.rdx49 = or i1 %2, %.fr53
  %3 = or i1 %op.rdx, %1
  %.fr54 = freeze i1 %i.br
  %op.rdx50 = or i1 %3, %.fr54
  %4 = or i1 %op.rdx50, %op.rdx49
  %op.rdx52 = select i1 %4, i1 true, i1 %i.bu
  ret i1 %op.rdx52
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_6affine16AffineParallelOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 8388607                    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = lshr i32 %i.b, 21
  %i.i = and i32 %i.h, 2040
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !148
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !328
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.u, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !173
  store ptr @.str.352, ptr %5, align 8, !tbaa !174
  store i8 3, ptr %i.x, align 8, !tbaa !175
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #32
  %i.z = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 5, ptr %3, align 8, !tbaa !303
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !118 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !168
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !205

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !118
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !118
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.pr = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i32 3, ptr %2, align 8, !tbaa !303
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.353, ptr %i.al, align 8, !tbaa !262
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !157
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !118 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !168
  %.not.i.i.i.i.i13 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i13, label %bb.i, label %bb.h, !prof !205

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !117
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !118
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !118
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #32
  %i.au = load ptr, ptr %4, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !184, !range !164, !noundef !165
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !184
  br i1 %i.ax, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ay) #32
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.loopexit

bb.m:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !328
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.bc, align 8, !tbaa !175
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !173
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %7) #32
  %i.be = load ptr, ptr %6, align 8, !tbaa !183
  %.not.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store i32 3, ptr %1, align 8, !tbaa !303
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.354, ptr %i.bg, align 8, !tbaa !262
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !157
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !118 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !168
  %.not.i.i.i.i.i16 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i.i.i.i16, label %bb.q, label %bb.p, !prof !205

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA26_KcEERS0_OT_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !117
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !118
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bh, align 8, !tbaa !118
  br label %_ZN4mlir10Diagnostic6appendIRA26_KcEERS0_OT_.exit.i.i
end_hunk_7
begin_hunk_8_@_ZN4mlir6affine6detail39AffineMapAccessInterfaceInterfaceTraits5ModelINS0_13AffineStoreOpEE25getAffineMapAttrForMemRefEPKNS2_7ConceptEPNS_9OperationENS_5ValueE:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail38MemoryEffectOpInterfaceInterfaceTraits5ModelINS_6affine13AffineStoreOpEE10getEffectsEPKNS1_7ConceptEPNS_9OperationERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #8 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::affine::AffineStoreOp", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %1, ptr %3, align 8
  call void @_ZN4mlir6affine13AffineStoreOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_6affine22AffineWriteOpInterface5TraitENSC_24AffineMapAccessInterface5TraitENS2_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !90

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.322, i64 49), i64 33) #32
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, !prof !90

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.339, i64 49), i64 33) #32
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !90

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.365, i64 49), i64 47) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine22AffineWriteOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_6affine22AffineWriteOpInterface5TraitEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine22AffineWriteOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_6affine22AffineWriteOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.366, i64 49), i64 50) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine22AffineWriteOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine22AffineWriteOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_6affine22AffineWriteOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6affine22AffineWriteOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine22AffineWriteOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_6affine22AffineWriteOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.341, i64 49), i64 52) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6affine22AffineWriteOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.340, i64 49), i64 41) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.331, i64 49), i64 43) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
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
  %.fr = freeze i1 %i.az
  %op.rdx = or i1 %i.bd, %.fr
  %op.rdx36 = select i1 %op.rdx, i1 true, i1 %i.ba
  ret i1 %op.rdx36
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #32, !inline_history !428
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  tail call void @free(ptr noundef %i.k) #32, !inline_history !428
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6affine18AffineVectorLoadOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_6affine21AffineReadOpInterface5TraitENSG_24AffineMapAccessInterface5TraitENS2_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1823") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6affine18AffineVectorLoadOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !331
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::affine::AffineVectorLoadOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6affine18AffineVectorLoadOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::affine::AffineVectorLoadOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::affine::AffineVectorLoadOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 1) #32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br label %_ZN4mlir2OpINS_6affine18AffineVectorLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_10VectorTypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir6affine18AffineVectorLoadOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br i1 %i.j, label %bb.d, label %_ZN4mlir2OpINS_6affine18AffineVectorLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_10VectorTypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.d:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.k = call i8 @_ZN4mlir6affine18AffineVectorLoadOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4mlir2OpINS_6affine18AffineVectorLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_10VectorTypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_6affine18AffineVectorLoadOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_10VectorTypeEE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_21AffineReadOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.d
  %i.l = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.k, %bb.d ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine18AffineVectorLoadOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_21AffineReadOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #32 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %.not.i.i5 = icmp eq i64 %3, 3
  br i1 %.not.i.i5, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4mlir6affine18AffineVectorLoadOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail36AffineVectorLoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.a
  %i.i = load i16, ptr %2, align 1
  %i.j = xor i16 %i.i, 24941
  %i.k = getelementptr i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = xor i16 %i.m, 112
  %i.o = or i16 %i.j, %i.n
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4mlir6affine18AffineVectorLoadOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail36AffineVectorLoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.s = load i64, ptr %i.h, align 8, !tbaa !170
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4mlir6affine18AffineVectorLoadOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail36AffineVectorLoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4mlir6affine18AffineVectorLoadOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail36AffineVectorLoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit: ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %.sroa.03.0.i = phi ptr [ %i.t, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ undef, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ undef, %bb.a ]
  %.sroa.2.0.i = phi i8 [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 0, %bb.a ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.03.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.2.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine18AffineVectorLoadOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
end_hunk_8
begin_hunk_9_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_6affine21AffineReadOpInterface5TraitENSG_24AffineMapAccessInterface5TraitENS2_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.322, i64 49), i64 33) #32
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !90

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.323, i64 49), i64 31) #32
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, !prof !90

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.367, i64 49), i64 60) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.336, i64 49), i64 47) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.328, i64 49), i64 39) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.363, i64 49), i64 49) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine21AffineReadOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.341, i64 49), i64 52) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6affine21AffineReadOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6affine24AffineMapAccessInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.340, i64 49), i64 41) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6affine24AffineMapAccessInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.331, i64 49), i64 43) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.aw = insertelement <8 x ptr> %i.av, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.ba = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bb = shufflevector <8 x ptr> %i.ba, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bc = icmp eq <8 x ptr> %i.az, %i.bb
  %i.bd = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.be = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bf = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bg = freeze <8 x i1> %i.bc
  %i.bh = bitcast <8 x i1> %i.bg to i8
  %i.bi = icmp ne i8 %i.bh, 0
  %.fr = freeze i1 %i.bd
  %op.rdx = or i1 %i.bi, %.fr
  %1 = freeze i1 %i.be
  %2 = or i1 %op.rdx, %1
  %op.rdx40 = select i1 %2, i1 true, i1 %i.bf
  ret i1 %op.rdx40
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #32, !inline_history !428
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  tail call void @free(ptr noundef %i.k) #32, !inline_history !428
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6affine19AffineVectorStoreOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_6affine22AffineWriteOpInterface5TraitENSC_24AffineMapAccessInterface5TraitENS2_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1823") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6affine19AffineVectorStoreOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !331
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::affine::AffineVectorStoreOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6affine19AffineVectorStoreOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::affine::AffineVectorStoreOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::affine::AffineVectorStoreOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %1) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 2) #32
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br label %_ZN4mlir2OpINS_6affine19AffineVectorStoreOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_22AffineWriteOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir6affine19AffineVectorStoreOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  br i1 %i.j, label %bb.d, label %_ZN4mlir2OpINS_6affine19AffineVectorStoreOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_22AffineWriteOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.d:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.k = call i8 @_ZN4mlir6affine19AffineVectorStoreOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4mlir2OpINS_6affine19AffineVectorStoreOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_22AffineWriteOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_6affine19AffineVectorStoreOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS1_22AffineWriteOpInterface5TraitENS1_24AffineMapAccessInterface5TraitENS3_19MemRefsNormalizableENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.d
  %i.l = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.k, %bb.d ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine19AffineVectorStoreOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22AffineWriteOpInterface5TraitIS5_EENS4_24AffineMapAccessInterface5TraitIS5_EENS2_19MemRefsNormalizableIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #32 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %.not.i.i5 = icmp eq i64 %3, 3
  br i1 %.not.i.i5, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4mlir6affine19AffineVectorStoreOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail37AffineVectorStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.a
  %i.i = load i16, ptr %2, align 1
  %i.j = xor i16 %i.i, 24941
  %i.k = getelementptr i8, ptr %2, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = xor i16 %i.m, 112
  %i.o = or i16 %i.j, %i.n
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4mlir6affine19AffineVectorStoreOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail37AffineVectorStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.s = load i64, ptr %i.h, align 8, !tbaa !170
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4mlir6affine19AffineVectorStoreOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail37AffineVectorStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4mlir6affine19AffineVectorStoreOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail37AffineVectorStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit: ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %.sroa.03.0.i = phi ptr [ %i.t, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ undef, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ undef, %bb.a ]
  %.sroa.2.0.i = phi i8 [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 0, %bb.a ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.03.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.2.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6affine19AffineVectorStoreOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
end_hunk_9
begin_hunk_10_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_12IsTerminatorENS_33RegionBranchTerminatorOpInterface5TraitENS2_10ReturnLikeENS2_19MemRefsNormalizableEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.339, i64 49), i64 33) #32
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !90

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.325, i64 49), i64 36) #32
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !90

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.326, i64 49), i64 38) #32
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !90

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.327, i64 49), i64 34) #32
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !90

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.329, i64 49), i64 45) #32
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !90

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.330, i64 49), i64 49) #32
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !90

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.331, i64 49), i64 43) #32
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, !prof !90

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.368, i64 49), i64 34) #32
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, !prof !90

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.369, i64 49), i64 53) #32
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, !prof !90

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.370, i64 49), i64 32) #32
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, !prof !90

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.340, i64 49), i64 41) #32
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #32
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19MemRefsNormalizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19MemRefsNormalizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !91
  %i.aw = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.ba = insertelement <8 x ptr> %i.az, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bb = insertelement <8 x ptr> %i.ba, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bc = insertelement <8 x ptr> %i.bb, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.be = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bf = shufflevector <8 x ptr> %i.be, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bg = icmp eq <8 x ptr> %i.bd, %i.bf
  %i.bh = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bi = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bk = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bl = freeze <8 x i1> %i.bg
  %i.bm = bitcast <8 x i1> %i.bl to i8
  %i.bn = icmp ne i8 %i.bm, 0
  %.fr = freeze i1 %i.bh
  %op.rdx = or i1 %i.bn, %.fr
  %1 = freeze i1 %i.bi
  %2 = or i1 %op.rdx, %1
  %.fr45 = freeze i1 %i.bj
  %op.rdx43 = or i1 %2, %.fr45
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6affine13AffineYieldOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_12IsTerminatorIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_19MemRefsNormalizableIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_6affine13AffineYieldOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_6affine13AffineYieldOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_6affine13AffineYieldOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 8388608
  %.not.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %_ZN4mlir6affine13AffineYieldOp14getODSOperandsEj.exit.i.i.i, !prof !135

_ZN4mlir6affine13AffineYieldOp14getODSOperandsEj.exit.i.i.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !139  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !138
  %i.n = zext i32 %i.k to i64
  %.not24.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not24.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4mlir6affine13AffineYieldOp14getODSOperandsEj.exit.i.i.i, %bb.e
  %.sroa.4.025.i.i.i = phi i64 [ %i.v, %bb.e ], [ 0, %_ZN4mlir6affine13AffineYieldOp14getODSOperandsEj.exit.i.i.i ] ; 3 uses
  %indvars29.i.i.i = trunc i64 %.sroa.4.025.i.i.i to i32
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.4.025.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !132
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call fastcc i8 @_ZL43__mlir_ods_local_type_constraint_AffineOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %i.s, ptr nonnull @.str.96, i64 7, i32 noundef %indvars29.i.i.i)
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_6affine13AffineYieldOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.v = add nuw nsw i64 %.sroa.4.025.i.i.i, 1    ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.v, %i.n
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %bb.e, %bb.d, %_ZN4mlir6affine13AffineYieldOp14getODSOperandsEj.exit.i.i.i
  %i.w = tail call i8 @_ZN4mlir7OpTrait4impl18verifyIsTerminatorEPNS_9OperationE(ptr noundef %0) #32
  br label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_6affine13AffineYieldOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_6affine13AffineYieldOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %.lr.ph.i.i.i, %.loopexit, %bb.b, %bb.c, %bb.a
  %i.x = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %i.w, %.loopexit ], [ 0, %.lr.ph.i.i.i ]
  ret i8 %i.x
}

declare i8 @_ZN4mlir7OpTrait4impl18verifyIsTerminatorEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122AffineInlinerInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir23DialectInlinerInterface15isLegalToInlineEPNS_9OperationES2_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_122AffineInlinerInterface15isLegalToInlineEPN4mlir6RegionES3_bRNS1_9IRMappingE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr noundef nonnull align 8 dereferenceable(72) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::affine::AffineWriteOpInterface", align 8 ; 8 uses
  %6 = alloca %"class.mlir::AffineMap", align 8   ; 6 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 6 uses
  %8 = alloca %"class.mlir::ValueRange", align 8  ; 6 uses
  %9 = alloca %"class.llvm::function_ref.2371", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvm::function_ref.2371", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.mlir::affine::AffineReadOpInterface", align 8 ; 8 uses
  %12 = alloca %"class.mlir::AffineMap", align 8  ; 6 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %14 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %15 = alloca %"class.llvm::function_ref.2371", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %"class.llvm::function_ref.2371", align 8 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %17 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %18 = alloca %"class.llvm::function_ref.2371", align 8 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %19 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %20 = alloca %"class.llvm::function_ref.2371", align 8 ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %21 = alloca %"class.llvm::SmallVector.2369", align 8 ; 8 uses
  %22 = alloca %"class.mlir::MemoryEffectOpInterface", align 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120  ; 3 uses
  %i.l = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6affine16AffineParallelOpEvE2idE
  %i.m = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp eq ptr %i.k, @_ZN4mlir6detail14TypeIDResolverINS_6affine10AffineIfOpEvE2idE
  %spec.select.i = or i1 %i.n, %or.cond.i
  br i1 %spec.select.i, label %bb.b, label %_ZN4mlir6Region11hasOneBlockEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %2, align 8, !tbaa !328
  %i.p = icmp eq ptr %2, %i.o
  br i1 %i.p, label %_ZN4mlir6Region11hasOneBlockEv.exit.thread, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !149
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %bb.c, label %_ZN4mlir6Region11hasOneBlockEv.exit.thread

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.sroa.055.079 = load ptr, ptr %i.v, align 8, !tbaa !149 ; 2 uses
  %.not80 = icmp eq ptr %.sroa.055.079, %i.w
  br i1 %.not80, label %_ZN4mlir6Region11hasOneBlockEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ad = ptrtoint ptr %i.c to i64
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.22.0..sroa_idx.i.i.i32 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ai = ptrtoint ptr %i.a to i64
  %.sroa.2.0..sroa_idx.i.i.i36 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = ptrtoint ptr %i.b to i64
  %i.al = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.am = ptrtoint ptr %i.f to i64
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ap = ptrtoint ptr %i.e to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %select.unfold
  %.sroa.055.081 = phi ptr [ %.sroa.055.079, %.lr.ph ], [ %.sroa.055.0, %select.unfold ] ; 2 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.055.081) #32 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.as = call noundef ptr @_ZN4mlir11OpInterfaceINS_23MemoryEffectOpInterfaceENS_6detail38MemoryEffectOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %i.ar)
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcRT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = call noundef ptr @_ZN4mlir11OpInterfaceINS_23MemoryEffectOpInterfaceENS_6detail38MemoryEffectOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %i.ar)
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.ar, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.at, 1
  br label %_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcRT0_.exit

_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcRT0_.exit: ; preds = %bb.d, %bb.e
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 2 uses
  store ptr %i.au, ptr %22, align 8
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  store ptr %i.av, ptr %i.x, align 8
  %.not77 = icmp eq ptr %i.au, null
  br i1 %.not77, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  store ptr %i.y, ptr %21, align 8, !tbaa !117
  store i32 0, ptr %i.z, align 8, !tbaa !118
end_hunk_10
