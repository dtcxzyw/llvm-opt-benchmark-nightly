Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MLProgramDialect?download=true
inline.NumInlined: 5395
inline.NumDeleted: 2779
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS2_10ReturnLikeENS2_12IsTerminatorEEEEbNS_6TypeIDE:bb.a

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !15

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 49) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !15

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.74, i64 49), i64 43) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, !prof !15

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.95, i64 49), i64 53) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, !prof !15

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 32) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, !prof !15

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 34) #19
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
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
  %i.bo = freeze i1 %i.bi
  %i.bp = or i1 %op.rdx, %i.bo
  %.fr45 = freeze i1 %i.bj
  %op.rdx43 = or i1 %i.bp, %.fr45
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

declare i8 @_ZN4mlir10ml_program8OutputOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir10ml_program8OutputOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir2OpINS_10ml_program8OutputOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_10SubgraphOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::ml_program::OutputOp", align 8 ; 4 uses
  %2 = alloca %"class.mlir::ml_program::OutputOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplINS2_8OutputOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir10ml_program8OutputOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br label %bb.g

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl18verifyIsTerminatorEPNS_9OperationE(ptr noundef %0) #19
  %i.l = trunc nuw i8 %i.k to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  store ptr %0, ptr %2, align 8
  %i.m = call i8 @_ZN4mlir10ml_program8OutputOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread, %bb.f, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.n = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.m, %bb.f ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i8 %i.n
}

declare i8 @_ZN4mlir10ml_program8OutputOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplINS2_8OutputOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 19 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program10SubgraphOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program10SubgraphOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %7, %i.g
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.k, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread: ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #19
  %i.j = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 3, ptr %4, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.98, ptr %i.l, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %.not.i.i.i.i.i = icmp ult i32 %i.n, %i.p
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !83

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = zext i32 %i.n to i64
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.t = load i32, ptr %i.m, align 8, !tbaa !81
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.m, align 8, !tbaa !81
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pr = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !76
  store ptr @.str.99, ptr %3, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.x, align 8, !tbaa !75
  %i.y = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.pr14 = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i5 = icmp eq ptr %.pr14, null
  br i1 %.not.i.i5, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 6, ptr %i.z, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !76
  store ptr @.str.101, ptr %2, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 19, ptr %i.ab, align 8, !tbaa !85
  %i.ac = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !42
  %i.ad = icmp eq ptr %.pre, null
  br i1 %i.ad, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 3, ptr %1, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.99, ptr %i.af, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !81 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !82
  %.not.i.i.i.i.i8 = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i8, label %bb.g, label %bb.f, !prof !83

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = zext i32 %i.ah to i64
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !81
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !81
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i
  %i.ap = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #19
  %i.aq = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !43, !range !44, !noundef !45
  %i.at = trunc nuw i8 %i.as to i1
  store i8 0, ptr %i.ar, align 8, !tbaa !43
  br i1 %i.at, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.au) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.ap, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit ]
  ret i8 %.sroa.02.0
}

declare void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare i8 @_ZN4mlir10ml_program8OutputOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl18verifyIsTerminatorEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8ReturnOpEEC2EPNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84, !alias.scope !428
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !81, !alias.scope !428
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 3, ptr %i.c, align 4, !tbaa !82, !alias.scope !428
  %i.d = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #22 ; 2 uses
  store ptr @_ZN4mlir6detail40ConditionallySpeculatableInterfaceTraits5ModelINS_10ml_program8ReturnOpEE18getSpeculatabilityEPKNS1_7ConceptEPNS_9OperationE, ptr %i.d, align 8, !tbaa !209
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatableEvE13resolveTypeIDEvE2id acquire, align 8, !noalias !428
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4mlir2OpINS_10ml_program8ReturnOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_6FuncOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE15getInterfaceMapEv.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatableEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir2OpINS_10ml_program8ReturnOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_6FuncOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE15getInterfaceMapEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.64, i64 49), i64 31) #19
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatableEvE13resolveTypeIDEvE2id, align 8, !noalias !428
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatableEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir2OpINS_10ml_program8ReturnOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_6FuncOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE15getInterfaceMapEv.exit

_ZN4mlir2OpINS_10ml_program8ReturnOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_6FuncOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE15getInterfaceMapEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatableEvE13resolveTypeIDEvE2id, align 8, !tbaa !18, !noalias !428
  call void @_ZN4mlir6detail12InterfaceMap6insertENS_6TypeIDEPv(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.d) #19
  call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_23MemoryEffectOpInterface5TraitINS_10ml_program8ReturnOpEEENS_33RegionBranchTerminatorOpInterface5TraitIS6_EEJNS_7OpTrait10ReturnLikeIS6_EENSB_12IsTerminatorIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nonnull @.str.103, i64 17, ptr noundef %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_10ml_program8ReturnOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %2) #19
  %i.i = load ptr, ptr %2, align 8, !tbaa !84     ; 3 uses
  %i.j = load i32, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.j, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !84
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN4mlir2OpINS_10ml_program8ReturnOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_6FuncOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE15getInterfaceMapEv.exit
  %i.m = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.i, %_ZN4mlir2OpINS_10ml_program8ReturnOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_6FuncOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE15getInterfaceMapEv.exit ] ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZN4mlir6detail12InterfaceMapD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_9HasParentIJNS_10ml_program6FuncOpEEE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS2_10ReturnLikeENS2_12IsTerminatorEEEEbNS_6TypeIDE:bb.a

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !15

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 49) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !15

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.74, i64 49), i64 43) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, !prof !15

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.95, i64 49), i64 53) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, !prof !15

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 32) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, !prof !15

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 34) #19
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
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
  %i.bo = freeze i1 %i.bi
  %i.bp = or i1 %op.rdx, %i.bo
  %.fr45 = freeze i1 %i.bj
  %op.rdx43 = or i1 %i.bp, %.fr45
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

declare i8 @_ZN4mlir10ml_program8ReturnOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir10ml_program8ReturnOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir2OpINS_10ml_program8ReturnOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_6FuncOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::ml_program::ReturnOp", align 8 ; 4 uses
  %2 = alloca %"class.mlir::ml_program::ReturnOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplINS2_8ReturnOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir10ml_program8ReturnOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br label %bb.g

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl18verifyIsTerminatorEPNS_9OperationE(ptr noundef %0) #19
  %i.l = trunc nuw i8 %i.k to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  store ptr %0, ptr %2, align 8
  %i.m = call i8 @_ZN4mlir10ml_program8ReturnOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread, %bb.f, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.n = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.m, %bb.f ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i8 %i.n
}

declare i8 @_ZN4mlir10ml_program8ReturnOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplINS2_8ReturnOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 19 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program6FuncOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program6FuncOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %7, %i.g
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.k, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread: ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #19
  %i.j = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 3, ptr %4, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.98, ptr %i.l, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %.not.i.i.i.i.i = icmp ult i32 %i.n, %i.p
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !83

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = zext i32 %i.n to i64
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.t = load i32, ptr %i.m, align 8, !tbaa !81
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.m, align 8, !tbaa !81
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pr = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !76
  store ptr @.str.99, ptr %3, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.x, align 8, !tbaa !75
  %i.y = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.pr14 = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i5 = icmp eq ptr %.pr14, null
  br i1 %.not.i.i5, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 6, ptr %i.z, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !76
  store ptr @.str.22, ptr %2, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 15, ptr %i.ab, align 8, !tbaa !85
  %i.ac = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !42
  %i.ad = icmp eq ptr %.pre, null
  br i1 %i.ad, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 3, ptr %1, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.99, ptr %i.af, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !81 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !82
  %.not.i.i.i.i.i8 = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i8, label %bb.g, label %bb.f, !prof !83

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = zext i32 %i.ah to i64
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !81
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !81
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i
  %i.ap = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #19
  %i.aq = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !43, !range !44, !noundef !45
  %i.at = trunc nuw i8 %i.as to i1
  store i8 0, ptr %i.ar, align 8, !tbaa !43
  br i1 %i.at, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.au) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.02.0 = phi i8 [ %i.ap, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit ]
  ret i8 %.sroa.02.0
}

declare i8 @_ZN4mlir10ml_program8ReturnOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program10SubgraphOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !84
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #19, !inline_history !132
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.k) #19, !inline_history !132
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program10SubgraphOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program10SubgraphOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program10SubgraphOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
end_hunk_1
