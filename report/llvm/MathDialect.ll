Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MathDialect?download=true
inline.NumInlined: 20661
inline.NumDeleted: 9560
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !27

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.27, i64 49), i64 49) #18
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !27

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 45) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !27

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.29, i64 49), i64 49) #18
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !27

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 49), i64 43) #18
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, !prof !27

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 43) #18
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !27

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 33) #18
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, !prof !27

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 34) #18
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bi = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, !prof !27

bb.af:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i36 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i36, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bl = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 34) #18
  store ptr %i.bl, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, %bb.af, %bb.ag
  %.sroa.01.0.copyload.i.i.i35 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.ah, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, !prof !27

bb.ah:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i38 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i38, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 34) #18
  store ptr %i.bp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, %bb.ah, %bb.ai
  %.sroa.01.0.copyload.i.i.i37 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !27

bb.aj:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i40 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i40, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 40) #18
  store ptr %i.bt, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, %bb.aj, %bb.ak
  %.sroa.01.0.copyload.i.i.i39 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bu = insertelement <16 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bv = insertelement <16 x ptr> %i.bu, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bw = insertelement <16 x ptr> %i.bv, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bx = insertelement <16 x ptr> %i.bw, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.by = insertelement <16 x ptr> %i.bx, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bz = insertelement <16 x ptr> %i.by, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ca = insertelement <16 x ptr> %i.bz, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.cb = insertelement <16 x ptr> %i.ca, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.cc = insertelement <16 x ptr> %i.cb, ptr %.sroa.01.0.copyload.i.i.i21, i64 8
  %i.cd = insertelement <16 x ptr> %i.cc, ptr %.sroa.01.0.copyload.i.i.i23, i64 9
  %i.ce = insertelement <16 x ptr> %i.cd, ptr %.sroa.01.0.copyload.i.i.i25, i64 10
  %i.cf = insertelement <16 x ptr> %i.ce, ptr %.sroa.01.0.copyload.i.i.i27, i64 11
  %i.cg = insertelement <16 x ptr> %i.cf, ptr %.sroa.01.0.copyload.i.i.i29, i64 12
  %i.ch = insertelement <16 x ptr> %i.cg, ptr %.sroa.01.0.copyload.i.i.i31, i64 13
  %i.ci = insertelement <16 x ptr> %i.ch, ptr %.sroa.01.0.copyload.i.i.i33, i64 14
  %i.cj = insertelement <16 x ptr> %i.ci, ptr %.sroa.01.0.copyload.i.i.i35, i64 15
  %i.ck = insertelement <16 x ptr> poison, ptr %0, i64 0
  %i.cl = shufflevector <16 x ptr> %i.ck, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.cm = icmp eq <16 x ptr> %i.cj, %i.cl
  %i.cn = icmp eq ptr %.sroa.01.0.copyload.i.i.i37, %0
  %i.co = icmp eq ptr %.sroa.01.0.copyload.i.i.i39, %0
  %i.cp = freeze <16 x i1> %i.cm
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %i.cr = icmp ne i16 %i.cq, 0
  %.fr = freeze i1 %i.cn
  %op.rdx = or i1 %i.cr, %.fr
  %op.rdx60 = select i1 %op.rdx, i1 true, i1 %i.co
  ret i1 %op.rdx60
}

declare i8 @_ZN4mlir4math6AbsFOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = tail call i8 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #18, !inline_history !519
  ret i8 %i.b
}

declare void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math6AbsFOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_4math6AbsFOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_23VectorUnrollOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS2_12ScalarizableIS5_EENS2_12VectorizableIS5_EENS2_12TensorizableIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::math::AbsFOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #18
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #18
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir4math6AbsFOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef %0) #18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir4math6AbsFOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir4math6AbsFOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail24AbsFOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir4math6AbsFOp15setInherentAttrERNS0_6detail24AbsFOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir4math6AbsFOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail24AbsFOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math6AbsFOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math6AbsFOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail24AbsFOpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math6AbsFOp21setPropertiesFromAttrERNS0_6detail24AbsFOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir4math6AbsFOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24AbsFOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir4math6AbsFOp21computePropertiesHashERKNS0_6detail24AbsFOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math6AbsIOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #18, !inline_history !40
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.k) #18, !inline_history !40
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_4math6AbsIOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::math::AbsIOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::math::AbsIOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir4math6detail24AbsIOpGenericAdaptorBaseC2ENS0_6AbsIOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !43
  %i.b = call i64 @_ZN4mlir4math6AbsIOp4foldENS0_20AbsIOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::math::AbsIOpGenericAdaptor") align 8 %6) #18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !32
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !27

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.27, i64 49), i64 49) #18
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !27

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 45) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !27

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.29, i64 49), i64 49) #18
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !27

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 49), i64 43) #18
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, !prof !27

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 43) #18
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !27

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 33) #18
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, !prof !27

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 34) #18
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bi = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, !prof !27

bb.af:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i36 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i36, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bl = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 34) #18
  store ptr %i.bl, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, %bb.af, %bb.ag
  %.sroa.01.0.copyload.i.i.i35 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.ah, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, !prof !27

bb.ah:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i38 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i38, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 34) #18
  store ptr %i.bp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, %bb.ah, %bb.ai
  %.sroa.01.0.copyload.i.i.i37 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !27

bb.aj:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i40 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i40, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 40) #18
  store ptr %i.bt, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, %bb.aj, %bb.ak
  %.sroa.01.0.copyload.i.i.i39 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bu = insertelement <16 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bv = insertelement <16 x ptr> %i.bu, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bw = insertelement <16 x ptr> %i.bv, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bx = insertelement <16 x ptr> %i.bw, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.by = insertelement <16 x ptr> %i.bx, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bz = insertelement <16 x ptr> %i.by, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ca = insertelement <16 x ptr> %i.bz, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.cb = insertelement <16 x ptr> %i.ca, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.cc = insertelement <16 x ptr> %i.cb, ptr %.sroa.01.0.copyload.i.i.i21, i64 8
  %i.cd = insertelement <16 x ptr> %i.cc, ptr %.sroa.01.0.copyload.i.i.i23, i64 9
  %i.ce = insertelement <16 x ptr> %i.cd, ptr %.sroa.01.0.copyload.i.i.i25, i64 10
  %i.cf = insertelement <16 x ptr> %i.ce, ptr %.sroa.01.0.copyload.i.i.i27, i64 11
  %i.cg = insertelement <16 x ptr> %i.cf, ptr %.sroa.01.0.copyload.i.i.i29, i64 12
  %i.ch = insertelement <16 x ptr> %i.cg, ptr %.sroa.01.0.copyload.i.i.i31, i64 13
  %i.ci = insertelement <16 x ptr> %i.ch, ptr %.sroa.01.0.copyload.i.i.i33, i64 14
  %i.cj = insertelement <16 x ptr> %i.ci, ptr %.sroa.01.0.copyload.i.i.i35, i64 15
  %i.ck = insertelement <16 x ptr> poison, ptr %0, i64 0
  %i.cl = shufflevector <16 x ptr> %i.ck, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.cm = icmp eq <16 x ptr> %i.cj, %i.cl
  %i.cn = icmp eq ptr %.sroa.01.0.copyload.i.i.i37, %0
  %i.co = icmp eq ptr %.sroa.01.0.copyload.i.i.i39, %0
  %i.cp = freeze <16 x i1> %i.cm
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %i.cr = icmp ne i16 %i.cq, 0
  %.fr = freeze i1 %i.cn
  %op.rdx = or i1 %i.cr, %.fr
  %op.rdx60 = select i1 %op.rdx, i1 true, i1 %i.co
  ret i1 %op.rdx60
}

declare i8 @_ZN4mlir4math7Atan2Op5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir4math7Atan2Op5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_4math7Atan2OpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_23VectorUnrollOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS2_12ScalarizableIS5_EENS2_12VectorizableIS5_EENS2_12TensorizableIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::math::Atan2Op", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #18
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 2) #18
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir4math7Atan2Op20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef %0) #18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir4math7Atan2Op20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir4math7Atan2Op15getInherentAttrEPNS_11MLIRContextERKNS0_6detail25Atan2OpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math7Atan2Op15setInherentAttrERNS0_6detail25Atan2OpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir4math7Atan2Op21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail25Atan2OpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math7Atan2Op19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math7Atan2Op25populateDefaultPropertiesENS_13OperationNameERNS0_6detail25Atan2OpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math7Atan2Op21setPropertiesFromAttrERNS0_6detail25Atan2OpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir4math7Atan2Op19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail25Atan2OpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir4math7Atan2Op21computePropertiesHashERKNS0_6detail25Atan2OpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math6AtanOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #18, !inline_history !40
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.k) #18, !inline_history !40
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_4math6AtanOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::math::AtanOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::math::AtanOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir4math6detail24AtanOpGenericAdaptorBaseC2ENS0_6AtanOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !43
  %i.b = call i64 @_ZN4mlir4math6AtanOp4foldENS0_20AtanOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::math::AtanOpGenericAdaptor") align 8 %6) #18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !32
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math6AtanOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_4math6AtanOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math6AtanOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir4math6AtanOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !45
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj3EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !27

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.27, i64 49), i64 49) #18
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !27

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 45) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !27

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.29, i64 49), i64 49) #18
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !27

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 49), i64 43) #18
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, !prof !27

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 43) #18
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !27

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 33) #18
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, !prof !27

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 34) #18
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bi = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, !prof !27

bb.af:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i36 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i36, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bl = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 34) #18
  store ptr %i.bl, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, %bb.af, %bb.ag
  %.sroa.01.0.copyload.i.i.i35 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.ah, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, !prof !27

bb.ah:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i38 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i38, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 34) #18
  store ptr %i.bp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, %bb.ah, %bb.ai
  %.sroa.01.0.copyload.i.i.i37 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !27

bb.aj:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i40 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i40, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 40) #18
  store ptr %i.bt, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, %bb.aj, %bb.ak
  %.sroa.01.0.copyload.i.i.i39 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bu = insertelement <16 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bv = insertelement <16 x ptr> %i.bu, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bw = insertelement <16 x ptr> %i.bv, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bx = insertelement <16 x ptr> %i.bw, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.by = insertelement <16 x ptr> %i.bx, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bz = insertelement <16 x ptr> %i.by, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ca = insertelement <16 x ptr> %i.bz, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.cb = insertelement <16 x ptr> %i.ca, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.cc = insertelement <16 x ptr> %i.cb, ptr %.sroa.01.0.copyload.i.i.i21, i64 8
  %i.cd = insertelement <16 x ptr> %i.cc, ptr %.sroa.01.0.copyload.i.i.i23, i64 9
  %i.ce = insertelement <16 x ptr> %i.cd, ptr %.sroa.01.0.copyload.i.i.i25, i64 10
  %i.cf = insertelement <16 x ptr> %i.ce, ptr %.sroa.01.0.copyload.i.i.i27, i64 11
  %i.cg = insertelement <16 x ptr> %i.cf, ptr %.sroa.01.0.copyload.i.i.i29, i64 12
  %i.ch = insertelement <16 x ptr> %i.cg, ptr %.sroa.01.0.copyload.i.i.i31, i64 13
  %i.ci = insertelement <16 x ptr> %i.ch, ptr %.sroa.01.0.copyload.i.i.i33, i64 14
  %i.cj = insertelement <16 x ptr> %i.ci, ptr %.sroa.01.0.copyload.i.i.i35, i64 15
  %i.ck = insertelement <16 x ptr> poison, ptr %0, i64 0
  %i.cl = shufflevector <16 x ptr> %i.ck, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.cm = icmp eq <16 x ptr> %i.cj, %i.cl
  %i.cn = icmp eq ptr %.sroa.01.0.copyload.i.i.i37, %0
  %i.co = icmp eq ptr %.sroa.01.0.copyload.i.i.i39, %0
  %i.cp = freeze <16 x i1> %i.cm
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %i.cr = icmp ne i16 %i.cq, 0
  %.fr = freeze i1 %i.cn
  %op.rdx = or i1 %i.cr, %.fr
  %op.rdx60 = select i1 %op.rdx, i1 true, i1 %i.co
  ret i1 %op.rdx60
}

declare i8 @_ZN4mlir4math8ClampFOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir4math8ClampFOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_4math8ClampFOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj3EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_23VectorUnrollOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS2_12ScalarizableIS5_EENS2_12VectorizableIS5_EENS2_12TensorizableIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::math::ClampFOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #18
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 3) #18
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir4math8ClampFOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef %0) #18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir4math8ClampFOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir4math8ClampFOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail26ClampFOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math8ClampFOp15setInherentAttrERNS0_6detail26ClampFOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir4math8ClampFOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail26ClampFOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math8ClampFOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math8ClampFOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail26ClampFOpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math8ClampFOp21setPropertiesFromAttrERNS0_6detail26ClampFOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir4math8ClampFOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail26ClampFOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir4math8ClampFOp21computePropertiesHashERKNS0_6detail26ClampFOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math10CopySignOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #18, !inline_history !40
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.k) #18, !inline_history !40
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_4math10CopySignOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::math::CopySignOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::math::CopySignOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir4math6detail28CopySignOpGenericAdaptorBaseC2ENS0_10CopySignOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !43
  %i.b = call i64 @_ZN4mlir4math10CopySignOp4foldENS0_24CopySignOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::math::CopySignOpGenericAdaptor") align 8 %6) #18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !32
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math10CopySignOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_4math10CopySignOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math10CopySignOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir4math10CopySignOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !45
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math10CopySignOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_26SameOperandsAndResultShapeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait26SameOperandsAndResultShapeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait26SameOperandsAndResultShapeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait26SameOperandsAndResultShapeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !27

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.27, i64 49), i64 49) #18
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !27

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 45) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !27

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.29, i64 49), i64 49) #18
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !27

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 49), i64 43) #18
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, !prof !27

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 43) #18
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !27

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 33) #18
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, !prof !27

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 34) #18
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bi = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, !prof !27

bb.af:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i36 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i36, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bl = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 34) #18
  store ptr %i.bl, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, %bb.af, %bb.ag
  %.sroa.01.0.copyload.i.i.i35 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.ah, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, !prof !27

bb.ah:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i38 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i38, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 34) #18
  store ptr %i.bp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, %bb.ah, %bb.ai
  %.sroa.01.0.copyload.i.i.i37 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !27

bb.aj:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i40 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i40, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 40) #18
  store ptr %i.bt, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, %bb.aj, %bb.ak
  %.sroa.01.0.copyload.i.i.i39 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bu = insertelement <16 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bv = insertelement <16 x ptr> %i.bu, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bw = insertelement <16 x ptr> %i.bv, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bx = insertelement <16 x ptr> %i.bw, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.by = insertelement <16 x ptr> %i.bx, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bz = insertelement <16 x ptr> %i.by, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ca = insertelement <16 x ptr> %i.bz, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.cb = insertelement <16 x ptr> %i.ca, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.cc = insertelement <16 x ptr> %i.cb, ptr %.sroa.01.0.copyload.i.i.i21, i64 8
  %i.cd = insertelement <16 x ptr> %i.cc, ptr %.sroa.01.0.copyload.i.i.i23, i64 9
  %i.ce = insertelement <16 x ptr> %i.cd, ptr %.sroa.01.0.copyload.i.i.i25, i64 10
  %i.cf = insertelement <16 x ptr> %i.ce, ptr %.sroa.01.0.copyload.i.i.i27, i64 11
  %i.cg = insertelement <16 x ptr> %i.cf, ptr %.sroa.01.0.copyload.i.i.i29, i64 12
  %i.ch = insertelement <16 x ptr> %i.cg, ptr %.sroa.01.0.copyload.i.i.i31, i64 13
  %i.ci = insertelement <16 x ptr> %i.ch, ptr %.sroa.01.0.copyload.i.i.i33, i64 14
  %i.cj = insertelement <16 x ptr> %i.ci, ptr %.sroa.01.0.copyload.i.i.i35, i64 15
  %i.ck = insertelement <16 x ptr> poison, ptr %0, i64 0
  %i.cl = shufflevector <16 x ptr> %i.ck, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.cm = icmp eq <16 x ptr> %i.cj, %i.cl
  %i.cn = icmp eq ptr %.sroa.01.0.copyload.i.i.i37, %0
  %i.co = icmp eq ptr %.sroa.01.0.copyload.i.i.i39, %0
  %i.cp = freeze <16 x i1> %i.cm
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %i.cr = icmp ne i16 %i.cq, 0
  %.fr = freeze i1 %i.cn
  %op.rdx = or i1 %i.cr, %.fr
  %op.rdx60 = select i1 %op.rdx, i1 true, i1 %i.co
  ret i1 %op.rdx60
}

declare i8 @_ZN4mlir4math7FPowIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir4math7FPowIOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_4math7FPowIOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_26SameOperandsAndResultShapeIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_23VectorUnrollOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS2_12ScalarizableIS5_EENS2_12VectorizableIS5_EENS2_12TensorizableIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::math::FPowIOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #18
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 2) #18
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir4math7FPowIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl32verifySameOperandsAndResultShapeEPNS_9OperationE(ptr noundef %0) #18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir4math7FPowIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl32verifySameOperandsAndResultShapeEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir4math7FPowIOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail25FPowIOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math7FPowIOp15setInherentAttrERNS0_6detail25FPowIOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir4math7FPowIOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail25FPowIOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math7FPowIOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math7FPowIOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail25FPowIOpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math7FPowIOp21setPropertiesFromAttrERNS0_6detail25FPowIOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir4math7FPowIOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail25FPowIOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir4math7FPowIOp21computePropertiesHashERKNS0_6detail25FPowIOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math7FloorOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #18, !inline_history !40
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.k) #18, !inline_history !40
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_4math7FloorOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::math::FloorOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::math::FloorOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir4math6detail25FloorOpGenericAdaptorBaseC2ENS0_7FloorOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !43
  %i.b = call i64 @_ZN4mlir4math7FloorOp4foldENS0_21FloorOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::math::FloorOpGenericAdaptor") align 8 %6) #18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !32
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math7FloorOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_4math7FloorOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math7FloorOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir4math7FloorOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !45
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_3
begin_hunk_4_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj3EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_5arith26ArithRoundingModeInterface5TraitENS2_25SameOperandsAndResultTypeENSG_22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith26ArithRoundingModeInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !27

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.27, i64 49), i64 49) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !27

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 45) #18
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !27

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.29, i64 49), i64 49) #18
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !27

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 49), i64 43) #18
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, !prof !27

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 43) #18
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !27

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 33) #18
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bi = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, !prof !27

bb.af:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i36 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i36, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bl = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 34) #18
  store ptr %i.bl, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.af, %bb.ag
  %.sroa.01.0.copyload.i.i.i35 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.ah, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, !prof !27

bb.ah:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i38 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i38, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 34) #18
  store ptr %i.bp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, %bb.ah, %bb.ai
  %.sroa.01.0.copyload.i.i.i37 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, !prof !27

bb.aj:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i40 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i40, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 34) #18
  store ptr %i.bt, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, %bb.aj, %bb.ak
  %.sroa.01.0.copyload.i.i.i39 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bu = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.al, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !27

bb.al:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit
  %i.bw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i42 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i42, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bx = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 40) #18
  store ptr %i.bx, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, %bb.al, %bb.am
  %.sroa.01.0.copyload.i.i.i41 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.by = insertelement <16 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bz = insertelement <16 x ptr> %i.by, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.ca = insertelement <16 x ptr> %i.bz, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.cb = insertelement <16 x ptr> %i.ca, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.cc = insertelement <16 x ptr> %i.cb, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.cd = insertelement <16 x ptr> %i.cc, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ce = insertelement <16 x ptr> %i.cd, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.cf = insertelement <16 x ptr> %i.ce, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.cg = insertelement <16 x ptr> %i.cf, ptr %.sroa.01.0.copyload.i.i.i21, i64 8
  %i.ch = insertelement <16 x ptr> %i.cg, ptr %.sroa.01.0.copyload.i.i.i23, i64 9
  %i.ci = insertelement <16 x ptr> %i.ch, ptr %.sroa.01.0.copyload.i.i.i25, i64 10
  %i.cj = insertelement <16 x ptr> %i.ci, ptr %.sroa.01.0.copyload.i.i.i27, i64 11
  %i.ck = insertelement <16 x ptr> %i.cj, ptr %.sroa.01.0.copyload.i.i.i29, i64 12
  %i.cl = insertelement <16 x ptr> %i.ck, ptr %.sroa.01.0.copyload.i.i.i31, i64 13
  %i.cm = insertelement <16 x ptr> %i.cl, ptr %.sroa.01.0.copyload.i.i.i33, i64 14
  %i.cn = insertelement <16 x ptr> %i.cm, ptr %.sroa.01.0.copyload.i.i.i35, i64 15
  %i.co = insertelement <16 x ptr> poison, ptr %0, i64 0
  %i.cp = shufflevector <16 x ptr> %i.co, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.cq = icmp eq <16 x ptr> %i.cn, %i.cp
  %i.cr = icmp eq ptr %.sroa.01.0.copyload.i.i.i37, %0
  %i.cs = icmp eq ptr %.sroa.01.0.copyload.i.i.i39, %0
  %i.ct = icmp eq ptr %.sroa.01.0.copyload.i.i.i41, %0
  %i.cu = freeze <16 x i1> %i.cq
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = icmp ne i16 %i.cv, 0
  %.fr = freeze i1 %i.cr
  %op.rdx = or i1 %i.cw, %.fr
  %1 = freeze i1 %i.cs
  %2 = or i1 %op.rdx, %1
  %op.rdx64 = select i1 %2, i1 true, i1 %i.ct
  ret i1 %op.rdx64
}

declare i8 @_ZN4mlir4math5FmaOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir4math5FmaOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_4math5FmaOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_4TypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj3EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_5arith26ArithRoundingModeInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENSP_22ArithFastMathInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_23VectorUnrollOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS2_12ScalarizableIS5_EENS2_12VectorizableIS5_EENS2_12TensorizableIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::math::FmaOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #18
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 3) #18
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir4math5FmaOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef %0) #18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.m, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir4math5FmaOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir4math5FmaOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail23FmaOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math5FmaOp15setInherentAttrERNS0_6detail23FmaOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir4math5FmaOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail23FmaOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math5FmaOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math5FmaOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail23FmaOpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math5FmaOp21setPropertiesFromAttrERNS0_6detail23FmaOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir4math5FmaOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail23FmaOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i64 @_ZN4mlir4math5FmaOp21computePropertiesHashERKNS0_6detail23FmaOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math7IPowIOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #18, !inline_history !40
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.k) #18, !inline_history !40
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_4math7IPowIOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::math::IPowIOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::math::IPowIOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir4math6detail25IPowIOpGenericAdaptorBaseC2ENS0_7IPowIOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !43
  %i.b = call i64 @_ZN4mlir4math7IPowIOp4foldENS0_21IPowIOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::math::IPowIOpGenericAdaptor") align 8 %6) #18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !32
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math7IPowIOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_4math7IPowIOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS2_25SameOperandsAndResultTypeENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math7IPowIOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir4math7IPowIOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !45
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math7IPowIOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
end_hunk_4
begin_hunk_5_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_8NResultsILj2EE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitENS_16OpAsmOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !27

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 49), i64 45) #18
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !27

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.29, i64 49), i64 49) #18
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !27

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 49), i64 43) #18
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, !prof !27

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 43) #18
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23VectorUnrollOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !27

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 33) #18
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23VectorUnrollOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, !prof !27

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 34) #18
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ScalarizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, !prof !27

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 34) #18
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ScalarizableEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12VectorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bi = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, !prof !27

bb.af:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i36 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i36, label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bl = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 34) #18
  store ptr %i.bl, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12VectorizableEEES0_v.exit, %bb.af, %bb.ag
  %.sroa.01.0.copyload.i.i.i35 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12TensorizableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.ah, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !27

bb.ah:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i38 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i38, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 40) #18
  store ptr %i.bp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12TensorizableEEES0_v.exit, %bb.ah, %bb.ai
  %.sroa.01.0.copyload.i.i.i37 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !27

bb.aj:                                            ; preds = %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  %.not.i.i.i40 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i40, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bt = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.87, i64 49), i64 36) #18
  store ptr %i.bt, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #18
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, %bb.aj, %bb.ak
  %.sroa.01.0.copyload.i.i.i39 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !28
  %i.bu = insertelement <16 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bv = insertelement <16 x ptr> %i.bu, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bw = insertelement <16 x ptr> %i.bv, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bx = insertelement <16 x ptr> %i.bw, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.by = insertelement <16 x ptr> %i.bx, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bz = insertelement <16 x ptr> %i.by, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ca = insertelement <16 x ptr> %i.bz, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.cb = insertelement <16 x ptr> %i.ca, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.cc = insertelement <16 x ptr> %i.cb, ptr %.sroa.01.0.copyload.i.i.i21, i64 8
  %i.cd = insertelement <16 x ptr> %i.cc, ptr %.sroa.01.0.copyload.i.i.i23, i64 9
  %i.ce = insertelement <16 x ptr> %i.cd, ptr %.sroa.01.0.copyload.i.i.i25, i64 10
  %i.cf = insertelement <16 x ptr> %i.ce, ptr %.sroa.01.0.copyload.i.i.i27, i64 11
  %i.cg = insertelement <16 x ptr> %i.cf, ptr %.sroa.01.0.copyload.i.i.i29, i64 12
  %i.ch = insertelement <16 x ptr> %i.cg, ptr %.sroa.01.0.copyload.i.i.i31, i64 13
  %i.ci = insertelement <16 x ptr> %i.ch, ptr %.sroa.01.0.copyload.i.i.i33, i64 14
  %i.cj = insertelement <16 x ptr> %i.ci, ptr %.sroa.01.0.copyload.i.i.i35, i64 15
  %i.ck = insertelement <16 x ptr> poison, ptr %0, i64 0
  %i.cl = shufflevector <16 x ptr> %i.ck, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.cm = icmp eq <16 x ptr> %i.cj, %i.cl
  %i.cn = icmp eq ptr %.sroa.01.0.copyload.i.i.i37, %0
  %i.co = icmp eq ptr %.sroa.01.0.copyload.i.i.i39, %0
  %i.cp = freeze <16 x i1> %i.cm
  %i.cq = bitcast <16 x i1> %i.cp to i16
  %i.cr = icmp ne i16 %i.cq, 0
  %.fr = freeze i1 %i.cn
  %op.rdx = or i1 %i.cr, %.fr
  %op.rdx60 = select i1 %op.rdx, i1 true, i1 %i.co
  ret i1 %op.rdx60
}

declare i8 @_ZN4mlir4math8SincosOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir4math8SincosOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_4math8SincosOpEEENS2_8NResultsILj2EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_23VectorUnrollOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS2_12ScalarizableIS5_EENS2_12VectorizableIS5_EENS2_12TensorizableIS5_EENS_20InferTypeOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::math::SincosOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #18
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl14verifyNResultsEPNS_9OperationEj(ptr noundef %0, i32 noundef 2) #18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #18
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir4math8SincosOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef %0) #18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.f, %bb.e, %bb.c, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7OpTrait4impl14verifyNResultsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir4math8SincosOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir4math8SincosOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail26SincosOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math8SincosOp15setInherentAttrERNS0_6detail26SincosOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir4math8SincosOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail26SincosOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math8SincosOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir4math8SincosOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail26SincosOpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir4math8SincosOp21setPropertiesFromAttrERNS0_6detail26SincosOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir4math8SincosOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail26SincosOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir4math8SincosOp21computePropertiesHashERKNS0_6detail26SincosOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math6SinhOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #18, !inline_history !40
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  tail call void @free(ptr noundef %i.k) #18, !inline_history !40
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_4math6SinhOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::math::SinhOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::math::SinhOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir4math6detail24SinhOpGenericAdaptorBaseC2ENS0_6SinhOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !43
  %i.b = call i64 @_ZN4mlir4math6SinhOp4foldENS0_20SinhOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::math::SinhOpGenericAdaptor") align 8 %6) #18 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !32
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !32
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math6SinhOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_4math6SinhOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_5arith22ArithFastMathInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_23VectorUnrollOpInterface5TraitENS2_11ElementwiseENS2_12ScalarizableENS2_12VectorizableENS2_12TensorizableENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_4math6SinhOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir4math6SinhOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !45
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_5
