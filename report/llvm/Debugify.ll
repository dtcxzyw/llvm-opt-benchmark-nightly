Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Debugify?download=true
inline.NumInlined: 3876
inline.NumDeleted: 2074
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm4Pass18getAsPMDataManagerEv

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_118DebugifyModulePass11runOnModuleERN4llvm6ModuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::function.55", align 8  ; 7 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !321
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = icmp eq i32 %i.b, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.i = call noundef zeroext i1 @_ZN4llvm21applyDebugifyMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS_9StringRefESt8functionIFbRNS_9DIBuilderERS6_EE(ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr %i.g, ptr nonnull %i.h, ptr nonnull @.str.36, i64 16, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #25, !inline_history !906 ; 0 uses
  br label %_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit

bb.d:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN4llvm24collectDebugInfoMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEER16DebugInfoPerPassNS_9StringRefESC_(ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr %i.g, ptr nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr nonnull @.str.37, i64 35, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %3)
  br label %_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit

_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.m, %bb.d ], [ %i.i, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120DebugifyFunctionPassD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #26
  ret void
}

declare noundef ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #4

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK12_GLOBAL__N_120DebugifyFunctionPass16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(161) initializes((160, 161)) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.a, align 8, !tbaa !389
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_120DebugifyFunctionPass13runOnFunctionERN4llvm8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::function.55", align 8  ; 7 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !392  ; 4 uses
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %.preheader.preheader.i, label %bb.c

.preheader.preheader.i:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.k = call noundef zeroext i1 @_ZN4llvm21applyDebugifyMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS_9StringRefESt8functionIFbRNS_9DIBuilderERS6_EE(ptr noundef nonnull align 8 dereferenceable(1288) %i.f, ptr nonnull %i.h, ptr %i.j, ptr nonnull @.str.89, i64 18, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader.i
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #25, !inline_history !907 ; 0 uses
  br label %_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !188
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = tail call noundef zeroext i1 @_ZN4llvm24collectDebugInfoMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEER16DebugInfoPerPassNS_9StringRefESC_(ptr noundef nonnull align 8 dereferenceable(1288) %i.f, ptr %i.p, ptr nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr nonnull @.str.90, i64 37, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %3)
  br label %_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit

_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit: ; preds = %.preheader.preheader.i, %bb.b, %bb.c
  %.0.i = phi i1 [ %i.r, %bb.c ], [ %i.k, %.preheader.preheader.i ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i1 %.0.i
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm10ModulePassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_123CheckDebugifyModulePassD0Ev(ptr noundef nonnull align 8 dereferenceable(85) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm10ModulePassD2Ev(ptr noundef nonnull align 8 dead_on_return(85) dereferenceable(85) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK12_GLOBAL__N_123CheckDebugifyModulePass16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(161) initializes((160, 161)) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.a, align 8, !tbaa !389
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123CheckDebugifyModulePass11runOnModuleERN4llvm6ModuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(85) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !339
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.01.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !276
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.i = load i8, ptr %i.h, align 4, !tbaa !340, !range !30, !noundef !31
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !337
  %i.m = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr %i.e, ptr nonnull %i.f, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr nonnull @.str.38, i64 19, i1 noundef zeroext %i.j, ptr noundef %i.l)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !338
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = tail call noundef zeroext i1 @_ZN4llvm22checkDebugInfoMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEER16DebugInfoPerPassNS_9StringRefESC_SC_(ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr %i.e, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr nonnull @.str.39, i64 40, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %i.p, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %i.q)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %i.m, %bb.b ], [ %i.r, %bb.c ]
  ret i1 %.0.in
}

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125CheckDebugifyFunctionPassD0Ev(ptr noundef nonnull align 8 dereferenceable(85) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(85) dereferenceable(85) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZNK12_GLOBAL__N_125CheckDebugifyFunctionPass16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(161) initializes((160, 161)) %1) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.a, align 8, !tbaa !389
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_125CheckDebugifyFunctionPass13runOnFunctionERN4llvm8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(85) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 8, !tbaa !344
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188  ; 2 uses
  br i1 %i.f, label %.preheader.preheader, label %.preheader27.preheader

.preheader27.preheader:                           ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load ptr, ptr %2, align 8, !tbaa !343
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %6 = tail call noundef zeroext i1 @_ZN4llvm22checkDebugInfoMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEER16DebugInfoPerPassNS_9StringRefESC_SC_(ptr noundef nonnull align 8 dereferenceable(1288) %i.b, ptr nonnull %i.c, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(120) %3, ptr nonnull @.str.92, i64 42, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5)
  br label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.04.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !276
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.k = load i8, ptr %i.j, align 4, !tbaa !345, !range !30, !noundef !31
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !342
  %i.o = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(1288) %i.b, ptr nonnull %i.c, ptr %i.h, ptr %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, ptr nonnull @.str.91, i64 21, i1 noundef zeroext %i.l, ptr noundef %i.n)
  br label %bb.b

bb.b:                                             ; preds = %.preheader27.preheader, %.preheader.preheader
  %.0.in = phi i1 [ %i.o, %.preheader.preheader ], [ %6, %.preheader27.preheader ]
  ret i1 %.0.in
}

declare noundef i32 @_ZNK4llvm8DebugLoc7getLineEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !394
  %i.c = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !394  ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !394
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !396
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !397  ; 2 uses
  %i.i = shl i32 %i.f, 2
  %i.j = add i32 %i.i, 4
  %i.k = mul i32 %i.h, 3
  %.not.i = icmp ult i32 %i.j, %i.k
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit, label %bb.c, !prof !235

bb.c:                                             ; preds = %bb.b
  %i.l = shl i32 %i.h, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.l)
  %i.m = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !394
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398
  %i.q = load ptr, ptr %0, align 8, !tbaa !399
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 24                  ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = lshr i64 %i.u, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !173
  %i.ab = or i32 %i.x, %i.aa
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !173
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !396
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !295
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !173
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ %i.d, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !399, !noalias !913 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !398, !noalias !913 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !397, !noalias !913 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !276
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !215
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #25
  %.02131 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.02131 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !173
  %i.n = and i32 %.02131, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !232

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !276
  %.sroa.22.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !215
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us
  %i.r = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.02132.us = phi i32 [ %.021.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !215
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0 ; 3 uses
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, !prof !292

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.02132.us, 1
  %.021.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.021.us to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !173
  %i.y = and i32 %.021.us, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us, label %.thread, !prof !236, !llvm.loop !912

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25
  %i.ab = phi ptr [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.02132 = phi i32 [ %.021, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !215
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !292

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !276
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !293

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.02132, 1
  %.021 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.021 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !173
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !236, !llvm.loop !912

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ %.not.i.i.us, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %bb.b ], [ %.not.i.i.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ false, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ true, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !394
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.283", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !397
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !399
  store ptr %i.y, ptr %i.q, align 8, !tbaa !398
  store i32 0, ptr %i.p, align 16, !tbaa !396
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !187
  %i.aa = load ptr, ptr %0, align 8, !tbaa !394
end_hunk_0
begin_hunk_1_@"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0SD_EET_NS4_8CalledAsIT0_EEENUlPKS4_S2_RS3_E_8__invokeESJ_S2_SK_":bb.a
  br i1 %.not.i.i22.i.i, label %_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader.i.i.i
  %i.aq = call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #25, !inline_history !968 ; 0 uses
  br label %_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !188
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.au = call noundef zeroext i1 @_ZN4llvm24collectDebugInfoMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEER16DebugInfoPerPassNS_9StringRefESC_(ptr noundef nonnull align 8 dereferenceable(1288) %i.ai, ptr %i.as, ptr nonnull %i.at, ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr nonnull @.str.90, i64 37, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7) ; 0 uses
  br label %_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i

_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i: ; preds = %bb.e, %bb.d, %.preheader.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !975, !nonnull !31, !align !166
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !392
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_6ModuleEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull @_ZN4llvm25InnerAnalysisManagerProxyINS_15AnalysisManagerINS_8FunctionEJEEENS_6ModuleEJEE3KeyE, ptr noundef nonnull align 8 dereferenceable(1288) %i.ax) #25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !421
  call void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE10invalidateERS1_RKNS_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef nonnull align 8 dereferenceable(140) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %9) #25
  br label %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i

_ZNK4llvm3Any3isaIPKNS_6ModuleEEEbv.exit.i.i.i:   ; preds = %_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i.i.i
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25, !inline_history !969
  %i.bf = icmp eq ptr %i.be, @_ZN4llvm3Any6TypeIdIPKNS_6ModuleEE2IdE
  br i1 %i.bf, label %bb.f, label %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i

bb.f:                                             ; preds = %_ZNK4llvm3Any3isaIPKNS_6ModuleEEEbv.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !170 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !417
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bm = icmp eq i32 %i.bj, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !188 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  br i1 %i.bm, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.bq = call noundef zeroext i1 @_ZN4llvm21applyDebugifyMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS_9StringRefESt8functionIFbRNS_9DIBuilderERS6_EE(ptr noundef nonnull align 8 dereferenceable(1288) %i.bh, ptr %i.bo, ptr nonnull %i.bp, ptr nonnull @.str.36, i64 16, ptr nofree noundef nonnull align 8 dereferenceable(32) %4) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !25 ; 2 uses
  %.not.i.i26.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i26.i.i, label %_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #25, !inline_history !970 ; 0 uses
  br label %_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.bu = call noundef zeroext i1 @_ZN4llvm24collectDebugInfoMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEER16DebugInfoPerPassNS_9StringRefESC_(ptr noundef nonnull align 8 dereferenceable(1288) %i.bh, ptr %i.bo, ptr nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(120) %i.bl, ptr nonnull @.str.37, i64 35, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5) ; 0 uses
  br label %_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i

_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !975, !nonnull !31, !align !166
  call void @_ZN4llvm15AnalysisManagerINS_6ModuleEJEE10invalidateERS1_RKNS_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(72) %i.bw, ptr noundef nonnull align 8 dereferenceable(1288) %i.bh, ptr noundef nonnull align 8 dereferenceable(80) %9) #25
  br label %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i

_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i: ; preds = %_ZL13applyDebugifyRN4llvm6ModuleE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i, %_ZNK4llvm3Any3isaIPKNS_6ModuleEEEbv.exit.i.i.i, %_ZL13applyDebugifyRN4llvm8FunctionE12DebugifyModeP16DebugInfoPerPassNS_9StringRefE.exit.i.i, %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit.i.i
  %i.bx = load i8, ptr %i.v, align 8, !tbaa !29, !range !30, !noundef !31
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !32
  call void @free(ptr noundef %i.bz) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i:     ; preds = %bb.j, %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i
  %i.ca = load i8, ptr %i.q, align 8, !tbaa !29, !range !30, !noundef !31
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZN4llvm17PreservedAnalysesD2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  %i.cc = load ptr, ptr %9, align 8, !tbaa !32
  call void @free(ptr noundef %i.cc) #25
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit.i.i

_ZN4llvm17PreservedAnalysesD2Ev.exit.i.i:         ; preds = %bb.k, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_0clENS_9StringRefENS_3AnyE.exit.i"

"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_0clENS_9StringRefENS_3AnyE.exit.i": ; preds = %_ZN4llvm17PreservedAnalysesD2Ev.exit.i.i, %_ZL13isIgnoredPassN4llvm9StringRefE.exit.i.i
  %.not.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i, label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0SD_EET_NS4_8CalledAsIT0_EEENKUlPKS4_S2_RS3_E_clESJ_S2_SK_.exit", label %_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i: ; preds = %"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_0clENS_9StringRefENS_3AnyE.exit.i"
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25, !inline_history !971
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0SD_EET_NS4_8CalledAsIT0_EEENKUlPKS4_S2_RS3_E_clESJ_S2_SK_.exit"

"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0SD_EET_NS4_8CalledAsIT0_EEENKUlPKS4_S2_RS3_E_clESJ_S2_SK_.exit": ; preds = %"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_0clENS_9StringRefENS_3AnyE.exit.i", %_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i
  ret void
}

declare void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE10invalidateERS1_RKNS_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN4llvm15AnalysisManagerINS_6ModuleEJEE10invalidateERS1_RKNS_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm13isSpecialPassENS_9StringRefERKSt6vectorIS0_SaIS0_EE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_6ModuleEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1288)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1SG_EET_NS7_8CalledAsIT0_EEENUlPKS7_S2_RS3_S6_E_8__invokeESM_S2_SN_S6_"(ptr nofree noundef readonly captures(none) %0, ptr %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree nonnull readnone align 8 captures(none) %4) #1 align 2 {
bb.a:
  %5 = alloca %"class.std::vector.593", align 8   ; 7 uses
  %6 = alloca %"class.llvm::PreservedAnalyses", align 8 ; 15 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !411    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 8 uses
  store ptr null, ptr %3, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.c = load ptr, ptr %0, align 8, !tbaa !982    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.d = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #28 ; 3 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !413
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !414
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) @constinit, i64 128, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !415
  %i.h = call noundef zeroext i1 @_ZN4llvm13isSpecialPassENS_9StringRefERKSt6vectorIS0_SaIS0_EE(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  %i.i = load ptr, ptr %5, align 8, !tbaa !413    ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZL13isIgnoredPassN4llvm9StringRefE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !414
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.m) #26
  br label %_ZL13isIgnoredPassN4llvm9StringRefE.exit.i.i

_ZL13isIgnoredPassN4llvm9StringRefE.exit.i.i:     ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.h, label %"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_1clENS_9StringRefENS_3AnyERKNS_17PreservedAnalysesE.exit.i", label %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit.i.i

_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit.i.i: ; preds = %_ZL13isIgnoredPassN4llvm9StringRefE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 2, ptr %i.o, align 8, !tbaa !333
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i8 1, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %i.s, ptr %i.r, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 2, ptr %i.t, align 8, !tbaa !333
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 0, ptr %i.u, align 4, !tbaa !334
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i8 1, ptr %i.v, align 8, !tbaa !29
  store i32 1, ptr %i.p, align 4, !tbaa !334, !noalias !983
  store ptr @_ZN4llvm11CFGAnalyses6SetKeyE, ptr %i.n, align 8, !tbaa !187, !noalias !983
  %.not.i.i48.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i48.i.i, label %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i, label %_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i.i.i

_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i.i.i: ; preds = %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit.i.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25, !inline_history !978
  %i.aa = icmp eq ptr %i.z, @_ZN4llvm3Any6TypeIdIPKNS_8FunctionEE2IdE
  br i1 %i.aa, label %bb.c, label %_ZNK4llvm3Any3isaIPKNS_6ModuleEEEbv.exit.i.i.i

bb.c:                                             ; preds = %_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !234 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !392 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !417
  %i.ai = icmp eq i32 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !188 ; 2 uses
  br i1 %i.ai, label %.preheader.preheader.i.i, label %.preheader13.preheader.i.i

.preheader13.preheader.i.i:                       ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !418
  store ptr %1, ptr %7, align 8, !tbaa !276
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !215
  %9 = call noundef zeroext i1 @_ZN4llvm22checkDebugInfoMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEER16DebugInfoPerPassNS_9StringRefESC_SC_(ptr noundef nonnull align 8 dereferenceable(1288) %i.ae, ptr nonnull %i.af, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(120) %i.am, ptr nonnull @.str.39, i64 40, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %i.c) ; 0 uses
  br label %bb.d

.preheader.preheader.i.i:                         ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !984
  %10 = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ae, ptr nonnull %i.af, ptr %i.ak, ptr %1, i64 %2, ptr nonnull @.str.91, i64 21, i1 noundef zeroext true, ptr noundef %i.ao) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.preheader.i.i, %.preheader13.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !985, !nonnull !31, !align !166
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !392
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_6ModuleEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull @_ZN4llvm25InnerAnalysisManagerProxyINS_15AnalysisManagerINS_8FunctionEJEEENS_6ModuleEJEE3KeyE, ptr noundef nonnull align 8 dereferenceable(1288) %i.ar) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !421
  call void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE10invalidateERS1_RKNS_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull align 8 dereferenceable(140) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %6) #25
  br label %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i

_ZNK4llvm3Any3isaIPKNS_6ModuleEEEbv.exit.i.i.i:   ; preds = %_ZNK4llvm3Any3isaIPKNS_8FunctionEEEbv.exit.i.i.i
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25, !inline_history !979
  %i.az = icmp eq ptr %i.ay, @_ZN4llvm3Any6TypeIdIPKNS_6ModuleEE2IdE
  br i1 %i.az, label %bb.e, label %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i

bb.e:                                             ; preds = %_ZNK4llvm3Any3isaIPKNS_6ModuleEEEbv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !170 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !417
  %i.be = icmp eq i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !188 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !984
  %i.bk = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEE(ptr noundef nonnull align 8 dereferenceable(1288) %i.bb, ptr %i.bg, ptr nonnull %i.bh, ptr %1, i64 %2, ptr nonnull @.str.38, i64 19, i1 noundef zeroext true, ptr noundef %i.bj) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !418
  store ptr %1, ptr %8, align 8, !tbaa !276
  %.sroa.6.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %.sroa.6.0..sroa_idx37.i.i, align 8, !tbaa !215
  %i.bn = call noundef zeroext i1 @_ZN4llvm22checkDebugInfoMetadataERNS_6ModuleENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEER16DebugInfoPerPassNS_9StringRefESC_SC_(ptr noundef nonnull align 8 dereferenceable(1288) %i.bb, ptr %i.bg, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(120) %i.bm, ptr nonnull @.str.39, i64 40, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %8, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %i.c) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !985, !nonnull !31, !align !166
  call void @_ZN4llvm15AnalysisManagerINS_6ModuleEJEE10invalidateERS1_RKNS_17PreservedAnalysesE(ptr noundef nonnull align 8 dereferenceable(72) %i.bp, ptr noundef nonnull align 8 dereferenceable(1288) %i.bb, ptr noundef nonnull align 8 dereferenceable(80) %6) #25
  br label %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i

_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i: ; preds = %bb.h, %_ZNK4llvm3Any3isaIPKNS_6ModuleEEEbv.exit.i.i.i, %bb.d, %_ZN4llvm17PreservedAnalyses11preserveSetINS_11CFGAnalysesEEERS0_v.exit.i.i
  %i.bq = load i8, ptr %i.v, align 8, !tbaa !29, !range !30, !noundef !31
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !32
  call void @free(ptr noundef %i.bs) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i:     ; preds = %bb.i, %_ZN4llvm8any_castIPKNS_6ModuleEEEPT_PNS_3AnyE.exit.thread.i.i
  %i.bt = load i8, ptr %i.q, align 8, !tbaa !29, !range !30, !noundef !31
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN4llvm17PreservedAnalysesD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  %i.bv = load ptr, ptr %6, align 8, !tbaa !32
  call void @free(ptr noundef %i.bv) #25
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit.i.i

_ZN4llvm17PreservedAnalysesD2Ev.exit.i.i:         ; preds = %bb.j, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_1clENS_9StringRefENS_3AnyERKNS_17PreservedAnalysesE.exit.i"

"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_1clENS_9StringRefENS_3AnyERKNS_17PreservedAnalysesE.exit.i": ; preds = %_ZN4llvm17PreservedAnalysesD2Ev.exit.i.i, %_ZL13isIgnoredPassN4llvm9StringRefE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i, label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1SG_EET_NS7_8CalledAsIT0_EEENKUlPKS7_S2_RS3_S6_E_clESM_S2_SN_S6_.exit", label %_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i: ; preds = %"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_1clENS_9StringRefENS_3AnyERKNS_17PreservedAnalysesE.exit.i"
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25, !inline_history !980
  br label %"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1SG_EET_NS7_8CalledAsIT0_EEENKUlPKS7_S2_RS3_S6_E_clESM_S2_SN_S6_.exit"

"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1SG_EET_NS7_8CalledAsIT0_EEENKUlPKS7_S2_RS3_S6_E_clESM_S2_SN_S6_.exit": ; preds = %"_ZZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEENK3$_1clENS_9StringRefENS_3AnyERKNS_17PreservedAnalysesE.exit.i", %_ZNKSt14default_deleteIN4llvm3Any11StorageBaseEEclEPS2_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE18growAndEmplaceBackIJZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1EEERS8_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 40, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !221
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !187
  store i64 0, ptr %i.i, align 8
  store <2 x ptr> %i.j, ptr %i.g, align 8, !tbaa !187
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1SG_EET_NS7_8CalledAsIT0_EEENUlPKS7_S2_RS3_S6_E_8__invokeESM_S2_SN_S6_", ptr %i.h, align 8, !tbaa !352
  %i.k = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !221  ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i = mul nuw nsw i64 %i.m, 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm15unique_functionIFvNS0_9StringRefENS0_3AnyERKNS0_17PreservedAnalysesEEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructIN4llvm15unique_functionIFvNS0_9StringRefENS0_3AnyERKNS0_17PreservedAnalysesEEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructIN4llvm15unique_functionIFvNS0_9StringRefENS0_3AnyERKNS0_17PreservedAnalysesEEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.k, %bb.a ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !990  ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !187
  store <2 x ptr> %i.s, ptr %i.o, align 8, !tbaa !187
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i.i) #25, !inline_history !986
  br label %_ZSt10_ConstructIN4llvm15unique_functionIFvNS0_9StringRefENS0_3AnyERKNS0_17PreservedAnalysesEEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  br label %_ZSt10_ConstructIN4llvm15unique_functionIFvNS0_9StringRefENS0_3AnyERKNS0_17PreservedAnalysesEEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm15unique_functionIFvNS0_9StringRefENS0_3AnyERKNS0_17PreservedAnalysesEEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !987

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm15unique_functionIFvNS0_9StringRefENS0_3AnyERKNS0_17PreservedAnalysesEEEEJS8_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !34  ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !221 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i
  %i.v = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.v, 40
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.x, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEED2Ev.exit.i.i ], [ %i.w, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !990  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  call void %i.z(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.x) #25, !inline_history !988
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEED2Ev.exit.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEED2Ev.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.x
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !989

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !34
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i
  %i.aa = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit ], [ %i.k, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i ] ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !215
  %i.ac = icmp eq ptr %i.aa, %i.b
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE21takeAllocationForGrowEPS8_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit
  call void @free(ptr noundef %i.aa) #25
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE21takeAllocationForGrowEPS8_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE21takeAllocationForGrowEPS8_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE19moveElementsForGrowEPS8_.exit, %bb.e
  store ptr %i.c, ptr %0, align 8, !tbaa !34
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !224
  %i.af = load i32, ptr %i.d, align 8, !tbaa !221
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

end_hunk_1
