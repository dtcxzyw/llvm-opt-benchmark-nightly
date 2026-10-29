Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmSSADialect?download=true
inline.NumInlined: 20223
inline.NumDeleted: 10192
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4mlir7wasmssa6detail32ImportOpInterfaceInterfaceTraits5ModelINS0_12FuncImportOpEE22getQualifiedImportNameB5cxx11EPKNS2_7ConceptEPNS_9OperationE:_ZN4llvmplERKNS_5TwineES2_.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare { ptr, i64 } @_ZN4mlir7wasmssa12FuncImportOp13getModuleNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4mlir7wasmssa12FuncImportOp13getImportNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_7wasmssa17ImportOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !130

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 33) #19
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, !prof !130

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 49), i64 33) #19
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !130

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 36) #19
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !130

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.70, i64 49), i64 34) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !130

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 34) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !130

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 49), i64 39) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, !prof !130

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 49), i64 37) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, !prof !130

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.101, i64 49), i64 48) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, !prof !130

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 49), i64 39) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7wasmssa17ImportOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7wasmssa17ImportOpInterface5TraitEEES0_v.exit, !prof !130

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7wasmssa17ImportOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7wasmssa17ImportOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.103, i64 49), i64 46) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7wasmssa17ImportOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7wasmssa17ImportOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7wasmssa17ImportOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7wasmssa17ImportOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7wasmssa17ImportOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
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

declare i8 @_ZN4mlir7wasmssa12FuncImportOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir7wasmssa12FuncImportOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir7wasmssa12FuncImportOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_7wasmssa12FuncImportOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::wasmssa::FuncImportOp", align 8 ; 5 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.a = tail call i8 @_ZN4mlir6detail12verifySymbolEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !201
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !22
  store ptr @.str.105, ptr %3, align 8, !tbaa !23
  store i8 3, ptr %i.e, align 8, !tbaa !24
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #19
  %i.g = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  %i.h = load ptr, ptr %2, align 8, !tbaa !34
  %.not.i10 = icmp eq ptr %i.h, null
  br i1 %.not.i10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !35, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 8, !tbaa !35
  br i1 %i.k, label %bb.f, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.l) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

_ZN4mlir18InFlightDiagnosticD2Ev.exit11:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159  ; 2 uses
  %.not.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i12, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.g
  %i.o = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #19 ; 2 uses
  %.not9 = icmp eq ptr %i.o, null
  br i1 %.not9, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.p = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, !prof !130

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.107, i64 49), i64 33) #19
  store ptr %i.s, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr %.sroa.01.0.copyload.i.i.i.i.i) #19, !inline_history !7
  br i1 %i.y, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !165
  %.not16 = icmp eq ptr %i.aa, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not16, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !22
  store ptr @.str.106, ptr %5, align 8, !tbaa !23
  store i8 3, ptr %i.ab, align 8, !tbaa !24
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #19
  %i.ad = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #19
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

_ZN4mlir9Operation11getParentOpEv.exit.thread:    ; preds = %bb.g, %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, %bb.k, %bb.a, %bb.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11
  %.sroa.08.1 = phi i8 [ %i.ad, %bb.l ], [ %i.g, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11 ], [ 0, %bb.a ], [ 1, %_ZN4mlir9Operation11getParentOpEv.exit ], [ 1, %bb.k ], [ 1, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i8 %.sroa.08.1
}

declare i8 @_ZN4mlir6detail12verifySymbolEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir7wasmssa12FuncImportOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail30FuncImportOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7wasmssa12FuncImportOp15setInherentAttrERNS0_6detail30FuncImportOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir7wasmssa12FuncImportOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail30FuncImportOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir7wasmssa12FuncImportOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir7wasmssa12FuncImportOp21setPropertiesFromAttrERNS0_6detail30FuncImportOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa12FuncImportOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail30FuncImportOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare i64 @_ZN4mlir7wasmssa12FuncImportOp21computePropertiesHashERKNS0_6detail30FuncImportOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7wasmssa6FuncOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !18
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
  tail call void @free(ptr noundef %i.g) #19, !inline_history !131
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
  tail call void @free(ptr noundef %i.k) #19, !inline_history !131
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7wasmssa6FuncOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7wasmssa6FuncOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_11AffineScopeENS2_24AutomaticAllocationScopeENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_19FunctionOpInterface5TraitENS2_19IsIsolatedFromAboveEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 36) #19
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !130

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.70, i64 49), i64 34) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !130

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 34) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !130

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 49), i64 39) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit, !prof !130

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 33) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, !prof !130

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.116, i64 49), i64 46) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, !prof !130

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 49), i64 37) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, !prof !130

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.101, i64 49), i64 48) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, !prof !130

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.102, i64 49), i64 39) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, !prof !130

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.117, i64 49), i64 39) #19
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, !prof !130

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 49), i64 41) #19
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
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

declare i8 @_ZN4mlir7wasmssa6FuncOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir7wasmssa6FuncOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_7wasmssa6FuncOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_12ZeroOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_11AffineScopeIS5_EENS2_24AutomaticAllocationScopeIS5_EENS_17SymbolOpInterface5TraitIS5_EENS_28ArgAndResultAttrsOpInterface5TraitIS5_EENS_19CallableOpInterface5TraitIS5_EENS_19FunctionOpInterface5TraitIS5_EENS2_19IsIsolatedFromAboveIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::wasmssa::FuncOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef %0) #19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir7wasmssa6FuncOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_7wasmssa6FuncOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir23function_interface_impl11verifyTraitINS_7wasmssa6FuncOpEEEN4llvm13LogicalResultET_(ptr %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.f, %bb.e, %bb.c, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7wasmssa6FuncOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_7wasmssa6FuncOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::wasmssa::FuncOp", align 8 ; 5 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.a = tail call i8 @_ZN4mlir6detail12verifySymbolEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !201
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !22
  store ptr @.str.105, ptr %3, align 8, !tbaa !23
  store i8 3, ptr %i.e, align 8, !tbaa !24
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #19
  %i.g = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  %i.h = load ptr, ptr %2, align 8, !tbaa !34
  %.not.i10 = icmp eq ptr %i.h, null
  br i1 %.not.i10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !35, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 8, !tbaa !35
  br i1 %i.k, label %bb.f, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.l) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

_ZN4mlir18InFlightDiagnosticD2Ev.exit11:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159  ; 2 uses
  %.not.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i12, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.g
  %i.o = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #19 ; 2 uses
  %.not9 = icmp eq ptr %i.o, null
  br i1 %.not9, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.p = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, !prof !130

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.107, i64 49), i64 33) #19
  store ptr %i.s, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr %.sroa.01.0.copyload.i.i.i.i.i) #19, !inline_history !7
  br i1 %i.y, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !165
  %.not16 = icmp eq ptr %i.aa, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not16, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !22
  store ptr @.str.106, ptr %5, align 8, !tbaa !23
  store i8 3, ptr %i.ab, align 8, !tbaa !24
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #19
  %i.ad = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #19
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

_ZN4mlir9Operation11getParentOpEv.exit.thread:    ; preds = %bb.g, %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, %bb.k, %bb.a, %bb.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11
  %.sroa.08.1 = phi i8 [ %i.ad, %bb.l ], [ %i.g, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11 ], [ 0, %bb.a ], [ 1, %_ZN4mlir9Operation11getParentOpEv.exit ], [ 1, %bb.k ], [ 1, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i8 %.sroa.08.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir23function_interface_impl11verifyTraitINS_7wasmssa6FuncOpEEEN4llvm13LogicalResultET_(ptr %0) local_unnamed_addr #0 comdat {
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
  %13 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %14 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %15 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %16 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %17 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %18 = alloca %"class.mlir::wasmssa::FuncOp", align 8 ; 15 uses
  %19 = alloca %"class.mlir::ArrayAttr", align 8  ; 9 uses
  %20 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %22 = alloca %"class.mlir::DictionaryAttr", align 8 ; 7 uses
  %23 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 17 uses
end_hunk_1
begin_hunk_2_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_11AffineScopeENS2_24AutomaticAllocationScopeENS2_19IsIsolatedFromAboveENS_17SymbolOpInterface5TraitENS_7wasmssa36ConstantExpressionInitializerOpTraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.53, i64 49), i64 31) #19
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, !prof !130

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 49), i64 33) #19
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !130

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 36) #19
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !130

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.70, i64 49), i64 34) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !130

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 34) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !130

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 49), i64 39) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit, !prof !130

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 33) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, !prof !130

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.116, i64 49), i64 46) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11AffineScopeEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AutomaticAllocationScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, !prof !130

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 49), i64 41) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AutomaticAllocationScopeEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, !prof !130

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.100, i64 49), i64 37) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7wasmssa36ConstantExpressionInitializerOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7wasmssa36ConstantExpressionInitializerOpTraitEEES0_v.exit, !prof !130

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7wasmssa36ConstantExpressionInitializerOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7wasmssa36ConstantExpressionInitializerOpTraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.139, i64 49), i64 58) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7wasmssa36ConstantExpressionInitializerOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7wasmssa36ConstantExpressionInitializerOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7wasmssa36ConstantExpressionInitializerOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7wasmssa36ConstantExpressionInitializerOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7wasmssa36ConstantExpressionInitializerOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
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

declare i8 @_ZN4mlir7wasmssa8GlobalOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir7wasmssa8GlobalOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_7wasmssa8GlobalOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_12ZeroOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_11AffineScopeIS5_EENS2_24AutomaticAllocationScopeIS5_EENS2_19IsIsolatedFromAboveIS5_EENS_17SymbolOpInterface5TraitIS5_EENS4_36ConstantExpressionInitializerOpTraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::wasmssa::GlobalOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef %0) #19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir7wasmssa8GlobalOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_7wasmssa8GlobalOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7wasmssa6detail33verifyConstantExpressionInterfaceEPNS_9OperationE(ptr noundef %0) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.e, %bb.c, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7wasmssa8GlobalOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7wasmssa8GlobalOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_7wasmssa8GlobalOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::wasmssa::GlobalOp", align 8 ; 5 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.a = tail call i8 @_ZN4mlir6detail12verifySymbolEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !201
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !22
  store ptr @.str.105, ptr %3, align 8, !tbaa !23
  store i8 3, ptr %i.e, align 8, !tbaa !24
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #19
  %i.g = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  %i.h = load ptr, ptr %2, align 8, !tbaa !34
  %.not.i10 = icmp eq ptr %i.h, null
  br i1 %.not.i10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !35, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 8, !tbaa !35
  br i1 %i.k, label %bb.f, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.l) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

_ZN4mlir18InFlightDiagnosticD2Ev.exit11:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !159  ; 2 uses
  %.not.i12 = icmp eq ptr %i.n, null
  br i1 %.not.i12, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.g
  %i.o = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #19 ; 2 uses
  %.not9 = icmp eq ptr %i.o, null
  br i1 %.not9, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.p = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, !prof !130

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.107, i64 49), i64 33) #19
  store ptr %i.s, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !61
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr %.sroa.01.0.copyload.i.i.i.i.i) #19, !inline_history !7
  br i1 %i.y, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !165
  %.not16 = icmp eq ptr %i.aa, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not16, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !22
  store ptr @.str.106, ptr %5, align 8, !tbaa !23
  store i8 3, ptr %i.ab, align 8, !tbaa !24
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #19
  %i.ad = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #19
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

_ZN4mlir9Operation11getParentOpEv.exit.thread:    ; preds = %bb.g, %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, %bb.k, %bb.a, %bb.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11
  %.sroa.08.1 = phi i8 [ %i.ad, %bb.l ], [ %i.g, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11 ], [ 0, %bb.a ], [ 1, %_ZN4mlir9Operation11getParentOpEv.exit ], [ 1, %bb.k ], [ 1, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i8 %.sroa.08.1
}

declare i8 @_ZN4mlir7wasmssa6detail33verifyConstantExpressionInterfaceEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir7wasmssa8GlobalOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7wasmssa8GlobalOp15setInherentAttrERNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir7wasmssa8GlobalOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir7wasmssa8GlobalOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir7wasmssa8GlobalOp21setPropertiesFromAttrERNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7wasmssa8GlobalOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i64 @_ZN4mlir7wasmssa8GlobalOp21computePropertiesHashERKNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7wasmssa4GtOpEEC2EPNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !84, !alias.scope !1024
end_hunk_2
