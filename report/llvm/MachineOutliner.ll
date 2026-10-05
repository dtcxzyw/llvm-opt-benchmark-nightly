Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineOutliner?download=true
inline.NumInlined: 4112
inline.NumDeleted: 2287
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK12_GLOBAL__N_115MachineOutliner16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  br label %._crit_edge.i.i.i.i.i.i16

._crit_edge.i.i.i.i.i.i16:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i15, %_ZN4llvm13AnalysisUsage12addPreservedINS_28MachineModuleInfoWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i17 = phi i32 [ %i.bl, %._crit_edge.loopexit.i.i.i.i.i.i15 ], [ %i.as, %_ZN4llvm13AnalysisUsage12addPreservedINS_28MachineModuleInfoWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i18 = phi ptr [ %scevgep.i.i.i.i.i.i12, %._crit_edge.loopexit.i.i.i.i.i.i15 ], [ %i.aq, %_ZN4llvm13AnalysisUsage12addPreservedINS_28MachineModuleInfoWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i17, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i21 [
    i32 3, label %bb.q
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i26
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i19
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i16
  %i.bm = load ptr, ptr %.029.lcssa.i.i.i.i.i.i18, align 8, !tbaa !77
  %i.bn = icmp eq ptr %i.bm, @_ZN4llvm38ImmutableModuleSummaryIndexWrapperPass2IDE
  br i1 %i.bn, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i18, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i26

._crit_edge._crit_edge.i.i.i.i.i.i26:             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i16
  %.1.i.i.i.i.i.i27 = phi ptr [ %i.bo, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i18, %._crit_edge.i.i.i.i.i.i16 ] ; 3 uses
  %i.bp = load ptr, ptr %.1.i.i.i.i.i.i27, align 8, !tbaa !77
  %i.bq = icmp eq ptr %i.bp, @_ZN4llvm38ImmutableModuleSummaryIndexWrapperPass2IDE
  br i1 %i.bq, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i26
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i27, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i19

._crit_edge._crit_edge52.i.i.i.i.i.i19:           ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i16
  %.2.i.i.i.i.i.i20 = phi ptr [ %i.br, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i18, %._crit_edge.i.i.i.i.i.i16 ] ; 2 uses
  %i.bs = load ptr, ptr %.2.i.i.i.i.i.i20, align 8, !tbaa !77
  %i.bt = icmp eq ptr %i.bs, @_ZN4llvm38ImmutableModuleSummaryIndexWrapperPass2IDE
  br i1 %i.bt, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i21

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i14, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit64: ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i14, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit66: ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i14, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit64, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit66, %._crit_edge._crit_edge52.i.i.i.i.i.i19, %._crit_edge._crit_edge.i.i.i.i.i.i26, %bb.q
  %.028.i.i.i.i.i.i24 = phi ptr [ %.1.i.i.i.i.i.i27, %._crit_edge._crit_edge.i.i.i.i.i.i26 ], [ %.029.lcssa.i.i.i.i.i.i18, %bb.q ], [ %.2.i.i.i.i.i.i20, %._crit_edge._crit_edge52.i.i.i.i.i.i19 ], [ %i.bw, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit66 ], [ %i.bv, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit64 ], [ %i.bu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i14, %bb.l ]
  %.not.i.i25 = icmp eq ptr %.028.i.i.i.i.i.i24, %i.au
  br i1 %.not.i.i25, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i21, label %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_38ImmutableModuleSummaryIndexWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i21: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23, %._crit_edge._crit_edge52.i.i.i.i.i.i19, %._crit_edge.i.i.i.i.i.i16
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !86
  %.not.i2.i.i22 = icmp ult i32 %i.as, %i.by
  br i1 %.not.i2.i.i22, label %bb.u, label %bb.t, !prof !87

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i21
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @_ZN4llvm38ImmutableModuleSummaryIndexWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_38ImmutableModuleSummaryIndexWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i21
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  store ptr @_ZN4llvm38ImmutableModuleSummaryIndexWrapperPass2IDE, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.ar, align 8, !tbaa !84
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.ar, align 8, !tbaa !84
  br label %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_38ImmutableModuleSummaryIndexWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_38ImmutableModuleSummaryIndexWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i23, %bb.t, %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !76
  %i.ce = and i32 %i.cd, -2
  %switch = icmp eq i32 %i.ce, 2
  br i1 %switch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_38ImmutableModuleSummaryIndexWrapperPassEEERS0_v.exit
  %i.cf = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm29BlockFrequencyInfoWrapperPass2IDE) #25 ; 0 uses
  %i.cg = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm29ProfileSummaryInfoWrapperPass2IDE) #25 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_38ImmutableModuleSummaryIndexWrapperPassEEERS0_v.exit, %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.ch, align 8, !tbaa !550
  tail call void @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #25
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #8

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #8

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #8

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #8

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_115MachineOutliner11runOnModuleERN4llvm6ModuleE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::SmallVector.990", align 8 ; 9 uses
  %3 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 11 uses
  %4 = alloca %"struct.llvm::OutlinedHashTreeRecord", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr.91", align 8 ; 5 uses
  %6 = alloca %"class.llvm::Triple", align 8      ; 11 uses
  %7 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm10ModulePass10skipModuleERKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) #25
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL22DisableGlobalOutlining, i64 120), align 8, !tbaa !96, !range !49, !noundef !50
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = tail call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull @_ZN4llvm38ImmutableModuleSummaryIndexWrapperPass2IDE) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !558  ; 3 uses
  %.not9.i = icmp eq ptr %i.m, null
  br i1 %.not9.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = load i64, ptr %i.q, align 8, !tbaa !100  ; 2 uses
  %i.s = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.p, i64 %i.r) #25
  %i.t = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr %i.p, i64 %i.r, i32 noundef %i.s) #25 ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit, label %_ZNK4llvm18ModuleSummaryIndex20hasExportedFunctionsERKNS_6ModuleE.exit.i

_ZNK4llvm18ModuleSummaryIndex20hasExportedFunctionsERKNS_6ModuleE.exit.i: ; preds = %bb.f
  %i.v = sext i32 %i.t to i64
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !103
  %.pre4.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.not13.i = icmp eq i64 %i.v, %.pre4.i.i.i.i
  br i1 %.not13.i, label %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK4llvm18ModuleSummaryIndex20hasExportedFunctionsERKNS_6ModuleE.exit.i, %bb.e, %bb.d
  %i.w = tail call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4llvm11CodeGenData11getInstanceEv() #25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !567, !range !49, !noundef !50
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 2, ptr %i.aa, align 8, !tbaa !75
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26, !noalias !568 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false), !noalias !568
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt15__uniq_ptr_implIN4llvm16OutlinedHashTreeESt14default_deleteIS1_EE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ab) #25
  br label %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit

bb.h:                                             ; preds = %.critedge.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(17) ptr @_ZN4llvm11CodeGenData11getInstanceEv() #25
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit, label %_ZN4llvm6cgdata19hasOutlinedHashTreeEv.exit.i

_ZN4llvm6cgdata19hasOutlinedHashTreeEv.exit.i:    ; preds = %bb.h
  %i.af = tail call noundef i64 @_ZNK4llvm16OutlinedHashTree4sizeEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i1 noundef zeroext false) #25
  %.not14.i = icmp eq i64 %i.af, 1
  br i1 %.not14.i, label %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm6cgdata19hasOutlinedHashTreeEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.ag, align 8, !tbaa !75
  br label %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit

_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit: ; preds = %bb.c, %bb.f, %_ZNK4llvm18ModuleSummaryIndex20hasExportedFunctionsERKNS_6ModuleE.exit.i, %bb.g, %bb.h, %_ZN4llvm6cgdata19hasOutlinedHashTreeEv.exit.i, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !106 ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.aj, %i.al
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !109 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.am, @_ZN4llvm28MachineModuleInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.aj, %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.an, %i.al
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !109
  %.not.i.i.i10 = icmp eq ptr %i.ao, @_ZN4llvm28MachineModuleInfoWrapperPass2IDE
  br i1 %.not.i.i.i10, label %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.aj, %_ZN12_GLOBAL__N_115MachineOutliner22initializeOutlinerModeERKN4llvm6ModuleE.exit ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %.not.i3.i.i12 = icmp eq ptr %i.am, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i3.i.i12, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i13
  %.sroa.08.015.i4.i.i14 = phi ptr [ %i.at, %.lr.ph.i.i.i13 ], [ %i.aj, %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i14, i64 16 ; 4 uses
  %.not11.i.i.i15 = icmp ne ptr %i.at, %i.al
  tail call void @llvm.assume(i1 %.not11.i.i.i15)
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !109
  %.not.i.i.i16 = icmp eq ptr %i.au, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i.i.i16, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i13

_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit: ; preds = %.lr.ph.i.i.i13, %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i17 = phi ptr [ %i.aj, %_ZNK4llvm4Pass11getAnalysisINS_28MachineModuleInfoWrapperPassEEERT_v.exit ], [ %i.at, %.lr.ph.i.i.i13 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i17, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !572
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !73
  %i.bb = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115MachineOutliner9doOutlineERN4llvm6ModuleERj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  br i1 %i.bb, label %.preheader, label %bb.s

.preheader:                                       ; preds = %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutlinerReruns, i64 120), align 8, !tbaa !117
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.bd = add nuw i32 %.019, 1                    ; 2 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutlinerReruns, i64 120), align 8, !tbaa !117
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !553

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.019 = phi i32 [ %i.bd, %bb.j ], [ 0, %.preheader ]
  store i32 0, ptr %i.b, align 4, !tbaa !112
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !73
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.ba, align 4, !tbaa !73
  %i.bi = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115MachineOutliner9doOutlineERN4llvm6ModuleERj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.bi, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %.lr.ph, %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !75
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %bb.k, label %bb.s

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  %i.bo = tail call noundef i64 @_ZNK4llvm16OutlinedHashTree4sizeEb(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i1 noundef zeroext false) #25
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %_ZN12_GLOBAL__N_115MachineOutliner20emitOutlinedHashTreeERN4llvm6ModuleE.exit, label %_ZNSt10unique_ptrIN4llvm16OutlinedHashTreeESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm16OutlinedHashTreeESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !119
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.br, align 8, !tbaa !120
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 40, ptr %i.bs, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.bt, align 8, !tbaa !125
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.bu, align 8, !tbaa !126
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.bv, align 4, !tbaa !127
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.bx, align 8, !tbaa !574
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !104
  store ptr null, ptr %i.bm, align 8, !tbaa !104
  store i64 %i.by, ptr %4, align 8, !tbaa !104
  call void @_ZNK4llvm22OutlinedHashTreeRecord9serializeERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(48) %3) #25
  %i.bz = load ptr, ptr %2, align 8, !tbaa !119
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN4llvm12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.91") align 8 %5, ptr %i.bz, i64 %i.ca, ptr nonnull @.str.70, i64 28, i1 noundef zeroext false) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.cc, ptr %6, align 8, !tbaa !128
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !99 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !100 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !82
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %bb.l, label %._crit_edge.i.i.i.i

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN4llvm16OutlinedHashTreeESt14default_deleteIS1_EED2Ev.exit.i
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ch, ptr %6, align 8, !tbaa !99
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !129
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %_ZNSt10unique_ptrIN4llvm16OutlinedHashTreeESt14default_deleteIS1_EED2Ev.exit.i
  %i.cj = phi ptr [ %i.ch, %bb.l ], [ %i.cc, %_ZNSt10unique_ptrIN4llvm16OutlinedHashTreeESt14default_deleteIS1_EED2Ev.exit.i ] ; 2 uses
  switch i64 %i.cf, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZN4llvm6TripleC2ERKS0_.exit.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !129
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !129
  br label %_ZN4llvm6TripleC2ERKS0_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.cd, i64 %i.cf, i1 false)
  br label %_ZN4llvm6TripleC2ERKS0_.exit.i

_ZN4llvm6TripleC2ERKS0_.exit.i:                   ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !100
  %i.cn = load ptr, ptr %6, align 8, !tbaa !99
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  %i.cr = load ptr, ptr %5, align 8, !tbaa !575
  call void @_ZN4llvm15MemoryBufferRefC1ERKNS_12MemoryBufferE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.cr) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !576
  call void @_ZN4llvm25getCodeGenDataSectionNameB5cxx11ENS_14CGDataSectKindENS_6Triple16ObjectFormatTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i32 noundef 0, i32 noundef %i.ct, i1 noundef zeroext true) #25
  %i.cu = load ptr, ptr %8, align 8, !tbaa !99
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !100
  call void @_ZN4llvm19embedBufferInModuleERNS_6ModuleENS_15MemoryBufferRefENS_9StringRefENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %7, ptr %i.cu, i64 %i.cw, i8 0) #25
  %i.cx = load ptr, ptr %8, align 8, !tbaa !99    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm6TripleC2ERKS0_.exit.i
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !129
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4llvm6TripleC2ERKS0_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.dc = load ptr, ptr %6, align 8, !tbaa !99    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cc
  br i1 %i.dd, label %_ZN4llvm6TripleD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.de = load i64, ptr %i.cc, align 8, !tbaa !129
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #28
  br label %_ZN4llvm6TripleD2Ev.exit.i

_ZN4llvm6TripleD2Ev.exit.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dg = load ptr, ptr %5, align 8, !tbaa !575   ; 3 uses
  %.not.i3.i = icmp eq ptr %i.dg, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %_ZN4llvm6TripleD2Ev.exit.i
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(24) %i.dg) #25, !inline_history !554
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i, %_ZN4llvm6TripleD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dk = load ptr, ptr %4, align 8, !tbaa !104   ; 5 uses
  %.not.i4.i = icmp eq ptr %i.dk, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIN4llvm16OutlinedHashTreeESt14default_deleteIS1_EED2Ev.exit19.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 36 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !141 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZNKSt14default_deleteIN4llvm16OutlinedHashTreeEEclEPS1_.exit.i18.i, label %.lr.ph8.preheader.i.i.i.i5.i

.lr.ph8.preheader.i.i.i.i5.i:                     ; preds = %bb.o
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !142
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !143
  %i.ds = zext i32 %i.dn to i64
  %i.dt = add nuw nsw i64 %i.ds, 31
  %i.du = lshr i64 %i.dt, 5
  br label %.lr.ph8.i.i.i.i6.i

end_hunk_0
