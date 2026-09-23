Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMAttrs?download=true
inline.NumInlined: 32640
inline.NumDeleted: 14527
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4mlir4LLVM6detail20isValidLoadStoreImplENS_4TypeENS_3ptr14AtomicOrderingESt8optionalIlEPKNS_10DataLayoutEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE:bb.a

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pr35.pr = load ptr, ptr %14, align 8, !tbaa !165
  %.not.i24 = icmp eq ptr %.pr35.pr, null
  br i1 %.not.i24, label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA18_KcEEOS0_OT_.exit, %bb.w, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit20, %bb.ag, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !166, !range !167, !noundef !168
  %i.cc = trunc nuw i8 %i.cb to i1
  store i8 0, ptr %i.ca, align 8, !tbaa !166
  br i1 %i.cc, label %bb.ah, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit25

bb.ah:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cd) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit25

_ZN4mlir18InFlightDiagnosticD2Ev.exit25:          ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit.thread, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.u, %bb.v, %_ZN4mlir18InFlightDiagnosticD2Ev.exit25, %bb.n, %_ZN4mlir18InFlightDiagnosticD2Ev.exit12, %bb.l, %bb.b, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.v ], [ false, %bb.n ], [ true, %bb.l ], [ false, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ false, %_ZN4mlir18InFlightDiagnosticD2Ev.exit12 ], [ false, %_ZN4mlir18InFlightDiagnosticD2Ev.exit25 ], [ true, %bb.u ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4mlir4LLVM14isLoadableTypeENS_4TypeE(ptr) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4mlir4LLVM28isTypeCompatibleWithAtomicOpENS_4TypeERKNS_10DataLayoutE(ptr, ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir4LLVM16AddressSpaceAttr11isValidLoadENS_4TypeENS_3ptr14AtomicOrderingESt8optionalIlEPKNS_10DataLayoutEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr %1, i32 noundef %2, i64 %3, i8 %4, ptr noundef %5, ptr nofree noundef readonly byval(%"class.llvm::function_ref") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir4LLVM6detail20isValidLoadStoreImplENS_4TypeENS_3ptr14AtomicOrderingESt8optionalIlEPKNS_10DataLayoutEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %1, i32 noundef %2, i64 poison, i8 poison, ptr noundef %5, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %6)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir4LLVM16AddressSpaceAttr12isValidStoreENS_4TypeENS_3ptr14AtomicOrderingESt8optionalIlEPKNS_10DataLayoutEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr %1, i32 noundef %2, i64 %3, i8 %4, ptr noundef %5, ptr nofree noundef readonly byval(%"class.llvm::function_ref") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir4LLVM6detail20isValidLoadStoreImplENS_4TypeENS_3ptr14AtomicOrderingESt8optionalIlEPKNS_10DataLayoutEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %1, i32 noundef %2, i64 poison, i8 poison, ptr noundef %5, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %6)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir4LLVM16AddressSpaceAttr15isValidAtomicOpENS_3ptr11AtomicBinOpENS_4TypeENS2_14AtomicOrderingESt8optionalIlEPKNS_10DataLayoutEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i64 %4, i8 %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef readnone byval(%"class.llvm::function_ref") align 8 captures(none) %7) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir4LLVM16AddressSpaceAttr17isValidAtomicXchgENS_4TypeENS_3ptr14AtomicOrderingES4_St8optionalIlEPKNS_10DataLayoutEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3, i64 %4, i8 %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef readnone byval(%"class.llvm::function_ref") align 8 captures(none) %7) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir4LLVM16AddressSpaceAttr20isValidAddrSpaceCastENS_4TypeES2_N4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i64 %4) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4mlir4LLVM16AddressSpaceAttr17isValidPtrIntCastENS_4TypeES2_N4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i64 %4) local_unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM10DINodeAttr7classofENS_9AttributeE(ptr nofree readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117 ; 3 uses
  %i.c = insertelement <16 x ptr> poison, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 0
  %i.d = shufflevector <16 x ptr> %i.c, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.e = icmp eq <16 x ptr> %i.d, <ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM15DIBasicTypeAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DICommonBlockAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DICompileUnitAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DICompositeTypeAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DIDerivedTypeAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10DIFileAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM21DIGenericSubrangeAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIGlobalVariableAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIImportedEntityAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM11DILabelAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM18DILexicalBlockAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM22DILexicalBlockFileAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DILocalVariableAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM12DIModuleAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM15DINamespaceAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM14DINullTypeAttrEvE2idE> ; 2 uses
  %i.f = insertelement <4 x ptr> poison, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 0
  %i.g = shufflevector <4 x ptr> %i.f, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.h = icmp eq <4 x ptr> %i.g, <ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIAnnotationAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIStringTypeAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DISubprogramAttrEvE2idE, ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM14DISubrangeAttrEvE2idE>
  %i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DISubroutineTypeAttrEvE2idE
  %i.j = shufflevector <4 x i1> %i.h, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.k = or <16 x i1> %i.e, %i.j
  %i.l = shufflevector <16 x i1> %i.k, <16 x i1> %i.e, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.m = bitcast <16 x i1> %i.l to i16
  %i.n = icmp ne i16 %i.m, 0
  %op.rdx = or i1 %i.n, %i.i
  ret i1 %op.rdx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM11DIScopeAttr7classofENS_9AttributeE(ptr nofree readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117 ; 10 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DICommonBlockAttrEvE2idE
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DICompileUnitAttrEvE2idE
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DICompositeTypeAttrEvE2idE
  %or.cond21.i = or i1 %i.e, %or.cond.i
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DIDerivedTypeAttrEvE2idE
  %or.cond22.i = or i1 %i.f, %or.cond21.i
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM10DIFileAttrEvE2idE
  %or.cond23.i = or i1 %i.g, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN4llvm3isaIJN4mlir4LLVM17DICommonBlockAttrENS2_17DICompileUnitAttrENS2_19DICompositeTypeAttrENS2_17DIDerivedTypeAttrENS2_10DIFileAttrENS2_16DILocalScopeAttrENS2_12DIModuleAttrENS2_15DINamespaceAttrEENS1_9AttributeEEEbRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM18DILexicalBlockAttrEvE2idE
  %i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM22DILexicalBlockFileAttrEvE2idE
  %or.cond.i.i.i.i = or i1 %i.h, %i.i
  %i.j = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DISubprogramAttrEvE2idE
  %spec.select.i.i.i.i = or i1 %i.j, %or.cond.i.i.i.i
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM12DIModuleAttrEvE2idE
  %or.cond24.i = or i1 %i.k, %spec.select.i.i.i.i
  %i.l = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM15DINamespaceAttrEvE2idE
  %spec.select.i = or i1 %i.l, %or.cond24.i
  br label %_ZN4llvm3isaIJN4mlir4LLVM17DICommonBlockAttrENS2_17DICompileUnitAttrENS2_19DICompositeTypeAttrENS2_17DIDerivedTypeAttrENS2_10DIFileAttrENS2_16DILocalScopeAttrENS2_12DIModuleAttrENS2_15DINamespaceAttrEENS1_9AttributeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir4LLVM17DICommonBlockAttrENS2_17DICompileUnitAttrENS2_19DICompositeTypeAttrENS2_17DIDerivedTypeAttrENS2_10DIFileAttrENS2_16DILocalScopeAttrENS2_12DIModuleAttrENS2_15DINamespaceAttrEENS1_9AttributeEEEbRKT0_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ true, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM16DILocalScopeAttr7classofENS_9AttributeE(ptr nofree readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117 ; 3 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM18DILexicalBlockAttrEvE2idE
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM22DILexicalBlockFileAttrEvE2idE
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DISubprogramAttrEvE2idE
  %spec.select.i = or i1 %i.e, %or.cond.i
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM14DIVariableAttr7classofENS_9AttributeE(ptr nofree readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117 ; 2 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DILocalVariableAttrEvE2idE
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DIGlobalVariableAttrEvE2idE
  %spec.select.i = or i1 %i.c, %i.d
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM10DITypeAttr7classofENS_9AttributeE(ptr nofree readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117 ; 6 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM14DINullTypeAttrEvE2idE
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM15DIBasicTypeAttrEvE2idE
  %or.cond.i = or i1 %i.c, %i.d
  %i.e = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM19DICompositeTypeAttrEvE2idE
  %or.cond16.i = or i1 %i.e, %or.cond.i
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17DIDerivedTypeAttrEvE2idE
  %or.cond17.i = or i1 %i.f, %or.cond16.i
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIStringTypeAttrEvE2idE
  %or.cond18.i = or i1 %i.g, %or.cond17.i
  %i.h = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM20DISubroutineTypeAttrEvE2idE
  %spec.select.i = or i1 %i.h, %or.cond18.i
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM12TBAANodeAttr7classofENS_9AttributeE(ptr nofree readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117 ; 2 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM22TBAATypeDescriptorAttrEvE2idE
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM12TBAARootAttrEvE2idE
  %spec.select.i = or i1 %i.c, %i.d
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM17MemoryEffectsAttr3getEPNS_11MLIRContextEN4llvm8ArrayRefINS0_10ModRefInfoEEE(ptr noundef %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::array.2060", align 8  ; 9 uses
  %4 = alloca %"class.llvm::function_ref.2227", align 8 ; 5 uses
  %5 = alloca %"class.std::tuple.2229", align 8   ; 10 uses
  %6 = alloca %class.anon.2242, align 8           ; 4 uses
  %7 = alloca %class.anon.2243, align 8           ; 5 uses
  %8 = alloca %"class.llvm::function_ref.1633", align 8 ; 5 uses
  %9 = alloca %class.anon.2228, align 8           ; 5 uses
  %10 = alloca %"struct.std::array.2060", align 8 ; 6 uses
  %11 = alloca %"class.llvm::function_ref.2227", align 8 ; 5 uses
  %12 = alloca %"class.std::tuple.2229", align 8  ; 7 uses
  %13 = alloca %class.anon.2242, align 8          ; 4 uses
  %14 = alloca %class.anon.2243, align 8          ; 5 uses
  %15 = alloca %"class.llvm::function_ref.1633", align 8 ; 5 uses
  %16 = alloca %class.anon.2228, align 8          ; 5 uses
  switch i64 %2, label %bb.d [
    i64 0, label %bb.b
    i64 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext19getAttributeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17MemoryEffectsAttrEvE2idE, ptr %16, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !728
  %i.c = ptrtoint ptr %16 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store ptr @_ZN4llvm12function_refIFvPN4mlir4LLVM6detail24MemoryEffectsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17MemoryEffectsAttrEJNS2_10ModRefInfoESD_SD_SD_SD_SD_EEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_, ptr %11, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store <4 x i64> splat (i64 3), ptr %12, align 8, !tbaa !1056, !alias.scope !2470
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 3, ptr %17, align 8, !tbaa !739, !alias.scope !2470
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 3, ptr %18, align 8, !tbaa !741, !alias.scope !2470
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store <4 x i64> splat (i64 3), ptr %10, align 8
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 3, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 3, ptr %20, align 8
  %i.e = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %10, i64 noundef 48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.f = trunc i64 %i.e to i32
  %i.g = xor i32 %i.f, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !743
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %12, ptr %14, align 8, !tbaa !743
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %11, ptr %i.h, align 8, !tbaa !745
  %i.i = ptrtoint ptr %13 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_4LLVM6detail24MemoryEffectsAttrStorageEJNSB_10ModRefInfoESE_SE_SE_SE_SE_EEEPT_NS0_IFvSG_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %15, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.k = ptrtoint ptr %14 to i64
  store i64 %i.k, ptr %i.j, align 8, !tbaa !150
  %i.l = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17MemoryEffectsAttrEvE2idE, i32 noundef %i.g, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_4LLVM6detail24MemoryEffectsAttrStorageEJNSA_10ModRefInfoESD_SD_SD_SD_SD_EEEPT_NS0_IFvSF_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.i, ptr noundef nonnull byval(%"class.llvm::function_ref.1633") align 8 %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8, !tbaa !1056   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1056 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1056 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1056 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1056 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1056 ; 2 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext19getAttributeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17MemoryEffectsAttrEvE2idE, ptr %9, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.y, align 8, !tbaa !728
  %i.z = ptrtoint ptr %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @_ZN4llvm12function_refIFvPN4mlir4LLVM6detail24MemoryEffectsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17MemoryEffectsAttrEJNS2_10ModRefInfoESD_SD_SD_SD_SD_EEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_, ptr %4, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 %i.w, ptr %5, align 8, !tbaa !731, !alias.scope !2471
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.ab, align 8, !tbaa !733, !alias.scope !2471
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.s, ptr %i.ac, align 8, !tbaa !735, !alias.scope !2471
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.q, ptr %i.ad, align 8, !tbaa !737, !alias.scope !2471
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.o, ptr %i.ae, align 8, !tbaa !739, !alias.scope !2471
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.m, ptr %i.af, align 8, !tbaa !741, !alias.scope !2471
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %i.m, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.q, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.s, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.u, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.w, ptr %i.ak, align 8
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.am = trunc i64 %i.al to i32
  %i.an = xor i32 %i.am, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %5, ptr %6, align 8, !tbaa !743
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %5, ptr %7, align 8, !tbaa !743
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.ao, align 8, !tbaa !745
  %i.ap = ptrtoint ptr %6 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_4LLVM6detail24MemoryEffectsAttrStorageEJNSB_10ModRefInfoESE_SE_SE_SE_SE_EEEPT_NS0_IFvSG_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %8, align 8, !tbaa !149
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = ptrtoint ptr %7 to i64
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !150
  %i.as = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4LLVM17MemoryEffectsAttrEvE2idE, i32 noundef %i.an, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_4LLVM6detail24MemoryEffectsAttrStorageEJNSA_10ModRefInfoESD_SD_SD_SD_SD_EEEPT_NS0_IFvSF_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.ap, ptr noundef nonnull byval(%"class.llvm::function_ref.1633") align 8 %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.08.0 = phi ptr [ %i.l, %bb.b ], [ %i.as, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.08.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM17MemoryEffectsAttr11isReadWriteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !748
  %.not = icmp eq i64 %i.c, 3
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !749
  %.not2 = icmp eq i64 %i.e, 3
  br i1 %.not2, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !747
  %.not3 = icmp eq i64 %i.g, 3
  br i1 %.not3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !750
  %.not4 = icmp eq i64 %i.i, 3
  br i1 %.not4, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !751
  %.not5 = icmp eq i64 %i.k, 3
  br i1 %.not5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !752
  %.not6 = icmp eq i64 %i.m, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ %.not6, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4mlir4LLVM16DIExpressionAttr3getEPNS_11MLIRContextE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 3 uses
  %1 = alloca %"struct.std::array.1655", align 8  ; 4 uses
  %2 = alloca %"class.llvm::function_ref.1823", align 8 ; 5 uses
  %3 = alloca %"class.std::tuple.1825", align 8   ; 5 uses
  %4 = alloca %class.anon.1828, align 8           ; 4 uses
  %5 = alloca %class.anon.1829, align 8           ; 5 uses
  %6 = alloca %"class.llvm::function_ref.1633", align 8 ; 5 uses
  %7 = alloca %class.anon.1824, align 8           ; 5 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext19getAttributeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIExpressionAttrEvE2idE, ptr %7, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !367
  %i.d = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @_ZN4llvm12function_refIFvPN4mlir4LLVM6detail23DIExpressionAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16DIExpressionAttrEJNS_8ArrayRefINS2_20DIExpressionElemAttrEEEEEENSt9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.f = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %i.a, i64 noundef 0) #22
  %i.g = xor i64 %i.f, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store i64 %i.g, ptr %1, align 8
  %i.h = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.i = trunc i64 %i.h to i32
  %i.j = xor i32 %i.i, -313160499
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %3, ptr %4, align 8, !tbaa !371
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %3, ptr %5, align 8, !tbaa !371
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !373
  %i.l = ptrtoint ptr %4 to i64
  store ptr @_ZN4llvm12function_refIFPN4mlir14StorageUniquer11BaseStorageERNS2_16StorageAllocatorEEE11callback_fnIZNS2_3getINS1_4LLVM6detail23DIExpressionAttrStorageEJNS_8ArrayRefINSB_20DIExpressionElemAttrEEEEEEPT_NS0_IFvSI_EEENS1_6TypeIDEDpOT0_EUlS6_E_EES4_lS6_, ptr %6, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = ptrtoint ptr %5 to i64
  store i64 %i.n, ptr %i.m, align 8, !tbaa !150
  %i.o = call noundef ptr @_ZN4mlir14StorageUniquer28getParametricStorageTypeImplENS_6TypeIDEjN4llvm12function_refIFbPKNS0_11BaseStorageEEEENS3_IFPS4_RNS0_16StorageAllocatorEEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4LLVM16DIExpressionAttrEvE2idE, i32 noundef %i.j, ptr nonnull @_ZN4llvm12function_refIFbPKN4mlir14StorageUniquer11BaseStorageEEE11callback_fnIZNS2_3getINS1_4LLVM6detail23DIExpressionAttrStorageEJNS_8ArrayRefINSA_20DIExpressionElemAttrEEEEEEPT_NS0_IFvSH_EEENS1_6TypeIDEDpOT0_EUlS5_E_EEblS5_, i64 %i.l, ptr noundef nonnull byval(%"class.llvm::function_ref.1633") align 8 %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret ptr %i.o
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
