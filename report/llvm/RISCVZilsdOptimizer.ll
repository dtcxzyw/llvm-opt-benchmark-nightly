Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVZilsdOptimizer?download=true
inline.NumInlined: 1249
inline.NumDeleted: 685
begin_hunk_0_@_ZL39initializeRISCVPreAllocZilsdOptPassOnceRN4llvm12PassRegistryE:bb.a
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm31createRISCVPreAllocZilsdOptPassEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_121RISCVPreAllocZilsdOpt2IDE, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_121RISCVPreAllocZilsdOptE, i64 16), ptr %i.a, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %i.f, align 8, !tbaa !42
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @_ZN4llvm34initializeAAResultsWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #6

declare void @_ZN4llvm45initializeMachineDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_121RISCVPreAllocZilsdOptEEEPNS_4PassEv() #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #21 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_121RISCVPreAllocZilsdOpt2IDE, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_121RISCVPreAllocZilsdOptE, i64 16), ptr %i.a, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i8 0, ptr %i.f, align 8, !tbaa !42
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121RISCVPreAllocZilsdOptD0Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_121RISCVPreAllocZilsdOpt11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.7, i64 51 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #6

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #6

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #6

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_121RISCVPreAllocZilsdOpt16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm20AAResultsWrapperPass2IDE) #19 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE) #19 ; 0 uses
  tail call void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161) %1) #19
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #19
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_121RISCVPreAllocZilsdOpt20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.367", align 8 ; 12 uses
  %3 = alloca %"class.llvm::DenseMap.369", align 8 ; 12 uses
  %4 = alloca %"class.llvm::DenseMap.369", align 8 ; 12 uses
  %5 = alloca %"class.llvm::SmallVector.371", align 8 ; 9 uses
  %6 = alloca %"class.llvm::SmallVector.371", align 8 ; 9 uses
  %7 = alloca %"struct.std::pair.378", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %8 = alloca %class.anon, align 8                ; 9 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15DisableZilsdOpt, i64 120), align 8, !tbaa !48, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !283, !nonnull !24, !align !58
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.e) #19
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !284, !nonnull !24, !align !58 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !285
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  %i.k = load i8, ptr %i.j, align 8, !tbaa !421, !range !23, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 514
  %i.n = load i8, ptr %i.m, align 2, !tbaa !422, !range !23, !noundef !24
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(519768) %i.h) #19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !72
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !285  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(519768) %i.u) #19
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.y, ptr %i.z, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !423
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !425 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !425 ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.af, %i.ah
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !428 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ai, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit.thread: ; preds = %bb.e
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !429
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %12, ptr %13, align 8, !tbaa !75
  br label %.lr.ph.i.i.i13.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.af, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.aj, %i.ah
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !428
  %.not.i.i.i = icmp eq ptr %i.ak, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !429
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !75
  %.not.i3.i.i12 = icmp eq ptr %i.ai, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i12, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i13.preheader

.lr.ph.i.i.i13.preheader:                         ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit
  br label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.lr.ph.i.i.i13.preheader, %.lr.ph.i.i.i13
  %.sroa.08.015.i4.i.i14 = phi ptr [ %i.aq, %.lr.ph.i.i.i13 ], [ %i.af, %.lr.ph.i.i.i13.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i14, i64 16 ; 4 uses
  %.not11.i.i.i15 = icmp ne ptr %i.aq, %i.ah
  tail call void @llvm.assume(i1 %.not11.i.i.i15)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !428
  %.not.i.i.i16 = icmp eq ptr %i.ar, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i16, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i13

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i13, %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i17 = phi ptr [ %i.af, %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit ], [ %i.aq, %.lr.ph.i.i.i13 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i17, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.au, ptr %i.av, align 8, !tbaa !430
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !285 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 361
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !431, !range !23, !noundef !24
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 348
  %i.bb = load i8, ptr %i.ba, align 4, !range !23
  %spec.select.i = xor i8 %i.bb, 3
  %.sroa.0.0.i = select i1 %i.az, i8 0, i8 %spec.select.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.0.0.i, ptr %i.bc, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.020.043 = load ptr, ptr %i.bd, align 8, !tbaa !432 ; 2 uses
  %.not44 = icmp eq ptr %.sroa.020.043, %i.be
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_121RISCVPreAllocZilsdOpt25rescheduleLoadStoreInstrsEPN4llvm17MachineBasicBlockE.exit
  %.sroa.020.046 = phi ptr [ %.sroa.020.043, %.lr.ph ], [ %.sroa.020.0, %_ZN12_GLOBAL__N_121RISCVPreAllocZilsdOpt25rescheduleLoadStoreInstrsEPN4llvm17MachineBasicBlockE.exit ] ; 5 uses
  %.01045 = phi i1 [ false, %.lr.ph ], [ %.0.lcssa.i, %_ZN12_GLOBAL__N_121RISCVPreAllocZilsdOpt25rescheduleLoadStoreInstrsEPN4llvm17MachineBasicBlockE.exit ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.020.046, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.020.046, i64 48 ; 3 uses
  %.not164196.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not164196.i, label %_ZN12_GLOBAL__N_121RISCVPreAllocZilsdOpt25rescheduleLoadStoreInstrsEPN4llvm17MachineBasicBlockE.exit, label %.lr.ph200.i

.lr.ph200.i:                                      ; preds = %bb.f, %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit.i
  %.0198.i = phi i1 [ %.3.lcssa.i, %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit.i ], [ false, %bb.f ] ; 2 uses
  %.sroa.0151.0197.i = phi ptr [ %.sroa.0151.3.i, %_ZN4llvm8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit.i ], [ %i.bz, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.bf, ptr %5, align 8, !tbaa !27
  store i32 0, ptr %i.bg, align 8, !tbaa !82
  store i32 4, ptr %i.bh, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.bi, ptr %6, align 8, !tbaa !27
  store i32 0, ptr %i.bj, align 8, !tbaa !82
  store i32 4, ptr %i.bk, align 4, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit74.i, %.lr.ph200.i
  %.043185.i = phi i32 [ 0, %.lr.ph200.i ], [ %.144.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit74.i ] ; 2 uses
  %.sroa.0151.1184.i = phi ptr [ %.sroa.0151.0197.i, %.lr.ph200.i ], [ %i.jb, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit74.i ] ; 25 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0151.1184.i, i64 44 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !95 ; 3 uses
  %i.cd = and i32 %i.cc, 12                       ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = and i32 %i.cc, 4
  %i.cg = icmp ne i32 %i.cf, 0
  %or.cond.i.i.i = or i1 %i.ce, %i.cg
  br i1 %or.cond.i.i.i, label %.split.i, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i

.split.i:                                         ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0151.1184.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !96
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !98
  %i.cl = and i64 %i.ck, 128
  %.not166.i = icmp eq i64 %i.cl, 0
  br i1 %.not166.i, label %bb.h, label %bb.i

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i: ; preds = %bb.g
  %i.cm = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0151.1184.i, i64 noundef 128, i32 noundef 1) #19
  br i1 %i.cm, label %bb.i, label %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i

_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i: ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i
  %.pre.i = load i32, ptr %i.cb, align 4, !tbaa !95 ; 2 uses
  %.pre230.i = and i32 %.pre.i, 12
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i, %.split.i
  %.pre-phi.i = phi i32 [ %.pre230.i, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i ], [ %i.cd, %.split.i ]
  %i.cn = phi i32 [ %.pre.i, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit._crit_edge.i ], [ %i.cc, %.split.i ]
  %i.co = icmp eq i32 %.pre-phi.i, 0
  %i.cp = and i32 %i.cn, 4
  %i.cq = icmp ne i32 %i.cp, 0
  %or.cond.i.i61.i = or i1 %i.co, %i.cq
  br i1 %or.cond.i.i61.i, label %.split154.i, label %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i

.split154.i:                                      ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0151.1184.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !96
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !98
  %i.cv = and i64 %i.cu, 512
  %.not167.i = icmp eq i64 %i.cv, 0
  br i1 %.not167.i, label %bb.j, label %bb.i

_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i: ; preds = %bb.h
  %i.cw = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0151.1184.i, i64 noundef 512, i32 noundef 1) #19
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i, %.split154.i, %_ZNK4llvm12MachineInstr6isCallENS0_9QueryTypeE.exit.i, %.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0151.1184.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0151.1184.i, align 8
  %i.cx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %.thread.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.i
  %i.cy = load i32, ptr %i.cb, align 4, !tbaa !95
  %i.cz = and i32 %i.cy, 8
  %.not34.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not34.i.i.i.i, label %.thread.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.db, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0151.1184.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !81 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !95
  %i.de = and i32 %i.dd, 8
  %.not3.i.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not3.i.i.i.i, label %.thread.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !1

.thread.i:                                        ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0151.1184.i, %bb.i ], [ %.sroa.0151.1184.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.db, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !81
  br label %.loopexit.i

bb.j:                                             ; preds = %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i, %.split154.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0151.1184.i, i64 52 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !100 ; 2 uses
  %.off.i.i = add i32 %i.di, -14
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dj = add i32 %.043185.i, 1                   ; 2 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !103, !noalias !433 ; 3 uses
  %i.dl = load ptr, ptr %i.bl, align 8, !tbaa !104, !noalias !433 ; 3 uses
  %i.dm = load i32, ptr %i.bm, align 4, !tbaa !105, !noalias !433 ; 4 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.loopexit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = add i32 %i.dm, -1                       ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.0151.1184.i to i64
  %i.dq = mul i64 %i.dp, -4658895280553007687     ; 2 uses
  %i.dr = lshr i64 %i.dq, 31
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.do, %i.dt                    ; 3 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dv ; 2 uses
  %i.dx = lshr i64 %i.dv, 5
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !106
  %i.ea = and i32 %i.du, 31
  %i.eb = lshr i32 %i.dz, %i.ea
  %i.ec = trunc i32 %i.eb to i1
  br i1 %i.ec, label %.lr.ph.i.i117.i, label %.loopexit.i.i, !prof !107

.lr.ph.i.i117.i:                                  ; preds = %bb.l, %bb.m
  %i.ed = phi ptr [ %i.ej, %bb.m ], [ %i.dw, %bb.l ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.eh, %bb.m ], [ %i.du, %bb.l ]
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !109
  %i.ef = icmp eq ptr %.sroa.0151.1184.i, %i.ee
  br i1 %i.ef, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_.exit.i, label %bb.m, !prof !110
end_hunk_0
