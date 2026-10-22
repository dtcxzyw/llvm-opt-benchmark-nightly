Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugCheckers?download=true
inline.NumInlined: 3653
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5clang4ento5check11ASTCodeBody10_checkBodyIN12_GLOBAL__N_119LiveVariablesDumperEEEvPvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterE:bb.a
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN5clang13LiveVariables15computeLivenessERNS_19AnalysisDeclContextEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.574") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280) %i.b, i1 noundef zeroext true) #18
  %i.f = load ptr, ptr %4, align 8, !tbaa !259
  store ptr null, ptr %4, align 8, !tbaa !259
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !257  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !257
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.i, label %_ZNSt10unique_ptrIN5clang15ManagedAnalysisESt14default_deleteIS1_EEaSINS0_13LiveVariablesES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit.i.i.i

_ZNSt10unique_ptrIN5clang15ManagedAnalysisESt14default_deleteIS1_EEaSINS0_13LiveVariablesES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #18, !inline_history !1156
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !259 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.i, label %_ZNKSt14default_deleteIN5clang13LiveVariablesEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5clang13LiveVariablesEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN5clang15ManagedAnalysisESt14default_deleteIS1_EEaSINS0_13LiveVariablesES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit.i.i.i
  %i.k = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i) #18, !inline_history !1157
  br label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.i

_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang13LiveVariablesEEclEPS1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN5clang15ManagedAnalysisESt14default_deleteIS1_EEaSINS0_13LiveVariablesES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !257 ; 2 uses
  %.not.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_119LiveVariablesDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit, label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.thread.i

_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.thread.i: ; preds = %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.i, %bb.a
  %i.n = phi ptr [ %.pre.i.i.i, %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.i ], [ %i.e, %bb.a ]
  %i.o = load ptr, ptr %2, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef nonnull align 8 dereferenceable(776) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(272) %2) #18, !inline_history !1158
  call void @_ZN5clang13LiveVariables17dumpBlockLivenessERKNS_13SourceManagerE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(776) %i.r) #18
  br label %_ZNK12_GLOBAL__N_119LiveVariablesDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit

_ZNK12_GLOBAL__N_119LiveVariablesDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit: ; preds = %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.i, %_ZN5clang4ento15AnalysisManager11getAnalysisINS_13LiveVariablesEEEPT_PKNS_4DeclE.exit.thread.i
  ret void
}

declare void @_ZN5clang13LiveVariables17dumpBlockLivenessERKNS_13SourceManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare noundef ptr @_ZN5clang13LiveVariables6getTagEv() local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext15getAnalysisImplEPKv(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef) local_unnamed_addr #5

declare void @_ZN5clang13LiveVariables15computeLivenessERNS_19AnalysisDeclContextEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.574") align 8, ptr noundef nonnull align 8 dereferenceable(280), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121LiveExpressionsDumperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN5clang15ProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang4ento5check11ASTCodeBody10_checkBodyIN12_GLOBAL__N_121LiveExpressionsDumperEEEvPvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #0 align 2 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.574", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = tail call noundef ptr @_ZN5clang26AnalysisDeclContextManager10getContextEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(177) %i.a, ptr noundef %1) #18 ; 2 uses
  %i.c = tail call noundef ptr @_ZN5clang20RelaxedLiveVariables6getTagEv() #18
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext15getAnalysisImplEPKv(ptr noundef nonnull align 8 dereferenceable(280) %i.b, ptr noundef %i.c) #18 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !257  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN5clang13LiveVariables15computeLivenessERNS_19AnalysisDeclContextEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.574") align 8 %4, ptr noundef nonnull align 8 dereferenceable(280) %i.b, i1 noundef zeroext false) #18
  %i.f = load ptr, ptr %4, align 8, !tbaa !259
  store ptr null, ptr %4, align 8, !tbaa !259
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !257  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !257
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.i, label %_ZNSt10unique_ptrIN5clang15ManagedAnalysisESt14default_deleteIS1_EEaSINS0_13LiveVariablesES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit.i.i.i

_ZNSt10unique_ptrIN5clang15ManagedAnalysisESt14default_deleteIS1_EEaSINS0_13LiveVariablesES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #18, !inline_history !1159
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !259 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.i, label %_ZNKSt14default_deleteIN5clang13LiveVariablesEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5clang13LiveVariablesEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN5clang15ManagedAnalysisESt14default_deleteIS1_EEaSINS0_13LiveVariablesES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit.i.i.i
  %i.k = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i.i.i) #18, !inline_history !1160
  br label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.i

_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang13LiveVariablesEEclEPS1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN5clang15ManagedAnalysisESt14default_deleteIS1_EEaSINS0_13LiveVariablesES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !257 ; 2 uses
  %.not.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_121LiveExpressionsDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit, label %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.thread.i

_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.thread.i: ; preds = %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.i, %bb.a
  %i.n = phi ptr [ %.pre.i.i.i, %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.i ], [ %i.e, %bb.a ]
  %i.o = load ptr, ptr %2, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef nonnull align 8 dereferenceable(776) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(272) %2) #18, !inline_history !1161
  call void @_ZN5clang13LiveVariables16dumpExprLivenessERKNS_13SourceManagerE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(776) %i.r) #18
  br label %_ZNK12_GLOBAL__N_121LiveExpressionsDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit

_ZNK12_GLOBAL__N_121LiveExpressionsDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit: ; preds = %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.i, %_ZN5clang4ento15AnalysisManager11getAnalysisINS_20RelaxedLiveVariablesEEEPT_PKNS_4DeclE.exit.thread.i
  ret void
}

declare void @_ZN5clang13LiveVariables16dumpExprLivenessERKNS_13SourceManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare noundef ptr @_ZN5clang20RelaxedLiveVariables6getTagEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19CFGViewerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN5clang15ProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang4ento5check11ASTCodeBody10_checkBodyIN12_GLOBAL__N_19CFGViewerEEEvPvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = tail call noundef ptr @_ZN5clang26AnalysisDeclContextManager10getContextEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(177) %i.a, ptr noundef %1) #18
  %i.c = tail call noundef ptr @_ZN5clang19AnalysisDeclContext6getCFGEv(ptr noundef nonnull align 8 dereferenceable(280) %i.b) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_19CFGViewer16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !294, !nonnull !36, !align !132
  tail call void @_ZNK5clang3CFG7viewCFGERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(1136) %i.e) #18
  br label %_ZNK12_GLOBAL__N_19CFGViewer16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit

_ZNK12_GLOBAL__N_19CFGViewer16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZNK5clang3CFG7viewCFGERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(1136)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_19CFGDumperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN5clang15ProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang4ento5check11ASTCodeBody10_checkBodyIN12_GLOBAL__N_19CFGDumperEEEvPvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(272) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #0 align 2 {
bb.a:
  %4 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294, !nonnull !36, !align !132 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 11 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = and i64 %i.d, 512
  %i.f = lshr i64 %i.c, 5
  %i.g = and i64 %i.f, 8388608
  %i.h = and i64 %i.c, 8192
  %.not.i.i = icmp eq i64 %i.h, 0
  %i.i = shl i64 %i.c, 21
  %i.j = and i64 %i.i, 16777216
  %i.k = select i1 %.not.i.i, i64 %i.j, i64 16777216
  %i.l = shl i64 %i.c, 13
  %i.m = and i64 %i.l, 33554432
  %i.n = shl i64 %i.c, 26
  %i.o = and i64 %i.n, 67108864
  %i.p = shl i64 %i.c, 14
  %i.q = and i64 %i.p, 134217728
  %i.r = shl i64 %i.c, 27
  %i.s = and i64 %i.r, 268435456
  %i.t = shl i64 %i.c, 17
  %i.u = and i64 %i.t, 1610612736
  %i.v = shl i64 %i.c, 4                          ; 2 uses
  %i.w = and i64 %i.v, 8589934592
  %i.x = and i64 %i.c, 128
  %.not17.i.i = icmp eq i64 %i.x, 0
  %i.y = and i64 %i.v, 17179869184
  %i.z = xor i64 %i.y, 112201725640704
  %i.aa = select i1 %.not17.i.i, i64 112184545771520, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = shl i64 %i.ac, 7
  %i.ae = and i64 %i.ad, 140737488355328
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %5, align 8, !tbaa !1164
  %i.af = or disjoint i64 %i.g, %i.e
  %i.ag = or disjoint i64 %i.af, %i.m
  %i.ah = or disjoint i64 %i.ag, %i.o
  %6 = or disjoint i64 %i.ah, %i.q
  %.masked.masked.masked.masked.i = or disjoint i64 %6, %i.s
  %.masked3.masked.masked.i.masked = or i64 %.masked.masked.masked.masked.i, %i.u
  %.masked4 = or i64 %.masked3.masked.masked.i.masked, %i.w
  %.masked = or i64 %.masked4, %i.k
  %.masked.masked.i.masked = or i64 %.masked, %i.ae
  %i.ai = or i64 %.masked.masked.i.masked, %i.aa
  %i.aj = xor i64 %i.ai, 8057536514
  store i64 %i.aj, ptr %4, align 8
  %i.ak = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #18
  call void @_ZNK5clang4Decl5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEjb(ptr noundef nonnull align 8 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, i1 noundef zeroext false) #18
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = call noundef ptr @_ZN5clang26AnalysisDeclContextManager10getContextEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(177) %i.al, ptr noundef nonnull %1) #18
  %i.an = call noundef ptr @_ZN5clang19AnalysisDeclContext6getCFGEv(ptr noundef nonnull align 8 dereferenceable(280) %i.am) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_19CFGDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !294, !nonnull !36, !align !132
  %i.ap = call noundef zeroext i1 @_ZN4llvm3sys7Process20StandardErrHasColorsEv() #18
  call void @_ZNK5clang3CFG4dumpERKNS_11LangOptionsEb(ptr noundef nonnull align 8 dereferenceable(112) %i.an, ptr noundef nonnull align 8 dereferenceable(1136) %i.ao, i1 noundef zeroext %i.ap) #18
  br label %_ZNK12_GLOBAL__N_19CFGDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit

_ZNK12_GLOBAL__N_19CFGDumper16checkASTCodeBodyEPKN5clang4DeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

declare void @_ZNK5clang4Decl5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyEjb(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZNK5clang3CFG4dumpERKNS_11LangOptionsEb(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(1136), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm3sys7Process20StandardErrHasColorsEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115CallGraphViewerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN5clang15ProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

declare void @_ZN5clang4ento14CheckerManager16_registerForDeclENS0_9CheckerFnIFvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterEEEEPFbS5_E(ptr noundef nonnull align 8 dereferenceable(1864), ptr, ptr, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang4ento5check7ASTDeclINS_19TranslationUnitDeclEE10_checkDeclIN12_GLOBAL__N_115CallGraphViewerEEEvPvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::CallGraph", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN5clang9CallGraphC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  %i.a = call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr nonnull @.str.23, i64 14, ptr null, i64 0) #18 ; 2 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #18, !inline_history !1165 ; 0 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNK12_GLOBAL__N_115CallGraphViewer12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef nonnull %i.a) #18
  br label %_ZNK12_GLOBAL__N_115CallGraphViewer12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit

_ZNK12_GLOBAL__N_115CallGraphViewer12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit: ; preds = %bb.a, %bb.b
  call void @_ZNK5clang9CallGraph9viewGraphEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  call void @_ZN5clang9CallGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang4ento5check7ASTDeclINS_19TranslationUnitDeclEE12_handlesDeclEPKNS_4DeclE(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 127
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}

declare void @_ZN5clang9CallGraphC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @_ZNK5clang9CallGraph9viewGraphEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5clang9CallGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #12

declare noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr, i64, ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115CallGraphDumperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN5clang15ProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang4ento5check7ASTDeclINS_19TranslationUnitDeclEE10_checkDeclIN12_GLOBAL__N_115CallGraphDumperEEEvPvPKNS_4DeclERNS0_15AnalysisManagerERNS0_11BugReporterE(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::CallGraph", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN5clang9CallGraphC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  %i.a = call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr nonnull @.str.23, i64 14, ptr null, i64 0) #18 ; 2 uses
  %i.b = load ptr, ptr %4, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #18, !inline_history !1166 ; 0 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNK12_GLOBAL__N_115CallGraphDumper12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef nonnull %i.a) #18
  br label %_ZNK12_GLOBAL__N_115CallGraphDumper12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit

_ZNK12_GLOBAL__N_115CallGraphDumper12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterE.exit: ; preds = %bb.a, %bb.b
  call void @_ZNK5clang9CallGraph4dumpEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  call void @_ZN5clang9CallGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

declare void @_ZNK5clang9CallGraph4dumpEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112ConfigDumperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN5clang15ProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

declare void @_ZN5clang4ento14CheckerManager32_registerForEndOfTranslationUnitENS0_9CheckerFnIFvPKNS_19TranslationUnitDeclERNS0_15AnalysisManagerERNS0_11BugReporterEEEE(ptr noundef nonnull align 8 dereferenceable(1864), ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang4ento5check20EndOfTranslationUnit26_checkEndOfTranslationUnitIN12_GLOBAL__N_112ConfigDumperEEEvPvPKNS_19TranslationUnitDeclERNS0_15AnalysisManagerERNS0_11BugReporterE(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(272) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.668", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 264
  %.val = load ptr, ptr %i.b, align 8, !tbaa !1169 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 48
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !1172 ; 5 uses
  %i.d = getelementptr i8, ptr %.val, i64 56
  %.val.val4 = load i32, ptr %i.d, align 8, !tbaa !1173 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 32, ptr %i.g, align 4, !tbaa !60
  %.not.i.i = icmp eq i32 %.val.val4, 0
  br i1 %.not.i.i, label %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE5beginEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val.val, align 8, !tbaa !1175
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE5beginEv.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %.val.val, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1175
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE5beginEv.exit.i, !llvm.loop !1167

_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE5beginEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.0.i.i = phi ptr [ %.val.val, %bb.a ], [ %.val.val, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.n = zext i32 %.val.val4 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val.val, i64 %i.n ; 2 uses
  %.not57.i = icmp eq ptr %.sroa.0.0.i.i, %i.o
  br i1 %.not57.i, label %_ZN4llvm14array_pod_sortIPPKNS_14StringMapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvT_SC_PFiPKNSt15iterator_traitsISC_E10value_typeESH_E.exit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE5beginEv.exit.i
  %.pre.i = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !1175
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm17StringMapIterBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEppEv.exit.i
  %.pre15.i = load i32, ptr %i.f, align 8, !tbaa !59 ; 2 uses
  %i.p = icmp ult i32 %.pre15.i, 2
  br i1 %i.p, label %_ZN4llvm14array_pod_sortIPPKNS_14StringMapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvT_SC_PFiPKNSt15iterator_traitsISC_E10value_typeESH_E.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.q = zext i32 %.pre15.i to i64
  %i.r = load ptr, ptr %4, align 8, !tbaa !58
  call void @qsort(ptr noundef %i.r, i64 noundef %i.q, i64 noundef 8, ptr noundef nonnull @_ZN12_GLOBAL__N_112ConfigDumper12compareEntryEPKPKN4llvm14StringMapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESD_) #18
  br label %_ZN4llvm14array_pod_sortIPPKNS_14StringMapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvT_SC_PFiPKNSt15iterator_traitsISC_E10value_typeESH_E.exit.i

_ZN4llvm14array_pod_sortIPPKNS_14StringMapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvT_SC_PFiPKNSt15iterator_traitsISC_E10value_typeESH_E.exit.i: ; preds = %bb.c, %._crit_edge.i, %_ZNK4llvm9StringMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15MallocAllocatorEE5beginEv.exit.i
  %i.s = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #18 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !98   ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 9
  br i1 %i.aa, label %bb.d, label %bb.e

end_hunk_0
