Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PointerFlowExtractor?download=true
inline.NumInlined: 2012
inline.NumDeleted: 1297
begin_hunk_0_@_ZN5clang11ASTConsumer29GetASTDeserializationListenerEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang11ASTConsumer10PrintStatsEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang11ASTConsumer22shouldSkipFunctionBodyEPNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN5clang4ssaf16findContributorsERNS_10ASTContextERKNS0_11SSAFOptionsERN4llvm8DenseMapIPKNS_9NamedDeclESt6vectorISA_SaISA_EENS6_12DenseMapInfoISA_vEENS6_6detail12DenseMapPairISA_SD_EEEE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef nonnull align 1 ptr @_ZNK5clang4ssaf18TUSummaryExtractor10getOptionsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK5clang4Decl11isTemplatedEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #4

declare { i64, i8 } @_ZN5clang4ssaf18TUSummaryExtractor9addEntityEPKNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang4ssaf13makeErrAtNodeINS_9NamedDeclEJPKcS4_EEEN4llvm5ErrorERNS_10ASTContextEPKT_NS5_9StringRefEDpRKT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.clang::SourceLocation", align 4 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.b = load ptr, ptr %2, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 %i.d(ptr noundef nonnull align 8 dereferenceable(33) %2) #20, !inline_history !574
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.e to i32
  store i32 %.sroa.0.0.extract.trunc.i, ptr %8, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2592
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !447
  call void @_ZNK5clang14SourceLocation13printToStringB5cxx11ERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 1 %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 5, ptr %i.h, align 8, !tbaa !450, !alias.scope !579
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 3, ptr %i.i, align 1, !tbaa !451, !alias.scope !579
  store ptr %3, ptr %10, align 8, !tbaa !47, !alias.scope !579
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %4, ptr %i.j, align 8, !tbaa !47, !alias.scope !579
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @.str.6, ptr %i.k, align 8, !tbaa !47, !alias.scope !579
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(34) %10) #19
  %i.l = load ptr, ptr %9, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.m = load ptr, ptr %7, align 8, !tbaa !49
  store ptr %i.m, ptr %i.a, align 8, !tbaa !48
  %i.n = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #19, !noalias !580 ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.n, 0
  %i.p = extractvalue { i32, ptr } %i.n, 1
  call void @_ZN4llvm17createStringErrorIJPKcS2_S2_EEENS_5ErrorESt10error_codeS2_DpRKT_(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, i32 %i.o, ptr %i.p, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.q = load ptr, ptr %9, align 8, !tbaa !49     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.t = load i64, ptr %i.r, align 8, !tbaa !47
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.v = load ptr, ptr %7, align 8, !tbaa !49     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !47
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret void
}

declare void @_ZN5clang4ssaf17makeEntityNameErrERNS_10ASTContextEPKNS_9NamedDeclE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #4

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

declare void @_ZN5clang4ssaf13findMatchesInEPKNS_9NamedDeclEN4llvm12function_refIFvRKNS_12DynTypedNodeEEEE(ptr noundef, ptr, i64) local_unnamed_addr #4

declare void @_ZN5clang4ssaf29buildPointerFlowEntitySummaryESt3mapINS0_18EntityPointerLevelESt3setIS2_NS2_10ComparatorESaIS2_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE(ptr dead_on_unwind writable sret(%"class.clang::ssaf::PointerFlowEntitySummary") align 8, ptr nofree noundef align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ssaf24PointerFlowEntitySummaryD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  tail call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelESt4pairIKS2_St3setIS2_NS2_10ComparatorESaIS2_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvRKN5clang12DynTypedNodeEEE11callback_fnIZN12_GLOBAL__N_129PointerFlowTUSummaryExtractor20extractEntitySummaryERKSt6vectorIPKNS1_9NamedDeclESaISD_EERNS1_10ASTContextERNS1_4ssaf18TUSummaryExtractorEEUlS4_E_EEvlS4_(i64 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #1 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %4 = alloca %class.anon.562, align 1            ; 3 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 6 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !583
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call fastcc void @_ZN12_GLOBAL__N_118PointerFlowMatcher7matchesERKN5clang12DynTypedNodeEPKNS1_9NamedDeclE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %.val, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, ptr noundef %.val1)
  %i.c = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZZN12_GLOBAL__N_129PointerFlowTUSummaryExtractor20extractEntitySummaryERKSt6vectorIPKN5clang9NamedDeclESaIS5_EERNS2_10ASTContextERNS2_4ssaf18TUSummaryExtractorEENKUlRKNS2_12DynTypedNodeEE_clESH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.c, ptr %3, align 8, !tbaa !52
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.d = load ptr, ptr %3, align 8, !tbaa !52     ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !581
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !52   ; 3 uses
  %i.i = icmp eq ptr %.pr.i, null
  br i1 %i.i, label %_ZZN12_GLOBAL__N_129PointerFlowTUSummaryExtractor20extractEntitySummaryERKSt6vectorIPKN5clang9NamedDeclESaIS5_EERNS2_10ASTContextERNS2_4ssaf18TUSummaryExtractorEENKUlRKNS2_12DynTypedNodeEE_clESH_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %.pr.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i) #19, !inline_history !582
  br label %_ZZN12_GLOBAL__N_129PointerFlowTUSummaryExtractor20extractEntitySummaryERKSt6vectorIPKN5clang9NamedDeclESaIS5_EERNS2_10ASTContextERNS2_4ssaf18TUSummaryExtractorEENKUlRKNS2_12DynTypedNodeEE_clESH_.exit

_ZZN12_GLOBAL__N_129PointerFlowTUSummaryExtractor20extractEntitySummaryERKSt6vectorIPKN5clang9NamedDeclESaIS5_EERNS2_10ASTContextERNS2_4ssaf18TUSummaryExtractorEENKUlRKNS2_12DynTypedNodeEE_clESH_.exit: ; preds = %bb.a, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118PointerFlowMatcher7matchesERKN5clang12DynTypedNodeEPKNS1_9NamedDeclE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Expected", align 8    ; 8 uses
  %5 = alloca %"class.llvm::Expected", align 8    ; 8 uses
  %6 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %7 = alloca %"class.llvm::Expected", align 8    ; 8 uses
  %8 = alloca %"class.llvm::Expected", align 8    ; 8 uses
  %9 = alloca %"class.clang::ASTNodeKind", align 4 ; 4 uses
  %10 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %11 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %12 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %13 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %14 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %15 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %16 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %17 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %18 = alloca %"class.clang::ASTNodeKind", align 4 ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8, !tbaa !605
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store i32 186, ptr %18, align 4
  %i.a = call noundef zeroext i1 @_ZNK5clang11ASTNodeKind8isBaseOfES0_(ptr noundef nonnull align 4 dereferenceable(4) %18, i32 %.sroa.0.0.copyload.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br i1 %i.a, label %_ZNK5clang12DynTypedNode3getINS_4StmtEEEPKT_v.exit, label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread71

_ZNK5clang12DynTypedNode3getINS_4StmtEEEPKT_v.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !452  ; 17 uses
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread71, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang12DynTypedNode3getINS_4StmtEEEPKT_v.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.d = load i16, ptr %i.c, align 8, !noalias !606 ; 2 uses
  %i.e = and i16 %i.d, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i16 %i.e, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8, !noalias !606 ; 2 uses
  %i.g = and i32 %i.f, 33030144
  %i.h = icmp eq i32 %i.g, 11010048
  %i.i = trunc i32 %i.f to i16                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.j, align 8, !tbaa !47, !noalias !606
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47, !noalias !606
  %i.o = and i64 %i.n, -16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !455, !noalias !606
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i8, ptr %i.r, align 16, !noalias !606
  switch i8 %i.s, label %bb.k [
    i8 40, label %bb.e
    i8 6, label %bb.e
    i8 5, label %bb.e
    i8 4, label %bb.e
    i8 3, label %bb.e
    i8 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !606
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !457, !noalias !606
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.val46.i = load ptr, ptr %i.v, align 8, !tbaa !465, !noalias !606
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.val47.i = load ptr, ptr %i.w, align 8, !tbaa !466, !noalias !606
  call void @_ZN5clang4ssaf27translateEntityPointerLevelEPKNS_4ExprERNS_10ASTContextERNS0_18TUSummaryExtractorE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %14, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(23904) %.val46.i, ptr noundef nonnull align 8 dereferenceable(24) %.val47.i) #19, !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19, !noalias !606
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !457, !noalias !606
  %.val44.i = load ptr, ptr %i.v, align 8, !tbaa !465, !noalias !606
  %.val45.i = load ptr, ptr %i.w, align 8, !tbaa !466, !noalias !606
  call void @_ZN5clang4ssaf27translateEntityPointerLevelEPKNS_4ExprERNS_10ASTContextERNS0_18TUSummaryExtractorE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %15, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(23904) %.val44.i, ptr noundef nonnull align 8 dereferenceable(24) %.val45.i) #19, !noalias !606
  call fastcc void @_ZN12_GLOBAL__N_118PointerFlowMatcher8addEdgesEON4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS6_10ComparatorESaIS6_EEEESB_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(49) %14, ptr noundef nonnull align 8 dereferenceable(49) %15)
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.aa = load i8, ptr %i.z, align 8, !noalias !606
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31, !noalias !606
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %15, ptr noundef %i.ad)
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %15, align 8, !tbaa !467, !noalias !606 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i: ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #19, !inline_history !586
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !606
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !noalias !606
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31, !noalias !606
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %14, ptr noundef %i.am)
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i
  %i.an = load ptr, ptr %14, align 8, !tbaa !467, !noalias !606 ; 3 uses
  %.not.i.i49.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i49.i, label %bb.j, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i50.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i50.i: ; preds = %bb.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #19, !inline_history !586
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i50.i, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !606
  br label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

bb.k:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ar = phi i16 [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %i.d, %bb.b ]
  %i.as = and i16 %i.ar, 511                      ; 3 uses
  %i.at = add nsw i16 %i.as, -91
  %spec.select.i.i.i.i.i.i.i.i52.i = icmp ult i16 %i.at, 5
  br i1 %spec.select.i.i.i.i.i.i.i.i52.i, label %bb.l, label %_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIKN5clang12FunctionDeclEKNS2_8CallExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !457, !noalias !606
  %i.aw = call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #19, !noalias !606 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIKN5clang12FunctionDeclEKNS2_8CallExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread112.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 28
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !606 ; 2 uses
  %i.az = and i32 %i.ay, 127
  %i.ba = add nsw i32 %i.az, -35
  %i.bb = icmp ult i32 %i.ba, 6
  br i1 %i.bb, label %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i, label %_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIKN5clang12FunctionDeclEKNS2_8CallExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread112.i

_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIKN5clang12FunctionDeclEKNS2_8CallExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread112.i: ; preds = %bb.m, %bb.l
  store ptr null, ptr %0, align 8, !tbaa !52, !alias.scope !606
  br label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i:    ; preds = %bb.m
  %i.bc = load i16, ptr %i.c, align 8, !noalias !606
  %i.bd = and i16 %i.bc, 511
  %i.be = icmp eq i16 %i.bd, 93
  %i.bf = and i32 %i.ay, 124
  %.not.i = icmp eq i32 %i.bf, 36
  %or.cond.i = and i1 %.not.i, %i.be
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i
  %i.bg = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.aw) #19, !noalias !606
  %not..i = xor i1 %i.bg, true
  %i.bh = zext i1 %not..i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i
  %.1.i = phi i64 [ 0, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i ], [ %i.bh, %bb.n ]
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.bi = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.aw) #19, !noalias !608
  %.not40.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not40.i.i, label %_ZN4llvm5ErrorD2Ev.exit34.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.p

bb.p:                                             ; preds = %.critedge26.i.i, %.lr.ph.i.i
  %indvars.iv41.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %indvars.iv.next42.i.i, %.critedge26.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.critedge26.i.i ] ; 2 uses
  %i.bs = load i32, ptr %i.bj, align 8, !tbaa !613, !noalias !608
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %indvars.iv41.i.i, %i.bt
  br i1 %i.bu, label %bb.q, label %_ZN4llvm5ErrorD2Ev.exit34.i.i

bb.q:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !631, !noalias !607
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !633 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %.critedge26.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.by, align 8, !tbaa !47
  %i.bz = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 16, !tbaa !455 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i8, ptr %i.cc, align 16
  %i.ce = and i8 %i.cd, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i.i = icmp eq i8 %i.ce, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !tbaa !47
  %i.cg = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !455
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i8, ptr %i.cj, align 16
  %i.cl = and i8 %i.ck, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.cl, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i, label %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i: ; preds = %bb.s
  %i.cm = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cb) #19 ; 2 uses
  %.not.i.i.i55.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i55.i, label %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i, %bb.r
  %.1.i8.i.i.i.i = phi ptr [ %i.cm, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i ], [ %i.cb, %bb.r ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i8.i.i.i.i, i64 16
  %i.co = load i24, ptr %i.cn, align 16
  %i.cp = and i24 %i.co, 1048576
  %.not4.i.i.i.i.i = icmp eq i24 %i.cp, 0
  br i1 %.not4.i.i.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i.i ], [ %.1.i8.i.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cq, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -16
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !455 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 16
  %i.cw = and i8 %i.cv, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i.i.i = icmp eq i8 %i.cw, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cx = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ct) #19
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i.i: ; preds = %bb.t, %.lr.ph.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.t ], [ %i.ct, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 16
  %i.cz = load i24, ptr %i.cy, align 16
  %i.da = and i24 %i.cz, 1048576
  %.not.i.i.i.i.i = icmp eq i24 %i.da, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !589

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.1.i8.i.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i.i = load i64, ptr %i.db, align 8, !tbaa !47
  %.pre.i.i.i = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i.i, -16
  %.pre5.i.i.i = inttoptr i64 %.pre.i.i.i to ptr
  br label %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i

_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i: ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i, %bb.s
  %.pre-phi6.i.i.i = phi ptr [ %i.ca, %bb.s ], [ %i.ca, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i ], [ %.pre5.i.i.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.pre-phi6.i.i.i, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !47
  %i.de = and i64 %i.dd, -16
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load ptr, ptr %i.df, align 16, !tbaa !455
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i8, ptr %i.dh, align 16
  switch i8 %i.di, label %.critedge26.i.i [
    i8 40, label %bb.u
    i8 6, label %bb.u
    i8 5, label %bb.u
    i8 4, label %bb.u
    i8 3, label %bb.u
    i8 2, label %bb.u
  ]

bb.u:                                             ; preds = %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !608
  %.val29.i.i = load ptr, ptr %i.bl, align 8, !tbaa !466, !noalias !608
  call fastcc void @_ZNK12_GLOBAL__N_118PointerFlowMatcher5toEPLEPKN5clang9NamedDeclEb(ptr dead_on_unwind noalias writable align 8 %12, ptr %.val29.i.i, ptr noundef nonnull %i.bx, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !608
  %i.dj = load i32, ptr %i.c, align 8, !noalias !608
  %i.dk = lshr i32 %i.dj, 19
  %i.dl = and i32 %i.dk, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv41.i.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !486, !noalias !608
  %.val.i.i = load ptr, ptr %i.bn, align 8, !tbaa !465, !noalias !608
  %.val28.i.i = load ptr, ptr %i.bl, align 8, !tbaa !466, !noalias !608
  call void @_ZN5clang4ssaf27translateEntityPointerLevelEPKNS_4ExprERNS_10ASTContextERNS0_18TUSummaryExtractorE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %13, ptr noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(23904) %.val.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.val28.i.i) #19
  call fastcc void @_ZN12_GLOBAL__N_118PointerFlowMatcher8addEdgesEON4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS6_10ComparatorESaIS6_EEEESB_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(49) %12, ptr noundef nonnull align 8 dereferenceable(49) %13)
  %i.dq = load i8, ptr %i.bo, align 8, !noalias !608
  %i.dr = trunc i8 %i.dq to i1
  br i1 %i.dr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = load ptr, ptr %i.bp, align 8, !tbaa !31, !noalias !608
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %13, ptr noundef %i.ds)
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr %13, align 8, !tbaa !467, !noalias !608 ; 3 uses
  %.not.i.i30.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i30.i.i, label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i: ; preds = %bb.w
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #19, !inline_history !590
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i.i

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !608
  %i.dx = load i8, ptr %i.bq, align 8, !noalias !608
  %i.dy = trunc i8 %i.dx to i1
  br i1 %i.dy, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i.i
  %i.dz = load ptr, ptr %i.br, align 8, !tbaa !31, !noalias !608
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %12, ptr noundef %i.dz)
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i.i

bb.y:                                             ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i.i
  %i.ea = load ptr, ptr %12, align 8, !tbaa !467, !noalias !608 ; 3 uses
  %.not.i.i31.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i31.i.i, label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i32.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i32.i.i: ; preds = %bb.y
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #19, !inline_history !590
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i.i

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i32.i.i, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !608
  %i.ee = load ptr, ptr %0, align 8, !tbaa !52, !alias.scope !608
  %.not36.i.i = icmp eq ptr %i.ee, null
  br i1 %.not36.i.i, label %.critedge26.i.i, label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

.critedge26.i.i:                                  ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i.i, %bb.q
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ef = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.aw) #19
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp samesign ult i64 %indvars.iv.next.i.i, %i.eg
  br i1 %i.eh, label %bb.p, label %_ZN4llvm5ErrorD2Ev.exit34.i.i, !llvm.loop !591

_ZN4llvm5ErrorD2Ev.exit34.i.i:                    ; preds = %.critedge26.i.i, %bb.p, %bb.o
  store ptr null, ptr %0, align 8, !tbaa !52, !alias.scope !608
  br label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIKN5clang12FunctionDeclEKNS2_8CallExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread.i: ; preds = %bb.k
  %i.ei = add nsw i16 %i.as, -117
  %spec.select.i.i.i.i.i.i.i.i56.i = icmp ult i16 %i.ei, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i56.i, label %bb.z, label %_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIN5clang18CXXConstructorDeclEKNS2_16CXXConstructExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread.i

bb.z:                                             ; preds = %_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIKN5clang12FunctionDeclEKNS2_8CallExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !636, !noalias !606 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.el = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ek) #19, !noalias !638
  %.not40.i58.i = icmp eq i32 %i.el, 0
  br i1 %.not40.i58.i, label %_ZN4llvm5ErrorD2Ev.exit34.i61.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 120
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge26.i75.i, %.lr.ph.i59.i
  %indvars.iv.i60.i = phi i64 [ 0, %.lr.ph.i59.i ], [ %indvars.iv.next.i76.i, %.critedge26.i75.i ] ; 4 uses
  %i.eu = load i32, ptr %i.em, align 8, !tbaa !639, !noalias !638
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %indvars.iv.i60.i, %i.ev
  br i1 %i.ew, label %bb.ab, label %_ZN4llvm5ErrorD2Ev.exit34.i61.i

bb.ab:                                            ; preds = %bb.aa
  %i.ex = load ptr, ptr %i.en, align 8, !tbaa !631, !noalias !637
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i60.i
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !633 ; 3 uses
  %.not.i62.i = icmp eq ptr %i.ez, null
  br i1 %.not.i62.i, label %.critedge26.i75.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  %.sroa.0.0.copyload.i.i.i63.i = load i64, ptr %i.fa, align 8, !tbaa !47
  %i.fb = and i64 %.sroa.0.0.copyload.i.i.i63.i, -16
  %i.fc = inttoptr i64 %i.fb to ptr               ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 16, !tbaa !455 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load i8, ptr %i.fe, align 16
  %i.fg = and i8 %i.ff, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i64.i = icmp eq i8 %i.fg, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i64.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i83.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i65.i = load i64, ptr %i.fh, align 8, !tbaa !47
  %i.fi = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i65.i, -16
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load ptr, ptr %i.fj, align 16, !tbaa !455
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i8, ptr %i.fl, align 16
  %i.fn = and i8 %i.fm, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i66.i = icmp eq i8 %i.fn, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i.i66.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i81.i, label %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i81.i: ; preds = %bb.ad
  %i.fo = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fd) #19 ; 2 uses
  %.not.i.i.i82.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i82.i, label %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i83.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i83.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i81.i, %bb.ac
  %.1.i8.i.i.i84.i = phi ptr [ %i.fo, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i81.i ], [ %i.fd, %bb.ac ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1.i8.i.i.i84.i, i64 16
  %i.fq = load i24, ptr %i.fp, align 16
  %i.fr = and i24 %i.fq, 1048576
  %.not4.i.i.i.i85.i = icmp eq i24 %i.fr, 0
  br i1 %.not4.i.i.i.i85.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i93.i, label %.lr.ph.i.i.i.i86.i

.lr.ph.i.i.i.i86.i:                               ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i83.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i90.i
  %.05.i.i.i.i87.i = phi ptr [ %.1.i.i.i.i.i91.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i90.i ], [ %.1.i8.i.i.i84.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i83.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i87.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i.i88.i = load i64, ptr %i.fs, align 8
  %i.ft = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i88.i, -16
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load ptr, ptr %i.fu, align 16, !tbaa !455 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i8, ptr %i.fw, align 16
  %i.fy = and i8 %i.fx, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i.i89.i = icmp eq i8 %i.fy, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i.i89.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i90.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i86.i
  %i.fz = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fv) #19
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i90.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i90.i: ; preds = %bb.ae, %.lr.ph.i.i.i.i86.i
  %.1.i.i.i.i.i91.i = phi ptr [ %i.fz, %bb.ae ], [ %i.fv, %.lr.ph.i.i.i.i86.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i91.i, i64 16
  %i.gb = load i24, ptr %i.ga, align 16
  %i.gc = and i24 %i.gb, 1048576
  %.not.i.i.i.i92.i = icmp eq i24 %i.gc, 0
  br i1 %.not.i.i.i.i92.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i93.i, label %.lr.ph.i.i.i.i86.i, !llvm.loop !589

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i93.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i90.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i83.i
  %.0.lcssa.i.i.i.i94.i = phi ptr [ %.1.i8.i.i.i84.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i.i83.i ], [ %.1.i.i.i.i.i91.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i.i90.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i94.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i95.i = load i64, ptr %i.gd, align 8, !tbaa !47
  %.pre.i.i96.i = and i64 %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i95.i, -16
  %.pre5.i.i97.i = inttoptr i64 %.pre.i.i96.i to ptr
  br label %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i

_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i: ; preds = %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i93.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i81.i, %bb.ad
  %.pre-phi6.i.i68.i = phi ptr [ %i.fc, %bb.ad ], [ %i.fc, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i81.i ], [ %.pre5.i.i97.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i.i93.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.pre-phi6.i.i68.i, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !47
  %i.gg = and i64 %i.gf, -16
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = load ptr, ptr %i.gh, align 16, !tbaa !455
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load i8, ptr %i.gj, align 16
  switch i8 %i.gk, label %.critedge26.i75.i [
    i8 40, label %bb.af
    i8 6, label %bb.af
    i8 5, label %bb.af
    i8 4, label %bb.af
    i8 3, label %bb.af
    i8 2, label %bb.af
  ]

bb.af:                                            ; preds = %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !638
  %.val29.i69.i = load ptr, ptr %i.eo, align 8, !tbaa !466, !noalias !638
  call fastcc void @_ZNK12_GLOBAL__N_118PointerFlowMatcher5toEPLEPKN5clang9NamedDeclEb(ptr dead_on_unwind noalias writable align 8 %10, ptr %.val29.i69.i, ptr noundef nonnull %i.ez, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !638
  %i.gl = load i16, ptr %i.c, align 8, !noalias !638
  %i.gm = and i16 %i.gl, 511
  %.not.i.i.i.i.i.i = icmp eq i16 %i.gm, 118      ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.c, ptr null
  %i.gn = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i.i.i, i64 48
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.gn, ptr %19
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i.i.i, i64 %indvars.iv.i60.i
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !486, !noalias !638
  %.val.i70.i = load ptr, ptr %i.ep, align 8, !tbaa !465, !noalias !638
  %.val28.i71.i = load ptr, ptr %i.eo, align 8, !tbaa !466, !noalias !638
  call void @_ZN5clang4ssaf27translateEntityPointerLevelEPKNS_4ExprERNS_10ASTContextERNS0_18TUSummaryExtractorE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %11, ptr noundef %i.gp, ptr noundef nonnull align 8 dereferenceable(23904) %.val.i70.i, ptr noundef nonnull align 8 dereferenceable(24) %.val28.i71.i) #19
  call fastcc void @_ZN12_GLOBAL__N_118PointerFlowMatcher8addEdgesEON4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS6_10ComparatorESaIS6_EEEESB_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(49) %10, ptr noundef nonnull align 8 dereferenceable(49) %11)
  %i.gq = load i8, ptr %i.eq, align 8, !noalias !638
  %i.gr = trunc i8 %i.gq to i1
  br i1 %i.gr, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = load ptr, ptr %i.er, align 8, !tbaa !31, !noalias !638
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %11, ptr noundef %i.gs)
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i72.i

bb.ah:                                            ; preds = %bb.af
  %i.gt = load ptr, ptr %11, align 8, !tbaa !467, !noalias !638 ; 3 uses
  %.not.i.i30.i79.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i30.i79.i, label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i72.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i80.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i80.i: ; preds = %bb.ah
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gt) #19, !inline_history !594
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i72.i

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i72.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i80.i, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !638
  %i.gx = load i8, ptr %i.es, align 8, !noalias !638
  %i.gy = trunc i8 %i.gx to i1
  br i1 %i.gy, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i72.i
  %i.gz = load ptr, ptr %i.et, align 8, !tbaa !31, !noalias !638
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %10, ptr noundef %i.gz)
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i73.i

bb.aj:                                            ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit.i72.i
  %i.ha = load ptr, ptr %10, align 8, !tbaa !467, !noalias !638 ; 3 uses
  %.not.i.i31.i77.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i31.i77.i, label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i73.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i32.i78.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i32.i78.i: ; preds = %bb.aj
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.ha) #19, !inline_history !594
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i73.i

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i73.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i32.i78.i, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !638
  %i.he = load ptr, ptr %0, align 8, !tbaa !52, !alias.scope !638
  %.not36.i74.i = icmp eq ptr %i.he, null
  br i1 %.not36.i74.i, label %.critedge26.i75.i, label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

.critedge26.i75.i:                                ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit33.i73.i, %_ZN5clang4ssaf15hasPtrOrArrTypeEPKNS_9ValueDeclE.exit.i67.i, %bb.ab
  %indvars.iv.next.i76.i = add nuw nsw i64 %indvars.iv.i60.i, 1 ; 2 uses
  %i.hf = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ek) #19
  %i.hg = zext i32 %i.hf to i64
  %i.hh = icmp samesign ult i64 %indvars.iv.next.i76.i, %i.hg
  br i1 %i.hh, label %bb.aa, label %_ZN4llvm5ErrorD2Ev.exit34.i61.i, !llvm.loop !595

_ZN4llvm5ErrorD2Ev.exit34.i61.i:                  ; preds = %.critedge26.i75.i, %bb.aa, %bb.z
  store ptr null, ptr %0, align 8, !tbaa !52, !alias.scope !638
  br label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIN5clang18CXXConstructorDeclEKNS2_16CXXConstructExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIKN5clang12FunctionDeclEKNS2_8CallExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread.i
  %i.hi = icmp eq i16 %i.as, 144
  br i1 %i.hi, label %bb.ak, label %_ZN4llvm5ErrorD2Ev.exit102.i

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIN5clang18CXXConstructorDeclEKNS2_16CXXConstructExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !641, !noalias !606 ; 3 uses
  %.not42.i = icmp eq ptr %i.hk, null
  br i1 %.not42.i, label %_ZN4llvm5ErrorD2Ev.exit101.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.0.0.copyload.i.i99.i = load i64, ptr %i.hl, align 8, !tbaa !47, !noalias !606
  %i.hm = and i64 %.sroa.0.0.copyload.i.i99.i, -16
  %i.hn = inttoptr i64 %i.hm to ptr
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !47, !noalias !606
  %i.hq = and i64 %i.hp, -16
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = load ptr, ptr %i.hr, align 16, !tbaa !455, !noalias !606
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load i8, ptr %i.ht, align 16, !noalias !606
  switch i8 %i.hu, label %_ZN4llvm5ErrorD2Ev.exit101.i [
    i8 40, label %bb.am
    i8 6, label %bb.am
    i8 5, label %bb.am
    i8 4, label %bb.am
    i8 3, label %bb.am
    i8 2, label %bb.am
  ]

_ZN4llvm5ErrorD2Ev.exit101.i:                     ; preds = %bb.al, %bb.ak
  store ptr null, ptr %0, align 8, !tbaa !52, !alias.scope !606
  br label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19, !noalias !606
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.val48.i = load ptr, ptr %i.hv, align 8, !tbaa !466, !noalias !606
  call fastcc void @_ZNK12_GLOBAL__N_118PointerFlowMatcher5toEPLEPKN5clang9NamedDeclEb(ptr dead_on_unwind noalias writable align 8 %16, ptr %.val48.i, ptr noundef %3, i1 noundef zeroext true), !noalias !606
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19, !noalias !606
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i = load ptr, ptr %i.hw, align 8, !tbaa !465, !noalias !606
  %.val43.i = load ptr, ptr %i.hv, align 8, !tbaa !466, !noalias !606
  call void @_ZN5clang4ssaf27translateEntityPointerLevelEPKNS_4ExprERNS_10ASTContextERNS0_18TUSummaryExtractorE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %17, ptr noundef nonnull %i.hk, ptr noundef nonnull align 8 dereferenceable(23904) %.val.i, ptr noundef nonnull align 8 dereferenceable(24) %.val43.i) #19, !noalias !606
  call fastcc void @_ZN12_GLOBAL__N_118PointerFlowMatcher8addEdgesEON4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS6_10ComparatorESaIS6_EEEESB_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(49) %16, ptr noundef nonnull align 8 dereferenceable(49) %17)
  %i.hx = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.hy = load i8, ptr %i.hx, align 8
  %i.hz = trunc i8 %i.hy to i1
  br i1 %i.hz, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !31
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %17, ptr noundef %i.ib)
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit20

bb.ao:                                            ; preds = %bb.am
  %i.ic = load ptr, ptr %17, align 8, !tbaa !467  ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i18, label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit20, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i19

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i19: ; preds = %bb.ao
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ic) #19, !inline_history !0
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit20

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit20: ; preds = %bb.an, %bb.ao, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !606
  %i.ig = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ih = load i8, ptr %i.ig, align 8
  %i.ii = trunc i8 %i.ih to i1
  br i1 %i.ii, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit20
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !31
  call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelES2_St9_IdentityIS2_ENS2_10ComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(49) %16, ptr noundef %i.ik)
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit

bb.aq:                                            ; preds = %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit20
  %i.il = load ptr, ptr %16, align 8, !tbaa !467  ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.il, null
  br i1 %.not.i.i17, label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.aq
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !16
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(8) %i.il) #19, !inline_history !0
  br label %_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit

_ZN4llvm8ExpectedISt3setIN5clang4ssaf18EntityPointerLevelENS4_10ComparatorESaIS4_EEED2Ev.exit: ; preds = %bb.ap, %bb.aq, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !606
  br label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

_ZN4llvm5ErrorD2Ev.exit102.i:                     ; preds = %_ZN12_GLOBAL__N_118PointerFlowMatcher21matchesArgsWithParamsIN5clang18CXXConstructorDeclEKNS2_16CXXConstructExprEEEN4llvm5ErrorEjPT_PT0_.exit.thread.i
  store ptr null, ptr %0, align 8, !tbaa !52, !alias.scope !606
  br label %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread

_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread71: ; preds = %bb.a, %_ZNK5clang12DynTypedNode3getINS_4StmtEEEPKT_v.exit
  %.sroa.0.0.copyload.i13 = load i32, ptr %2, align 8, !tbaa !605
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 80, ptr %9, align 4
  %i.ip = call noundef zeroext i1 @_ZNK5clang11ASTNodeKind8isBaseOfES0_(ptr noundef nonnull align 4 dereferenceable(4) %9, i32 %.sroa.0.0.copyload.i13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br i1 %i.ip, label %_ZNK5clang12DynTypedNode3getINS_4DeclEEEPKT_v.exit, label %_ZN4llvm5ErrorD2Ev.exit

_ZNK5clang12DynTypedNode3getINS_4DeclEEEPKT_v.exit: ; preds = %_ZN12_GLOBAL__N_118PointerFlowMatcher11matchesStmtEPKN5clang4StmtEPKNS1_9NamedDeclE.exit.thread71
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !452 ; 10 uses
  %.not12.not = icmp eq ptr %i.ir, null
  br i1 %.not12.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNK5clang12DynTypedNode3getINS_4DeclEEEPKT_v.exit
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 28 ; 3 uses
  %i.it = load i32, ptr %i.is, align 4, !noalias !642
  %i.iu = and i32 %i.it, 127                      ; 3 uses
  %i.iv = add nsw i32 %i.iu, -54
  %i.iw = icmp ult i32 %i.iv, -27
  br i1 %i.iw, label %.critedge.i.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ix = add nsw i32 %i.iu, -48
  %i.iy = icmp ult i32 %i.ix, -7
  br i1 %i.iy, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iz = call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.ir) #19, !noalias !642
  %.pre = load i32, ptr %i.is, align 4, !noalias !642
  %.pre96 = and i32 %.pre, 127
  br label %bb.au
end_hunk_0
