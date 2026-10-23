Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RangeSelector?download=true
inline.NumInlined: 1427
inline.NumDeleted: 723
begin_hunk_0_@_ZNSt17_Function_handlerIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEN12_GLOBAL__N_116RelativeSelectorINS2_8CallExprEXadL_ZNSB_21getCallArgumentsRangeES9_RKSD_EEEEE9_M_invokeERKSt9_Any_dataS9_:bb.a
  store i8 2, ptr %i.ax, align 8, !tbaa !475, !alias.scope !935, !noalias !933
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 3, ptr %i.ay, align 1, !tbaa !474, !alias.scope !935, !noalias !933
  %i.az = call { ptr, i64 } @_ZNK5clang11ASTNodeKind11asStringRefEv(ptr noundef nonnull align 4 dereferenceable(4) %10) #14, !noalias !933 ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 1
  %i.bb = extractvalue { ptr, i64 } %i.az, 0
  store ptr %5, ptr %4, align 8, !alias.scope !936, !noalias !933
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !936, !noalias !933
  %.sroa.2.0..sroa_idx.i.i.i18.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ba, ptr %.sroa.2.0..sroa_idx.i.i.i18.i.i.i.i, align 8, !tbaa !15, !alias.scope !936, !noalias !933
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.bd, align 8, !tbaa !475, !alias.scope !936, !noalias !933
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 5, ptr %i.be, align 1, !tbaa !474, !alias.scope !936, !noalias !933
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !933
  store ptr %4, ptr %3, align 8, !noalias !933
  %.sroa.5.0..sroa_idx43.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.17, ptr %.sroa.5.0..sroa_idx43.i.i.i.i, align 8, !noalias !933
  %.sroa.7.0..sroa_idx51.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %.sroa.7.0..sroa_idx51.i.i.i.i, align 8, !noalias !933
  %.sroa.9.0..sroa_idx55.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 3, ptr %.sroa.9.0..sroa_idx55.i.i.i.i, align 1, !noalias !933
  %i.bf = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15, !noalias !937 ; 2 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #18
  call void @_ZN4llvm11StringErrorC1ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57) %i.bf, i32 22, ptr nonnull %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %3) #14, !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !933
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !alias.scope !923
  %i.bj = or i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 8, !alias.scope !923
  store ptr %i.bf, ptr %0, align 8, !tbaa !39, !alias.scope !938
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14, !noalias !923
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIN5clang15CharSourceRangeEEERN12_GLOBAL__N_116RelativeSelectorINS2_8CallExprEXadL_ZNS5_21getCallArgumentsRangeERKNS2_12ast_matchers11MatchFinder11MatchResultERKS7_EEEEJSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit

.loopexit.i.i.i:                                  ; preds = %bb.i, %_ZL22findPreviousTokenStartN5clang14SourceLocationERKNS_13SourceManagerERKNS_11LangOptionsE.exit.i.i.i.i.i.i, %.thread17.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.sroa.010.215.i.i.i.i.i.i = phi i64 [ %.sroa.010.1.ph.i.i.i.i.i.i, %.thread17.i.i.i.i.i.i ], [ 1, %bb.e ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 1, %_ZL22findPreviousTokenStartN5clang14SourceLocationERKNS_13SourceManagerERKNS_11LangOptionsE.exit.i.i.i.i.i.i ], [ 1, %bb.i ]
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %.sroa.0.0.copyload.i.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i = add nuw nsw i64 %.sroa.010.215.i.i.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !alias.scope !923
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.bk, align 8, !alias.scope !923
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %0, align 8, !tbaa !35, !alias.scope !923
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !37, !alias.scope !923
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIN5clang15CharSourceRangeEEERN12_GLOBAL__N_116RelativeSelectorINS2_8CallExprEXadL_ZNS5_21getCallArgumentsRangeERKNS2_12ast_matchers11MatchFinder11MatchResultERKS7_EEEEJSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIN5clang15CharSourceRangeEEERN12_GLOBAL__N_116RelativeSelectorINS2_8CallExprEXadL_ZNS5_21getCallArgumentsRangeERKNS2_12ast_matchers11MatchFinder11MatchResultERKS7_EEEEJSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit: ; preds = %.thread.i.i.i, %.thread23.i.i.i, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14, !noalias !923
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEN12_GLOBAL__N_116RelativeSelectorINS2_8CallExprEXadL_ZNSB_21getCallArgumentsRangeES9_RKSD_EEEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.h
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %.val, ptr %0, align 8, !tbaa !28
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8              ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !19
  %i.d = load ptr, ptr %.val5, align 8, !tbaa !22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.f, ptr %i.a, align 8, !tbaa !24
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.e, label %._crit_edge.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !22
  %i.i = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.i, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.e ], [ %i.c, %bb.d ] ; 2 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !15
  store i8 %i.k, ptr %i.j, align 1, !tbaa !15
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !23
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr %i.b, ptr %0, align 8, !tbaa !28
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.h:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !28 ; 4 uses
  %i.p = icmp eq ptr %.val6.i, null
  br i1 %i.p, label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %.val6.i, align 8, !tbaa !22 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS_21getCallArgumentsRangeERKNS1_12ast_matchers11MatchFinder11MatchResultERKS2_EEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !15
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #16
  br label %_ZN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS_21getCallArgumentsRangeERKNS1_12ast_matchers11MatchFinder11MatchResultERKS2_EEED2Ev.exit.i.i

_ZN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS_21getCallArgumentsRangeERKNS1_12ast_matchers11MatchFinder11MatchResultERKS2_EEED2Ev.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 32) #16
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %_ZN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS_21getCallArgumentsRangeERKNS1_12ast_matchers11MatchFinder11MatchResultERKS2_EEED2Ev.exit.i.i, %bb.h, %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang8CallExprEXadL_ZNS1_21getCallArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN5clang5Lexer11getRawTokenENS_14SourceLocationERNS_5TokenERKNS_13SourceManagerERKNS_11LangOptionsEb(i32, ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 8 dereferenceable(1136), i1 noundef zeroext) local_unnamed_addr #3

declare i32 @_ZN5clang5Lexer19GetBeginningOfTokenENS_14SourceLocationERKNS_13SourceManagerERKNS_11LangOptionsE(i32, ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 8 dereferenceable(1136)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEN12_GLOBAL__N_116RelativeSelectorINS2_16CXXConstructExprEXadL_ZNSB_26getConstructArgumentsRangeES9_RKSD_EEEEE9_M_invokeERKSt9_Any_dataS9_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %2) #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.clang::ASTNodeKind", align 4 ; 4 uses
  %8 = alloca %"class.llvm::Expected.1038", align 8 ; 7 uses
  %9 = alloca %"class.clang::ASTNodeKind", align 4 ; 4 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !30    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14, !noalias !973
  %i.a = load ptr, ptr %.val, align 8, !tbaa !22, !noalias !973
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23, !noalias !973
  call fastcc void @_ZL7getNodeRKN5clang12ast_matchers10BoundNodesEN4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull readonly align 8 dereferenceable(64) %2, ptr %i.a, i64 %i.c), !noalias !973
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.e = load i8, ptr %i.d, align 8, !noalias !973
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.thread.i.i.i, label %bb.b

.thread.i.i.i:                                    ; preds = %bb.a
  %i.g = load i64, ptr %8, align 8, !tbaa !39, !noalias !974
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !alias.scope !973
  %i.k = or i8 %i.j, 1
  store i8 %i.k, ptr %i.i, align 8, !alias.scope !973
  store ptr %i.h, ptr %0, align 8, !tbaa !39, !alias.scope !975
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIN5clang15CharSourceRangeEEERN12_GLOBAL__N_116RelativeSelectorINS2_16CXXConstructExprEXadL_ZNS5_26getConstructArgumentsRangeERKNS2_12ast_matchers11MatchFinder11MatchResultERKS7_EEEEJSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %8, align 8, !tbaa !464, !noalias !973 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !973
  store i32 312, ptr %7, align 4, !noalias !973
  %i.l = call noundef zeroext i1 @_ZNK5clang11ASTNodeKind8isBaseOfES0_(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 %.sroa.0.0.copyload.i.i.i.i) #14, !noalias !973
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !973
  br i1 %i.l, label %_ZNK5clang12DynTypedNode3getINS_16CXXConstructExprEEEPKT_v.exit.i.i.i, label %.thread20.i.i.i

_ZNK5clang12DynTypedNode3getINS_16CXXConstructExprEEEPKT_v.exit.i.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12, !noalias !973 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %.thread20.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang12DynTypedNode3getINS_16CXXConstructExprEEEPKT_v.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !35, !noalias !973 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32 ; 2 uses
  %i.p = icmp ne i32 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  %i.q = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i, 4294967295
  %i.r = and i1 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62, !noalias !973
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63, !noalias !973
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2600
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !459, !noalias !973, !nonnull !47, !align !460
  %i.y = call i32 @_ZN5clang5Lexer19getLocForEndOfTokenENS_14SourceLocationEjRKNS_13SourceManagerERKNS_11LangOptionsE(i32 %.sroa.0.0.extract.trunc.i.i.i.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(776) %i.t, ptr noundef nonnull align 8 dereferenceable(1136) %i.x) #14, !noalias !973
  %.sroa.2.0.insert.shift.i.i.i.i.i = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -4294967296
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %i.y to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  br label %.thread21.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !978, !noalias !973 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i, label %.thread21.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i16, ptr %i.n, align 8, !noalias !973
  %i.ac = and i16 %i.ab, 511
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.ac, 118
  %spec.select.v.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 48, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select.v.i.i.i.i.i.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !480, !noalias !973
  %i.af = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #19, !noalias !973
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62, !noalias !973
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !63, !noalias !973
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2600
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !459, !noalias !973, !nonnull !47, !align !460
  %i.am = zext i32 %i.aa to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.h ], [ %i.am, %bb.f ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 3 uses
  %i.an = and i64 %indvars.iv.next.i.i.i.i.i, 2147483648
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.h, label %.loopexit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ap = and i64 %indvars.iv.next.i.i.i.i.i, 2147483647
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !480, !noalias !973 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8, !noalias !973
  %i.at = and i16 %i.as, 511
  %i.au = icmp eq i16 %i.at, 116
  br i1 %i.au, label %bb.g, label %bb.i, !llvm.loop !949

bb.i:                                             ; preds = %bb.h
  %i.av = call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #19, !noalias !973
  %i.aw = call i32 @_ZN5clang5Lexer19getLocForEndOfTokenENS_14SourceLocationEjRKNS_13SourceManagerERKNS_11LangOptionsE(i32 %i.av, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(776) %i.ah, ptr noundef nonnull align 8 dereferenceable(1136) %i.al) #14, !noalias !973
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw i64 %i.ax, 32
  br label %.loopexit.i.i.i

.thread20.i.i.i:                                  ; preds = %_ZNK5clang12DynTypedNode3getINS_16CXXConstructExprEEEPKT_v.exit.i.i.i, %bb.b
  %i.az = load ptr, ptr %.val, align 8, !tbaa !22, !noalias !973
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !23, !noalias !973
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14, !noalias !973
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %9, align 4, !noalias !973
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14, !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14, !noalias !979
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.bb, align 8, !tbaa !475, !alias.scope !980, !noalias !979
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 5, ptr %i.bc, align 1, !tbaa !474, !alias.scope !980, !noalias !979
  store ptr @.str.29, ptr %6, align 8, !tbaa !15, !alias.scope !980, !noalias !979
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !15, !alias.scope !980, !noalias !979
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ba, ptr %i.be, align 8, !tbaa !15, !alias.scope !980, !noalias !979
  store ptr %6, ptr %5, align 8, !alias.scope !981, !noalias !979
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.16, ptr %i.bf, align 8, !alias.scope !981, !noalias !979
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.bg, align 8, !tbaa !475, !alias.scope !981, !noalias !979
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 3, ptr %i.bh, align 1, !tbaa !474, !alias.scope !981, !noalias !979
  %i.bi = call { ptr, i64 } @_ZNK5clang11ASTNodeKind11asStringRefEv(ptr noundef nonnull align 4 dereferenceable(4) %9) #14, !noalias !979 ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 1
  %i.bk = extractvalue { ptr, i64 } %i.bi, 0
  store ptr %5, ptr %4, align 8, !alias.scope !982, !noalias !979
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !alias.scope !982, !noalias !979
  %.sroa.2.0..sroa_idx.i.i.i18.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.bj, ptr %.sroa.2.0..sroa_idx.i.i.i18.i.i.i.i, align 8, !tbaa !15, !alias.scope !982, !noalias !979
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.bm, align 8, !tbaa !475, !alias.scope !982, !noalias !979
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 5, ptr %i.bn, align 1, !tbaa !474, !alias.scope !982, !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !979
  store ptr %4, ptr %3, align 8, !noalias !979
  %.sroa.5.0..sroa_idx43.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.17, ptr %.sroa.5.0..sroa_idx43.i.i.i.i, align 8, !noalias !979
  %.sroa.7.0..sroa_idx51.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 2, ptr %.sroa.7.0..sroa_idx51.i.i.i.i, align 8, !noalias !979
  %.sroa.9.0..sroa_idx55.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 3, ptr %.sroa.9.0..sroa_idx55.i.i.i.i, align 1, !noalias !979
  %i.bo = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15, !noalias !983 ; 2 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #18
  call void @_ZN4llvm11StringErrorC1ESt10error_codeRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(57) %i.bo, i32 22, ptr nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(34) %3) #14, !noalias !983
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !979
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !979
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !979
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !979
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !alias.scope !973
  %i.bs = or i8 %i.br, 1
  store i8 %i.bs, ptr %i.bq, align 8, !alias.scope !973
  store ptr %i.bo, ptr %0, align 8, !tbaa !39, !alias.scope !984
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14, !noalias !973
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIN5clang15CharSourceRangeEEERN12_GLOBAL__N_116RelativeSelectorINS2_16CXXConstructExprEXadL_ZNS5_26getConstructArgumentsRangeERKNS2_12ast_matchers11MatchFinder11MatchResultERKS7_EEEEJSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit

.thread21.i.i.i:                                  ; preds = %bb.e, %bb.d
  %.sroa.027.1.i.ph.i.i.i = phi i64 [ 0, %bb.e ], [ %.sroa.0.0.insert.insert.i.i.i.i.i, %bb.d ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !alias.scope !973
  %i.bv = and i8 %i.bu, -2
  store i8 %i.bv, ptr %i.bt, align 8, !alias.scope !973
  store i64 %.sroa.027.1.i.ph.i.i.i, ptr %0, align 8, !tbaa !35, !alias.scope !973
  %.sroa.4.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx23.i.i.i, align 8, !tbaa !37, !alias.scope !973
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIN5clang15CharSourceRangeEEERN12_GLOBAL__N_116RelativeSelectorINS2_16CXXConstructExprEXadL_ZNS5_26getConstructArgumentsRangeERKNS2_12ast_matchers11MatchFinder11MatchResultERKS7_EEEEJSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit

.loopexit.i.i.i:                                  ; preds = %bb.g, %bb.i
  %.sroa.0.3.i.i.i.i.i = phi i64 [ %i.ay, %bb.i ], [ 0, %bb.g ]
  %.sroa.0.0.insert.ext.i23.i.i.i.i = zext i32 %i.af to i64
  %.sroa.0.0.insert.insert.i24.i.i.i.i = or disjoint i64 %.sroa.0.3.i.i.i.i.i, %.sroa.0.0.insert.ext.i23.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !alias.scope !973
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.bw, align 8, !alias.scope !973
  store i64 %.sroa.0.0.insert.insert.i24.i.i.i.i, ptr %0, align 8, !tbaa !35, !alias.scope !973
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !37, !alias.scope !973
  br label %_ZSt10__invoke_rIN4llvm8ExpectedIN5clang15CharSourceRangeEEERN12_GLOBAL__N_116RelativeSelectorINS2_16CXXConstructExprEXadL_ZNS5_26getConstructArgumentsRangeERKNS2_12ast_matchers11MatchFinder11MatchResultERKS7_EEEEJSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit

_ZSt10__invoke_rIN4llvm8ExpectedIN5clang15CharSourceRangeEEERN12_GLOBAL__N_116RelativeSelectorINS2_16CXXConstructExprEXadL_ZNS5_26getConstructArgumentsRangeERKNS2_12ast_matchers11MatchFinder11MatchResultERKS7_EEEEJSC_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit: ; preds = %.thread.i.i.i, %.thread20.i.i.i, %.thread21.i.i.i, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14, !noalias !973
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEN12_GLOBAL__N_116RelativeSelectorINS2_16CXXConstructExprEXadL_ZNSB_26getConstructArgumentsRangeES9_RKSD_EEEEE10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.h
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !30
  store ptr %.val, ptr %0, align 8, !tbaa !30
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8              ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !19
  %i.d = load ptr, ptr %.val5, align 8, !tbaa !22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.f, ptr %i.a, align 8, !tbaa !24
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.e, label %._crit_edge.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !22
  %i.i = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.i, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.e ], [ %i.c, %bb.d ] ; 2 uses
  switch i64 %i.f, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !15
  store i8 %i.k, ptr %i.j, align 1, !tbaa !15
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !23
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr %i.b, ptr %0, align 8, !tbaa !30
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.h:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !30 ; 4 uses
  %i.p = icmp eq ptr %.val6.i, null
  br i1 %i.p, label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %.val6.i, align 8, !tbaa !22 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS_26getConstructArgumentsRangeERKNS1_12ast_matchers11MatchFinder11MatchResultERKS2_EEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !15
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #16
  br label %_ZN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS_26getConstructArgumentsRangeERKNS1_12ast_matchers11MatchFinder11MatchResultERKS2_EEED2Ev.exit.i.i

_ZN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS_26getConstructArgumentsRangeERKNS1_12ast_matchers11MatchFinder11MatchResultERKS2_EEED2Ev.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 32) #16
  br label %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %_ZN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS_26getConstructArgumentsRangeERKNS1_12ast_matchers11MatchFinder11MatchResultERKS2_EEED2Ev.exit.i.i, %bb.h, %_ZNSt14_Function_base13_Base_managerIN12_GLOBAL__N_116RelativeSelectorIN5clang16CXXConstructExprEXadL_ZNS1_26getConstructArgumentsRangeERKNS3_12ast_matchers11MatchFinder11MatchResultERKS4_EEEEE15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt17_Function_handlerIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEN12_GLOBAL__N_116RelativeSelectorINS2_12InitListExprEXadL_ZNSB_16getElementsRangeES9_RKSD_EEEEE9_M_invokeERKSt9_Any_dataS9_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %2) #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
end_hunk_0
