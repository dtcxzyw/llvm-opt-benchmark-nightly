Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TransformDialect?download=true
inline.NumInlined: 15464
inline.NumDeleted: 7336
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait15VariadicRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_11SingleBlockENS2_29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplENS2_12OpInvariantsENS_23RegionBranchOpInterface5TraitENS9_20TransformOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS2_19IsIsolatedFromAboveENS9_32PossibleTopLevelTransformOpTraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 37) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 38) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 33) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 83) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 43) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 49), i64 41) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_9transform32PossibleTopLevelTransformOpTraitEEES0_v.exit, !prof !29

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_9transform32PossibleTopLevelTransformOpTraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 56) #21
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform32PossibleTopLevelTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform32PossibleTopLevelTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform14AlternativesOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99
  %i.b = tail call i8 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #21, !inline_history !382
  ret i8 %i.b
}

declare void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform14AlternativesOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform14AlternativesOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform14AlternativesOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.u, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !77
  store ptr @.str.46, ptr %5, align 8, !tbaa !78
  store i8 3, ptr %i.x, align 8, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #21
  %i.z = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 5, ptr %3, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !69

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pr = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 3, ptr %2, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.47, ptr %i.al, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i13 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i13, label %bb.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !96
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  %i.au = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !87
  br i1 %i.ax, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ay) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit

bb.m:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !160
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.bc, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !77
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %7) #21
  %i.be = load ptr, ptr %6, align 8, !tbaa !86
  %.not.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.48, ptr %i.bg, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !91
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait15AtLeastNRegionsILj1EE4ImplENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12NoTerminatorENS2_11SingleBlockENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_9transform20TransformOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENSE_37ReportTrackingListenerFailuresOpTraitENS_19RegionKindInterface5TraitENS2_18HasOnlyGraphRegionEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.78, i64 49), i64 34) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 33) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 61) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, !prof !29

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.79, i64 49), i64 39) #21
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, !prof !29

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 49), i64 40) #21
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform25ApplyConversionPatternsOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform25ApplyConversionPatternsOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait15AtLeastNRegionsILj1EE4ImplINS_9transform25ApplyConversionPatternsOpEEENS2_11ZeroResultsIS7_EENS2_14ZeroSuccessorsIS7_EENS2_10OneOperandIS7_EENS2_12NoTerminatorIS7_EENS2_11SingleBlockIS7_EENS2_12OpInvariantsIS7_EENS_19BytecodeOpInterface5TraitIS7_EENS6_20TransformOpInterface5TraitIS7_EENS_23MemoryEffectOpInterface5TraitIS7_EENS6_37ReportTrackingListenerFailuresOpTraitIS7_EENS_19RegionKindInterface5TraitIS7_EENS2_18HasOnlyGraphRegionIS7_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::ApplyConversionPatternsOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl21verifyAtLeastNRegionsEPNS_9OperationEj(ptr noundef %0, i32 noundef 1) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform25ApplyConversionPatternsOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.k = call i8 @_ZN4mlir9transform25ApplyConversionPatternsOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.e, %bb.f, %bb.c, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.m, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform25ApplyConversionPatternsOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl21verifyAtLeastNRegionsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform25ApplyConversionPatternsOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.m, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !77
  store ptr @.str.46, ptr %4, align 8, !tbaa !78
  store i8 3, ptr %i.x, align 8, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #21
  %i.z = load ptr, ptr %3, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 5, ptr %2, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !69

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.pr = load ptr, ptr %3, align 8, !tbaa !86
  %.not.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i8, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.47, ptr %i.al, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i9 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i9, label %bb.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !96
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #21
  %i.au = load ptr, ptr %3, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !87
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ay) #21
  br label %bb.n

bb.m:                                             ; preds = %bb.b, %_ZN4mlir6Region11hasOneBlockEv.exit
end_hunk_1
begin_hunk_2_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12NoTerminatorENS2_11SingleBlockENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_9transform20TransformOpInterface5TraitENSC_20TransformEachOpTraitENS_23MemoryEffectOpInterface5TraitENSC_37ReportTrackingListenerFailuresOpTraitENS_19RegionKindInterface5TraitENS2_18HasOnlyGraphRegionEEEEbNS_6TypeIDE:bb.a
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.78, i64 49), i64 34) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 33) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.72, i64 49), i64 44) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, !prof !29

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 61) #21
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, !prof !29

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.79, i64 49), i64 39) #21
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, !prof !29

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 49), i64 40) #21
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform15ApplyPatternsOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform15ApplyPatternsOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_9transform15ApplyPatternsOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12NoTerminatorIS5_EENS2_11SingleBlockIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_20TransformEachOpTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_37ReportTrackingListenerFailuresOpTraitIS5_EENS_19RegionKindInterface5TraitIS5_EENS2_18HasOnlyGraphRegionIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::ApplyPatternsOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform15ApplyPatternsOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.k = call i8 @_ZN4mlir9transform15ApplyPatternsOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = call i8 @_ZN4mlir9transform20TransformEachOpTraitINS0_15ApplyPatternsOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.d, %bb.e, %bb.g, %bb.f, %bb.c, %bb.a
  %i.p = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.o, %bb.h ]
  ret i8 %i.p
}

declare i8 @_ZN4mlir9transform15ApplyPatternsOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform15ApplyPatternsOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.m, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !77
  store ptr @.str.46, ptr %4, align 8, !tbaa !78
  store i8 3, ptr %i.x, align 8, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #21
  %i.z = load ptr, ptr %3, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 5, ptr %2, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !69

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.pr = load ptr, ptr %3, align 8, !tbaa !86
  %.not.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i8, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.47, ptr %i.al, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i9 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i9, label %bb.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !96
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #21
  %i.au = load ptr, ptr %3, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !87
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
end_hunk_2
begin_hunk_3_@_ZN4mlir6detail38MemoryEffectOpInterfaceInterfaceTraits5ModelINS_9transform6CastOpEE10getEffectsEPKNS1_7ConceptEPNS_9OperationERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %1, ptr %3, align 8
  call void @_ZN4mlir9transform6CastOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare void @_ZN4mlir9transform6CastOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir4impl19foldCastInterfaceOpEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS6_20TransformOpInterface5TraitENS6_20TransformEachOpTraitENS_15CastOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 89) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.72, i64 49), i64 44) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformEachOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_15CastOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_15CastOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.106, i64 49), i64 35) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CastOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CastOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_15CastOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_15CastOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformEachOpTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CastOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_15CastOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_15CastOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform6CastOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform6CastOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform6CastOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_28TransformHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_20TransformEachOpTraitIS5_EENS_15CastOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::CastOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform6CastOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform20TransformEachOpTraitINS0_6CastOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = call i8 @_ZN4mlir4impl21verifyCastInterfaceOpEPNS_9OperationE(ptr noundef %0) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.c, %bb.e, %bb.g, %bb.f, %bb.d, %bb.a
  %i.p = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.o, %bb.h ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i8 %i.p
}

declare i8 @_ZN4mlir9transform6CastOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir9transform20TransformEachOpTraitINS0_6CastOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 37) #21
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.g, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.k = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.k ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_9transform20TransformOpInterfaceEPNS_9OperationENS2_6detail35TransformOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !161
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.k

_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !77
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.y = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA88_KcEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.74, ptr %i.aa, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 87, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !97
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA88_KcEERS0_OT_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !96
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !96
  br label %_ZN4mlir10Diagnostic6appendIRA88_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA88_KcEERS0_OT_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA88_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA88_KcEEOS0_OT_.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_9transform20TransformOpInterfaceEEEPNT_7ConceptEv.exit.thread, %_ZN4mlir10Diagnostic6appendIRA88_KcEERS0_OT_.exit.i.i
  %i.ak = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  %i.al = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA88_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA88_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ao = trunc nuw i8 %i.an to i1
  store i8 0, ptr %i.am, align 8, !tbaa !87
  br i1 %i.ao, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ap) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.k
end_hunk_3
begin_hunk_4_@_ZN4mlir6detail31OpAsmOpInterfaceInterfaceTraits5ModelINS_9transform14ForeachMatchOpEE16getAsmBlockNamesEPKNS1_7ConceptEPNS_9OperationEN4llvm12function_refIFvPNS_5BlockENSB_9StringRefEEEE:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4mlir6detail31OpAsmOpInterfaceInterfaceTraits5ModelINS_9transform14ForeachMatchOpEE17getDefaultDialectEv() #7 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.112, i64 0 }
}

declare void @_ZN4mlir9transform14ForeachMatchOp17getAsmResultNamesEN4llvm12function_refIFvNS_5ValueENS2_9StringRefEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15AtLeastNResultsILj1EE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS_9transform20TransformOpInterface5TraitENS_16OpAsmOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15AtLeastNResultsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait15AtLeastNResultsILj1EE4ImplEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15AtLeastNResultsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait15AtLeastNResultsILj1EE4ImplEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.114, i64 49), i64 46) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15AtLeastNResultsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15AtLeastNResultsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait15AtLeastNResultsILj1EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait15AtLeastNResultsILj1EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15AtLeastNResultsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15AtLeastNResultsILj1EE4ImplEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15AtLeastNResultsILj1EE4ImplEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.59, i64 49), i64 47) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.109, i64 49), i64 41) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 36) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform14ForeachMatchOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform14ForeachMatchOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir2OpINS_9transform14ForeachMatchOpEJNS_7OpTrait11ZeroRegionsENS3_15AtLeastNResultsILj1EE4ImplENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj1EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS1_20TransformOpInterface5TraitENS_16OpAsmOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::transform::ForeachMatchOp", align 8 ; 4 uses
  %2 = alloca %"class.mlir::transform::ForeachMatchOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl21verifyAtLeastNResultsEPNS_9OperationEj(ptr noundef %0, i32 noundef 1) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 1) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform14ForeachMatchOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  br label %bb.g

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  store ptr %0, ptr %2, align 8
  %i.m = call i8 @_ZN4mlir9transform14ForeachMatchOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread, %bb.f, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.n = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.m, %bb.f ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform14ForeachMatchOpEEENS2_15AtLeastNResultsILj1EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform14ForeachMatchOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl21verifyAtLeastNResultsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform14ForeachMatchOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9transform14ForeachMatchOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail32ForeachMatchOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform14ForeachMatchOp15setInherentAttrERNS0_6detail32ForeachMatchOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9transform14ForeachMatchOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail32ForeachMatchOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform14ForeachMatchOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform14ForeachMatchOp21setPropertiesFromAttrERNS0_6detail32ForeachMatchOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir9transform14ForeachMatchOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail32ForeachMatchOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i64 @_ZN4mlir9transform14ForeachMatchOp21computePropertiesHashERKNS0_6detail32ForeachMatchOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform9ForeachOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 10 uses
  %2 = alloca %"class.std::unique_ptr.123", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !643 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !643
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !98, !alias.scope !644, !noalias !643
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !96, !alias.scope !644, !noalias !643
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.d, align 4, !tbaa !97, !alias.scope !644, !noalias !643
  call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_19BytecodeOpInterface5TraitINS_9transform9ForeachOpEEENS5_20TransformOpInterface5TraitIS6_EEJNS_23MemoryEffectOpInterface5TraitIS6_EENS_23RegionBranchOpInterface5TraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %1), !noalias !643
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.122, i64 17, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9ForeachOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #21, !noalias !643
  %i.e = load ptr, ptr %1, align 8, !tbaa !98, !noalias !643 ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !96, !noalias !643 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !98, !noalias !643
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9ForeachOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.i) #21, !noalias !643
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9ForeachOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135, !noalias !643
  call void @free(ptr noundef %i.l) #21, !noalias !643
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9ForeachOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform9ForeachOpEEE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !643
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail27ForeachOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.n, align 8, !tbaa !31, !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !643
  store ptr %i.a, ptr %2, align 8, !tbaa !72
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir9transform9ForeachOp17getAttributeNamesEvE9attrNames, i64 1) #21
  %i.o = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9ForeachOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9ForeachOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9ForeachOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9ForeachOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9ForeachOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9ForeachOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #21, !inline_history !136
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.k) #21, !inline_history !136
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9ForeachOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9ForeachOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
end_hunk_4
begin_hunk_5_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_11SingleBlockENS2_29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS9_20TransformOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_23RegionBranchOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.91, i64 49), i64 31) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 37) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 38) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 33) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 83) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 43) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform9ForeachOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform9ForeachOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform9ForeachOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform9ForeachOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.u, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !77
  store ptr @.str.46, ptr %5, align 8, !tbaa !78
  store i8 3, ptr %i.x, align 8, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #21
  %i.z = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 5, ptr %3, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !69

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pr = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 3, ptr %2, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.47, ptr %i.al, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i13 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i13, label %bb.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !96
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  %i.au = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !87
  br i1 %i.ax, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ay) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit

bb.m:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !160
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.bc, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !77
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %7) #21
  %i.be = load ptr, ptr %6, align 8, !tbaa !86
  %.not.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.48, ptr %i.bg, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !91
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !97
  %.not.i.i.i.i.i16 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i.i.i.i16, label %bb.q, label %bb.p, !prof !69

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA26_KcEERS0_OT_.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !98
end_hunk_5
begin_hunk_6_@_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceENS2_33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_:bb.a
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !135
  %i.as = icmp ne ptr %i.ar, null
  br label %_ZN4llvm8CastInfoIN4mlir9transform33TransformValueHandleTypeInterfaceEKNS1_4TypeEvE10isPossibleES4_.exit

_ZN4llvm8CastInfoIN4mlir9transform33TransformValueHandleTypeInterfaceEKNS1_4TypeEvE10isPossibleES4_.exit: ; preds = %bb.h, %bb.g, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i14, %_ZN4llvm8CastInfoIN4mlir9transform28TransformHandleTypeInterfaceEKNS1_4TypeEvE10isPossibleES4_.exit
  %i.at = phi i1 [ true, %_ZN4llvm8CastInfoIN4mlir9transform28TransformHandleTypeInterfaceEKNS1_4TypeEvE10isPossibleES4_.exit ], [ %i.as, %bb.h ], [ false, %bb.g ], [ false, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i14 ]
  ret i1 %i.at
}

declare void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind writable sret(%"class.mlir::ValueTypeRange") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_26NavigationTransformOpTraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 89) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.124, i64 49), i64 50) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform20GetConsumersOfResult5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform20GetConsumersOfResult5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform20GetConsumersOfResultEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_28TransformHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_26NavigationTransformOpTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::GetConsumersOfResult", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform20GetConsumersOfResult20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_20GetConsumersOfResultEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform20GetConsumersOfResult20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_20GetConsumersOfResultEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 29) #21
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
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
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !161
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.j

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !77
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.y = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.125, ptr %i.aa, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 96, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !97
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !96
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pr = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !87, !range !88, !noundef !89
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !87
  br i1 %i.am, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  ret i8 1
}

declare { ptr, i8 } @_ZN4mlir9transform20GetConsumersOfResult15getInherentAttrEPNS_11MLIRContextERKNS0_6detail38GetConsumersOfResultGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform20GetConsumersOfResult15setInherentAttrERNS0_6detail38GetConsumersOfResultGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

end_hunk_6
begin_hunk_7_@_ZSt9__find_ifIN4mlir17ValueTypeIteratorIN4llvm6detail27indexed_accessor_range_baseINS0_12OperandRangeEPNS0_9OpOperandENS0_5ValueES8_S8_E8iteratorEEEN9__gnu_cxx5__ops10_Iter_predIZNS0_9transform26NavigationTransformOpTraitINSF_13GetDefiningOpEE10getEffectsERNS2_15SmallVectorImplINS0_11SideEffects14EffectInstanceINS0_13MemoryEffects6EffectEEEEEEUlNS0_4TypeEE_EEET_SU_SU_T0_St26random_access_iterator_tag:bb.a
bb.k:                                             ; preds = %bb.j, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.j, %bb.h, %bb.f, %bb.k
  %.sroa.014.0.in.sroa.speculated = phi ptr [ %0, %bb.h ], [ %2, %bb.k ], [ %0, %bb.j ], [ %0, %bb.f ], [ %0, %.lr.ph ], [ %0, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  %.sroa.9.0 = phi i64 [ %.sroa.15.1, %bb.h ], [ %3, %bb.k ], [ %.sroa.15.2, %bb.j ], [ %.sroa.15.0.lcssa, %bb.f ], [ %i.x, %bb.d ], [ %i.q, %bb.c ], [ %i.j, %bb.b ], [ %.sroa.15.081, %.lr.ph ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.014.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS6_20TransformOpInterface5TraitENS6_16MatchOpInterface5TraitENS6_26NavigationTransformOpTraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 89) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.124, i64 49), i64 50) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform13GetDefiningOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform13GetDefiningOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform13GetDefiningOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_28TransformHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS4_26NavigationTransformOpTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::GetDefiningOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform13GetDefiningOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_13GetDefiningOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.m, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform13GetDefiningOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_13GetDefiningOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 29) #21
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
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
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !161
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.j

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !77
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.y = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.125, ptr %i.aa, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 96, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !97
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !96
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pr = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !87, !range !88, !noundef !89
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !87
  br i1 %i.am, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform12GetOperandOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 8 uses
end_hunk_7
begin_hunk_8_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_26NavigationTransformOpTraitENS6_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.131, i64 49), i64 94) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.124, i64 49), i64 50) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform12GetOperandOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform12GetOperandOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform12GetOperandOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_33TransformValueHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_26NavigationTransformOpTraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::GetOperandOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform12GetOperandOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_12GetOperandOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform12GetOperandOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform12GetOperandOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_12GetOperandOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 29) #21
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
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
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !161
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.j

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !77
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.y = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.125, ptr %i.aa, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 96, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !97
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !96
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pr = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !87, !range !88, !noundef !89
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !87
  br i1 %i.am, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  ret i8 1
}

declare { ptr, i8 } @_ZN4mlir9transform12GetOperandOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail30GetOperandOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform12GetOperandOp15setInherentAttrERNS0_6detail30GetOperandOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr) local_unnamed_addr #2
end_hunk_8
begin_hunk_9_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_16MatchOpInterface5TraitENS6_26NavigationTransformOpTraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 89) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.124, i64 49), i64 50) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform11GetParentOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform11GetParentOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform11GetParentOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_28TransformHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS4_26NavigationTransformOpTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::GetParentOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform11GetParentOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_11GetParentOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform11GetParentOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_11GetParentOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 29) #21
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
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
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !161
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.j

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !77
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.y = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.125, ptr %i.aa, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 96, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !97
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !96
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pr = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !87, !range !88, !noundef !89
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !87
  br i1 %i.am, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  ret i8 1
}

declare { ptr, i8 } @_ZN4mlir9transform11GetParentOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29GetParentOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform11GetParentOp15setInherentAttrERNS0_6detail29GetParentOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9transform11GetParentOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail29GetParentOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2
end_hunk_9
begin_hunk_10_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_26NavigationTransformOpTraitENS6_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 89) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.124, i64 49), i64 50) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform20GetProducerOfOperand5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform20GetProducerOfOperand5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform20GetProducerOfOperandEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_28TransformHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_26NavigationTransformOpTraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::GetProducerOfOperand", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform20GetProducerOfOperand20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_20GetProducerOfOperandEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform20GetProducerOfOperand20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_20GetProducerOfOperandEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 29) #21
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
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
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !161
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.j

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !77
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.y = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.125, ptr %i.aa, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 96, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !97
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !96
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pr = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !87, !range !88, !noundef !89
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !87
  br i1 %i.am, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  ret i8 1
}

declare { ptr, i8 } @_ZN4mlir9transform20GetProducerOfOperand15getInherentAttrEPNS_11MLIRContextERKNS0_6detail38GetProducerOfOperandGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform20GetProducerOfOperand15setInherentAttrERNS0_6detail38GetProducerOfOperandGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9transform20GetProducerOfOperand21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail38GetProducerOfOperandGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2
end_hunk_10
begin_hunk_11_@_ZSt9__find_ifIN4mlir17ValueTypeIteratorIN4llvm6detail27indexed_accessor_range_baseINS0_12OperandRangeEPNS0_9OpOperandENS0_5ValueES8_S8_E8iteratorEEEN9__gnu_cxx5__ops10_Iter_predIZNS0_9transform26NavigationTransformOpTraitINSF_11GetResultOpEE10getEffectsERNS2_15SmallVectorImplINS0_11SideEffects14EffectInstanceINS0_13MemoryEffects6EffectEEEEEEUlNS0_4TypeEE_EEET_SU_SU_T0_St26random_access_iterator_tag:bb.a
bb.k:                                             ; preds = %bb.j, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.j, %bb.h, %bb.f, %bb.k
  %.sroa.014.0.in.sroa.speculated = phi ptr [ %0, %bb.h ], [ %2, %bb.k ], [ %0, %bb.j ], [ %0, %bb.f ], [ %0, %.lr.ph ], [ %0, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  %.sroa.9.0 = phi i64 [ %.sroa.15.1, %bb.h ], [ %3, %bb.k ], [ %.sroa.15.2, %bb.j ], [ %.sroa.15.0.lcssa, %bb.f ], [ %i.x, %bb.d ], [ %i.q, %bb.c ], [ %i.j, %bb.b ], [ %.sroa.15.081, %.lr.ph ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.014.0.in.sroa.speculated, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_26NavigationTransformOpTraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.131, i64 49), i64 94) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform33TransformValueHandleTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.124, i64 49), i64 50) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform26NavigationTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform26NavigationTransformOpTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform11GetResultOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform11GetResultOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform11GetResultOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_33TransformValueHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_26NavigationTransformOpTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::GetResultOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform11GetResultOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_11GetResultOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform11GetResultOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform11GetResultOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform26NavigationTransformOpTraitINS0_11GetResultOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.c = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 29) #21
  store ptr %i.f, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
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
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.m = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.017.i.i.i.i.i.i, %i.o
  %.112.i.i.i.i.i.i = select i1 %i.m, ptr %i.n, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.k ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.j, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.g, %_ZN4mlir6detail9InterfaceINS_23MemoryEffectOpInterfaceEPNS_9OperationENS0_38MemoryEffectOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.s = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !161
  %i.t = icmp eq ptr %i.s, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.j

_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.d, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !77
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.y = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.125, ptr %i.aa, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 96, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !97
  %.not.i.i.i.i.i2 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i2, label %bb.g, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !96
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.pr = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !87, !range !88, !noundef !89
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !87
  br i1 %i.am, label %bb.i, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA97_KcEEOS0_OT_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZNK4mlir13OperationName12getInterfaceINS_23MemoryEffectOpInterfaceEEEPNT_7ConceptEv.exit
  ret i8 1
}

declare { ptr, i8 } @_ZN4mlir9transform11GetResultOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail29GetResultOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

end_hunk_11
begin_hunk_12_@_ZN4mlir6detail38MemoryEffectOpInterfaceInterfaceTraits5ModelINS_9transform9GetTypeOpEE10getEffectsEPKNS1_7ConceptEPNS_9OperationERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE:bb.a
bb.a:
  %3 = alloca %"class.mlir::transform::GetTypeOp", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %1, ptr %3, align 8
  call void @_ZN4mlir9transform9GetTypeOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare void @_ZN4mlir9transform9GetTypeOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 88) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform9GetTypeOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform9GetTypeOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform9GetTypeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9transform9GetTypeOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail27GetTypeOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform9GetTypeOp15setInherentAttrERNS0_6detail27GetTypeOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9transform9GetTypeOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail27GetTypeOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform9GetTypeOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform9GetTypeOp21setPropertiesFromAttrERNS0_6detail27GetTypeOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir9transform9GetTypeOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail27GetTypeOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir9transform9GetTypeOp21computePropertiesHashERKNS0_6detail27GetTypeOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform9IncludeOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 8 uses
  %2 = alloca %"class.std::unique_ptr.123", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !729 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !729
  call void @_ZN4mlir6detail12InterfaceMap3getIJNS_7OpTrait11ZeroRegionsINS_9transform9IncludeOpEEENS3_15VariadicResultsIS6_EENS3_14ZeroSuccessorsIS6_EENS3_16VariadicOperandsIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_28ArgAndResultAttrsOpInterface5TraitIS6_EENS_15CallOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_21SymbolUserOpInterface5TraitIS6_EEEEES1_v(ptr dead_on_unwind nonnull writable sret(%"class.mlir::detail::InterfaceMap") align 8 %1), !noalias !729
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.156, i64 17, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9IncludeOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #21, !noalias !729
  %i.b = load ptr, ptr %1, align 8, !tbaa !98, !noalias !729 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96, !noalias !729 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !98, !noalias !729
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9IncludeOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.g) #21, !noalias !729
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9IncludeOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !729
  call void @free(ptr noundef %i.k) #21, !noalias !729
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9IncludeOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEEE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !729
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail27IncludeOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.m, align 8, !tbaa !31, !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !729
  store ptr %i.a, ptr %2, align 8, !tbaa !72
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir9transform9IncludeOp17getAttributeNamesEvE9attrNames, i64 4) #21
  %i.n = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9IncludeOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9IncludeOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(120) %i.n) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9IncludeOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9IncludeOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9IncludeOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #21, !inline_history !136
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.k) #21, !inline_history !136
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_15CallOpInterface5TraitENS_9transform20TransformOpInterface5TraitENSE_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_21SymbolUserOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir9transform9IncludeOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !99
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::transform::IncludeOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir9transform9IncludeOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9IncludeOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::transform::IncludeOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir2OpINS_9transform9IncludeOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_15CallOpInterface5TraitENS1_20TransformOpInterface5TraitENS1_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_21SymbolUserOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir2OpINS_9transform9IncludeOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_15CallOpInterface5TraitENS1_20TransformOpInterface5TraitENS1_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_21SymbolUserOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %1, ptr %2, align 8
  %i.e = call i8 @_ZN4mlir9transform9IncludeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform9IncludeOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_28ArgAndResultAttrsOpInterface5TraitIS5_EENS_15CallOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir2OpINS_9transform9IncludeOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_15CallOpInterface5TraitENS1_20TransformOpInterface5TraitENS1_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_21SymbolUserOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform9IncludeOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_28ArgAndResultAttrsOpInterface5TraitIS5_EENS_15CallOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.b
  %i.g = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %1) #21
end_hunk_12
begin_hunk_13_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_15CallOpInterface5TraitENS_9transform20TransformOpInterface5TraitENSE_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_21SymbolUserOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 37) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 38) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.150, i64 49), i64 48) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_15CallOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_15CallOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CallOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_15CallOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.151, i64 49), i64 35) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CallOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15CallOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_15CallOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_15CallOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15CallOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_15CallOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_15CallOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, !prof !29

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.109, i64 49), i64 41) #21
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform9IncludeOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform9IncludeOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform9IncludeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9transform9IncludeOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail27IncludeOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform9IncludeOp15setInherentAttrERNS0_6detail27IncludeOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9transform9IncludeOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail27IncludeOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform9IncludeOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform9IncludeOp21setPropertiesFromAttrERNS0_6detail27IncludeOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir9transform9IncludeOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail27IncludeOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i64 @_ZN4mlir9transform9IncludeOp21computePropertiesHashERKNS0_6detail27IncludeOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform21MatchOperationEmptyOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 10 uses
  %2 = alloca %"class.std::unique_ptr.123", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !745 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !745
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !98, !alias.scope !746, !noalias !745
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !96, !alias.scope !746, !noalias !745
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.d, align 4, !tbaa !97, !alias.scope !746, !noalias !745
  call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_9transform20TransformOpInterface5TraitINS3_21MatchOperationEmptyOpEEENS3_16MatchOpInterface5TraitIS6_EEJNS_23MemoryEffectOpInterface5TraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %1), !noalias !745
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.160, i64 31, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform21MatchOperationEmptyOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #21, !noalias !745
  %i.e = load ptr, ptr %1, align 8, !tbaa !98, !noalias !745 ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !96, !noalias !745 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !98, !noalias !745
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform21MatchOperationEmptyOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.i) #21, !noalias !745
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform21MatchOperationEmptyOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135, !noalias !745
  call void @free(ptr noundef %i.l) #21, !noalias !745
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform21MatchOperationEmptyOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEEE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !745
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE, ptr %i.n, align 8, !tbaa !31, !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !745
  store ptr %i.a, ptr %2, align 8, !tbaa !72
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr null, i64 0) #21
  %i.o = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform21MatchOperationEmptyOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform21MatchOperationEmptyOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform21MatchOperationEmptyOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform21MatchOperationEmptyOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform21MatchOperationEmptyOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #21, !inline_history !136
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.k) #21, !inline_history !136
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_9transform25AtMostOneOpMatcherOpTraitENS8_20TransformOpInterface5TraitENS8_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir9transform21MatchOperationEmptyOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !99
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::transform::MatchOperationEmptyOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir9transform21MatchOperationEmptyOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform21MatchOperationEmptyOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS4_25AtMostOneOpMatcherOpTraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_9transform21MatchOperationEmptyOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

end_hunk_13
begin_hunk_14_@_ZN4mlir6detail38MemoryEffectOpInterfaceInterfaceTraits5ModelINS_9transform20MatchOperationNameOpEE10getEffectsEPKNS1_7ConceptEPNS_9OperationERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !204  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
  %i.m = zext i32 %i.j to i64
  %.sroa.0.0.i.i.i = select i1 %i.k, ptr null, ptr %i.l
  tail call void @_ZN4mlir9transform14producesHandleENS_11ResultRangeERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr %.sroa.0.0.i.i.i, i64 %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  tail call void @_ZN4mlir9transform16onlyReadsPayloadERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_9transform22SingleOpMatcherOpTraitENSA_20TransformOpInterface5TraitENSA_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.58, i64 49), i64 33) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_9transform22SingleOpMatcherOpTraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_9transform22SingleOpMatcherOpTraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.162, i64 49), i64 46) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform22SingleOpMatcherOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform22SingleOpMatcherOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform22SingleOpMatcherOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform22SingleOpMatcherOpTraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform22SingleOpMatcherOpTraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform20MatchOperationNameOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform20MatchOperationNameOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform20MatchOperationNameOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_22SingleOpMatcherOpTraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::MatchOperationNameOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform20MatchOperationNameOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform25AtMostOneOpMatcherOpTraitINS0_20MatchOperationNameOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.f, %bb.e, %bb.c, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform20MatchOperationNameOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir9transform25AtMostOneOpMatcherOpTraitINS0_20MatchOperationNameOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.123, i64 49), i64 45) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !98   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.q = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1    ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.q ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.s = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = xor i64 %i.q, -1
  %i.v = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.u
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.s, ptr %i.t, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.s, i64 %i.v, i64 %i.q ; 2 uses
  %i.w = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !6

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.p, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.y = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !161
  %i.z = icmp eq ptr %i.y, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.z, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !135
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.k

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.d, %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.ac, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !77
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.ae = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA108_KcEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.159, ptr %i.ag, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 107, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !97
  %.not.i.i.i.i.i3 = icmp ult i32 %i.ai, %i.ak
  br i1 %.not.i.i.i.i.i3, label %bb.g, label %bb.f, !prof !69

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA108_KcEERS0_OT_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.al = zext i32 %i.ai to i64
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !98
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !96
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ah, align 8, !tbaa !96
  br label %_ZN4mlir10Diagnostic6appendIRA108_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA108_KcEERS0_OT_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA108_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA108_KcEEOS0_OT_.exit: ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, %_ZN4mlir10Diagnostic6appendIRA108_KcEERS0_OT_.exit.i.i
  %i.aq = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  %i.ar = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA108_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA108_KcEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !87, !range !88, !noundef !89
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !87
  br i1 %i.au, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
end_hunk_14
begin_hunk_15_@_ZN4mlir6detail38MemoryEffectOpInterfaceInterfaceTraits5ModelINS_9transform16MatchParamCmpIOpEE10getEffectsEPKNS1_7ConceptEPNS_9OperationERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE:bb.a
bb.a:
  %3 = alloca %"class.mlir::transform::MatchParamCmpIOp", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %1, ptr %3, align 8
  call void @_ZN4mlir9transform16MatchParamCmpIOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare void @_ZN4mlir9transform16MatchParamCmpIOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_9transform20TransformOpInterface5TraitENSC_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS2_16SameTypeOperandsEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.58, i64 49), i64 33) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.165, i64 49), i64 40) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16SameTypeOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait16SameTypeOperandsEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16SameTypeOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait16SameTypeOperandsEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.166, i64 49), i64 38) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16SameTypeOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16SameTypeOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16SameTypeOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16SameTypeOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16SameTypeOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform16MatchParamCmpIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform16MatchParamCmpIOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform16MatchParamCmpIOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_16SameTypeOperandsIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::MatchParamCmpIOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 2) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform16MatchParamCmpIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl22verifySameTypeOperandsEPNS_9OperationE(ptr noundef %0) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform16MatchParamCmpIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl22verifySameTypeOperandsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9transform16MatchParamCmpIOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail34MatchParamCmpIOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform16MatchParamCmpIOp15setInherentAttrERNS0_6detail34MatchParamCmpIOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9transform16MatchParamCmpIOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail34MatchParamCmpIOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform16MatchParamCmpIOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform16MatchParamCmpIOp21setPropertiesFromAttrERNS0_6detail34MatchParamCmpIOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir9transform16MatchParamCmpIOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail34MatchParamCmpIOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir9transform16MatchParamCmpIOp21computePropertiesHashERKNS0_6detail34MatchParamCmpIOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform14MergeHandlesOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 8 uses
  %2 = alloca %"class.std::unique_ptr.123", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !803 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !803
  call void @_ZN4mlir6detail12InterfaceMap3getIJNS_7OpTrait11ZeroRegionsINS_9transform14MergeHandlesOpEEENS3_9OneResultIS6_EENS3_14OneTypedResultINS_4TypeEE4ImplIS6_EENS3_14ZeroSuccessorsIS6_EENS3_16VariadicOperandsIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS3_25SameOperandsAndResultTypeIS6_EEEEES1_v(ptr dead_on_unwind nonnull writable sret(%"class.mlir::detail::InterfaceMap") align 8 %1), !noalias !803
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.171, i64 23, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform14MergeHandlesOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #21, !noalias !803
  %i.b = load ptr, ptr %1, align 8, !tbaa !98, !noalias !803 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96, !noalias !803 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !98, !noalias !803
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14MergeHandlesOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.g) #21, !noalias !803
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14MergeHandlesOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !803
  call void @free(ptr noundef %i.k) #21, !noalias !803
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14MergeHandlesOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform14MergeHandlesOpEEE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !803
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail32MergeHandlesOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.m, align 8, !tbaa !31, !noalias !803
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !803
  store ptr %i.a, ptr %2, align 8, !tbaa !72
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir9transform14MergeHandlesOp17getAttributeNamesEvE9attrNames, i64 1) #21
  %i.n = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform14MergeHandlesOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14MergeHandlesOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(120) %i.n) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform14MergeHandlesOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform14MergeHandlesOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform14MergeHandlesOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14MergeHandlesOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #21, !inline_history !136
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.k) #21, !inline_history !136
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform14MergeHandlesOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::transform::MergeHandlesOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::transform::MergeHandlesOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir9transform6detail32MergeHandlesOpGenericAdaptorBaseC2ENS0_14MergeHandlesOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !805
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.b = call i64 @_ZN4mlir9transform14MergeHandlesOp4foldENS0_28MergeHandlesOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::transform::MergeHandlesOpGenericAdaptor") align 8 %6) #21 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
end_hunk_15
begin_hunk_16_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_9transform20TransformOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENSE_16MatchOpInterface5TraitENS2_25SameOperandsAndResultTypeEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.169, i64 49), i64 54) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 38) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.170, i64 49), i64 47) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform14MergeHandlesOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform14MergeHandlesOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform14MergeHandlesOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9transform14MergeHandlesOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail32MergeHandlesOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform14MergeHandlesOp15setInherentAttrERNS0_6detail32MergeHandlesOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9transform14MergeHandlesOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail32MergeHandlesOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform14MergeHandlesOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform14MergeHandlesOp21setPropertiesFromAttrERNS0_6detail32MergeHandlesOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir9transform14MergeHandlesOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail32MergeHandlesOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir9transform14MergeHandlesOp21computePropertiesHashERKNS0_6detail32MergeHandlesOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform15NamedSequenceOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 10 uses
  %2 = alloca %"class.std::unique_ptr.123", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !812 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !812
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !98, !alias.scope !813, !noalias !812
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !96, !alias.scope !813, !noalias !812
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.d, align 4, !tbaa !97, !alias.scope !813, !noalias !812
  call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_19BytecodeOpInterface5TraitINS_9transform15NamedSequenceOpEEENS_17SymbolOpInterface5TraitIS6_EEJNS_28ArgAndResultAttrsOpInterface5TraitIS6_EENS_19CallableOpInterface5TraitIS6_EENS_19FunctionOpInterface5TraitIS6_EENS_7OpTrait19IsIsolatedFromAboveIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %1), !noalias !812
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.198, i64 24, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform15NamedSequenceOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #21, !noalias !812
  %i.e = load ptr, ptr %1, align 8, !tbaa !98, !noalias !812 ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !96, !noalias !812 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !98, !noalias !812
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15NamedSequenceOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.i) #21, !noalias !812
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15NamedSequenceOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135, !noalias !812
  call void @free(ptr noundef %i.l) #21, !noalias !812
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15NamedSequenceOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEEE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !812
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail33NamedSequenceOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.n, align 8, !tbaa !31, !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !812
  store ptr %i.a, ptr %2, align 8, !tbaa !72
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir9transform15NamedSequenceOp17getAttributeNamesEvE9attrNames, i64 5) #21
  %i.o = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform15NamedSequenceOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15NamedSequenceOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform15NamedSequenceOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform15NamedSequenceOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15NamedSequenceOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #21, !inline_history !136
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.k) #21, !inline_history !136
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_19FunctionOpInterface5TraitENS2_19IsIsolatedFromAboveENS_23MemoryEffectOpInterface5TraitENS_9transform20TransformOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir9transform15NamedSequenceOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !99
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::transform::NamedSequenceOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir9transform15NamedSequenceOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15NamedSequenceOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::transform::NamedSequenceOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_9transform15NamedSequenceOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_12ZeroOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_17SymbolOpInterface5TraitIS5_EENS_28ArgAndResultAttrsOpInterface5TraitIS5_EENS_19CallableOpInterface5TraitIS5_EENS_19FunctionOpInterface5TraitIS5_EENS2_19IsIsolatedFromAboveIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  %i.b = trunc nuw i8 %i.a to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  br i1 %i.b, label %bb.a, label %_ZN4mlir2OpINS_9transform15NamedSequenceOpEJNS_7OpTrait9OneRegionENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_12ZeroOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_19FunctionOpInterface5TraitENS3_19IsIsolatedFromAboveENS_23MemoryEffectOpInterface5TraitENS1_20TransformOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  store ptr %1, ptr %2, align 8
  %i.c = call i8 @_ZN4mlir9transform15NamedSequenceOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  br label %_ZN4mlir2OpINS_9transform15NamedSequenceOpEJNS_7OpTrait9OneRegionENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_12ZeroOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_19FunctionOpInterface5TraitENS3_19IsIsolatedFromAboveENS_23MemoryEffectOpInterface5TraitENS1_20TransformOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_9transform15NamedSequenceOpEJNS_7OpTrait9OneRegionENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_12ZeroOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_19FunctionOpInterface5TraitENS3_19IsIsolatedFromAboveENS_23MemoryEffectOpInterface5TraitENS1_20TransformOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit, %bb.a
  %i.d = phi i8 [ 0, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i8 %i.d
end_hunk_16
begin_hunk_17_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_19FunctionOpInterface5TraitENS2_19IsIsolatedFromAboveENS_23MemoryEffectOpInterface5TraitENS_9transform20TransformOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.64, i64 49), i64 34) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.181, i64 49), i64 37) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.150, i64 49), i64 48) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.182, i64 49), i64 39) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.183, i64 49), i64 39) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 49), i64 41) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform15NamedSequenceOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform15NamedSequenceOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_9transform15NamedSequenceOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_12ZeroOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_17SymbolOpInterface5TraitIS5_EENS_28ArgAndResultAttrsOpInterface5TraitIS5_EENS_19CallableOpInterface5TraitIS5_EENS_19FunctionOpInterface5TraitIS5_EENS2_19IsIsolatedFromAboveIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::NamedSequenceOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform15NamedSequenceOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_9transform15NamedSequenceOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir23function_interface_impl11verifyTraitINS_9transform15NamedSequenceOpEEEN4llvm13LogicalResultET_(ptr %0)
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.d, %bb.g, %bb.h, %bb.f, %bb.e, %bb.c, %bb.a
  %i.p = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.o, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i8 %i.p
}

declare i8 @_ZN4mlir9transform15NamedSequenceOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform15NamedSequenceOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_9transform15NamedSequenceOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::transform::NamedSequenceOp", align 8 ; 5 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.a = tail call i8 @_ZN4mlir6detail12verifySymbolEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !204
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !77
  store ptr @.str.185, ptr %3, align 8, !tbaa !78
  store i8 3, ptr %i.e, align 8, !tbaa !76
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.g = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  %i.h = load ptr, ptr %2, align 8, !tbaa !86
  %.not.i10 = icmp eq ptr %i.h, null
  br i1 %.not.i10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !87, !range !88, !noundef !89
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 8, !tbaa !87
  br i1 %i.k, label %bb.f, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.l) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

_ZN4mlir18InFlightDiagnosticD2Ev.exit11:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !246  ; 2 uses
  %.not.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i12, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.g
  %i.o = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #21 ; 2 uses
  %.not9 = icmp eq ptr %i.o, null
  br i1 %.not9, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.p = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.226, i64 49), i64 33) #21
  store ptr %i.s, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr %.sroa.01.0.copyload.i.i.i.i.i) #21, !inline_history !1
  br i1 %i.y, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  %.not16 = icmp eq ptr %i.aa, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not16, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !77
  store ptr @.str.186, ptr %5, align 8, !tbaa !78
  store i8 3, ptr %i.ab, align 8, !tbaa !76
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #21
  %i.ad = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

_ZN4mlir9Operation11getParentOpEv.exit.thread:    ; preds = %bb.g, %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, %bb.k, %bb.a, %bb.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11
  %.sroa.08.1 = phi i8 [ %i.ad, %bb.l ], [ %i.g, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11 ], [ 0, %bb.a ], [ 1, %_ZN4mlir9Operation11getParentOpEv.exit ], [ 1, %bb.k ], [ 1, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i8 %.sroa.08.1
}

declare i8 @_ZN4mlir6detail12verifySymbolEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir23function_interface_impl11verifyTraitINS_9transform15NamedSequenceOpEEEN4llvm13LogicalResultET_(ptr %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %9 = alloca %"class.mlir::ArrayAttr", align 8   ; 6 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %12 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
end_hunk_17
begin_hunk_18_@_ZN4mlir6detail12InterfaceMap11insertModelINS_9transform6detail31MatchOpInterfaceInterfaceTraits5ModelINS3_17NumAssociationsOpEEEEEvv:bb.a
  %i.z = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.128, i64 49), i64 33) #21
  store ptr %i.z, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6detail9InterfaceINS_9transform16MatchOpInterfaceEPNS_9OperationENS2_6detail31MatchOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit

_ZN4mlir6detail9InterfaceINS_9transform16MatchOpInterfaceEPNS_9OperationENS2_6detail31MatchOpInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit: ; preds = %_ZN4mlir9transform6detail31MatchOpInterfaceInterfaceTraits7Concept26initializeInterfaceConceptERNS_6detail12InterfaceMapE.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  tail call void @_ZN4mlir6detail12InterfaceMap6insertENS_6TypeIDEPv(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.01.0.copyload.i.i.i, ptr noundef nonnull %i.a) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_23MemoryEffectOpInterface5TraitENS6_29ParamProducerTransformOpTraitENS6_20TransformOpInterface5TraitENS6_16MatchOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 88) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 32) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.199, i64 49), i64 53) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform17NumAssociationsOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform17NumAssociationsOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform17NumAssociationsOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_27TransformParamTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_29ParamProducerTransformOpTraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::NumAssociationsOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform17NumAssociationsOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail35verifyParamProducerTransformOpTraitEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform17NumAssociationsOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform17NumAssociationsOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform6detail35verifyParamProducerTransformOpTraitEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform15ParamConstantOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 8 uses
  %2 = alloca %"class.std::unique_ptr.123", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !867 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !867
  call void @_ZN4mlir6detail12InterfaceMap3getIJNS_7OpTrait11ZeroRegionsINS_9transform15ParamConstantOpEEENS3_9OneResultIS6_EENS3_14OneTypedResultINS5_27TransformParamTypeInterfaceEE4ImplIS6_EENS3_14ZeroSuccessorsIS6_EENS3_12ZeroOperandsIS6_EENS3_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS5_20TransformOpInterface5TraitIS6_EENS5_16MatchOpInterface5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS5_29ParamProducerTransformOpTraitIS6_EEEEES1_v(ptr dead_on_unwind nonnull writable sret(%"class.mlir::detail::InterfaceMap") align 8 %1), !noalias !867
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.202, i64 24, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform15ParamConstantOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #21, !noalias !867
  %i.b = load ptr, ptr %1, align 8, !tbaa !98, !noalias !867 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96, !noalias !867 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !98, !noalias !867
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15ParamConstantOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.g) #21, !noalias !867
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15ParamConstantOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135, !noalias !867
  call void @free(ptr noundef %i.k) #21, !noalias !867
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15ParamConstantOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform15ParamConstantOpEEE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !867
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail33ParamConstantOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.m, align 8, !tbaa !31, !noalias !867
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !867
  store ptr %i.a, ptr %2, align 8, !tbaa !72
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir9transform15ParamConstantOp17getAttributeNamesEvE9attrNames, i64 1) #21
  %i.n = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform15ParamConstantOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15ParamConstantOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(120) %i.n) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform15ParamConstantOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform15ParamConstantOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform15ParamConstantOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15ParamConstantOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #21, !inline_history !136
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.k) #21, !inline_history !136
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15ParamConstantOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15ParamConstantOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15ParamConstantOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS6_29ParamProducerTransformOpTraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15ParamConstantOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir9transform15ParamConstantOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !99
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform15ParamConstantOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

end_hunk_18
begin_hunk_19_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS6_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS6_29ParamProducerTransformOpTraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 33) #21
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !29

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 31) #21
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, !prof !29

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 88) #21
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !29

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 36) #21
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9transform27TransformParamTypeInterfaceEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !29

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.64, i64 49), i64 34) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.199, i64 49), i64 53) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform29ParamProducerTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform29ParamProducerTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
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

declare i8 @_ZN4mlir9transform15ParamConstantOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform15ParamConstantOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_9transform15ParamConstantOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_27TransformParamTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_12ZeroOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_29ParamProducerTransformOpTraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::ParamConstantOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef %0) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform15ParamConstantOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform6detail35verifyParamProducerTransformOpTraitEPNS_9OperationE(ptr noundef %0) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.m, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform15ParamConstantOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9transform15ParamConstantOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail33ParamConstantOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir9transform15ParamConstantOp15setInherentAttrERNS0_6detail33ParamConstantOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir9transform15ParamConstantOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail33ParamConstantOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform15ParamConstantOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir9transform15ParamConstantOp21setPropertiesFromAttrERNS0_6detail33ParamConstantOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir9transform15ParamConstantOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail33ParamConstantOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir9transform15ParamConstantOp21computePropertiesHashERKNS0_6detail33ParamConstantOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_9transform9PayloadOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 10 uses
  %2 = alloca %"class.std::unique_ptr.123", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !874 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !874
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !98, !alias.scope !875, !noalias !874
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !96, !alias.scope !875, !noalias !874
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.d, align 4, !tbaa !97, !alias.scope !875, !noalias !874
  call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_19BytecodeOpInterface5TraitINS_9transform9PayloadOpEEENS5_28NormalFormCheckedOpInterface5TraitIS6_EEJEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %1), !noalias !874
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.207, i64 17, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_9transform9PayloadOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #21, !noalias !874
  %i.e = load ptr, ptr %1, align 8, !tbaa !98, !noalias !874 ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !96, !noalias !874 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !98, !noalias !874
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9PayloadOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.i) #21, !noalias !874
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9PayloadOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135, !noalias !874
  call void @free(ptr noundef %i.l) #21, !noalias !874
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9PayloadOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_9transform9PayloadOpEEE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !874
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail27PayloadOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.n, align 8, !tbaa !31, !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !874
  store ptr %i.a, ptr %2, align 8, !tbaa !72
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir9transform9PayloadOp17getAttributeNamesEvE9attrNames, i64 1) #21
  %i.o = load ptr, ptr %2, align 8, !tbaa !73     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9PayloadOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9PayloadOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9PayloadOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_9transform9PayloadOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_9transform9PayloadOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9PayloadOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !98
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #21, !inline_history !136
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  tail call void @free(ptr noundef %i.k) #21, !inline_history !136
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9PayloadOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9PayloadOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9PayloadOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12NoTerminatorENS2_17NoRegionArgumentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_9transform28NormalFormCheckedOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_9transform9PayloadOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_19
begin_hunk_20_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_11SingleBlockENS2_29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplENS2_24AttrSizedOperandSegmentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_23RegionBranchOpInterface5TraitENS9_20TransformOpInterface5TraitENS9_16MatchOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_16OpAsmOpInterface5TraitENS9_32PossibleTopLevelTransformOpTraitEEEEbNS_6TypeIDE:bb.a

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 33) #21
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, !prof !29

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 83) #21
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, !prof !29

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.214, i64 49), i64 46) #21
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_9transform7YieldOpEE4ImplEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !29

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 34) #21
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !29

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 49), i64 39) #21
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, !prof !29

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 43) #21
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23RegionBranchOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !29

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 51) #21
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23RegionBranchOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, !prof !29

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #21
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform16MatchOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !29

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 43) #21
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform16MatchOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !29

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 36) #21
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_9transform32PossibleTopLevelTransformOpTraitEEES0_v.exit, !prof !29

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_9transform32PossibleTopLevelTransformOpTraitEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 56) #21
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir6TypeID3getINS_9transform32PossibleTopLevelTransformOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform32PossibleTopLevelTransformOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform32PossibleTopLevelTransformOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !31
  %i.bi = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.bm = insertelement <8 x ptr> %i.bl, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bn = insertelement <8 x ptr> %i.bm, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bo = insertelement <8 x ptr> %i.bn, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bp = insertelement <8 x ptr> %i.bo, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bq = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.br = shufflevector <8 x ptr> %i.bq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bs = icmp eq <8 x ptr> %i.bp, %i.br
  %i.bt = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bu = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bv = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bw = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bx = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.by = icmp eq ptr %.sroa.01.0.copyload.i.i.i31, %0
  %i.bz = icmp eq ptr %.sroa.01.0.copyload.i.i.i33, %0
  %i.ca = freeze <8 x i1> %i.bs
  %i.cb = bitcast <8 x i1> %i.ca to i8
  %i.cc = icmp ne i8 %i.cb, 0
  %.fr = freeze i1 %i.bt
  %op.rdx = or i1 %i.cc, %.fr
  %1 = freeze i1 %i.bu
  %2 = freeze i1 %i.bw
  %.fr57 = freeze i1 %i.bx
  %op.rdx52 = or i1 %2, %.fr57
  %3 = freeze i1 %i.by
  %4 = or i1 %op.rdx, %1
  %.fr58 = freeze i1 %i.bv
  %op.rdx54 = or i1 %4, %.fr58
  %5 = or i1 %op.rdx52, %3
  %6 = or i1 %op.rdx54, %5
  %op.rdx56 = select i1 %6, i1 true, i1 %i.bz
  ret i1 %op.rdx56
}

declare i8 @_ZN4mlir9transform10SequenceOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir9transform10SequenceOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_9transform10SequenceOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_11SingleBlockIS5_EENS2_29SingleBlockImplicitTerminatorINS4_7YieldOpEE4ImplIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_23RegionBranchOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS4_16MatchOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS4_32PossibleTopLevelTransformOpTraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::SequenceOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef %0) #21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform10SequenceOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl21verifyOperandSizeAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef %0, ptr nonnull @.str.215, i64 19) #21
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir9transform10SequenceOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #21
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir9transform6detail38verifyPossibleTopLevelTransformOpTraitEPNS_9OperationE(ptr noundef %0) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ %i.m, %bb.g ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir9transform10SequenceOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform10SequenceOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !189
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.u, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !159
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !77
  store ptr @.str.46, ptr %5, align 8, !tbaa !78
  store i8 3, ptr %i.x, align 8, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #21
  %i.z = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 5, ptr %3, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !69

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pr = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 3, ptr %2, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.47, ptr %i.al, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !97
  %.not.i.i.i.i.i13 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i13, label %bb.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !96
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  %i.au = load ptr, ptr %4, align 8, !tbaa !86
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !87, !range !88, !noundef !89
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !87
  br i1 %i.ax, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ay) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

end_hunk_20
