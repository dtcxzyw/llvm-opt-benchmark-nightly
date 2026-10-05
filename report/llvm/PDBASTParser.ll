Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PDBASTParser?download=true
inline.NumInlined: 3665
inline.NumDeleted: 2198
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN12PDBASTParser16AddRecordMembersERN12lldb_private10SymbolFileERNS0_12CompilerTypeERN4llvm3pdb24ConcreteSymbolEnumeratorINS6_13PDBSymbolDataEEERNS0_16ClangASTImporter10LayoutInfoE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.av

bb.av:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pr = load ptr, ptr %10, align 8, !tbaa !208   ; 3 uses
  %.not.i89 = icmp eq ptr %.pr, null
  br i1 %.not.i89, label %_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolDataESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3pdb13PDBSymbolDataEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3pdb13PDBSymbolDataEEclEPS2_.exit.i: ; preds = %bb.av
  %i.ks = load ptr, ptr %.pr, align 8, !tbaa !61
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(32) %.pr) #18, !inline_history !13
  br label %_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.av, %_ZNKSt14default_deleteIN4llvm3pdb13PDBSymbolDataEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.kv = load ptr, ptr %3, align 8, !tbaa !61
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.609") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  %i.ky = load ptr, ptr %10, align 8, !tbaa !208  ; 2 uses
  %.not138 = icmp eq ptr %i.ky, null
  br i1 %.not138, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolDataESt14default_deleteIS2_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12PDBASTParser16AddRecordMethodsERN12lldb_private10SymbolFileERNS0_12CompilerTypeERN4llvm3pdb24ConcreteSymbolEnumeratorINS6_13PDBSymbolFuncEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.732", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = load ptr, ptr %3, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.732") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  %i.e = load ptr, ptr %4, align 8, !tbaa !660    ; 2 uses
  %.not1112 = icmp eq ptr %i.e, null
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 800
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolFuncESt14default_deleteIS2_EED2Ev.exit
  %i.g = phi ptr [ %i.e, %.lr.ph ], [ %i.t, %_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolFuncESt14default_deleteIS2_EED2Ev.exit ]
  %i.h = call noundef ptr @_ZNK12PDBASTParser15AddRecordMethodERN12lldb_private10SymbolFileERNS0_12CompilerTypeERKN4llvm3pdb13PDBSymbolFuncE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.g) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.i = load ptr, ptr %4, align 8, !tbaa !660
  %i.j = call noundef i32 @_ZNK4llvm3pdb9PDBSymbol13getSymIndexIdEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i) #18
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %i.a, align 8, !tbaa !183
  %i.l = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImPN5clang4DeclENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketImJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %i.h, ptr %i.m, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pr = load ptr, ptr %4, align 8, !tbaa !660    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolFuncESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3pdb13PDBSymbolFuncEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3pdb13PDBSymbolFuncEEclEPS2_.exit.i: ; preds = %bb.d
  %i.n = load ptr, ptr %.pr, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %.pr) #18, !inline_history !31
  br label %_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolFuncESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolFuncESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN4llvm3pdb13PDBSymbolFuncEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.q = load ptr, ptr %3, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.732") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  %i.t = load ptr, ptr %4, align 8, !tbaa !660    ; 2 uses
  %.not11 = icmp eq ptr %i.t, null
  br i1 %.not11, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4llvm3pdb13PDBSymbolFuncESt14default_deleteIS2_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

declare void @_ZN12lldb_private15TypeSystemClang34AddMethodOverridesForCXXRecordTypeEPv(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef) local_unnamed_addr #2

declare void @_ZN12lldb_private15TypeSystemClang19BuildIndirectFieldsERKNS_12CompilerTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN12lldb_private16ClangASTImporter15SetRecordLayoutEPN5clang10RecordDeclERKNS0_10LayoutInfoE(ptr noundef nonnull align 8 dereferenceable(768), ptr noundef, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZNK12lldb_private11ModuleChild9GetModuleEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.832") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZNK12lldb_private12CompilerType11GetTypeNameEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN12lldb_private15TypeSystemClang20AddFieldToRecordTypeERKNS_12CompilerTypeEN4llvm9StringRefES3_j(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN12lldb_private15TypeSystemClang23AddVariableToRecordTypeERKNS_12CompilerTypeEN4llvm9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK12lldb_private12CompilerType7IsConstEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

declare void @_ZN12lldb_private15TypeSystemClang32SetIntegerInitializerForVariableEPN5clang7VarDeclERKN4llvm5APIntE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private3Log6FormatIJNS_11ConstStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_RjSA_EEEvN4llvm9StringRefESC_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %11 = alloca %"class.llvm::formatv_object.1165", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.a = load i64, ptr %6, align 8, !tbaa !219, !noalias !1194
  %i.b = load i64, ptr %8, align 8, !tbaa !219, !noalias !1194
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %_ZN4llvm7formatvIJN12lldb_private11ConstStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_RjSA_EEEDaPKcDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #18, !noalias !1194
  br label %_ZN4llvm7formatvIJN12lldb_private11ConstStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_RjSA_EEEDaPKcDpOT_.exit

_ZN4llvm7formatvIJN12lldb_private11ConstStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_RjSA_EEEDaPKcDpOT_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.d = ptrtoint ptr %7 to i64
  %i.e = ptrtoint ptr %9 to i64
  %i.f = ptrtoint ptr %10 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  store ptr %5, ptr %11, align 8, !tbaa !219, !alias.scope !1194
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !183, !alias.scope !1194
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !674, !alias.scope !1194
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !183, !alias.scope !1194
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.i, align 8, !tbaa !678, !alias.scope !1194
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store i64 %i.f, ptr %i.j, align 8, !tbaa !685, !alias.scope !1194
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store i64 %i.e, ptr %i.k, align 8, !tbaa !685, !alias.scope !1194
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store i64 %i.b, ptr %i.l, align 8, !tbaa !219, !alias.scope !1194
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store i64 %i.d, ptr %i.m, align 8, !tbaa !684, !alias.scope !1194
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  store i64 %i.a, ptr %i.n, align 8, !tbaa !219, !alias.scope !1194
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 96
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 112
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 128
  %.ptr.4.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = ptrtoint ptr %i.j to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIN12lldb_private11ConstStringEEEEEvlS2_S3_, ptr %i.g, align 8, !alias.scope !1194
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1194
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i, align 8, !alias.scope !1194
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !1194
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIN12lldb_private11ConstStringEEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i, align 8, !alias.scope !1194
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i64 %i.q, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !1194
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRjEEEEvlS2_S3_, ptr %.ptr.3.i.i.i.i, align 8, !alias.scope !1194
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i64 %i.r, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !1194
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRjEEEEvlS2_S3_, ptr %.ptr.4.i.i.i.i, align 8, !alias.scope !1194
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 152
  store i64 %i.s, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !tbaa !63, !alias.scope !1194
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(33) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  ret void
}

declare noundef i32 @_ZNK12lldb_private12CompilerType23GetBasicTypeEnumerationEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN12lldb_private15TypeSystemClang33SetFloatingInitializerForVariableEPN5clang7VarDeclERKN4llvm7APFloatE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm3pdb7Variant9toAPFloatEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APFloat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %3 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !205
  switch i32 %i.a, label %4 [
    i32 6, label %bb.b
    i32 10, label %bb.b
    i32 4, label %bb.b
    i32 7, label %bb.c
    i32 11, label %bb.c
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24) %3, float noundef %i.c) #18
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE) #18
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %i.e) #18
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE) #18
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

4:                                                ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr @_ZN4llvm11APFloatBase13semIEEEsingleE, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %6, label %5

5:                                                ; preds = %4
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE, i32 noundef 0) #18
  br label %bb.d

6:                                                ; preds = %4
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE, i32 noundef 0) #18
  br label %bb.d

bb.d:                                             ; preds = %6, %5
  %i.f = load ptr, ptr %0, align 8, !tbaa !63, !alias.scope !1197
  %.not.i.i = icmp eq ptr %i.f, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext false) #18
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext false) #18
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  ret void
}

declare void @_ZN12lldb_private15TypeSystemClang24CreateBaseClassSpecifierEPvN4lldb10AccessTypeEbb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.990") align 8, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN12lldb_private15TypeSystemClang19TransferBaseClassesEPvSt6vectorISt10unique_ptrIN5clang16CXXBaseSpecifierESt14default_deleteIS5_EESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, ptr nofree noundef align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef ptr @_ZN12lldb_private15TypeSystemClang24AddMethodToCXXRecordTypeEPvN4llvm9StringRefES3_RKNS_12CompilerTypeEbbbbbb(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef, ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private10FileSystem8InstanceEv() local_unnamed_addr #2

declare void @_ZN5clang11FileManagerC1ERKNS_17FileSystemOptionsEN4llvm18IntrusiveRefCntPtrINS4_3vfs10FileSystemEEE(ptr noundef nonnull align 8 dereferenceable(716), ptr noundef nonnull align 8 dereferenceable(32), ptr nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPN5clang13NamespaceDeclES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1199
  tail call void @_ZNSt8_Rb_treeIPN5clang13NamespaceDeclES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1200 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #19
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1198

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5clang11FileManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(716) dereferenceable(716)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1204 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1205
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1206
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ai, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.s, align 8, !tbaa !190
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !191
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18, !inline_history !1201
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18, !inline_history !1201
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !82
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.h, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, !prof !192

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #18
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b
  %i.ah = add i32 %.0.i3.i, -1
  %i.ai = and i32 %i.ah, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1202

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1203

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1204 ; 2 uses
  %i.aj = icmp eq i32 %.pr, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE17deallocateBucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !1205
  %i.al = zext i32 %.pr to i64                    ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10ASTContextESt10shared_ptrIN12lldb_private16ClangASTImporter18ASTContextMetadataEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EEEES5_SA_SC_SF_E10destroyAllEv.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10RecordDeclEN12lldb_private16ClangASTImporter10LayoutInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !94   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang10RecordDeclEN12lldb_private16ClangASTImporter10LayoutInfoENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SB_EEEES8_SB_SD_SG_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1209
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang10RecordDeclEN12lldb_private16ClangASTImporter10LayoutInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit
end_hunk_0
begin_hunk_1_@_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_:bb.a
  br i1 %.not.i.i.i, label %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i

_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i: ; preds = %bb.e, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE8AllocateEmm.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %2
  store i8 0, ptr %i.t, align 1, !tbaa !63
  store i64 %2, ptr %.0.i.i.i.i.i, align 8, !tbaa !681
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !1213
  store ptr %.0.i.i.i.i.i, ptr %i.e, align 8, !tbaa !628
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1214
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !1214
  %i.y = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %i.b) #18
  %i.z = load ptr, ptr %0, align 8, !tbaa !1211
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE21try_emplace_with_hashIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEjDpOT_.exit

_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE21try_emplace_with_hashIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEjDpOT_.exit: ; preds = %bb.a, %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i
  %.sroa.014.0.i = phi ptr [ %i.ab, %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i ], [ %i.e, %bb.a ]
  %.sroa.3.0.i = phi i8 [ 1, %_ZN4llvm14StringMapEntryIPN5clang14IdentifierInfoEE6createINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEJDnEEEPS4_NS_9StringRefERT_DpOT0_.exit.i ], [ 0, %bb.a ]
  %.fca.0.insert.i = insertvalue { ptr, i8 } poison, ptr %.sroa.014.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i8 } %.fca.0.insert.i, i8 %.sroa.3.0.i, 1
  ret { ptr, i8 } %.fca.1.insert.i
}

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #18 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !686  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1215
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !616

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !687
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !686
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !686
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !686
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #18 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !686 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1215
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !616

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !687
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !686
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !686
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !615
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !614
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !686
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !687
  %i.g = load i32, ptr %i.a, align 8, !tbaa !686
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !686
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !686
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !686
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !687
  %i.g = load i32, ptr %i.a, align 8, !tbaa !686
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !686
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !686
  ret void
}

declare void @_ZN5clang12FunctionDecl9setParamsERNS_10ASTContextEN4llvm8ArrayRefIPNS_11ParmVarDeclEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(23904), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #10

declare { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

declare void @_ZNK4llvm5APInt11sextOrTruncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24), float noundef) unnamed_addr #2

declare void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24)) unnamed_addr #6

declare void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24), double noundef) unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i32 noundef) unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29), i32 noundef) unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEEEclEPS4_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18, !inline_history !8
  br label %_ZNSt10unique_ptrIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEEEclEPS4_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18, !inline_history !1216
  br label %_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEED2Ev.exit

_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm3pdb16IPDBEnumChildrenINS1_9PDBSymbolEEEEclEPS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEE13getChildCountEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEE15getChildAtIndexEj(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.982") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.655", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.655") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %2) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.f = load ptr, ptr %3, align 8, !tbaa !202    ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i32 @_ZNK4llvm3pdb9PDBSymbol9getSymTagEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #18, !noalias !1222
  %i.h = icmp eq i32 %i.g, 18
  %i.i = load ptr, ptr %3, align 8, !tbaa !202    ; 4 uses
  br i1 %i.h, label %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_.exit.thread, label %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_.exit

_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_.exit.thread: ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi ptr [ null, %bb.a ], [ %i.i, %bb.b ]
  store ptr %storemerge.i.ph, ptr %0, align 8, !tbaa !645, !alias.scope !1221
  br label %_ZNSt10unique_ptrIN4llvm3pdb9PDBSymbolESt14default_deleteIS2_EED2Ev.exit

_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_.exit: ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !645, !alias.scope !1221
  %.not.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN4llvm3pdb9PDBSymbolESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i: ; preds = %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i) #18, !inline_history !19
  br label %_ZNSt10unique_ptrIN4llvm3pdb9PDBSymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb9PDBSymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_.exit.thread, %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEENS_8CastInfoIT_St10unique_ptrIT0_St14default_deleteIS7_EEvE14CastResultTypeERSA_.exit, %_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEE7getNextEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.982") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.655", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.655") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.f = load ptr, ptr %2, align 8, !tbaa !202    ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i32 @_ZNK4llvm3pdb9PDBSymbol9getSymTagEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #18, !noalias !1231
  %i.h = icmp eq i32 %i.g, 18
  %i.i = load ptr, ptr %2, align 8, !tbaa !202    ; 4 uses
  br i1 %i.h, label %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.thread, label %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit

_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.thread: ; preds = %bb.b, %bb.a
  %storemerge.i.i.ph = phi ptr [ null, %bb.a ], [ %i.i, %bb.b ]
  store ptr %storemerge.i.i.ph, ptr %0, align 8, !tbaa !645, !alias.scope !1232
  br label %_ZNSt10unique_ptrIN4llvm3pdb9PDBSymbolESt14default_deleteIS2_EED2Ev.exit

_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit: ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !645, !alias.scope !1232
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm3pdb9PDBSymbolESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i: ; preds = %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i) #18, !inline_history !19
  br label %_ZNSt10unique_ptrIN4llvm3pdb9PDBSymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3pdb9PDBSymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit.thread, %_ZN4llvm23unique_dyn_cast_or_nullINS_3pdb22PDBSymbolTypeBaseClassENS1_9PDBSymbolEEEDaOSt10unique_ptrIT0_St14default_deleteIS5_EE.exit, %_ZNKSt14default_deleteIN4llvm3pdb9PDBSymbolEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3pdb24ConcreteSymbolEnumeratorINS0_22PDBSymbolTypeBaseClassEE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

declare i64 @_ZNK5clang10ASTContext15getTypeDeclTypeEPKNS_8TypeDeclE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImPN5clang4DeclENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketImJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !87, !noalias !1237 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !665, !noalias !1237 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !86, !noalias !1237 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !651

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
end_hunk_1
