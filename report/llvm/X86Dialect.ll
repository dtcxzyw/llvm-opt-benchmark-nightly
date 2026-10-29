Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86Dialect?download=true
inline.NumInlined: 15878
inline.NumDeleted: 5154
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj3EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.138, i64 49), i64 31) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, !prof !106

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.139, i64 49), i64 60) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.141, i64 49), i64 40) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !106

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.148, i64 49), i64 40) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bn, i1 true, i1 %i.bh
  %1 = select i1 %op.rdx, i1 true, i1 %i.bi
  %op.rdx43 = select i1 %1, i1 true, i1 %i.bj
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %i.b = tail call i8 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #26, !inline_history !565
  ret i8 %i.b
}

declare void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x863avx17BcstToPackedF32Op5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::avx::BcstToPackedF32Op", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x863avx17BcstToPackedF32Op5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863avx17BcstToPackedF32OpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_10OneOperandIS6_EENS2_12OpInvariantsIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE16deletePropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx17BcstToPackedF32OpEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef byval(%"class.llvm::function_ref.466") align 8 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = load ptr, ptr %5, align 8, !tbaa !241, !noalias !568
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242, !noalias !568
  call void %i.a(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, i64 noundef %i.c) #26, !inline_history !0
  %i.d = load ptr, ptr %7, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 3, ptr %6, align 8, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.149, ptr %i.f, align 8, !tbaa !130
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 35, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !110  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 36
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.137, i64 49), i64 33) #26
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !106

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.138, i64 49), i64 31) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, !prof !106

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.139, i64 49), i64 60) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.154, i64 49), i64 32) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bi, i1 true, i1 %i.bd
  %1 = select i1 %op.rdx, i1 true, i1 %i.be
  %op.rdx40 = select i1 %1, i1 true, i1 %i.bf
  ret i1 %op.rdx40
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x863avx26CvtPackedOddIndexedToF32Op5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::avx::CvtPackedOddIndexedToF32Op", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x863avx26CvtPackedOddIndexedToF32Op5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863avx26CvtPackedOddIndexedToF32OpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_10OneOperandIS6_EENS2_12OpInvariantsIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE16deletePropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863avx26CvtPackedOddIndexedToF32OpEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef byval(%"class.llvm::function_ref.466") align 8 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = load ptr, ptr %5, align 8, !tbaa !241, !noalias !599
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242, !noalias !599
  call void %i.a(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, i64 noundef %i.c) #26, !inline_history !0
  %i.d = load ptr, ptr %7, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 3, ptr %6, align 8, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.149, ptr %i.f, align 8, !tbaa !130
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 35, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !110  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !109
  %.not.i.i.i.i.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !111

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.n = load i32, ptr %i.g, align 8, !tbaa !110
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 8, !tbaa !110
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pr = load ptr, ptr %7, align 8, !tbaa !71
end_hunk_1
begin_hunk_2_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS2_25SameOperandsAndResultTypeENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.139, i64 49), i64 60) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.166, i64 49), i64 40) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, !prof !106

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.167, i64 49), i64 47) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !106

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.148, i64 49), i64 40) #26
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bs, i1 true, i1 %i.bl
  %1 = select i1 %op.rdx, i1 true, i1 %i.bm
  %op.rdx47 = select i1 %1, i1 true, i1 %i.bn
  %2 = select i1 %op.rdx47, i1 true, i1 %i.bo
  %op.rdx48 = select i1 %2, i1 true, i1 %i.bp
  ret i1 %op.rdx48
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863avx5DotOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS2_25SameOperandsAndResultTypeIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 2) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8611PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %0, ptr %i.n, ptr nonnull @.str.7, i64 7, i32 noundef 0)
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN4mlir3x863avx5DotOp14getODSOperandsEj.exit41.i.i.i, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir3x863avx5DotOp14getODSOperandsEj.exit41.i.i.i: ; preds = %bb.e
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.0.0.copyload.i.i.i46.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i46.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i47.i.i.i = load i64, ptr %i.s, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i47.i.i.i, -8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = tail call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8611PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %0, ptr %i.u, ptr nonnull @.str.7, i64 7, i32 noundef 1)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %_ZN4mlir3x863avx5DotOp14getODSOperandsEj.exit41.i.i.i
  %i.x = getelementptr inbounds i8, ptr %0, i64 -16
  %i.y = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef 0) #26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.copyload.i.i.i.i.i54.i.i.i = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i54.i.i.i, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8611PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %0, ptr %i.ab, ptr nonnull @.str.8, i64 6, i32 noundef 0)
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.ae = tail call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef nonnull %0) #26
  br label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.f, %bb.e, %_ZN4mlir3x863avx5DotOp14getODSOperandsEj.exit41.i.i.i, %bb.b, %bb.c, %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, %bb.d, %bb.a
  %i.af = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx5DotOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.ae, %bb.f ], [ 0, %_ZN4mlir3x863avx5DotOp14getODSOperandsEj.exit41.i.i.i ]
  ret i8 %i.af
}

declare i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskCompressOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskCompressOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskCompressOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskCompressOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskCompressOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x866avx51214MaskCompressOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskCompressOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskCompressOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::avx512::MaskCompressOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x866avx51214MaskCompressOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskCompressOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::x86::avx512::MaskCompressOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::x86::avx512::MaskCompressOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskCompressOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskCompressOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskCompressOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 2) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskCompressOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskCompressOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskCompressOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  br label %_ZN4mlir2OpINS_3x866avx51214MaskCompressOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_16AtLeastNOperandsILj2EE4ImplENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskCompressOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir3x866avx51214MaskCompressOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  br i1 %i.j, label %bb.d, label %_ZN4mlir2OpINS_3x866avx51214MaskCompressOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_16AtLeastNOperandsILj2EE4ImplENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.d:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskCompressOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
end_hunk_2
begin_hunk_3_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.139, i64 49), i64 60) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.170, i64 49), i64 47) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.171, i64 49), i64 39) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !106

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.148, i64 49), i64 40) #26
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bs, i1 true, i1 %i.bl
  %1 = select i1 %op.rdx, i1 true, i1 %i.bm
  %op.rdx47 = select i1 %1, i1 true, i1 %i.bn
  %2 = select i1 %op.rdx47, i1 true, i1 %i.bo
  %op.rdx48 = select i1 %2, i1 true, i1 %i.bp
  ret i1 %op.rdx48
}

declare i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj5EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x866avx51214MaskRndScaleOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::avx512::MaskRndScaleOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x866avx51214MaskRndScaleOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::x86::avx512::MaskRndScaleOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir2OpINS_3x866avx51214MaskRndScaleOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir2OpINS_3x866avx51214MaskRndScaleOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir2OpINS_3x866avx51214MaskRndScaleOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 5) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskRndScaleOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj5EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir2OpINS_3x866avx51214MaskRndScaleOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskRndScaleOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj5EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir3x866avx51214MaskRndScaleOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4mlir2OpINS_3x866avx51214MaskRndScaleOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_3x866avx51214MaskRndScaleOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit, %bb.a, %bb.b, %bb.c, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskRndScaleOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj5EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  %i.j = phi i8 [ %i.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51214MaskRndScaleOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj5EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ 0, %bb.c ], [ 0, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i8 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %1) #26
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE16deletePropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51214MaskRndScaleOpEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef byval(%"class.llvm::function_ref.466") align 8 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = load ptr, ptr %5, align 8, !tbaa !241, !noalias !642
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242, !noalias !642
  call void %i.a(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, i64 noundef %i.c) #26, !inline_history !0
  %i.d = load ptr, ptr %7, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit.thread, label %bb.b
end_hunk_3
begin_hunk_4_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj5EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.138, i64 49), i64 31) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, !prof !106

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.139, i64 49), i64 60) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj5EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj5EE4ImplEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj5EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj5EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.175, i64 49), i64 40) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj5EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj5EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj5EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj5EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj5EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj5EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj5EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !106

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.148, i64 49), i64 40) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bn, i1 true, i1 %i.bh
  %1 = select i1 %op.rdx, i1 true, i1 %i.bi
  %op.rdx43 = select i1 %1, i1 true, i1 %i.bj
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj5EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x866avx51212MaskScaleFOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::avx512::MaskScaleFOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x866avx51212MaskScaleFOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::x86::avx512::MaskScaleFOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir2OpINS_3x866avx51212MaskScaleFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir2OpINS_3x866avx51212MaskScaleFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir2OpINS_3x866avx51212MaskScaleFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 5) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51212MaskScaleFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj5EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir2OpINS_3x866avx51212MaskScaleFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51212MaskScaleFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj5EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir3x866avx51212MaskScaleFOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN4mlir2OpINS_3x866avx51212MaskScaleFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_3x866avx51212MaskScaleFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS_10VectorTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj5EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit, %bb.a, %bb.b, %bb.c, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51212MaskScaleFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj5EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  %i.j = phi i8 [ %i.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x866avx51212MaskScaleFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj5EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ 0, %bb.c ], [ 0, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i8 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %1) #26
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE16deletePropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x866avx51212MaskScaleFOpEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef byval(%"class.llvm::function_ref.466") align 8 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = load ptr, ptr %5, align 8, !tbaa !241, !noalias !654
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242, !noalias !654
  call void %i.a(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, i64 noundef %i.c) #26, !inline_history !0
  %i.d = load ptr, ptr %7, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA36_KcEEOS0_OT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_10VectorTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS2_25SameOperandsAndResultTypeENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.139, i64 49), i64 60) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_10VectorTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.154, i64 49), i64 32) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, !prof !106

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.167, i64 49), i64 47) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !106

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.148, i64 49), i64 40) #26
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bs, i1 true, i1 %i.bl
  %1 = select i1 %op.rdx, i1 true, i1 %i.bm
  %op.rdx47 = select i1 %1, i1 true, i1 %i.bn
  %2 = select i1 %op.rdx47, i1 true, i1 %i.bo
  %op.rdx48 = select i1 %2, i1 true, i1 %i.bp
  ret i1 %op.rdx48
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863avx7RsqrtOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS_10VectorTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_10OneOperandIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS2_25SameOperandsAndResultTypeIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8611PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %0, ptr %i.n, ptr nonnull @.str.7, i64 7, i32 noundef 0)
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %0, i64 -16
  %i.r = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef 0) #26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.0.copyload.i.i.i.i.i32.i.i.i = load i64, ptr %i.s, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i32.i.i.i, -8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = tail call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8611PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %0, ptr %i.u, ptr nonnull @.str.8, i64 6, i32 noundef 0)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.x = tail call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef nonnull %0) #26
  br label %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.f, %bb.e, %bb.b, %bb.c, %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, %bb.d, %bb.a
  %i.y = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %_ZN4mlir18op_definition_impl11verifyTraitINS_7OpTrait12OpInvariantsINS_3x863avx7RsqrtOpEEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.x, %bb.f ]
  ret i8 %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_3x8611AMXTileTypeEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_24AttrSizedOperandSegmentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS6_14X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x863amx10TileLoadOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::amx::TileLoadOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x863amx10TileLoadOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir2OpINS_3x863amx10TileLoadOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_16AtLeastNOperandsILj1EE4ImplENS4_24AttrSizedOperandSegmentsENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %1) #26, !inline_history !23
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileLoadOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  switch i64 %3, label %_ZN4mlir3x863amx10TileLoadOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail28TileLoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit [
    i64 21, label %_ZN4llvmeqENS_9StringRefES0_.exit.i
    i64 19, label %_ZN4llvmeqENS_9StringRefES0_.exit9.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.a
  %i.i = load i128, ptr %2, align 1
  %i.j = xor i128 %i.i, 126881205136116728072426937349247955055
  %i.k = getelementptr i8, ptr %2, i64 5
  %i.l = load i128, ptr %i.k, align 1
  %i.m = xor i128 %i.l, 153388124306612226389247106065822082158
  %i.n = or i128 %i.j, %i.m
  %i.o = icmp ne i128 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4mlir3x863amx10TileLoadOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail28TileLoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit9.i:             ; preds = %bb.a
  %i.r = load i128, ptr %2, align 1
  %i.s = xor i128 %i.r, 140002261702676704690085868402741964911
  %i.t = getelementptr i8, ptr %2, i64 3
  %i.u = load i128, ptr %i.t, align 1
  %i.v = xor i128 %i.u, 153388124296734065017531146823900488050
  %i.w = or i128 %i.s, %i.v
  %i.x = icmp ne i128 %i.w, 0
end_hunk_5
begin_hunk_6_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_3x8611AMXTileTypeEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_24AttrSizedOperandSegmentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS6_14X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.137, i64 49), i64 33) #26
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !106

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.138, i64 49), i64 31) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit, !prof !106

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.179, i64 49), i64 66) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.180, i64 49), i64 47) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.181, i64 49), i64 46) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.171, i64 49), i64 39) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bi, i1 true, i1 %i.bd
  %1 = select i1 %op.rdx, i1 true, i1 %i.be
  %op.rdx40 = select i1 %1, i1 true, i1 %i.bf
  ret i1 %op.rdx40
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir2OpINS_3x863amx10TileLoadOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_16AtLeastNOperandsILj1EE4ImplENS4_24AttrSizedOperandSegmentsENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::x86::amx::TileLoadOp", align 8 ; 4 uses
  %2 = alloca %"class.mlir::x86::amx::TileLoadOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 1) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i8 @_ZN4mlir7OpTrait4impl21verifyOperandSizeAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef %0, ptr nonnull @.str.32, i64 19) #26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  br label %bb.g

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 8
  %i.k = call i8 @_ZN4mlir3x863amx10TileLoadOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.l = trunc nuw i8 %i.k to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  store ptr %0, ptr %2, align 8
  %i.m = call i8 @_ZN4mlir3x863amx10TileLoadOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread, %bb.f, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.n = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.m, %bb.f ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileLoadOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj1EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i8 %i.n
}

declare i8 @_ZN4mlir7OpTrait4impl21verifyOperandSizeAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_3x8611AMXTileTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj3EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS6_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x863amx10TileMulFOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::amx::TileMulFOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x863amx10TileMulFOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::x86::amx::TileMulFOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::x86::amx::TileMulFOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 3) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  br label %_ZN4mlir2OpINS_3x863amx10TileMulFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj3EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir3x863amx10TileMulFOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  br i1 %i.j, label %bb.d, label %_ZN4mlir2OpINS_3x863amx10TileMulFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj3EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.d:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.k = call i8 @_ZN4mlir3x863amx10TileMulFOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4mlir2OpINS_3x863amx10TileMulFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj3EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_3x863amx10TileMulFOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj3EE4ImplENS4_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.d
  %i.l = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.k, %bb.d ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulFOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulFOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %1) #26
end_hunk_6
begin_hunk_7_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_3x8611AMXTileTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj3EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS6_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.138, i64 49), i64 31) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit, !prof !106

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.179, i64 49), i64 66) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.141, i64 49), i64 40) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !106

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.148, i64 49), i64 40) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bn, i1 true, i1 %i.bh
  %1 = select i1 %op.rdx, i1 true, i1 %i.bi
  %op.rdx43 = select i1 %1, i1 true, i1 %i.bj
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_3x8611AMXTileTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj3EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS6_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x863amx10TileMulIOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::amx::TileMulIOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x863amx10TileMulIOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::x86::amx::TileMulIOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::x86::amx::TileMulIOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 3) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  br label %_ZN4mlir2OpINS_3x863amx10TileMulIOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj3EE4ImplENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir3x863amx10TileMulIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  br i1 %i.j, label %bb.d, label %_ZN4mlir2OpINS_3x863amx10TileMulIOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj3EE4ImplENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.d:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.k = call i8 @_ZN4mlir3x863amx10TileMulIOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN4mlir2OpINS_3x863amx10TileMulIOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj3EE4ImplENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_3x863amx10TileMulIOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_9NOperandsILj3EE4ImplENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS4_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.d
  %i.l = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.k, %bb.d ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx10TileMulIOpEEENS2_9OneResultIS6_EENS2_14OneTypedResultINS4_11AMXTileTypeEE4ImplIS6_EENS2_14ZeroSuccessorsIS6_EENS2_9NOperandsILj3EE4ImplIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_25ConditionallySpeculatable5TraitIS6_EENS2_27AlwaysSpeculatableImplTraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_20InferTypeOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %1) #26
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileMulIOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %cond.i = icmp eq i64 %3, 9
  br i1 %cond.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4mlir3x863amx10TileMulIOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail28TileMulIOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.a
  %i.i = load i64, ptr %2, align 1
  %i.j = xor i64 %i.i, 7515509938619839337
  %i.k = getelementptr i8, ptr %2, i64 8
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = xor i64 %i.m, 115
  %i.o = or i64 %i.j, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit9.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.s = load i64, ptr %i.h, align 8, !tbaa !187
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN4mlir3x863amx10TileMulIOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail28TileMulIOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit9.i:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.u = load i64, ptr %2, align 1
  %i.v = xor i64 %i.u, 7517198788480103273
  %i.w = getelementptr i8, ptr %2, i64 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = xor i64 %i.y, 115
  %i.aa = or i64 %i.v, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN4llvmeqENS_9StringRefES0_.exit9.thread.i, label %_ZN4mlir3x863amx10TileMulIOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail28TileMulIOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit9.thread.i:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit9.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !187
end_hunk_7
begin_hunk_8_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_3x8611AMXTileTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj3EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS6_14X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.179, i64 49), i64 66) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_3x8611AMXTileTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.141, i64 49), i64 40) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj3EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj3EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.171, i64 49), i64 39) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !106

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.148, i64 49), i64 40) #26
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bs, i1 true, i1 %i.bl
  %1 = select i1 %op.rdx, i1 true, i1 %i.bm
  %op.rdx47 = select i1 %1, i1 true, i1 %i.bn
  %2 = select i1 %op.rdx47, i1 true, i1 %i.bo
  %op.rdx48 = select i1 %2, i1 true, i1 %i.bp
  ret i1 %op.rdx48
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_24AttrSizedOperandSegmentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x863amx11TileStoreOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::amx::TileStoreOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x863amx11TileStoreOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir2OpINS_3x863amx11TileStoreOpEJNS_7OpTrait11ZeroRegionsENS4_11ZeroResultsENS4_14ZeroSuccessorsENS4_16AtLeastNOperandsILj2EE4ImplENS4_24AttrSizedOperandSegmentsENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %1) #26, !inline_history !23
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  switch i64 %3, label %_ZN4mlir3x863amx11TileStoreOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail29TileStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit [
    i64 21, label %_ZN4llvmeqENS_9StringRefES0_.exit.i
    i64 19, label %_ZN4llvmeqENS_9StringRefES0_.exit9.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.a
  %i.i = load i128, ptr %2, align 1
  %i.j = xor i128 %i.i, 126881205136116728072426937349247955055
  %i.k = getelementptr i8, ptr %2, i64 5
  %i.l = load i128, ptr %i.k, align 1
  %i.m = xor i128 %i.l, 153388124306612226389247106065822082158
  %i.n = or i128 %i.j, %i.m
  %i.o = icmp ne i128 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4mlir3x863amx11TileStoreOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail29TileStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit9.i:             ; preds = %bb.a
  %i.r = load i128, ptr %2, align 1
  %i.s = xor i128 %i.r, 140002261702676704690085868402741964911
  %i.t = getelementptr i8, ptr %2, i64 3
  %i.u = load i128, ptr %i.t, align 1
  %i.v = xor i128 %i.u, 153388124296734065017531146823900488050
  %i.w = or i128 %i.s, %i.v
  %i.x = icmp ne i128 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4mlir3x863amx11TileStoreOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail29TileStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit9.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.aa = tail call ptr @_ZN4mlir6detail18DenseArrayAttrImplIiE3getEPNS_11MLIRContextEN4llvm8ArrayRefIiEE(ptr noundef %i.b, ptr nonnull align 4 dereferenceable(16) %i.h, i64 4) #26
  br label %_ZN4mlir3x863amx11TileStoreOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail29TileStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit

_ZN4mlir3x863amx11TileStoreOp15getInherentAttrEPNS_11MLIRContextERKNS1_6detail29TileStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE.exit: ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit9.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %.sroa.014.0.i = phi ptr [ %i.aa, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ undef, %_ZN4llvmeqENS_9StringRefES0_.exit9.i ], [ undef, %bb.a ], [ undef, %_ZN4llvmeqENS_9StringRefES0_.exit.i ]
  %.sroa.2.0.i = phi i8 [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit9.i ], [ 0, %bb.a ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.i ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.014.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.2.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
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
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  %i.g = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @_ZN4mlir3x863amx11TileStoreOp15setInherentAttrERNS1_6detail29TileStoreOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr %i.h, i64 %i.i, ptr %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx11TileStoreOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call ptr @_ZN4mlir6detail18DenseArrayAttrImplIiE3getEPNS_11MLIRContextEN4llvm8ArrayRefIiEE(ptr noundef %i.b, ptr nonnull align 4 dereferenceable(16) %i.h, i64 4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4mlir14NamedAttributeC1EN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.32, i64 19, ptr %i.i) #26
end_hunk_8
begin_hunk_9_@_ZN4mlir6detail12InterfaceMap11insertModelINS_3x866detail29X86IntrinsicOpInterfaceTraits5ModelINS3_3amx11TileStoreOpEEEEEvv:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail38MemoryEffectOpInterfaceInterfaceTraits5ModelINS_3x863amx11TileStoreOpEE10getEffectsEPKNS1_7ConceptEPNS_9OperationERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #9 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::x86::amx::TileStoreOp", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %1, ptr %3, align 8
  call void @_ZN4mlir3x863amx11TileStoreOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_24AttrSizedOperandSegmentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !106

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.137, i64 49), i64 33) #26
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, !prof !106

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.194, i64 49), i64 33) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.170, i64 49), i64 47) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.181, i64 49), i64 46) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.171, i64 49), i64 39) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
define linkonce_odr hidden i8 @_ZN4mlir2OpINS_3x863amx11TileStoreOpEJNS_7OpTrait11ZeroRegionsENS4_11ZeroResultsENS4_14ZeroSuccessorsENS4_16AtLeastNOperandsILj2EE4ImplENS4_24AttrSizedOperandSegmentsENS4_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::x86::amx::TileStoreOp", align 8 ; 4 uses
  %2 = alloca %"class.mlir::x86::amx::TileStoreOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 2) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i8 @_ZN4mlir7OpTrait4impl21verifyOperandSizeAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef %0, ptr nonnull @.str.32, i64 19) #26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  br label %bb.g

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 8
  %i.k = call i8 @_ZN4mlir3x863amx11TileStoreOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.l = trunc nuw i8 %i.k to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  store ptr %0, ptr %2, align 8
  %i.m = call i8 @_ZN4mlir3x863amx11TileStoreOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread, %bb.f, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.n = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.m, %bb.f ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_3x863amx11TileStoreOpEEENS2_11ZeroResultsIS6_EENS2_14ZeroSuccessorsIS6_EENS2_16AtLeastNOperandsILj2EE4ImplIS6_EENS2_24AttrSizedOperandSegmentsIS6_EENS2_12OpInvariantsIS6_EENS_19BytecodeOpInterface5TraitIS6_EENS_4LLVM28OneToOneIntrinsicOpInterface5TraitIS6_EENS4_14X86IntrinsicOp5TraitIS6_EENS_23MemoryEffectOpInterface5TraitIS6_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i8 %i.n
}

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #26, !inline_history !237
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.k) #26, !inline_history !237
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS8_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_3x8611AMXTileTypeEE4ImplENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS6_14X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.1122") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir3x863amx10TileZeroOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !127
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::x86::amx::TileZeroOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir3x863amx10TileZeroOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir2OpINS_3x863amx10TileZeroOpEJNS_7OpTrait11ZeroRegionsENS4_9OneResultENS4_14OneTypedResultINS1_11AMXTileTypeEE4ImplENS4_14ZeroSuccessorsENS4_12ZeroOperandsENS4_12OpInvariantsENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS1_14X86IntrinsicOp5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %1) #26, !inline_history !23
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_3x863amx10TileZeroOpEE16deletePropertiesENS_11PropertyRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
end_hunk_9
begin_hunk_10_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_8NResultsILj2EE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_4LLVM28OneToOneIntrinsicOpInterface5TraitENS_3x8614X86IntrinsicOp5TraitENS_20InferTypeOpInterface5TraitENS_16OpAsmOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait8NResultsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait8NResultsILj2EE4ImplEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.201, i64 49), i64 39) #26
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait8NResultsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait8NResultsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait8NResultsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait8NResultsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait8NResultsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !106

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait8NResultsILj2EE4ImplEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.140, i64 49), i64 36) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait8NResultsILj2EE4ImplEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, !prof !106

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.166, i64 49), i64 40) #26
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !106

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !106

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 45) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !106

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 49) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !106

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 43) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, !prof !106

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 54) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_4LLVM28OneToOneIntrinsicOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, !prof !106

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.147, i64 49), i64 39) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_4LLVM28OneToOneIntrinsicOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3x8614X86IntrinsicOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !106

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.148, i64 49), i64 40) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_3x8614X86IntrinsicOp5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !106

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.202, i64 49), i64 36) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !126
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
  %op.rdx = select i1 %i.bn, i1 true, i1 %i.bh
  %1 = select i1 %op.rdx, i1 true, i1 %i.bi
  %op.rdx43 = select i1 %1, i1 true, i1 %i.bj
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

declare i8 @_ZN4mlir7OpTrait4impl14verifyNResultsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !108
  %i.g = load i32, ptr %i.a, align 8, !tbaa !110
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !110
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !110
  ret void
}

declare i8 @_ZNK4mlir10MemRefType19getStridesAndOffsetERN4llvm15SmallVectorImplIlEERl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_3x8611AMXTileType5parseERNS1_9AsmParserEE3$_0EES2_l"(ptr dead_on_unwind noalias writable sret(%"class.mlir::InFlightDiagnostic") align 8 %0, i64 noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = inttoptr i64 %1 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !718 ; 4 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !47, !noalias !719
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !719
  %i.e = tail call ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.val) #26, !noalias !719, !inline_history !716
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !719
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.f, align 8, !tbaa !62, !noalias !719
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !60, !noalias !719
  %i.h = load ptr, ptr %.val, align 8, !tbaa !47, !noalias !719
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !719
  call void %i.j(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(34) %2) #26, !inline_history !716
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !719
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

declare void @_ZN4mlir11RegionRangeC2EN4llvm8ArrayRefISt10unique_ptrINS_6RegionESt14default_deleteIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_(i64 noundef %0, ptr %1, ptr %2) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_(i64 noundef %0, ptr %1, ptr %2, ptr %3, ptr %4) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18InFlightDiagnosticC2EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !72
  %i.e = load i8, ptr %i.c, align 8, !tbaa !72, !range !73, !noundef !74
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNSt8optionalIN4mlir10DiagnosticEEC2EOS2_.exit.thread

_ZNSt8optionalIN4mlir10DiagnosticEEC2EOS2_.exit.thread: ; preds = %bb.a
  store i8 0, ptr %i.c, align 8, !tbaa !72
  br label %_ZNSt8optionalIN4mlir10DiagnosticEE5resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.g, ptr noundef nonnull align 8 dereferenceable(200) %i.b, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.h, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 4, ptr %i.k, align 4, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !110
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.n) ; 0 uses
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !720
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !720
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !228
  store ptr %i.u, ptr %i.s, align 8, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !721
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !721
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !225
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.d, ptr %i.ab, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.ac, align 8, !tbaa !110
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.ad, align 4, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !110
  %.not.i.i6.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i6.i.i.i.i.i.i.i.i, label %_ZNSt8optionalIN4mlir10DiagnosticEEC2EOS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ah = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) ; 0 uses
  br label %_ZNSt8optionalIN4mlir10DiagnosticEEC2EOS2_.exit

_ZNSt8optionalIN4mlir10DiagnosticEEC2EOS2_.exit:  ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i, %bb.d
  store i8 1, ptr %i.d, align 8, !tbaa !72
  %.pre = load i8, ptr %i.c, align 8, !tbaa !72, !range !73
  %i.ai = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.c, align 8, !tbaa !72
  br i1 %i.ai, label %bb.e, label %_ZNSt8optionalIN4mlir10DiagnosticEE5resetEv.exit

bb.e:                                             ; preds = %_ZNSt8optionalIN4mlir10DiagnosticEEC2EOS2_.exit
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.b) #26
  br label %_ZNSt8optionalIN4mlir10DiagnosticEE5resetEv.exit

_ZNSt8optionalIN4mlir10DiagnosticEE5resetEv.exit: ; preds = %_ZNSt8optionalIN4mlir10DiagnosticEEC2EOS2_.exit.thread, %_ZNSt8optionalIN4mlir10DiagnosticEEC2EOS2_.exit, %bb.e
  tail call void @_ZN4mlir18InFlightDiagnostic7abandonEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #26
  ret void
}

declare void @_ZN4mlir18InFlightDiagnostic7abandonEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !108    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #26
  %.pre = load ptr, ptr %1, align 8, !tbaa !108
  br label %_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !128
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !128
  store ptr %i.c, ptr %1, align 8, !tbaa !108
  store i32 0, ptr %i.k, align 4, !tbaa !109
  store i32 0, ptr %i.j, align 8, !tbaa !110
  br label %bb.p

bb.e:                                             ; preds = %bb.b
end_hunk_10
