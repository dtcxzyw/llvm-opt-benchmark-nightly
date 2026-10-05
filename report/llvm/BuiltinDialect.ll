Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BuiltinDialect?download=true
inline.NumInlined: 3238
inline.NumDeleted: 1859
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4mlir14BuiltinDialect10initializeEv:bb.a
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21OpAsmDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i, ptr %i.h, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_128BuiltinOpAsmDialectInterfaceE, i64 16), ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.a, ptr %i.i, align 8, !tbaa !195
  store ptr %i.b, ptr %1, align 8, !tbaa !29
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1) #21
  %i.j = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_128BuiltinOpAsmDialectInterfaceEJRNS_39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEEEEEERT_DpOT0_.exit, label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i: ; preds = %_ZN12_GLOBAL__N_128BuiltinOpAsmDialectInterfaceC2EPN4mlir7DialectERNS1_39ResourceBlobManagerDialectInterfaceBaseINS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEE.exit.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #21, !inline_history !194
  br label %_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_128BuiltinOpAsmDialectInterfaceEJRNS_39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEEEEEERT_DpOT0_.exit

_ZN4mlir7Dialect12addInterfaceIN12_GLOBAL__N_128BuiltinOpAsmDialectInterfaceEJRNS_39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEEEEEERT_DpOT0_.exit: ; preds = %_ZN12_GLOBAL__N_128BuiltinOpAsmDialectInterfaceC2EPN4mlir7DialectERNS1_39ResourceBlobManagerDialectInterfaceBaseINS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEE.exit.i, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZN4mlir22builtin_dialect_detail20addBytecodeInterfaceEPNS_14BuiltinDialectE(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir14BuiltinDialectD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mlir14BuiltinDialectE, i64 16), ptr %0, align 8, !tbaa !17
  tail call void @_ZN4mlir7DialectD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4mlir7DialectD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir14BuiltinDialectD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir14BuiltinDialectD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4mlir14BuiltinDialect13registerTypesEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

declare void @_ZN4mlir14BuiltinDialect18registerAttributesEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

declare void @_ZN4mlir14BuiltinDialect26registerLocationAttributesEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir7Dialect12addInterfaceINS_39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEEEJEEERT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.344", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 7 uses
  %i.b = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEECI2NS_35ResourceBlobManagerDialectInterfaceEEPNS_7DialectE.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id) #21
  %.not.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEECI2NS_35ResourceBlobManagerDialectInterfaceEEPNS_7DialectE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 41) #21
  store ptr %i.e, ptr @_ZZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id) #21
  br label %_ZN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEECI2NS_35ResourceBlobManagerDialectInterfaceEEPNS_7DialectE.exit

_ZN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEECI2NS_35ResourceBlobManagerDialectInterfaceEEPNS_7DialectE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_35ResourceBlobManagerDialectInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.01.0.copyload.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #22, !noalias !202 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !31, !noalias !201
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 1, ptr %i.l, align 4, !tbaa !32, !noalias !201
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4mlir26DialectResourceBlobManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.j, align 8, !tbaa !17, !noalias !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.m, i8 0, i64 88, i1 false), !noalias !201
  store i32 104, ptr %i.n, align 8, !tbaa !203, !noalias !201
  store ptr %i.j, ptr %i.i, align 8, !tbaa !38, !alias.scope !201
  store ptr %i.m, ptr %i.h, align 8, !tbaa !204, !alias.scope !201
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEEE, i64 16), ptr %i.a, align 8, !tbaa !17
  store ptr %i.a, ptr %1, align 8, !tbaa !29
  call void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1) #21
  %i.o = load ptr, ptr %1, align 8, !tbaa !29     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir16DialectInterfaceESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i: ; preds = %_ZN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEECI2NS_35ResourceBlobManagerDialectInterfaceEEPNS_7DialectE.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #21, !inline_history !200
  br label %_ZNSt10unique_ptrIN4mlir16DialectInterfaceESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir16DialectInterfaceESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4mlir39ResourceBlobManagerDialectInterfaceBaseINS_25DialectResourceBlobHandleINS_14BuiltinDialectEEEECI2NS_35ResourceBlobManagerDialectInterfaceEEPNS_7DialectE.exit, %_ZNKSt14default_deleteIN4mlir16DialectInterfaceEEclEPS1_.exit.i
  ret ptr %i.a
}

declare void @_ZN4mlir22builtin_dialect_detail20addBytecodeInterfaceEPNS_14BuiltinDialectE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8ModuleOp5buildERNS_9OpBuilderERNS_14OperationStateESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nofree noundef readonly byval(%"class.std::optional.5") align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = tail call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #21 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.d, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  tail call void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE13addNodeToListEPS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr noundef nonnull %i.b) #21
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.i, align 8, !tbaa !63
  store ptr %i.h, ptr %i.g, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.g, ptr %i.j, align 8, !tbaa !63
  store ptr %i.g, ptr %i.a, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !65, !range !66, !noundef !67
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !71
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.o, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.p, align 1, !tbaa !75
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.q, align 8, !tbaa !76
  %i.r = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  %i.s = call { ptr, ptr } @_ZN4mlir7Builder12getNamedAttrEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.8, i64 8, ptr %i.r) #21 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  call void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr %i.t, ptr %i.u) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

declare void @_ZN4mlir13NamedAttrList9push_backENS_14NamedAttributeE(ptr noundef nonnull align 8 dereferenceable(88), ptr, ptr) local_unnamed_addr #2

declare { ptr, ptr } @_ZN4mlir7Builder12getNamedAttrEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir8ModuleOp6createENS_8LocationESt8optionalIN4llvm9StringRefEE(ptr %0, ptr nofree noundef readonly byval(%"class.std::optional.5") align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %3 = alloca %"class.mlir::Location", align 8    ; 3 uses
  %4 = alloca %"class.mlir::OpBuilder", align 8   ; 6 uses
  store ptr %0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  store ptr %i.a, ptr %4, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %2, ptr %.sroa.0.0.copyload, ptr nonnull @.str.25, i64 14) #21
  call void @_ZN4mlir8ModuleOp5buildERNS_9OpBuilderERNS_14OperationStateESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(304) %2, ptr noundef nonnull byval(%"class.std::optional.5") align 8 %1)
  %i.c = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(304) %2) #21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i = select i1 %i.g, ptr %i.c, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret ptr %spec.select.i.i.i
}

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir8ModuleOp6createERNS_9OpBuilderENS_8LocationESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr nofree noundef readonly byval(%"class.std::optional.5") align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %3, ptr %1, ptr nonnull @.str.25, i64 14) #21
  call void @_ZN4mlir8ModuleOp5buildERNS_9OpBuilderERNS_14OperationStateESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %3, ptr noundef nonnull byval(%"class.std::optional.5") align 8 %2)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %3) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZN4mlir8ModuleOp17getDataLayoutSpecEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = tail call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21
  store ptr %i.b, ptr %1, align 8
  %i.c = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not22 = icmp eq i64 %i.e, 0
  br i1 %.not22, label %.split.loop.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.0823, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.f
  br i1 %.not, label %.split.loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0823 = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.3.0..08.sroa_idx = getelementptr inbounds nuw i8, ptr %.0823, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..08.sroa_idx, align 8, !tbaa !87
  %i.h = call { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir23DataLayoutSpecInterfaceEKNS1_9AttributeENS_8CastInfoIS2_S4_vEEE16doCastIfPossibleES3_(ptr %.sroa.3.0.copyload) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.b, label %.split.loop.exit19

.split.loop.exit19:                               ; preds = %.lr.ph
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %bb.a, %.split.loop.exit19
  %.sroa.514.2 = phi ptr [ %i.j, %.split.loop.exit19 ], [ null, %bb.a ], [ null, %bb.b ]
  %.sroa.013.2 = phi ptr [ %i.i, %.split.loop.exit19 ], [ null, %bb.a ], [ null, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.013.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.514.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZN4mlir8ModuleOp19getTargetSystemSpecEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = tail call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21
  store ptr %i.b, ptr %1, align 8
  %i.c = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not22 = icmp eq i64 %i.e, 0
  br i1 %.not22, label %.split.loop.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.0823, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.f
  br i1 %.not, label %.split.loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0823 = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.3.0..08.sroa_idx = getelementptr inbounds nuw i8, ptr %.0823, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..08.sroa_idx, align 8, !tbaa !87
  %i.h = call { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir25TargetSystemSpecInterfaceEKNS1_9AttributeENS_8CastInfoIS2_S4_vEEE16doCastIfPossibleES3_(ptr %.sroa.3.0.copyload) ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.b, label %.split.loop.exit19

.split.loop.exit19:                               ; preds = %.lr.ph
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %bb.a, %.split.loop.exit19
  %.sroa.514.2 = phi ptr [ %i.j, %.split.loop.exit19 ], [ null, %bb.a ], [ null, %bb.b ]
  %.sroa.013.2 = phi ptr [ %i.i, %.split.loop.exit19 ], [ null, %bb.a ], [ null, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.013.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.514.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir8ModuleOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %11 = alloca %"class.mlir::NamedAttribute", align 8 ; 7 uses
  %12 = alloca %"class.mlir::StringAttr", align 8 ; 5 uses
  %13 = alloca [2 x %"class.llvm::StringRef"], align 8 ; 10 uses
  %14 = alloca %"class.llvm::StringRef", align 8  ; 7 uses
  %15 = alloca %"class.mlir::StringAttr", align 8 ; 6 uses
  %16 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 18 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %18 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %19 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %20 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %25 = alloca %"class.mlir::StringAttr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.b = tail call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21
  store ptr %i.b, ptr %10, align 8
  %i.c = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not80 = icmp eq i64 %i.e, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.081 = phi ptr [ %i.d, %.lr.ph ], [ %i.bn, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %.081, i64 16, i1 false), !tbaa.struct !205
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.l = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  store ptr %i.l, ptr %12, align 8
  %i.m = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZNK4llvm9StringRef8containsEc.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.b
  %i.p = call ptr @memchr(ptr noundef %i.n, i32 noundef 46, i64 noundef %i.o) #21 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNK4llvm9StringRef8containsEc.exit.thread, label %_ZNK4llvm9StringRef8containsEc.exit

_ZNK4llvm9StringRef8containsEc.exit.thread:       ; preds = %bb.b, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  br label %bb.c

_ZNK4llvm9StringRef8containsEc.exit:              ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %.not76 = icmp eq i64 %i.s, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  br i1 %.not76, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK4llvm9StringRef8containsEc.exit.thread, %_ZNK4llvm9StringRef8containsEc.exit
  store ptr @.str.8, ptr %13, align 8
  store i64 8, ptr %i.g, align 8
  store ptr @.str.10, ptr %i.h, align 8
  store i64 14, ptr %i.i, align 8
  %i.t = call ptr @_ZNK4mlir14NamedAttribute7getNameEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  store ptr %i.t, ptr %15, align 8
  %i.u = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #21 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  store ptr %i.v, ptr %14, align 8
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  store i64 %i.w, ptr %i.j, align 8
  %i.x = call noundef ptr @_ZSt9__find_ifIPKN4llvm9StringRefEN9__gnu_cxx5__ops16_Iter_equals_valIS2_EEET_S8_S8_T0_St26random_access_iterator_tag(ptr noundef nonnull %13, ptr noundef nonnull %i.k, ptr nonnull align 8 dereferenceable(16) %14)
  %.not77 = icmp eq ptr %i.x, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br i1 %.not77, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
end_hunk_0
begin_hunk_1_@_ZN4mlir26UnrealizedConversionCastOp4foldENS_40UnrealizedConversionCastOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEERNS2_15SmallVectorImplINS_12OpFoldResultEEE:bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i16.i, i64 noundef %.sroa.2.010.i.i.i.i.i) #21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = xor i64 %.0.copyload.i.i.i.i.i.i.i1.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = icmp ult i64 %i.z, 8
  br i1 %i.aa, label %bb.d, label %.loopexit52

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = add nsw i64 %.sroa.26.011.i.i.i.i.i, 1  ; 2 uses
  %i.ac = add nsw i64 %.sroa.2.010.i.i.i.i.i, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.ab, %.sroa.2.0.copyload.i6.i.i
  br i1 %.not.i.i.i.i.i, label %.loopexit53, label %.lr.ph.i.i.i.i.i, !llvm.loop !208

.loopexit53:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ad = load ptr, ptr %4, align 8, !tbaa !227   ; 11 uses
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !228 ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = add i64 %i.ae, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !101
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i

bb.e:                                             ; preds = %.loopexit53
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.an, i64 noundef %i.ai, i64 noundef 8) #21
  %.pre.i = load i32, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %.pre24.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i: ; preds = %bb.e, %.loopexit53
  %.pre-phi.i = phi i64 [ %i.ah, %.loopexit53 ], [ %.pre24.i, %bb.e ] ; 2 uses
  %i.ao = phi i32 [ %i.ag, %.loopexit53 ], [ %.pre.i, %bb.e ]
  %.not8.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEvEEvT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i
  %i.ap = load ptr, ptr %2, align 8, !tbaa !103   ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %.pre-phi.i ; 5 uses
  %min.iters.check71 = icmp ult i64 %i.ae, 15
  br i1 %min.iters.check71, label %.lr.ph.i.i.i.i.i14.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.ar = add i64 %.pre-phi.i, %i.ae
  %i.as = shl i64 %i.ar, 3
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %i.ad, i64 24
  %i.av = shl i64 %i.ae, 5
  %i.aw = getelementptr i8, ptr %i.ad, i64 %i.av
  %bound073 = icmp ult ptr %i.aq, %i.aw
  %bound174 = icmp ult ptr %i.au, %i.at
  %found.conflict75 = and i1 %bound073, %bound174
  br i1 %found.conflict75, label %.lr.ph.i.i.i.i.i14.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %vector.memcheck72
  %i.ax = and i64 %i.ae, 3                        ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = select i1 %i.ay, i64 4, i64 %i.ax
  %n.vec77 = sub i64 %i.ae, %i.az                 ; 3 uses
  %i.ba = shl i64 %n.vec77, 3
  %i.bb = getelementptr i8, ptr %i.aq, i64 %i.ba
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next81, %vector.body78 ] ; 6 uses
  %i.bc = shl i64 %index79, 3
  %next.gep80 = getelementptr i8, ptr %i.aq, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %index79
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %index79
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %index79
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %index79
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !128, !alias.scope !229
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !128, !alias.scope !229
  %i.bn = insertelement <2 x ptr> poison, ptr %i.bl, i64 0
  %i.bo = insertelement <2 x ptr> %i.bn, ptr %i.bm, i64 1
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !128, !alias.scope !229
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !128, !alias.scope !229
  %i.br = insertelement <2 x ptr> poison, ptr %i.bp, i64 0
  %i.bs = insertelement <2 x ptr> %i.br, ptr %i.bq, i64 1
  %i.bt = ptrtoint <2 x ptr> %i.bo to <2 x i64>
  %i.bu = ptrtoint <2 x ptr> %i.bs to <2 x i64>
  %i.bv = or <2 x i64> %i.bt, splat (i64 4)
  %i.bw = or <2 x i64> %i.bu, splat (i64 4)
  %i.bx = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x i64> %i.bv, ptr %next.gep80, align 8, !alias.scope !230, !noalias !229
  store <2 x i64> %i.bw, ptr %i.bx, align 8, !alias.scope !230, !noalias !229
  %index.next81 = add nuw i64 %index79, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next81, %n.vec77
  br i1 %i.by, label %.lr.ph.i.i.i.i.i14.preheader, label %vector.body78, !llvm.loop !212

.lr.ph.i.i.i.i.i14.preheader:                     ; preds = %vector.body78, %vector.memcheck72, %.lr.ph.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck72 ], [ %i.aq, %.lr.ph.i.i.i.i.preheader.i ], [ %i.bb, %vector.body78 ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck72 ], [ 0, %.lr.ph.i.i.i.i.preheader.i ], [ %n.vec77, %vector.body78 ] ; 4 uses
  %i.bz = sub i64 %i.ae, %.sroa.2.09.i.i.i.i.i.ph
  %xtraiter85 = and i64 %i.bz, 3                  ; 2 uses
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph.i.i.i.i.i14.prol.loopexit, label %.lr.ph.i.i.i.i.i14.prol

.lr.ph.i.i.i.i.i14.prol:                          ; preds = %.lr.ph.i.i.i.i.i14.preheader, %.lr.ph.i.i.i.i.i14.prol
  %.010.i.i.i.i.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i14.prol ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i14.preheader ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i14.prol ], [ %.sroa.2.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i14.preheader ] ; 2 uses
  %prol.iter87 = phi i64 [ %prol.iter87.next, %.lr.ph.i.i.i.i.i14.prol ], [ 0, %.lr.ph.i.i.i.i.i14.preheader ]
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.2.09.i.i.i.i.i.prol
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.cb, align 8, !tbaa !128
  %i.cc = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.prol to i64
  %i.cd = or i64 %i.cc, 4
  store i64 %i.cd, ptr %.010.i.i.i.i.i.prol, align 8
  %i.ce = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.prol, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter87.next = add i64 %prol.iter87, 1     ; 2 uses
  %prol.iter87.cmp.not = icmp eq i64 %prol.iter87.next, %xtraiter85
  br i1 %prol.iter87.cmp.not, label %.lr.ph.i.i.i.i.i14.prol.loopexit, label %.lr.ph.i.i.i.i.i14.prol, !llvm.loop !213

.lr.ph.i.i.i.i.i14.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i14.prol, %.lr.ph.i.i.i.i.i14.preheader
  %.010.i.i.i.i.i.unr = phi ptr [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i14.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i14.prol ]
  %.sroa.2.09.i.i.i.i.i.unr = phi i64 [ %.sroa.2.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i14.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i14.prol ]
  %i.cg = sub i64 %.sroa.2.09.i.i.i.i.i.ph, %i.ae
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEPS2_EEvT_SE_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %.lr.ph.i.i.i.i.i14.prol.loopexit, %.lr.ph.i.i.i.i.i14
  %.010.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i14 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i14.prol.loopexit ] ; 5 uses
  %.sroa.2.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i14 ], [ %.sroa.2.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i14.prol.loopexit ] ; 5 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.2.09.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !128
  %i.ck = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i to i64
  %i.cl = or i64 %i.ck, 4
  store i64 %i.cl, ptr %.010.i.i.i.i.i, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.2.09.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.co, align 8, !tbaa !128
  %i.cp = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1 to i64
  %i.cq = or i64 %i.cp, 4
  store i64 %i.cq, ptr %i.cm, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.2.09.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ct, align 8, !tbaa !128
  %i.cu = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2 to i64
  %i.cv = or i64 %i.cu, 4
  store i64 %i.cv, ptr %i.cr, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 24
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.sroa.2.09.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 120
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cy, align 8, !tbaa !128
  %i.cz = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.3 to i64
  %i.da = or i64 %i.cz, 4
  store i64 %i.da, ptr %i.cw, align 8
  %i.db = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i, 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i15.3 = icmp eq i64 %i.db, %i.ae
  br i1 %.not.i.i.i.i.i15.3, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEPS2_EEvT_SE_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i14, !llvm.loop !214

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEPS2_EEvT_SE_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i14, %.lr.ph.i.i.i.i.i14.prol.loopexit
  %.pre23.i = load i32, ptr %i.af, align 8, !tbaa !100
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEvEEvT_SD_.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEvEEvT_SD_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEPS2_EEvT_SE_T0_.exit.loopexit.i
  %i.dd = phi i32 [ %.pre23.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEPS2_EEvT_SE_T0_.exit.loopexit.i ], [ %i.ao, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i ]
  %i.de = trunc i64 %i.ae to i32
  %i.df = add i32 %i.dd, %i.de
  store i32 %i.df, ptr %i.af, align 8, !tbaa !100
  br label %bb.q

.loopexit52:                                      ; preds = %.lr.ph.i.i.i.i.i, %_ZN4mlir26UnrealizedConversionCastOp9getInputsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.dg = load i64, ptr %i.k, align 8, !tbaa !228
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.q, label %bb.f

bb.f:                                             ; preds = %.loopexit52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.di = load ptr, ptr %4, align 8, !tbaa !227
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !128
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %8, align 8
  %i.dk = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #21 ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16 = load ptr, ptr %i.dl, align 8, !tbaa !81
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i16, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !82
  %i.do = icmp eq ptr %i.dn, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  br i1 %i.do, label %bb.h, label %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread

_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !126 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dk, i64 -16
  %i.ds = zext i32 %i.dq to i64                   ; 2 uses
  %i.dt = load ptr, ptr %4, align 8, !tbaa !227
  %i.du = load i64, ptr %i.k, align 8, !tbaa !228
  %.not.i.i.i.i19 = icmp eq i64 %i.du, %i.ds
  br i1 %.not.i.i.i.i19, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES8_S8_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.i, %bb.j
  %.sroa.26.011.i.i.i.i.i.i.i.i = phi i64 [ %i.dy, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.dv = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 noundef %.sroa.26.011.i.i.i.i.i.i.i.i) #21
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %.sroa.26.011.i.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dx, align 8, !tbaa !128
  %.not.i = icmp eq ptr %i.dv, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dy = add nuw nsw i64 %.sroa.26.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dy, %i.ds
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES8_S8_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !215

_ZN4llvm6detailneIN4mlir12OperandRangeENS2_11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES8_S8_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !234
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 44 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !234
  %i.eb = and i32 %i.ea, 8388608
  %.not.i.i.i.i20 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE15getOperandTypesEv.exit, label %bb.k, !prof !111

bb.k:                                             ; preds = %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES8_S8_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !115, !noalias !234
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 68
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !114, !noalias !234
  %i.eg = zext i32 %i.ef to i64
  br label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE15getOperandTypesEv.exit

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE15getOperandTypesEv.exit: ; preds = %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES8_S8_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit, %bb.k
  %.sroa.0.0.i.i.i.i21 = phi ptr [ %i.ed, %bb.k ], [ null, %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES8_S8_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit ]
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.eg, %bb.k ], [ 0, %_ZN4llvm6detailneIN4mlir12OperandRangeENS2_11ResultRangeEPNS2_6detail12OpResultImplENS2_8OpResultES8_S8_EEbRKNS0_27indexed_accessor_range_baseIT0_T1_T2_T3_T4_EERKT_.exit ]
  store ptr %.sroa.0.0.i.i.i.i21, ptr %3, align 8, !noalias !234
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.eh, align 8, !noalias !234
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !234
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange.132") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %5) #21
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.2.0.copyload.i6.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i5.i.i.i, align 8 ; 3 uses
  %i.ei = sub nsw i64 %.sroa.2.0.copyload.i6.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i7.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0.copyload.i.i8.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i7.i.i, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i5.i9.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.2.0.copyload.i6.i10.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i5.i9.i.i, align 8
  %i.ej = sub nsw i64 %.sroa.2.0.copyload.i6.i10.i.i, %.sroa.2.0.copyload.i.i8.i.i
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.l, label %_ZNK4mlir14ValueTypeRangeINS_12OperandRangeEEneINS0_INS_11ResultRangeEEEEEbRKT_.exit.thread

bb.l:                                             ; preds = %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE15getOperandTypesEv.exit
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %9, align 8
  %.sroa.0.0.copyload.i16.i.i = load ptr, ptr %10, align 8
  %.not9.i.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i6.i.i.i
  br i1 %.not9.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %bb.m
  %.sroa.26.011.i.i.i.i.i.i = phi i64 [ %i.es, %bb.m ], [ %.sroa.2.0.copyload.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.2.010.i.i.i.i.i.i = phi i64 [ %i.et, %bb.m ], [ %.sroa.2.0.copyload.i.i8.i.i, %bb.l ] ; 2 uses
  %i.el = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.26.011.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.em, align 8, !tbaa !128
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.en, align 8
  %i.eo = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i16.i.i, i64 noundef %.sroa.2.010.i.i.i.i.i.i) #21
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.0.copyload.i.i.i.i.i.i.i1.i.i.i.i.i.i = load i64, ptr %i.ep, align 8
  %i.eq = xor i64 %.0.copyload.i.i.i.i.i.i.i1.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.er = icmp ugt i64 %i.eq, 7
  br i1 %i.er, label %_ZNK4mlir14ValueTypeRangeINS_12OperandRangeEEneINS0_INS_11ResultRangeEEEEEbRKT_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.es = add nsw i64 %.sroa.26.011.i.i.i.i.i.i, 1 ; 2 uses
  %i.et = add nsw i64 %.sroa.2.010.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.es, %.sroa.2.0.copyload.i6.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !208

_ZNK4mlir14ValueTypeRangeINS_12OperandRangeEEneINS0_INS_11ResultRangeEEEEEbRKT_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_26UnrealizedConversionCastOpENS0_16VariadicOperandsEE15getOperandTypesEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.p

.critedge:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.h, %_ZNK4mlir5Value13getDefiningOpINS_26UnrealizedConversionCastOpEEET_v.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.p

.loopexit:                                        ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.eu = load i32, ptr %i.dz, align 4
  %i.ev = and i32 %i.eu, 8388608
  %.not.i.i.i22 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir9Operation11operand_endEv.exit, label %bb.n, !prof !111

bb.n:                                             ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !115
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dk, i64 68
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !114
  %i.fa = zext i32 %i.ez to i64
  br label %_ZN4mlir9Operation11operand_endEv.exit

_ZN4mlir9Operation11operand_endEv.exit:           ; preds = %.loopexit, %bb.n
  %.sroa.0.0.i.i.i2351 = phi ptr [ %i.ex, %bb.n ], [ null, %.loopexit ] ; 11 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.fa, %bb.n ], [ 0, %.loopexit ] ; 11 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !100 ; 2 uses
  %i.fd = zext i32 %i.fc to i64                   ; 2 uses
  %i.fe = add nuw nsw i64 %.sroa.4.0.i.i.i, %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !101
  %i.fh = zext i32 %i.fg to i64
  %i.fi = icmp samesign ugt i64 %i.fe, %i.fh
  br i1 %i.fi, label %bb.o, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i28

bb.o:                                             ; preds = %_ZN4mlir9Operation11operand_endEv.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.fj, i64 noundef %i.fe, i64 noundef 8) #21
  %.pre.i39 = load i32, ptr %i.fb, align 8, !tbaa !100 ; 2 uses
  %.pre24.i40 = zext i32 %.pre.i39 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i28

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i28: ; preds = %bb.o, %_ZN4mlir9Operation11operand_endEv.exit
  %.pre-phi.i29 = phi i64 [ %i.fd, %_ZN4mlir9Operation11operand_endEv.exit ], [ %.pre24.i40, %bb.o ] ; 2 uses
  %i.fk = phi i32 [ %i.fc, %_ZN4mlir9Operation11operand_endEv.exit ], [ %.pre.i39, %bb.o ]
  %.not8.i.i.i.i.i30 = icmp eq i64 %.sroa.4.0.i.i.i, 0
  br i1 %.not8.i.i.i.i.i30, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6appendINS_6detail27indexed_accessor_range_baseINS1_12OperandRangeEPNS1_9OpOperandENS1_5ValueESA_SA_E8iteratorEvEEvT_SD_.exit41, label %.lr.ph.i.i.i.i.preheader.i31

.lr.ph.i.i.i.i.preheader.i31:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i28
  %i.fl = load ptr, ptr %2, align 8, !tbaa !103   ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.fl, i64 %.pre-phi.i29 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.4.0.i.i.i, 15
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i32.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i31
  %i.fn = add nuw nsw i64 %.pre-phi.i29, %.sroa.4.0.i.i.i
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = getelementptr i8, ptr %i.fl, i64 %i.fo
  %i.fq = getelementptr i8, ptr %.sroa.0.0.i.i.i2351, i64 24
  %i.fr = shl nuw nsw i64 %.sroa.4.0.i.i.i, 5
  %i.fs = getelementptr i8, ptr %.sroa.0.0.i.i.i2351, i64 %i.fr
  %bound0 = icmp ult ptr %i.fm, %i.fs
  %bound1 = icmp ult ptr %i.fq, %i.fp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i32.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ft = and i64 %.sroa.4.0.i.i.i, 3             ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = select i1 %i.fu, i64 4, i64 %i.ft
  %n.vec = sub nsw i64 %.sroa.4.0.i.i.i, %i.fv    ; 3 uses
  %i.fw = shl nsw i64 %n.vec, 3
  %i.fx = getelementptr i8, ptr %i.fm, i64 %i.fw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.fy = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.fm, i64 %i.fy ; 2 uses
  %i.fz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i2351, i64 %index
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i2351, i64 %index
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i2351, i64 %index
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i2351, i64 %index
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 88
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 120
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !128, !alias.scope !235
  %i.gi = load ptr, ptr %i.ge, align 8, !tbaa !128, !alias.scope !235
  %i.gj = insertelement <2 x ptr> poison, ptr %i.gh, i64 0
  %i.gk = insertelement <2 x ptr> %i.gj, ptr %i.gi, i64 1
  %i.gl = load ptr, ptr %i.gf, align 8, !tbaa !128, !alias.scope !235
  %i.gm = load ptr, ptr %i.gg, align 8, !tbaa !128, !alias.scope !235
  %i.gn = insertelement <2 x ptr> poison, ptr %i.gl, i64 0
  %i.go = insertelement <2 x ptr> %i.gn, ptr %i.gm, i64 1
end_hunk_1
begin_hunk_2_@_ZN4mlir8ModuleOp15writePropertiesERNS_21DialectBytecodeWriterE:bb.a
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %.sroa.0.0.copyload) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8ModuleOp10getSymNameEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.5") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.g, align 8 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %2, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  store ptr %i.i, ptr %0, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.k, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8ModuleOp16getSymVisibilityEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.5") align 8 captures(none) initializes((16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !85     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.g, align 8 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %2, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #21 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  store ptr %i.i, ptr %0, align 8, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.k, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8ModuleOp10setSymNameESt8optionalIN4llvm9StringRefEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly byval(%"class.std::optional.5") align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !65, !range !66, !noundef !67
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.m, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !75
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.o, align 8, !tbaa !76
  %i.p = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  store ptr %i.p, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir8ModuleOp16setSymVisibilityESt8optionalIN4llvm9StringRefEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly byval(%"class.std::optional.5") align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !65, !range !66, !noundef !67
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.m, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !75
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.o, align 8, !tbaa !76
  %i.p = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(34) %3) #21
  store ptr %i.p, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304), ptr, ptr, i64) unnamed_addr #2

declare noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir8ModuleOp6createERNS_20ImplicitLocOpBuilderESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef readonly byval(%"class.std::optional.5") align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %2, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.25, i64 14) #21
  call void @_ZN4mlir8ModuleOp5buildERNS_9OpBuilderERNS_14OperationStateESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %2, ptr noundef nonnull byval(%"class.std::optional.5") align 8 %1)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %2) #21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir8ModuleOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %class.anon.242, align 8            ; 4 uses
  %8 = alloca %class.anon.242, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %.sroa.017.0.copyload = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.016.0.copyload = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.a, ptr %8, align 8, !tbaa !143
  %i.i = ptrtoint ptr %8 to i64
  %i.j = call fastcc i8 @_ZL44__mlir_ods_local_attr_constraint_BuiltinOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.017.0.copyload, ptr nonnull @.str.8, i64 8, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL44__mlir_ods_local_attr_constraint_BuiltinOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %i.l, ptr %7, align 8, !tbaa !143
  %i.m = ptrtoint ptr %7 to i64
  %i.n = call fastcc i8 @_ZL44__mlir_ods_local_attr_constraint_BuiltinOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.016.0.copyload, ptr nonnull @.str.10, i64 14, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL44__mlir_ods_local_attr_constraint_BuiltinOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !85     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  %i.s = and i32 %i.r, 8388607
  %i.t = icmp ne i32 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.v = lshr i32 %i.r, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.v, 1
  %i.w = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.w
  %i.y = lshr i32 %i.r, 21
  %i.z = and i32 %i.y, 2040
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !132
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.af
  br i1 %i.ay, label %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i, label %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.i

_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.i: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63
  %.not1317.i.i.i = icmp eq ptr %i.ba, %i.af
  br i1 %.not1317.i.i.i, label %_ZL46__mlir_ods_local_region_constraint_BuiltinOps1PN4mlir9OperationERNS_6RegionEN4llvm9StringRefEj.exit.thread, label %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i

_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i: ; preds = %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i8 1, ptr %i.ah, align 1, !tbaa !75
  store ptr @.str.26, ptr %4, align 8, !tbaa !76
  store i8 3, ptr %i.ag, align 8, !tbaa !74
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %4) #21
  %i.bb = load ptr, ptr %3, align 8, !tbaa !95
  %.not.i.i3.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i3.i, label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 5, ptr %2, align 8, !tbaa !98
  store i64 0, ptr %i.aj, align 8, !tbaa !76
  %i.bc = load i32, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %i.bd = load i32, ptr %i.al, align 4, !tbaa !101
  %.not.i.i.i.i.i.i = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e, !prof !102

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.be = zext i32 %i.bc to i64
  %i.bf = load ptr, ptr %i.ai, align 8, !tbaa !103
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bh = load i32, ptr %i.ak, align 8, !tbaa !100
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ak, align 8, !tbaa !100
  br label %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i

_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.pre = load ptr, ptr %3, align 8, !tbaa !95
  %i.bj = icmp eq ptr %.pre, null
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i: ; preds = %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i, %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i
  %.not.i.i5.i = phi i1 [ %i.bj, %_ZN4mlir10Diagnostic6appendIRjEERS0_OT_.exit.i.i.i ], [ true, %_ZN4llvm9hasNItemsIRN4mlir6RegionEEEbOT_j.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i8 3, ptr %i.am, align 8, !tbaa !74, !alias.scope !243
  store i8 5, ptr %i.an, align 1, !tbaa !75, !alias.scope !243
  store ptr @.str.28, ptr %6, align 8, !tbaa !76, !alias.scope !243
  store ptr @.str.12, ptr %i.ao, align 8, !tbaa !76, !alias.scope !243
  store i64 10, ptr %i.ap, align 8, !tbaa !76, !alias.scope !243
  store ptr %6, ptr %5, align 8, !alias.scope !244
  store ptr @.str.29, ptr %i.aq, align 8, !alias.scope !244
  store i8 2, ptr %i.ar, align 8, !tbaa !74, !alias.scope !244
  store i8 3, ptr %i.as, align 1, !tbaa !75, !alias.scope !244
  br i1 %.not.i.i5.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit.i, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit.i: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i
  %i.bk = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.at, ptr noundef nonnull align 8 dereferenceable(34) %5) #21 ; 0 uses
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !95
  %.not.i.i6.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i6.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i32 3, ptr %1, align 8, !tbaa !98
  store ptr @.str.30, ptr %i.au, align 8, !tbaa !69
  store i64 49, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !71
  %i.bl = load i32, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %i.bm = load i32, ptr %i.al, align 4, !tbaa !101
  %.not.i.i.i.i.i7.i = icmp ult i32 %i.bl, %i.bm
  br i1 %.not.i.i.i.i.i7.i, label %bb.i, label %bb.h, !prof !102

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA50_KcEERS0_OT_.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = zext i32 %i.bl to i64
  %i.bo = load ptr, ptr %i.ai, align 8, !tbaa !103
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bq = load i32, ptr %i.ak, align 8, !tbaa !100
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.ak, align 8, !tbaa !100
  br label %_ZN4mlir10Diagnostic6appendIRA50_KcEERS0_OT_.exit.i.i.i

_ZN4mlir10Diagnostic6appendIRA50_KcEERS0_OT_.exit.i.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit.i

_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit.i: ; preds = %_ZN4mlir10Diagnostic6appendIRA50_KcEERS0_OT_.exit.i.i.i, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm5TwineEEEOS0_OT_.exit.i, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit.i
  %i.bs = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bt = load ptr, ptr %3, align 8, !tbaa !95
  %.not.i.i24 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit.i
  %i.bu = load i8, ptr %i.av, align 8, !tbaa !104, !range !66, !noundef !67
  %i.bv = trunc nuw i8 %i.bu to i1
  store i8 0, ptr %i.av, align 8, !tbaa !104
end_hunk_2
begin_hunk_3_@_ZN4mlir26UnrealizedConversionCastOp21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE:bb.a
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !100
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !100
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.pr = load ptr, ptr %5, align 8, !tbaa !95
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #21
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !104, !range !66, !noundef !67
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !104
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #21
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir26UnrealizedConversionCastOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #6 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir26UnrealizedConversionCastOp21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.414", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #21
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir26UnrealizedConversionCastOp15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir26UnrealizedConversionCastOp15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir26UnrealizedConversionCastOp21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir26UnrealizedConversionCastOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #6 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir26UnrealizedConversionCastOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #21
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !153
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !71 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.b, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nsw i64 %.sroa.2.0.copyload, %i.e    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.h = load i32, ptr %i.g, align 4, !tbaa !101
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 16) #21
  %.pre8.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.m = zext i32 %.pre8.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !100
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.o = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.p = trunc i64 %.sroa.2.0.copyload to i32
  %i.q = add i32 %i.o, %i.p
  store i32 %i.q, ptr %i.c, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !100  ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = add i64 %3, %i.u                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !101
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull %i.aa, i64 noundef %i.v, i64 noundef 8) #21
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !100 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.u, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ab = phi i32 [ %i.t, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ae = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #21
  %i.af = ptrtoint ptr %i.ae to i64
  store i64 %i.af, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !155
  %i.ag = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.s, align 8, !tbaa !100
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.ai = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ab, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.aj = trunc i64 %3 to i32
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.s, align 8, !tbaa !100
  ret void
}

declare void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr nonnull @.str.31, i64 34) #21
  call void @_ZN4mlir26UnrealizedConversionCastOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.31, i64 34) #21
  call void @_ZN4mlir26UnrealizedConversionCastOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir26UnrealizedConversionCastOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.417, align 1            ; 3 uses
  %9 = alloca %class.anon.419, align 1            ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE, ptr %i.a, align 8, !tbaa !22
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !141
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_15EmptyPropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !141
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !153
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !71 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !100  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #21
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !100
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !100
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !100  ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !101
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #21
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !100 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #21
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !155
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !100
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.31, i64 34) #21
  call void @_ZN4mlir26UnrealizedConversionCastOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir26UnrealizedConversionCastOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.31, i64 34) #21
  call void @_ZN4mlir26UnrealizedConversionCastOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir26UnrealizedConversionCastOp20verifyInvariantsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %._crit_edge, label %_ZN4mlir26UnrealizedConversionCastOp14getODSOperandsEj.exit, !prof !111

_ZN4mlir26UnrealizedConversionCastOp14getODSOperandsEj.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !114  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = zext i32 %i.f to i64
  %.not62 = icmp eq i32 %i.f, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir26UnrealizedConversionCastOp14getODSOperandsEj.exit, %bb.b
  %.sroa.446.063 = phi i64 [ %i.r, %bb.b ], [ 0, %_ZN4mlir26UnrealizedConversionCastOp14getODSOperandsEj.exit ] ; 3 uses
  %indvars73 = trunc i64 %.sroa.446.063 to i32
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.446.063
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.l = load ptr, ptr %0, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_BuiltinOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.l, ptr %i.o, ptr nonnull @.str.13, i64 7, i32 noundef %indvars73)
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i64 %.sroa.446.063, 1        ; 2 uses
  %.not = icmp eq i64 %i.r, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !85
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %_ZN4mlir26UnrealizedConversionCastOp14getODSOperandsEj.exit
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %_ZN4mlir26UnrealizedConversionCastOp14getODSOperandsEj.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !126  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.w = zext i32 %i.u to i64
  %.not6065 = icmp eq i32 %i.u, 0
  br i1 %.not6065, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %._crit_edge, %bb.c
  %.sroa.4.066 = phi i64 [ %i.ae, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %indvars74 = trunc i64 %.sroa.4.066 to i32
  %i.x = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 noundef %.sroa.4.066) #21
  %i.y = load ptr, ptr %0, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i.i.i.i.i32 = load i64, ptr %i.z, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i32, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_BuiltinOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.y, ptr %i.ab, ptr nonnull @.str.14, i64 6, i32 noundef %indvars74)
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph69
  %i.ae = add nuw nsw i64 %.sroa.4.066, 1         ; 2 uses
  %.not60 = icmp eq i64 %i.ae, %i.w
  br i1 %.not60, label %.loopexit, label %.lr.ph69

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph69, %bb.c, %._crit_edge
  %.sroa.019.6 = phi i8 [ 1, %._crit_edge ], [ 1, %bb.c ], [ 0, %.lr.ph69 ], [ 0, %.lr.ph ]
  ret i8 %.sroa.019.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL44__mlir_ods_local_type_constraint_BuiltinOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !158
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9TokenTypeEvE2idE
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 5, ptr %i.d, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !75
  store ptr %2, ptr %10, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %3, ptr %i.f, align 8, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #21
  %i.g = load ptr, ptr %9, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i32 3, ptr %8, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.32, ptr %i.i, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 12 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !100  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101
  %.not.i.i.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.q = load i32, ptr %i.j, align 8, !tbaa !100
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !100
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.pr = load ptr, ptr %9, align 8, !tbaa !95
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 5, ptr %7, align 8, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = zext i32 %4 to i64
  store i64 %i.t, ptr %i.s, align 8, !tbaa !76
  %i.u = load i32, ptr %i.j, align 8, !tbaa !100  ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !101
  %.not.i.i.i.i.i5 = icmp ult i32 %i.u, %i.v
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g, !prof !102

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.z = load i32, ptr %i.j, align 8, !tbaa !100
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !100
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.pr12 = load ptr, ptr %9, align 8, !tbaa !95
  %.not.i.i6 = icmp eq ptr %.pr12, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 3, ptr %6, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.33, ptr %i.ab, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 49, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !71
  %i.ac = load i32, ptr %i.j, align 8, !tbaa !100 ; 2 uses
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !101
  %.not.i.i.i.i.i8 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i8, label %bb.k, label %bb.j, !prof !102

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = zext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !100
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.j, align 8, !tbaa !100
end_hunk_3
