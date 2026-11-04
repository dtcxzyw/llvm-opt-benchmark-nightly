Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemorySSA?download=true
inline.NumInlined: 5484
inline.NumDeleted: 2897
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvm20MemorySSAWrapperPass16getAnalysisUsageERNS_13AnalysisUsageE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.a, align 8, !tbaa !947
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm24DominatorTreeWrapperPass2IDE) #26 ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm20AAResultsWrapperPass2IDE) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm20MemorySSAWrapperPass13runOnFunctionERNS_8FunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !949  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !949  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !952  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.j, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !952
  %.not.i.i.i = icmp eq ptr %i.k, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i6.preheader:                          ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  %i.o = phi ptr [ %i.i, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread ], [ %i.n, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ]
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.p, %.lr.ph.i.i.i6 ], [ %i.c, %.lr.ph.i.i.i6.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.p, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !952
  %.not.i.i.i9 = icmp eq ptr %i.q, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  %i.r = phi ptr [ %i.n, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ], [ %i.o, %.lr.ph.i.i.i6 ]
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ], [ %i.p, %.lr.ph.i.i.i6 ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !192
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #29 ; 2 uses
  tail call void @_ZN4llvm9MemorySSAC1ERNS_8FunctionEPNS_9AAResultsEPNS_13DominatorTreeE(ptr noundef nonnull align 8 dereferenceable(317) %i.x, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull %i.v, ptr noundef nonnull %i.r) #26
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !337  ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm9MemorySSAESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4llvm9MemorySSAEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm9MemorySSAEEclEPS1_.exit.i.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit
  tail call void @_ZN4llvm9MemorySSAD1Ev(ptr noundef nonnull align 8 dead_on_return(317) dereferenceable(317) %i.y) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 320) #27
  br label %_ZNSt10unique_ptrIN4llvm9MemorySSAESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4llvm9MemorySSAESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, %_ZNKSt14default_deleteIN4llvm9MemorySSAEEclEPS1_.exit.i.i
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK4llvm20MemorySSAWrapperPass14verifyAnalysisEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm20MemorySSAWrapperPass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.(anonymous namespace)::MemorySSAAnnotatedWriter", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_124MemorySSAAnnotatedWriterE, i64 16), ptr %3, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !371
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK4llvm9MemorySSA5printERNS_11raw_ostreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !250
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  br label %_ZNK4llvm9MemorySSA5printERNS_11raw_ostreamE.exit

_ZNK4llvm9MemorySSA5printERNS_11raw_ostreamE.exit: ; preds = %bb.a, %bb.b
  %.0.in.i = phi ptr [ %i.j, %bb.b ], [ %i.d, %bb.a ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !372
  call void @_ZNK4llvm8Function5printERNS_11raw_ostreamEPNS_24AssemblyAnnotationWriterEbb(ptr noundef nonnull align 8 dereferenceable(140) %.0.i, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %3, i1 noundef zeroext false, i1 noundef zeroext false) #26
  call void @_ZN4llvm24AssemblyAnnotationWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm15MemorySSAWalkerC2EPNS_9MemorySSAE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm15MemorySSAWalkerE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm9MemorySSA17ClobberWalkerBase29getClobberingMemoryAccessBaseEPNS_12MemoryAccessERKNS_14MemoryLocationERNS_14BatchAAResultsERj(ptr noundef nonnull align 8 dereferenceable(2904) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(672) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::UpwardsMemoryQuery", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !86
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8, !tbaa !80
  %i.d = add i8 %i.c, -29
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.d, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_ZNK4llvm11Instruction11isFenceLikeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !348
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !189
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.l = load i8, ptr %i.k, align 8, !tbaa !80    ; 2 uses
  switch i8 %i.l, label %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit [
    i8 88, label %_ZNK4llvm11Instruction11isFenceLikeEv.exit
    i8 36, label %_ZNK4llvm11Instruction11isFenceLikeEv.exit
    i8 42, label %_ZNK4llvm11Instruction11isFenceLikeEv.exit
  ]

_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit: ; preds = %bb.d
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -36                    ; 2 uses
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 31)
  switch i32 %i.o, label %_ZNK4llvm11Instruction11isFenceLikeEv.exit [
    i32 15, label %.critedge
    i32 24, label %.critedge
    i32 2, label %.critedge
    i32 26, label %.critedge
    i32 0, label %.critedge
  ]

_ZNK4llvm11Instruction11isFenceLikeEv.exit:       ; preds = %bb.d, %bb.d, %bb.d, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i8 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %1, ptr %i.r, align 8, !tbaa !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !309
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr null, ptr %i.s, align 8, !tbaa !394
  store i8 0, ptr %5, align 8, !tbaa !395
  %i.t = call fastcc noundef ptr @_ZN12_GLOBAL__N_113ClobberWalker11findClobberERN4llvm14BatchAAResultsEPNS1_12MemoryAccessERNS_18UpwardsMemoryQueryERj(ptr noundef nonnull align 8 dereferenceable(2896) %0, ptr noundef nonnull align 8 dereferenceable(672) %3, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit, %_ZNK4llvm11Instruction11isFenceLikeEv.exit, %bb.c, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ %i.t, %_ZNK4llvm11Instruction11isFenceLikeEv.exit ], [ %1, %bb.c ], [ %1, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit ], [ %1, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit ], [ %1, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit ], [ %1, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit ], [ %1, %_ZN4llvm3isaIJNS_8CallBaseEEPNS_11InstructionEEEbRKT0_.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_113ClobberWalker11findClobberERN4llvm14BatchAAResultsEPNS1_12MemoryAccessERNS_18UpwardsMemoryQueryERj(ptr noundef nonnull align 8 dereferenceable(2896) initializes((16, 40)) %0, ptr noundef nonnull align 8 dereferenceable(672) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.std::array.430", align 4   ; 6 uses
  %6 = alloca %"class.std::optional.305", align 8 ; 5 uses
  %7 = alloca %"class.llvm::PHITransAddr", align 8 ; 10 uses
  %8 = alloca %"struct.(anonymous namespace)::ClobberWalker::DefPath", align 8 ; 9 uses
  %9 = alloca %"class.llvm::PHITransAddr", align 8 ; 10 uses
  %10 = alloca %"class.std::optional.305", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"struct.(anonymous namespace)::ClobberWalker::TerminatedPath", align 8 ; 4 uses
  %12 = alloca %"struct.(anonymous namespace)::ClobberWalker::TerminatedPath", align 8 ; 4 uses
  %13 = alloca %"struct.llvm::UpwardDefsElem", align 8 ; 15 uses
  %14 = alloca %"class.llvm::SmallVector.374", align 8 ; 12 uses
  %15 = alloca %"class.llvm::SmallVector.379", align 8 ; 11 uses
  %16 = alloca %"class.llvm::SmallVector.367", align 8 ; 15 uses
  %17 = alloca %"class.llvm::SmallVector.367", align 8 ; 16 uses
  %18 = alloca %"struct.(anonymous namespace)::ClobberWalker::DefPath", align 8 ; 8 uses
  %19 = alloca %"struct.(anonymous namespace)::ClobberWalker::OptznResult", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !977
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %3, ptr %i.c, align 8, !tbaa !978
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  store ptr %4, ptr %i.d, align 8, !tbaa !979
  %i.e = load i32, ptr %4, align 4, !tbaa !102
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %4, align 4, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i8, ptr %2, align 8, !tbaa !80
  %.not46 = icmp eq i8 %i.f, 27
  br i1 %.not46, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.1.i.i.i = getelementptr inbounds i8, ptr %2, i64 -32
  %i.g = load ptr, ptr %.1.i.i.i, align 8, !tbaa !101
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.016 = phi ptr [ %i.g, %bb.d ], [ %2, %bb.c ]  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %18, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.h, i64 56, i1 false), !tbaa.struct !309
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 56
  store ptr %.016, ptr %i.i, align 8, !tbaa !401
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  store ptr %.016, ptr %i.j, align 8, !tbaa !402
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 80
  store i8 0, ptr %i.l, align 8, !tbaa !403
  %.not5356.i = icmp eq ptr %.016, null
  br i1 %.not5356.i, label %.loopexit155, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i
  %.sroa.035.057.i = phi ptr [ %i.af, %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i ], [ %.016, %bb.e ] ; 11 uses
  store ptr %.sroa.035.057.i, ptr %i.j, align 8, !tbaa !402
  %i.m = load i8, ptr %.sroa.035.057.i, align 8, !tbaa !80 ; 2 uses
  %.not55.i = icmp eq i8 %i.m, 28
  br i1 %.not55.i, label %bb.f, label %.thread43.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %0, align 8, !tbaa !980, !nonnull !38, !align !301
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !189
  %i.q = icmp eq ptr %.sroa.035.057.i, %i.p
  br i1 %i.q, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !979  ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !102
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !102
  %.not32.i = icmp eq i32 %i.t, 0
  br i1 %.not32.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !977  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 512 ; 3 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !981, !range !37, !noundef !38
  store i8 0, ptr %i.v, align 8, !tbaa !981
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !978
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !394
  %i.aa = getelementptr i8, ptr %.sroa.035.057.i, i64 72
  %.val.i = load ptr, ptr %i.aa, align 8, !tbaa !79
  %i.ab = call fastcc noundef zeroext i1 @_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_(ptr %.val.i, ptr noundef nonnull align 8 dereferenceable(81) %18, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(672) %i.u)
  store i8 %i.w, ptr %i.v, align 8, !tbaa !981
  br i1 %i.ab, label %.loopexit, label %..thread43_crit_edge.i

..thread43_crit_edge.i:                           ; preds = %bb.h
  %.pre.i = load i8, ptr %.sroa.035.057.i, align 8, !tbaa !80
  br label %.thread43.i

.thread43.i:                                      ; preds = %..thread43_crit_edge.i, %.lr.ph.i
  %i.ac = phi i8 [ %.pre.i, %..thread43_crit_edge.i ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %i.ad = add i8 %i.ac, -29
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ad, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %.loopexit155, label %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i

_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i: ; preds = %.thread43.i
  %i.ae = icmp eq i8 %i.ac, 27
  %.1.v.i.i.i.i.i = select i1 %i.ae, i64 -32, i64 -64
  %.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.035.057.i, i64 %.1.v.i.i.i.i.i
  %i.af = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !101 ; 2 uses
  %.not53.i = icmp eq ptr %i.af, null
  br i1 %.not53.i, label %.loopexit155, label %.lr.ph.i

.loopexit155:                                     ; preds = %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i, %.thread43.i, %bb.e
  %i.ag = phi ptr [ null, %bb.e ], [ %.sroa.035.057.i, %.thread43.i ], [ %.sroa.035.057.i, %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i ] ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.pre94 = load i32, ptr %.phi.trans.insert93, align 4, !tbaa !117, !noalias !982
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.not.i.i = icmp ult i32 %.pre, %.pre94
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !105

bb.i:                                             ; preds = %.loopexit155
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker7DefPathELb1EE18growAndEmplaceBackIJRKNS_14MemoryLocationERPNS_12MemoryAccessERPNS_9MemoryPhiEbRKSt9nullopt_tEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.h, ptr %.016, ptr %i.ag, i8 0)
  %.pre.i20 = load i32, ptr %i.ai, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERPNS_12MemoryAccessERPNS_9MemoryPhiEbRKSt9nullopt_tEEERS3_DpOT_.exit.i

bb.j:                                             ; preds = %.loopexit155
  %i.ak = zext i32 %.pre to i64
  %.val.i.i = load ptr, ptr %i.ah, align 8, !tbaa !41, !noalias !982
  %i.al = getelementptr inbounds nuw [88 x i8], ptr %.val.i.i, i64 %i.ak ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.al, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.h, i64 56, i1 false), !tbaa.struct !309
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr %.016, ptr %i.am, align 8, !tbaa !401
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr %i.ag, ptr %i.an, align 8, !tbaa !402
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store i8 0, ptr %i.ap, align 8, !tbaa !403
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !116, !noalias !982
  %i.ar = add i32 %i.aq, 1                        ; 2 uses
  store i32 %i.ar, ptr %i.ai, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERPNS_12MemoryAccessERPNS_9MemoryPhiEbRKSt9nullopt_tEEERS3_DpOT_.exit.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERPNS_12MemoryAccessERPNS_9MemoryPhiEbRKSt9nullopt_tEEERS3_DpOT_.exit.i: ; preds = %bb.j, %bb.i
  %i.as = phi i32 [ %.pre.i20, %bb.i ], [ %i.ar, %bb.j ]
  %i.at = zext i32 %i.as to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26, !noalias !982
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.au, ptr %14, align 8, !tbaa !41, !noalias !982
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 8 uses
  store i32 0, ptr %i.av, align 8, !tbaa !116, !noalias !982
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  store i32 16, ptr %i.aw, align 4, !tbaa !117, !noalias !982
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !982
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.ax, ptr %15, align 8, !tbaa !41, !noalias !982
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !116, !noalias !982
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 8, ptr %i.az, align 4, !tbaa !117, !noalias !982
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !982
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.ba, ptr %16, align 8, !tbaa !41, !noalias !982
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 11 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !116, !noalias !982
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 4 uses
  store i32 4, ptr %i.bc, align 4, !tbaa !117, !noalias !982
  call fastcc void @_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb(ptr noundef nonnull align 8 dereferenceable(2896) %0, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef 0, i1 noundef zeroext false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2880 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2892 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 13 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 5 uses
  %.sroa.4.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 28 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %.sroa.5267.sroa.8.0..sroa_idx280.i = getelementptr inbounds nuw i8, ptr %7, i64 44
  %.sroa.5267.sroa.10.0..sroa_idx282.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 44
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERPNS_12MemoryAccessERPNS_9MemoryPhiEbRKSt9nullopt_tEEERS3_DpOT_.exit.i
  %.0284.i = phi i64 [ %i.at, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERPNS_12MemoryAccessERPNS_9MemoryPhiEbRKSt9nullopt_tEEERS3_DpOT_.exit.i ], [ %.1285.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit.i ] ; 3 uses
  %.0.i = phi ptr [ %i.ag, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERPNS_12MemoryAccessERPNS_9MemoryPhiEbRKSt9nullopt_tEEERS3_DpOT_.exit.i ], [ %.1.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit.i ] ; 3 uses
  %.val74.i = load ptr, ptr %0, align 8, !tbaa !980, !noalias !982 ; 4 uses
  %.val75.i = load ptr, ptr %i.bd, align 8, !tbaa !404, !noalias !982 ; 2 uses
  %i.cq = getelementptr i8, ptr %.0.i, i64 64
  %.0.val.i = load ptr, ptr %i.cq, align 8, !tbaa !209
  %i.cr = getelementptr i8, ptr %.0.val.i, i64 40
  %.0.val.val.i = load i32, ptr %i.cr, align 8, !tbaa !187
  %i.cs = getelementptr inbounds nuw i8, ptr %.val74.i, i64 104
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !189 ; 3 uses
  %i.cu = add i32 %.0.val.val.i, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val75.i, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !116
  %i.cx = icmp ugt i32 %i.cw, %i.cu
  call void @llvm.assume(i1 %i.cx)
  %i.cy = zext i32 %i.cu to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.val75.i, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !188
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !983 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.de, null
  br i1 %.not7.i.i, label %_ZNK12_GLOBAL__N_113ClobberWalker13getWalkTargetEPKN4llvm9MemoryPhiE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %.val74.i, i64 80
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !131, !noalias !984
  %i.dh = getelementptr inbounds nuw i8, ptr %.val74.i, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !132, !noalias !984 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val74.i, i64 100
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !133, !noalias !984 ; 3 uses
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = add i32 %i.dk, -1                       ; 2 uses
  %.pre.i.i.i = zext i32 %i.dk to i64
  br i1 %i.dl, label %_ZNK12_GLOBAL__N_113ClobberWalker13getWalkTargetEPKN4llvm9MemoryPhiE.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i
  %i.dn = phi ptr [ %i.ev, %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i ], [ %i.de, %.lr.ph.i.i ] ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !121 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = mul i64 %i.dp, -4658895280553007687     ; 2 uses
  %i.dr = lshr i64 %i.dq, 31
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dm, %i.dt                    ; 3 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 5
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !102, !noalias !985
  %i.dz = and i32 %i.du, 31
  %i.ea = lshr i32 %i.dy, %i.dz
  %i.eb = trunc i32 %i.ea to i1
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i, label %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i, !prof !103

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.split.i.i, %bb.l
  %i.ec = phi i64 [ %i.ei, %bb.l ], [ %i.dv, %.lr.ph.split.i.i ] ; 2 uses
  %.017.i.i.i.i.i.i = phi i32 [ %i.eh, %bb.l ], [ %i.du, %.lr.ph.split.i.i ]
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.ec ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !104, !noalias !985
  %i.ef = icmp eq ptr %i.do, %i.ee
  br i1 %i.ef, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrINS_12simple_ilistINS_12MemoryAccessEJNS_9ilist_tagINS_11MSSAHelpers11DefsOnlyTagEEEEEESt14default_deleteISC_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E4findES4_.exit.i.i.i, label %bb.l, !prof !105

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eg = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.eh = and i32 %i.eg, %i.dm                    ; 3 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = lshr i64 %i.ei, 5
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !102, !noalias !985
  %i.em = and i32 %i.eh, 31
  %i.en = lshr i32 %i.el, %i.em
  %i.eo = trunc i32 %i.en to i1
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i.i, label %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i, !prof !106

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrINS_12simple_ilistINS_12MemoryAccessEJNS_9ilist_tagINS_11MSSAHelpers11DefsOnlyTagEEEEEESt14default_deleteISC_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E4findES4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ep = icmp samesign eq i64 %i.ec, %.pre.i.i.i
  br i1 %i.ep, label %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i, label %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.i.i

_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrINS_12simple_ilistINS_12MemoryAccessEJNS_9ilist_tagINS_11MSSAHelpers11DefsOnlyTagEEEEEESt14default_deleteISC_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E4findES4_.exit.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !135 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.er, null
  br i1 %.not13.i.i, label %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.i.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !136
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -48
  br label %_ZNK12_GLOBAL__N_113ClobberWalker13getWalkTargetEPKN4llvm9MemoryPhiE.exit.i

_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i: ; preds = %bb.l, %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockESt10unique_ptrINS_12simple_ilistINS_12MemoryAccessEJNS_9ilist_tagINS_11MSSAHelpers11DefsOnlyTagEEEEEESt14default_deleteISC_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SF_EEEES4_SF_SH_SK_E4findES4_.exit.i.i.i, %.lr.ph.split.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !983 ; 2 uses
  %.not.i86.i = icmp eq ptr %i.ev, null
  br i1 %.not.i86.i, label %_ZNK12_GLOBAL__N_113ClobberWalker13getWalkTargetEPKN4llvm9MemoryPhiE.exit.i, label %.lr.ph.split.i.i

_ZNK12_GLOBAL__N_113ClobberWalker13getWalkTargetEPKN4llvm9MemoryPhiE.exit.i: ; preds = %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i, %.thread.i.i, %.lr.ph.i.i, %bb.k
  %.2.i.i = phi ptr [ %i.et, %.thread.i.i ], [ %i.ct, %.lr.ph.i.i ], [ %i.ct, %bb.k ], [ %i.ct, %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i.i ] ; 7 uses
  %i.ew = load i32, ptr %i.av, align 8, !tbaa !116, !noalias !986 ; 2 uses
  %.not.i41.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i41.i.i, label %.critedge.i, label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %_ZNK12_GLOBAL__N_113ClobberWalker13getWalkTargetEPKN4llvm9MemoryPhiE.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 64
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, %.lr.ph.i87.i
  %i.ey = phi i32 [ %i.ew, %.lr.ph.i87.i ], [ %i.pd, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i ] ; 2 uses
  %i.ez = load ptr, ptr %14, align 8, !tbaa !41, !noalias !986
  %i.fa = zext i32 %i.ey to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !102, !noalias !987 ; 6 uses
  %i.fe = add i32 %i.ey, -1
  store i32 %i.fe, ptr %i.av, align 8, !tbaa !116, !noalias !986
  %i.ff = zext i32 %i.fd to i64                   ; 2 uses
  %.val.i88.i = load ptr, ptr %i.ah, align 8, !tbaa !41, !noalias !986
  %i.fg = getelementptr inbounds nuw [88 x i8], ptr %.val.i88.i, i64 %i.ff ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !986
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 64 ; 4 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !402, !noalias !987 ; 2 uses
  store ptr %i.fi, ptr %13, align 8, !tbaa !406, !noalias !986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %i.fg, i64 56, i1 false), !tbaa.struct !309, !noalias !987
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 80 ; 3 uses
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !403, !range !37, !noalias !987, !noundef !38 ; 2 uses
  store i8 %i.fk, ptr %i.bg, align 8, !tbaa !988, !noalias !986
  %i.fl = load ptr, ptr %i.be, align 8, !tbaa !257, !noalias !989 ; 2 uses
  %i.fm = load ptr, ptr %i.bh, align 8, !tbaa !407, !noalias !989 ; 2 uses
  %i.fn = load i32, ptr %i.bi, align 4, !tbaa !256, !noalias !989 ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.loopexit323.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fp = add i32 %i.fn, -1                       ; 2 uses
  %i.fq = ptrtoint ptr %i.fi to i64
  %i.fr = mul i64 %i.fq, -4658895280553007687     ; 2 uses
  %i.fs = lshr i64 %i.fr, 31
  %i.ft = xor i64 %i.fs, %i.fr
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = load ptr, ptr %i.bf, align 8, !tbaa !86, !noalias !990
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = mul i64 %i.fw, -4658895280553007687     ; 2 uses
  %i.fy = load i64, ptr %i.bj, align 8, !tbaa !408, !noalias !990
  %i.fz = mul i64 %i.fy, -4658895280553007687     ; 2 uses
  %i.ga = xor i64 %i.fz, %i.fx
  %i.gb = load ptr, ptr %i.bk, align 8, !tbaa !409, !noalias !990
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = mul i64 %i.gc, -4658895280553007687     ; 2 uses
  %i.ge = load ptr, ptr %i.bl, align 8, !tbaa !410, !noalias !990
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = mul i64 %i.gf, -4658895280553007687     ; 2 uses
  %i.gh = load ptr, ptr %i.bm, align 8, !tbaa !411, !noalias !990
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = mul i64 %i.gi, -4658895280553007687     ; 2 uses
  %i.gk = load ptr, ptr %i.bn, align 8, !tbaa !412, !noalias !990
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = mul i64 %i.gl, -4658895280553007687     ; 2 uses
  %i.gn = load ptr, ptr %i.bo, align 8, !tbaa !413, !noalias !990
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = mul i64 %i.go, -4658895280553007687     ; 2 uses
  %i.gq = xor i64 %i.ga, %i.gd
  %i.gr = xor i64 %i.gq, %i.gg
  %i.gs = xor i64 %i.gr, %i.gj
  %i.gt = xor i64 %i.gs, %i.gm
  %i.gu = xor i64 %i.gt, %i.gp
  %i.gv = lshr i64 %i.gu, 31
  %i.gw = xor i64 %i.fz, %i.gv
  %i.gx = xor i64 %i.gw, %i.fx
  %i.gy = xor i64 %i.gx, %i.gd
  %i.gz = xor i64 %i.gy, %i.gg
  %i.ha = xor i64 %i.gz, %i.gj
  %i.hb = xor i64 %i.ha, %i.gm
  %i.hc = xor i64 %i.hb, %i.gp
  %i.hd = trunc i64 %i.hc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !990
  store i32 %i.fu, ptr %5, align 4, !noalias !990
  store i32 %i.hd, ptr %i.bp, align 4, !noalias !990
  store i8 %i.fk, ptr %i.bq, align 4, !noalias !990
  %i.he = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %5, i64 noundef 9) #26, !noalias !991
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !990
  %i.hf = trunc i64 %i.he to i32
  %i.hg = xor i32 %i.hf, -313160499
  %.024.i.i = and i32 %i.hg, %i.fp                ; 3 uses
  %i.hh = zext i32 %.024.i.i to i64               ; 2 uses
  %i.hi = getelementptr inbounds nuw [72 x i8], ptr %i.fl, i64 %i.hh ; 2 uses
  %i.hj = lshr i64 %i.hh, 5
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.hj
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113ClobberWalker11findClobberERN4llvm14BatchAAResultsEPNS1_12MemoryAccessERNS_18UpwardsMemoryQueryERj:bb.a
  %i.kf = load ptr, ptr %i.c, align 8, !tbaa !978, !noalias !986 ; 9 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 80
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !417, !range !37, !noalias !987, !noundef !38
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.w, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

bb.w:                                             ; preds = %bb.v
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kk = load ptr, ptr %i.fg, align 8, !tbaa !86, !noalias !987
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !86, !noalias !987
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %bb.x, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !408, !noalias !987
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !408, !noalias !987
  %i.kr = icmp eq i64 %i.kp, %i.kq
  br i1 %i.kr, label %bb.y, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

bb.y:                                             ; preds = %bb.x
  %i.ks = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.ku = load ptr, ptr %i.ks, align 8, !tbaa !409, !noalias !987
  %i.kv = load ptr, ptr %i.kt, align 8, !tbaa !409, !noalias !987
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %bb.z, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

bb.z:                                             ; preds = %bb.y
  %i.kx = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !410, !noalias !987
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !410, !noalias !987
  %i.lb = icmp eq ptr %i.ky, %i.la
  br i1 %i.lb, label %bb.aa, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !411, !noalias !987
  %i.le = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !411, !noalias !987
  %i.lg = icmp eq ptr %i.ld, %i.lf
  br i1 %i.lg, label %bb.ab, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.lh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !412, !noalias !987
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !412, !noalias !987
  %i.ll = icmp eq ptr %i.li, %i.lk
  br i1 %i.ll, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.i.i, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

_ZNK4llvm14MemoryLocationeqERKS0_.exit.i.i:       ; preds = %bb.ab
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !413, !noalias !987
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !413, !noalias !987
  %i.lq = icmp eq ptr %i.ln, %i.lp
  br i1 %i.lq, label %bb.ac, label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

bb.ac:                                            ; preds = %_ZNK4llvm14MemoryLocationeqERKS0_.exit.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kf, i64 72
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !393, !noalias !987
  br label %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i

_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i: ; preds = %bb.ac, %_ZNK4llvm14MemoryLocationeqERKS0_.exit.i.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.028.i.i = phi ptr [ %i.ls, %bb.ac ], [ null, %_ZNK4llvm14MemoryLocationeqERKS0_.exit.i.i ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %bb.z ], [ null, %bb.y ] ; 2 uses
  %i.lt = load ptr, ptr %i.d, align 8, !tbaa !979, !noalias !986 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !102, !noalias !987
  %.not.i173.i = icmp eq i32 %i.lu, 0             ; 2 uses
  br i1 %.not.i173.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i
  store i32 1, ptr %i.lt, align 4, !tbaa !102, !noalias !987
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNK4llvm14MemoryLocationeqERKS0_.exit.thread.i.i
  %i.lv = load ptr, ptr %i.fh, align 8, !tbaa !402, !noalias !987 ; 2 uses
  %.not5356.i174.i = icmp eq ptr %i.lv, null
  br i1 %.not5356.i174.i, label %._crit_edge.i185.i, label %.lr.ph.i175.i

.lr.ph.i175.i:                                    ; preds = %bb.ae, %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i181.i
  %.sroa.035.057.i176.i = phi ptr [ %i.ny, %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i181.i ], [ %i.lv, %bb.ae ] ; 13 uses
  store ptr %.sroa.035.057.i176.i, ptr %i.fh, align 8, !tbaa !402, !noalias !987
  %i.lw = icmp eq ptr %.sroa.035.057.i176.i, %.2.i.i
  %i.lx = icmp eq ptr %.sroa.035.057.i176.i, %.028.i.i
  %or.cond.i177.i = or i1 %i.lw, %i.lx
  br i1 %or.cond.i177.i, label %.loopexit321.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i175.i
  %i.ly = load i8, ptr %.sroa.035.057.i176.i, align 8, !tbaa !80, !noalias !987 ; 2 uses
  %.not55.i178.i = icmp eq i8 %i.ly, 28
  br i1 %.not55.i178.i, label %bb.ag, label %.thread43.i179.i

bb.ag:                                            ; preds = %bb.af
  %i.lz = load ptr, ptr %0, align 8, !tbaa !980, !noalias !986, !nonnull !38, !align !301
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 104
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !189, !noalias !987
  %i.mc = icmp eq ptr %.sroa.035.057.i176.i, %i.mb
  br i1 %i.mc, label %.loopexit322.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.md = load ptr, ptr %i.d, align 8, !tbaa !979, !noalias !986 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !102, !noalias !987
  %i.mf = add i32 %i.me, -1                       ; 2 uses
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !102, !noalias !987
  %.not32.i190.i = icmp eq i32 %i.mf, 0
  br i1 %.not32.i190.i, label %.loopexit322.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mg = load ptr, ptr %i.b, align 8, !tbaa !977, !noalias !986 ; 5 uses
  %i.mh = load i8, ptr %i.fj, align 8, !tbaa !403, !range !37, !noalias !987, !noundef !38
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 512 ; 7 uses
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !981, !range !37, !noalias !987, !noundef !38 ; 5 uses
  store i8 %i.mh, ptr %i.mi, align 8, !tbaa !981, !noalias !987
  %i.mk = load ptr, ptr %i.c, align 8, !tbaa !978, !noalias !986
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !394, !noalias !987 ; 4 uses
  %i.mn = getelementptr i8, ptr %.sroa.035.057.i176.i, i64 72
  %.val.i191.i = load ptr, ptr %i.mn, align 8, !tbaa !79, !noalias !987 ; 5 uses
  %i.mo = load i8, ptr %.val.i191.i, align 8, !tbaa !80, !noalias !987 ; 2 uses
  %i.mp = icmp eq i8 %i.mo, 88
  br i1 %i.mp, label %bb.aj, label %.critedge.i223.i

bb.aj:                                            ; preds = %bb.ai
  %i.mq = getelementptr inbounds i8, ptr %.val.i191.i, i64 -32
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !101, !noalias !987 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i234.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i234.i, label %.critedge.i223.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !80, !noalias !987
  %i.mt = icmp eq i8 %i.ms, 14
  br i1 %i.mt, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i235.i, label %.critedge.i223.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i235.i: ; preds = %bb.ak
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mv = load i32, ptr %i.mu, align 8, !noalias !987
  %i.mw = and i32 %i.mv, 8192
  %.not.i.i.i236.i = icmp eq i32 %i.mw, 0
  br i1 %.not.i.i.i236.i, label %.critedge.i223.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i235.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 36
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !295, !noalias !987
  switch i32 %i.my, label %.critedge.i223.i [
    i32 6, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i
    i32 11, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i
    i32 215, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i
    i32 214, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i
    i32 16, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i
    i32 164, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i
    i32 312, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i
  ]

.critedge.i223.i:                                 ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i235.i, %bb.ak, %bb.aj, %bb.ai
  %.not.i.i38.i224.i = icmp eq ptr %i.mm, null
  br i1 %.not.i.i38.i224.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i, label %bb.al

bb.al:                                            ; preds = %.critedge.i223.i
  %i.mz = load i8, ptr %i.mm, align 8, !tbaa !80, !noalias !987 ; 2 uses
  switch i8 %i.mz, label %.thread9.i226.i [
    i8 88, label %.split.i
    i8 36, label %.split.i
    i8 42, label %.split.i
  ]

.split.i:                                         ; preds = %bb.al, %bb.al, %bb.al
  %i.na = load ptr, ptr %i.mg, align 8, !tbaa !300, !noalias !987, !nonnull !38, !align !301
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.nc = call noundef zeroext i8 @_ZN4llvm9AAResults13getModRefInfoEPKNS_11InstructionEPKNS_8CallBaseERNS_11AAQueryInfoE(ptr noundef nonnull align 8 dereferenceable(56) %i.na, ptr noundef nonnull %.val.i191.i, ptr noundef nonnull %i.mm, ptr noundef nonnull align 8 dereferenceable(506) %i.nb) #26, !noalias !987
  %i.nd = and i8 %i.nc, 2
  %.not316.i = icmp eq i8 %i.nd, 0
  store i8 %i.mj, ptr %i.mi, align 8, !tbaa !981, !noalias !987
  br i1 %.not316.i, label %..thread43_crit_edge.i192.i, label %.loopexit322.i

.thread9.i226.i:                                  ; preds = %bb.al
  %.not.i227.i = icmp eq i8 %i.mo, 63
  %i.ne = icmp eq i8 %i.mz, 63
  %or.cond.i228.i = and i1 %.not.i227.i, %i.ne
  br i1 %or.cond.i228.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i230.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i

_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i230.i: ; preds = %.thread9.i226.i
  %i.nf = getelementptr i8, ptr %i.mm, i64 2
  %.val.i231.i = load i16, ptr %i.nf, align 2, !tbaa !302, !noalias !987 ; 2 uses
  %i.ng = getelementptr i8, ptr %.val.i191.i, i64 2
  %.val37.i232.i = load i16, ptr %i.ng, align 2, !tbaa !302, !noalias !987 ; 2 uses
  %i.nh = and i16 %.val.i231.i, 1
  %i.ni = and i16 %i.nh, %.val37.i232.i
  %or.cond.not.i.i233.i = icmp eq i16 %i.ni, 0
  br i1 %or.cond.not.i.i233.i, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.i, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i230.i
  store i8 %i.mj, ptr %i.mi, align 8, !tbaa !981, !noalias !987
  br label %.loopexit322.i

_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i: ; preds = %.thread9.i226.i, %.critedge.i223.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull readonly align 8 dereferenceable(81) %i.fg, i64 56, i1 false), !tbaa.struct !309, !noalias !987
  store i8 1, ptr %i.bs, align 8, !tbaa !304, !noalias !986
  %i.nj = load ptr, ptr %i.mg, align 8, !tbaa !300, !noalias !987, !nonnull !38, !align !301
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.nl = call noundef zeroext i8 @_ZN4llvm9AAResults13getModRefInfoEPKNS_11InstructionERKSt8optionalINS_14MemoryLocationEERNS_11AAQueryInfoE(ptr noundef nonnull align 8 dereferenceable(56) %i.nj, ptr noundef nonnull %.val.i191.i, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(506) %i.nk) #26, !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !986
  %i.nm = and i8 %i.nl, 2
  %.not317.i = icmp eq i8 %i.nm, 0
  store i8 %i.mj, ptr %i.mi, align 8, !tbaa !981, !noalias !987
  br i1 %.not317.i, label %..thread43_crit_edge.i192.i, label %.loopexit322.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i
  store i8 %i.mj, ptr %i.mi, align 8, !tbaa !981, !noalias !987
  br label %..thread43_crit_edge.i192.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i230.i
  %i.nn = and i16 %.val.i231.i, 896
  %i.no = icmp eq i16 %i.nn, 896
  %i.np = lshr i16 %.val37.i232.i, 7
  %i.nq = trunc i16 %i.np to i8
  %i.nr = and i8 %i.nq, 7
  %i.ns = lshr i8 -48, %i.nr
  %i.nt = trunc i8 %i.ns to i1
  %i.nu = or i1 %i.no, %i.nt
  store i8 %i.mj, ptr %i.mi, align 8, !tbaa !981, !noalias !987
  br i1 %i.nu, label %.loopexit322.i, label %..thread43_crit_edge.i192.i

..thread43_crit_edge.i192.i:                      ; preds = %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.i, %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i, %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i, %.split.i
  %.pre.i193.i = load i8, ptr %.sroa.035.057.i176.i, align 8, !tbaa !80, !noalias !987
  br label %.thread43.i179.i

.thread43.i179.i:                                 ; preds = %..thread43_crit_edge.i192.i, %bb.af
  %i.nv = phi i8 [ %.pre.i193.i, %..thread43_crit_edge.i192.i ], [ %i.ly, %bb.af ] ; 2 uses
  %i.nw = add i8 %i.nv, -29
  %spec.select.i.i.i.i.i.i.i.i.i.i180.i = icmp ult i8 %i.nw, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i180.i, label %._crit_edge.i185.i, label %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i181.i

_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i181.i: ; preds = %.thread43.i179.i
  %i.nx = icmp eq i8 %i.nv, 27
  %.1.v.i.i.i.i.i182.i = select i1 %i.nx, i64 -32, i64 -64
  %.1.i.i.i.i.i183.i = getelementptr inbounds i8, ptr %.sroa.035.057.i176.i, i64 %.1.v.i.i.i.i.i182.i
  %i.ny = load ptr, ptr %.1.i.i.i.i.i183.i, align 8, !tbaa !101, !noalias !987 ; 2 uses
  %.not53.i184.i = icmp eq ptr %i.ny, null
  br i1 %.not53.i184.i, label %._crit_edge.i185.i, label %.lr.ph.i175.i

._crit_edge.i185.i:                               ; preds = %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i181.i, %.thread43.i179.i, %bb.ae
  br i1 %.not.i173.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i185.i
  %i.nz = load ptr, ptr %i.d, align 8, !tbaa !979, !noalias !986
  store i32 0, ptr %i.nz, align 4, !tbaa !102, !noalias !987
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i185.i
  %i.oa = load ptr, ptr %i.fh, align 8, !tbaa !402, !noalias !987
  br label %.loopexit321.i

.loopexit322.i:                                   ; preds = %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.i, %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i, %.split.i, %bb.ah, %bb.ag, %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread.i
  %i.ob = load ptr, ptr %0, align 8, !tbaa !980, !noalias !986, !nonnull !38, !align !301 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 104
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !189, !noalias !987
  %i.oe = icmp eq ptr %.2.i.i, %i.od
  br i1 %i.oe, label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.loopexit322.i
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.035.057.i176.i, i64 64
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !209, !noalias !987 ; 2 uses
  %i.oh = load ptr, ptr %i.ex, align 8, !tbaa !209, !noalias !987 ; 2 uses
  %.not.i30.i.i = icmp eq ptr %i.og, %i.oh
  br i1 %.not.i30.i.i, label %.split.i.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i.i

.split.i.i:                                       ; preds = %bb.ao
  %i.oi = call noundef zeroext i1 @_ZNK4llvm9MemorySSA16locallyDominatesEPKNS_12MemoryAccessES3_(ptr noundef nonnull align 8 dereferenceable(317) %i.ob, ptr noundef nonnull %.sroa.035.057.i176.i, ptr noundef nonnull %.2.i.i), !noalias !987
  br i1 %i.oi, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i, label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i.i: ; preds = %bb.ao
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !175, !noalias !987
  %i.ol = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.ok, ptr noundef %i.og, ptr noundef %i.oh) #26, !noalias !987
  br i1 %i.ol, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i, label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i.i, %.split.i.i
  %i.om = load i32, ptr %i.bb, align 8, !tbaa !116, !noalias !986 ; 2 uses
  %i.on = load i32, ptr %i.bc, align 4, !tbaa !117, !noalias !986
  %.not.i31.i.i = icmp ult i32 %i.om, %i.on
  br i1 %.not.i31.i.i, label %bb.aq, label %bb.ap, !prof !105

bb.ap:                                            ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr nonnull %.sroa.035.057.i176.i, i32 %i.fd), !noalias !987
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, !llvm.loop !973

bb.aq:                                            ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i
  %i.oo = zext i32 %i.om to i64
  %.val.i.i.i = load ptr, ptr %16, align 8, !tbaa !41, !noalias !986
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.oo ; 2 uses
  store ptr %.sroa.035.057.i176.i, ptr %i.op, align 1, !noalias !987
  %.sroa.32.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  store i32 %i.fd, ptr %.sroa.32.0..sroa_idx.i.i.i, align 1, !noalias !987
  %i.oq = load i32, ptr %i.bb, align 8, !tbaa !116, !noalias !986
  %i.or = add i32 %i.oq, 1
  store i32 %i.or, ptr %i.bb, align 8, !tbaa !116, !noalias !986
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, !llvm.loop !973

.loopexit321.i:                                   ; preds = %.lr.ph.i175.i, %bb.an
  %.sroa.0.6.i186.i = phi ptr [ %i.oa, %bb.an ], [ %.sroa.035.057.i176.i, %.lr.ph.i175.i ] ; 3 uses
  %i.os = icmp eq ptr %.sroa.0.6.i186.i, %.2.i.i
  %i.ot = icmp eq ptr %.sroa.0.6.i186.i, %.028.i.i ; 2 uses
  %or.cond.i.i = or i1 %i.os, %i.ot
  br i1 %or.cond.i.i, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %.loopexit321.i
  br i1 %i.ot, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, label %bb.as, !llvm.loop !973

bb.as:                                            ; preds = %bb.ar
  %i.ou = load i32, ptr %i.ay, align 8, !tbaa !116, !noalias !986 ; 2 uses
  %i.ov = load i32, ptr %i.az, align 4, !tbaa !117, !noalias !986
  %.not.i32.i.i = icmp ult i32 %i.ou, %i.ov
  br i1 %.not.i32.i.i, label %bb.au, label %bb.at, !prof !105

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.fd), !noalias !987
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, !llvm.loop !973

bb.au:                                            ; preds = %bb.as
  %i.ow = zext i32 %i.ou to i64
  %i.ox = load ptr, ptr %15, align 8, !tbaa !41, !noalias !986
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.ow
  store i32 %i.fd, ptr %i.oy, align 1, !noalias !987
  %i.oz = load i32, ptr %i.ay, align 8, !tbaa !116, !noalias !986
  %i.pa = add i32 %i.oz, 1
  store i32 %i.pa, ptr %i.ay, align 8, !tbaa !116, !noalias !986
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, !llvm.loop !973

bb.av:                                            ; preds = %.loopexit321.i
  %i.pb = load i8, ptr %i.fj, align 8, !tbaa !403, !range !37, !noalias !987, !noundef !38
  %i.pc = trunc nuw i8 %i.pb to i1
  call fastcc void @_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb(ptr noundef nonnull align 8 dereferenceable(2896) %0, ptr noundef %.sroa.0.6.i186.i, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %i.fd, i1 noundef zeroext %i.pc), !noalias !987
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14UpwardDefsElemENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E16try_emplace_implIS2_JEEESt4pairINS_16DenseMapIteratorIS2_S4_S6_S8_Lb0EEEbEOT_DpOT0_.exit.i
  %i.pd = load i32, ptr %i.av, align 8, !tbaa !116, !noalias !986 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.pd, 0
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.m

_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i.i, %.split.i.i, %.loopexit322.i
  %.val6.val.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !41, !noalias !982 ; 2 uses
  br label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i

_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i: ; preds = %bb.aw, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i
  %.sroa.4.0.in37.i.i.i.i.i = phi i64 [ %i.ff, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i ], [ %i.pi, %bb.aw ] ; 2 uses
  %i.pe = and i64 %.sroa.4.0.in37.i.i.i.i.i, 4294967295 ; 3 uses
  %i.pf = icmp ugt i64 %.0284.i, %i.pe
  br i1 %i.pf, label %_ZN4llvm7find_ifINS_14iterator_rangeIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS3_7DefPathES3_EEEEZNS3_14tryOptimizePhiEPNS_9MemoryPhiEPNS_12MemoryAccessERKNS_14MemoryLocationEEUlRKS5_E_EEDaOT_T0_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i
  %i.pg = getelementptr inbounds nuw [88 x i8], ptr %.val6.val.i.i.i.i.i, i64 %i.pe
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 72
  %i.pi = load i64, ptr %i.ph, align 8            ; 5 uses
  %i.pj = and i64 %i.pi, 1095216660480
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.pj, 0
  %i.pk = and i64 %i.pi, 4294967296
  %i.pl = icmp ne i64 %i.pk, 0
  %i.pm = and i64 %i.pi, 4294967295               ; 2 uses
  %i.pn = icmp ne i64 %i.pm, 0
  %i.po = and i1 %i.pn, %i.pl
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %i.po
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i, label %_ZN4llvm7find_ifINS_14iterator_rangeIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS3_7DefPathES3_EEEEZNS3_14tryOptimizePhiEPNS_9MemoryPhiEPNS_12MemoryAccessERKNS_14MemoryLocationEEUlRKS5_E_EEDaOT_T0_.exit.i, !llvm.loop !974

_ZN4llvm7find_ifINS_14iterator_rangeIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS3_7DefPathES3_EEEEZNS3_14tryOptimizePhiEPNS_9MemoryPhiEPNS_12MemoryAccessERKNS_14MemoryLocationEEUlRKS5_E_EEDaOT_T0_.exit.i: ; preds = %bb.aw, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i
  %.pre-phi.i = phi i64 [ %i.pe, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i ], [ %i.pm, %bb.aw ]
  %.sroa.4.0.in.lcssa.i.i.i.i.i = phi i64 [ %.sroa.4.0.in37.i.i.i.i.i, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i ], [ %i.pi, %bb.aw ]
  %i.pp = getelementptr inbounds nuw [88 x i8], ptr %.val6.val.i.i.i.i.i, i64 %.pre-phi.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 64
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !402
  %i.ps = trunc i64 %.sroa.4.0.in.lcssa.i.i.i.i.i to i32
  store ptr %i.pr, ptr %19, align 8, !tbaa !189, !alias.scope !982
  store i32 %i.ps, ptr %i.bw, align 8, !tbaa !102, !alias.scope !982
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !41, !alias.scope !982
  store i32 0, ptr %i.bz, align 8, !tbaa !116, !alias.scope !982
  store i32 4, ptr %i.ca, align 4, !tbaa !117, !alias.scope !982
  br label %.critedge69.i

.critedge.i:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, %_ZNK12_GLOBAL__N_113ClobberWalker13getWalkTargetEPKN4llvm9MemoryPhiE.exit.i
  %i.pt = load i32, ptr %i.ay, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %.not.i91.i = icmp eq i32 %i.pt, 0
  br i1 %.not.i91.i, label %bb.ax, label %.lr.ph.preheader.i

bb.ax:                                            ; preds = %.critedge.i
  %.val.i92.i = load ptr, ptr %16, align 8, !tbaa !41, !noalias !982 ; 5 uses
  %.val21.i.i = load i32, ptr %i.bb, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.pu = zext i32 %.val21.i.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.pu, 4
  %i.pv = getelementptr inbounds nuw i8, ptr %.val.i92.i, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %.val21.i.i, 1
  br i1 %.not6.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ax
  %.05.i.i = getelementptr inbounds nuw i8, ptr %.val.i92.i, i64 16
  br label %.lr.ph.i93.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i
  %.val18.pre.i.i = load ptr, ptr %16, align 8, !tbaa !41, !noalias !982
  %.val19.pre.i.i = load i32, ptr %i.bb, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.pw = zext i32 %.val19.pre.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.ax
  %.val1.i396.i = phi i32 [ 1, %bb.ax ], [ %.val19.pre.i.i, %._crit_edge.loopexit.i.i ]
  %.val19.i.i = phi i64 [ 1, %bb.ax ], [ %i.pw, %._crit_edge.loopexit.i.i ]
  %.val18.i.i = phi ptr [ %.val.i92.i, %bb.ax ], [ %.val18.pre.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.015.lcssa.i.i = phi ptr [ %.val.i92.i, %bb.ax ], [ %i.qo, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %.val18.i.i, i64 %.val19.i.i
  %i.py = getelementptr inbounds i8, ptr %i.px, i64 -16 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.py, %.015.lcssa.i.i
  br i1 %.not17.i.i, label %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i, label %bb.ba

.lr.ph.i93.i:                                     ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i, %.lr.ph.preheader.i.i
  %.08.i.i = phi ptr [ %.0.i96.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i ], [ %.05.i.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %.0157.i.i = phi ptr [ %i.qo, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i ], [ %.val.i92.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.pz = load ptr, ptr %0, align 8, !tbaa !980, !noalias !982, !nonnull !38, !align !301 ; 3 uses
  %i.qa = load ptr, ptr %.08.i.i, align 8, !tbaa !995 ; 3 uses
  %i.qb = load ptr, ptr %.0157.i.i, align 8, !tbaa !995 ; 4 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i93.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 104
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !189
  %i.qf = icmp eq ptr %i.qb, %i.qe
  br i1 %i.qf, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 64
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !209 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 64
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !209 ; 2 uses
  %.not.i.i94.i = icmp eq ptr %i.qh, %i.qj
  br i1 %.not.i.i94.i, label %.split.i99.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i

.split.i99.i:                                     ; preds = %bb.az
  %i.qk = call noundef zeroext i1 @_ZNK4llvm9MemorySSA16locallyDominatesEPKNS_12MemoryAccessES3_(ptr noundef nonnull align 8 dereferenceable(317) %i.pz, ptr noundef nonnull %i.qa, ptr noundef nonnull %i.qb)
  br i1 %i.qk, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i: ; preds = %bb.az
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !175
  %i.qn = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.qm, ptr noundef %i.qh, ptr noundef %i.qj) #26
  br i1 %i.qn, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i, %.split.i99.i, %.lr.ph.i93.i
  br label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i, %.split.i99.i, %bb.ay
  %i.qo = phi ptr [ %.0157.i.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i ], [ %.08.i.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i ], [ %.08.i.i, %.split.i99.i ], [ %.08.i.i, %bb.ay ] ; 2 uses
  %.0.i96.i = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %.not.i97.i = icmp eq ptr %.0.i96.i, %i.pv
  br i1 %.not.i97.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i93.i, !llvm.loop !975

bb.ba:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.py, i64 16, i1 false), !tbaa.struct !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.py, ptr noundef nonnull align 8 dereferenceable(16) %.015.lcssa.i.i, i64 16, i1 false), !tbaa.struct !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !996
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.val.i100.pre.i = load ptr, ptr %16, align 8, !tbaa !41, !noalias !982
  %.val1.i.pre.i = load i32, ptr %i.bb, align 8, !tbaa !116, !noalias !982
  br label %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i

_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i: ; preds = %bb.ba, %._crit_edge.i.i
  %.val1.i.i = phi i32 [ %.val1.i396.i, %._crit_edge.i.i ], [ %.val1.i.pre.i, %bb.ba ] ; 2 uses
  %.val.i100.i = phi ptr [ %.val18.i.i, %._crit_edge.i.i ], [ %.val.i100.pre.i, %bb.ba ] ; 4 uses
  %i.qp = zext i32 %.val1.i.i to i64
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %.val.i100.i, i64 %i.qp ; 2 uses
  %i.qr = getelementptr inbounds i8, ptr %i.qq, i64 -16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.qr, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.qq, i64 -8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !102
  %i.qs = add i32 %.val1.i.i, -1                  ; 7 uses
  store i32 %i.qs, ptr %i.bb, align 8, !tbaa !116, !noalias !982
  store ptr %.sroa.0.0.copyload.i.i, ptr %19, align 8, !tbaa !189, !alias.scope !982
  store i32 %.sroa.2.0.copyload.i.i, ptr %i.bw, align 8, !tbaa !102, !alias.scope !982
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !41, !alias.scope !982
  store i32 0, ptr %i.bz, align 8, !tbaa !116, !alias.scope !982
  store i32 4, ptr %i.ca, align 4, !tbaa !117, !alias.scope !982
  %.not.i.i101.i = icmp eq i32 %i.qs, 0
  br i1 %.not.i.i101.i, label %.critedge69.i, label %bb.bb

bb.bb:                                            ; preds = %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i
  %i.qt = icmp eq ptr %.val.i100.i, %i.ba
  br i1 %i.qt, label %bb.bc, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i.i: ; preds = %bb.bb
  store ptr %.val.i100.i, ptr %i.bx, align 8, !tbaa !41, !alias.scope !982
  store i32 %i.qs, ptr %i.bz, align 8, !tbaa !116, !alias.scope !982
  %i.qu = load i32, ptr %i.bc, align 4, !tbaa !117, !noalias !982
  store i32 %i.qu, ptr %i.ca, align 4, !tbaa !117, !alias.scope !982
  store ptr %i.ba, ptr %16, align 8, !tbaa !41, !noalias !982
  store i32 0, ptr %i.bc, align 4, !tbaa !117, !noalias !982
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.qv = icmp ugt i32 %i.qs, 4
  br i1 %i.qv, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i.i: ; preds = %bb.bc
  %i.qw = zext i32 %i.qs to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, ptr noundef nonnull %i.by, i64 noundef %i.qw, i64 noundef 16) #26
  %.val41.i.pre.i.i = load i32, ptr %i.bb, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.val41.i.pre.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i.i
  %.val34.i.i.pre.i = load ptr, ptr %16, align 8, !tbaa !41, !noalias !982
  %.val.i.i103.pre.i = load ptr, ptr %i.bx, align 8, !tbaa !41, !alias.scope !982
  br label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i, %bb.bc
  %.val.i.i103.i = phi ptr [ %.val.i.i103.pre.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i ], [ %i.by, %bb.bc ]
  %.val34.i.i.i = phi ptr [ %.val34.i.i.pre.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i ], [ %.val.i100.i, %bb.bc ]
  %.val41.i11.i.i = phi i32 [ %.val41.i.pre.i.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i ], [ %i.qs, %bb.bc ]
  %i.qx = zext i32 %.val41.i11.i.i to i64
  %gepdiff.i.i.i = shl nuw nsw i64 %i.qx, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val.i.i103.i, ptr align 8 %.val34.i.i.i, i64 %gepdiff.i.i.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i.i
  store i32 %i.qs, ptr %i.bz, align 8, !tbaa !116, !alias.scope !982
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i.i
  store i32 0, ptr %i.bb, align 8, !tbaa !116, !noalias !982
  br label %.critedge69.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !982
  store ptr %i.bt, ptr %17, align 8, !tbaa !41, !noalias !982
  store i32 0, ptr %i.bu, align 8, !tbaa !116, !noalias !982
  store i32 4, ptr %i.bv, align 4, !tbaa !117, !noalias !982
  %i.qy = load ptr, ptr %15, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.qz = zext i32 %i.pt to i64
  %.idx.i = shl nuw nsw i64 %i.qz, 2
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.idx.i
  br label %.lr.ph.i21

._crit_edge.i23:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i
  %i.rb = load i32, ptr %i.bb, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %.not.i104.i = icmp eq i32 %i.rb, 0
  br i1 %.not.i104.i, label %.loopexit324.i, label %bb.bp

.lr.ph.i21:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i, %.lr.ph.preheader.i
  %.060350.i = phi ptr [ %.161.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i ], [ null, %.lr.ph.preheader.i ] ; 2 uses
  %.063349.i = phi ptr [ %i.tt, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i ], [ %i.qy, %.lr.ph.preheader.i ] ; 2 uses
  %i.rc = load i32, ptr %.063349.i, align 4, !tbaa !102 ; 3 uses
  %i.rd = zext i32 %i.rc to i64
  %.val73.i = load ptr, ptr %i.ah, align 8, !tbaa !41, !noalias !982
  %i.re = getelementptr inbounds nuw [88 x i8], ptr %.val73.i, i64 %i.rd ; 3 uses
  %i.rf = load ptr, ptr %i.d, align 8, !tbaa !979, !noalias !982 ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !102
  %.not.i105.i = icmp eq i32 %i.rg, 0             ; 2 uses
  br i1 %.not.i105.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i21
  store i32 1, ptr %i.rf, align 4, !tbaa !102
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i21
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 64 ; 3 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !402 ; 2 uses
  %.not5356.i.i = icmp eq ptr %i.ri, null
  br i1 %.not5356.i.i, label %._crit_edge.i108.i, label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %bb.be
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 80
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i.i, %.lr.ph.i106.i
  %.sroa.035.057.i.i = phi ptr [ %i.ri, %.lr.ph.i106.i ], [ %i.tk, %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i.i ] ; 8 uses
  store ptr %.sroa.035.057.i.i, ptr %i.rh, align 8, !tbaa !402
  %i.rk = load i8, ptr %.sroa.035.057.i.i, align 8, !tbaa !80 ; 2 uses
  %.not55.i.i = icmp eq i8 %i.rk, 28
  br i1 %.not55.i.i, label %bb.bg, label %.thread43.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.rl = load ptr, ptr %0, align 8, !tbaa !980, !noalias !982, !nonnull !38, !align !301
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 104
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !189
  %i.ro = icmp eq ptr %.sroa.035.057.i.i, %i.rn
  br i1 %i.ro, label %.loopexit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rp = load ptr, ptr %i.d, align 8, !tbaa !979, !noalias !982 ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !102
  %i.rr = add i32 %i.rq, -1                       ; 2 uses
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !102
  %.not32.i.i = icmp eq i32 %i.rr, 0
  br i1 %.not32.i.i, label %.loopexit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rs = load ptr, ptr %i.b, align 8, !tbaa !977, !noalias !982 ; 5 uses
  %i.rt = load i8, ptr %i.rj, align 8, !tbaa !403, !range !37, !noundef !38
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 512 ; 7 uses
  %i.rv = load i8, ptr %i.ru, align 8, !tbaa !981, !range !37, !noundef !38 ; 5 uses
  store i8 %i.rt, ptr %i.ru, align 8, !tbaa !981
  %i.rw = load ptr, ptr %i.c, align 8, !tbaa !978, !noalias !982
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 64
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !394 ; 4 uses
  %i.rz = getelementptr i8, ptr %.sroa.035.057.i.i, i64 72
  %.val.i111.i = load ptr, ptr %i.rz, align 8, !tbaa !79 ; 5 uses
  %i.sa = load i8, ptr %.val.i111.i, align 8, !tbaa !80 ; 2 uses
  %i.sb = icmp eq i8 %i.sa, 88
  br i1 %i.sb, label %bb.bj, label %.critedge.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.sc = getelementptr inbounds i8, ptr %.val.i111.i, i64 -32
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !101 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.se = load i8, ptr %i.sd, align 8, !tbaa !80
  %i.sf = icmp eq i8 %i.se, 14
  br i1 %i.sf, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i, label %.critedge.i.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i: ; preds = %bb.bk
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sh = load i32, ptr %i.sg, align 8
  %i.si = and i32 %i.sh, 8192
  %.not.i.i.i200.i = icmp eq i32 %i.si, 0
  br i1 %.not.i.i.i200.i, label %.critedge.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sd, i64 36
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !295
  switch i32 %i.sk, label %.critedge.i.i [
    i32 6, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i
    i32 11, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i
    i32 215, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i
    i32 214, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i
    i32 16, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i
    i32 164, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i
    i32 312, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i
  ]

.critedge.i.i:                                    ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i, %bb.bk, %bb.bj, %bb.bi
  %.not.i.i38.i.i = icmp eq ptr %i.ry, null
  br i1 %.not.i.i38.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i.i, label %bb.bl

bb.bl:                                            ; preds = %.critedge.i.i
  %i.sl = load i8, ptr %i.ry, align 8, !tbaa !80  ; 2 uses
  switch i8 %i.sl, label %.thread9.i.i [
    i8 88, label %.split304.i
    i8 36, label %.split304.i
    i8 42, label %.split304.i
  ]

.split304.i:                                      ; preds = %bb.bl, %bb.bl, %bb.bl
  %i.sm = load ptr, ptr %i.rs, align 8, !tbaa !300, !nonnull !38, !align !301
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.so = call noundef zeroext i8 @_ZN4llvm9AAResults13getModRefInfoEPKNS_11InstructionEPKNS_8CallBaseERNS_11AAQueryInfoE(ptr noundef nonnull align 8 dereferenceable(56) %i.sm, ptr noundef nonnull %.val.i111.i, ptr noundef nonnull %i.ry, ptr noundef nonnull align 8 dereferenceable(506) %i.sn) #26
  %i.sp = and i8 %i.so, 2
  %.not318.i = icmp eq i8 %i.sp, 0
  store i8 %i.rv, ptr %i.ru, align 8, !tbaa !981
  br i1 %.not318.i, label %..thread43_crit_edge.i.i, label %.loopexit.i

.thread9.i.i:                                     ; preds = %bb.bl
  %.not.i197.i = icmp eq i8 %i.sa, 63
  %i.sq = icmp eq i8 %i.sl, 63
  %or.cond.i198.i = and i1 %.not.i197.i, %i.sq
  br i1 %or.cond.i198.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i.i

_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i.i: ; preds = %.thread9.i.i
  %i.sr = getelementptr i8, ptr %i.ry, i64 2
  %.val.i199.i = load i16, ptr %i.sr, align 2, !tbaa !302 ; 2 uses
  %i.ss = getelementptr i8, ptr %.val.i111.i, i64 2
  %.val37.i.i = load i16, ptr %i.ss, align 2, !tbaa !302 ; 2 uses
  %i.st = and i16 %.val.i199.i, 1
  %i.su = and i16 %i.st, %.val37.i.i
  %or.cond.not.i.i.i = icmp eq i16 %i.su, 0
  br i1 %or.cond.not.i.i.i, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.i, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i.i
  store i8 %i.rv, ptr %i.ru, align 8, !tbaa !981
  br label %.loopexit.i

_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i.i: ; preds = %.thread9.i.i, %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull readonly align 8 dereferenceable(81) %i.re, i64 56, i1 false), !tbaa.struct !309
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.a, align 8, !tbaa !304, !noalias !982
  %i.sv = load ptr, ptr %i.rs, align 8, !tbaa !300, !nonnull !38, !align !301
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.sx = call noundef zeroext i8 @_ZN4llvm9AAResults13getModRefInfoEPKNS_11InstructionERKSt8optionalINS_14MemoryLocationEERNS_11AAQueryInfoE(ptr noundef nonnull align 8 dereferenceable(56) %i.sv, ptr noundef nonnull %.val.i111.i, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(506) %i.sw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !982
  %i.sy = and i8 %i.sx, 2
  %.not319.i = icmp eq i8 %i.sy, 0
  store i8 %i.rv, ptr %i.ru, align 8, !tbaa !981
  br i1 %.not319.i, label %..thread43_crit_edge.i.i, label %.loopexit.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i
  store i8 %i.rv, ptr %i.ru, align 8, !tbaa !981
  br label %..thread43_crit_edge.i.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i.i
  %i.sz = and i16 %.val.i199.i, 896
  %i.ta = icmp eq i16 %i.sz, 896
  %i.tb = lshr i16 %.val37.i.i, 7
  %i.tc = trunc i16 %i.tb to i8
  %i.td = and i8 %i.tc, 7
  %i.te = lshr i8 -48, %i.td
  %i.tf = trunc i8 %i.te to i1
  %i.tg = or i1 %i.ta, %i.tf
  store i8 %i.rv, ptr %i.ru, align 8, !tbaa !981
  br i1 %i.tg, label %.loopexit.i, label %..thread43_crit_edge.i.i

..thread43_crit_edge.i.i:                         ; preds = %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.i, %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread302.i, %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i.i, %.split304.i
  %.pre.i.i = load i8, ptr %.sroa.035.057.i.i, align 8, !tbaa !80
  br label %.thread43.i.i

.thread43.i.i:                                    ; preds = %..thread43_crit_edge.i.i, %bb.bf
  %i.th = phi i8 [ %.pre.i.i, %..thread43_crit_edge.i.i ], [ %i.rk, %bb.bf ] ; 2 uses
  %i.ti = add i8 %i.th, -29
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ti, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i108.i, label %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i.i

_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i.i: ; preds = %.thread43.i.i
  %i.tj = icmp eq i8 %i.th, 27
  %.1.v.i.i.i.i.i.i = select i1 %i.tj, i64 -32, i64 -64
  %.1.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.035.057.i.i, i64 %.1.v.i.i.i.i.i.i
  %i.tk = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !101 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.tk, null
  br i1 %.not53.i.i, label %._crit_edge.i108.i, label %bb.bf

._crit_edge.i108.i:                               ; preds = %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i.i, %.thread43.i.i, %bb.be
  br i1 %.not.i105.i, label %bb.bm, label %_ZNK12_GLOBAL__N_113ClobberWalker18walkToPhiOrClobberERNS0_7DefPathEPKN4llvm12MemoryAccessES6_.exit.i

bb.bm:                                            ; preds = %._crit_edge.i108.i
  %i.tl = load ptr, ptr %i.d, align 8, !tbaa !979, !noalias !982
  store i32 0, ptr %i.tl, align 4, !tbaa !102
  br label %_ZNK12_GLOBAL__N_113ClobberWalker18walkToPhiOrClobberERNS0_7DefPathEPKN4llvm12MemoryAccessES6_.exit.i

_ZNK12_GLOBAL__N_113ClobberWalker18walkToPhiOrClobberERNS0_7DefPathEPKN4llvm12MemoryAccessES6_.exit.i: ; preds = %bb.bm, %._crit_edge.i108.i
  %i.tm = load ptr, ptr %i.rh, align 8, !tbaa !402
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i

.loopexit.i:                                      ; preds = %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.i, %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i.i, %.split304.i, %bb.bh, %bb.bg, %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit.thread.i
  %i.tn = load i32, ptr %i.bu, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.to = load i32, ptr %i.bv, align 4, !tbaa !117, !noalias !982
  %.not.i112.i = icmp ult i32 %i.tn, %i.to
  br i1 %.not.i112.i, label %bb.bo, label %bb.bn, !prof !105

bb.bn:                                            ; preds = %.loopexit.i
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr nonnull %.sroa.035.057.i.i, i32 %i.rc)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i

bb.bo:                                            ; preds = %.loopexit.i
  %i.tp = zext i32 %i.tn to i64
  %.val.i113.i = load ptr, ptr %17, align 8, !tbaa !41, !noalias !982
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %.val.i113.i, i64 %i.tp ; 2 uses
  store ptr %.sroa.035.057.i.i, ptr %i.tq, align 1
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i32 %i.rc, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  %i.tr = load i32, ptr %i.bu, align 8, !tbaa !116, !noalias !982
  %i.ts = add i32 %i.tr, 1
  store i32 %i.ts, ptr %i.bu, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i: ; preds = %bb.bo, %bb.bn, %_ZNK12_GLOBAL__N_113ClobberWalker18walkToPhiOrClobberERNS0_7DefPathEPKN4llvm12MemoryAccessES6_.exit.i
  %.161.i = phi ptr [ %i.tm, %_ZNK12_GLOBAL__N_113ClobberWalker18walkToPhiOrClobberERNS0_7DefPathEPKN4llvm12MemoryAccessES6_.exit.i ], [ %.060350.i, %bb.bn ], [ %.060350.i, %bb.bo ] ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.063349.i, i64 4 ; 2 uses
  %.not.i22 = icmp eq ptr %i.tt, %i.ra
  br i1 %.not.i22, label %._crit_edge.i23, label %.lr.ph.i21

bb.bp:                                            ; preds = %._crit_edge.i23
  %.not65.i = icmp eq ptr %.161.i, null
  br i1 %.not65.i, label %.preheader.i, label %.lr.ph358.preheader.i

.preheader.i:                                     ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.2.i.i) ]
  br label %.lr.ph353.i

.lr.ph353.i:                                      ; preds = %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i26, %.preheader.i
  %.sroa.0248.0352.i = phi ptr [ %i.tx, %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i26 ], [ %.2.i.i, %.preheader.i ] ; 4 uses
  %i.tu = load i8, ptr %.sroa.0248.0352.i, align 8, !tbaa !80 ; 2 uses
  %i.tv = add i8 %i.tu, -29
  %spec.select.i.i.i.i.i.i.i.i.i.i25 = icmp ult i8 %i.tv, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i25, label %.lr.ph358.preheader.i, label %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i26

_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i26: ; preds = %.lr.ph353.i
  %i.tw = icmp eq i8 %i.tu, 27
  %.1.v.i.i.i.i.i27 = select i1 %i.tw, i64 -32, i64 -64
  %.1.i.i.i.i.i28 = getelementptr inbounds i8, ptr %.sroa.0248.0352.i, i64 %.1.v.i.i.i.i.i27
  %i.tx = load ptr, ptr %.1.i.i.i.i.i28, align 8, !tbaa !101 ; 2 uses
  %.not320.i = icmp eq ptr %i.tx, null
  br i1 %.not320.i, label %.lr.ph358.preheader.i, label %.lr.ph353.i

.lr.ph358.preheader.i:                            ; preds = %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i26, %.lr.ph353.i, %bb.bp
  %.3.i = phi ptr [ %.161.i, %bb.bp ], [ %.sroa.0248.0352.i, %.lr.ph353.i ], [ %.sroa.0248.0352.i, %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i26 ] ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.3.i, i64 64
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !209
  %.val76.i = load ptr, ptr %16, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.ua = zext i32 %i.rb to i64
  %.idx365.i = shl nuw nsw i64 %i.ua, 4
  %i.ub = getelementptr inbounds nuw i8, ptr %.val76.i, i64 %.idx365.i
  br label %.lr.ph358.i

.lr.ph358.i:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit119.i, %.lr.ph358.preheader.i
  %.064356.i = phi ptr [ %i.un, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit119.i ], [ %.val76.i, %.lr.ph358.preheader.i ] ; 4 uses
  %i.uc = load ptr, ptr %i.bd, align 8, !tbaa !404, !noalias !982, !nonnull !38, !align !301
  %i.ud = load ptr, ptr %.064356.i, align 8, !tbaa !995
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 64
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !209
  %i.ug = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.uc, ptr noundef %i.tz, ptr noundef %i.uf) #26
  br i1 %i.ug, label %bb.bq, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit119.i

bb.bq:                                            ; preds = %.lr.ph358.i
  %.sroa.010.0.copyload.i = load ptr, ptr %.064356.i, align 8, !tbaa !189 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.064356.i, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !102 ; 2 uses
  %i.uh = load i32, ptr %i.bu, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.ui = load i32, ptr %i.bv, align 4, !tbaa !117, !noalias !982
  %.not.i116.i = icmp ult i32 %i.uh, %i.ui
  br i1 %.not.i116.i, label %bb.bs, label %bb.br, !prof !105

bb.br:                                            ; preds = %bb.bq
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %.sroa.010.0.copyload.i, i32 %.sroa.2.0.copyload.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit119.i

bb.bs:                                            ; preds = %bb.bq
  %i.uj = zext i32 %i.uh to i64
  %.val.i117.i = load ptr, ptr %17, align 8, !tbaa !41, !noalias !982
  %i.uk = getelementptr inbounds nuw [16 x i8], ptr %.val.i117.i, i64 %i.uj ; 2 uses
  store ptr %.sroa.010.0.copyload.i, ptr %i.uk, align 1
  %.sroa.32.0..sroa_idx.i118.i = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.32.0..sroa_idx.i118.i, align 1
  %i.ul = load i32, ptr %i.bu, align 8, !tbaa !116, !noalias !982
  %i.um = add i32 %i.ul, 1
  store i32 %i.um, ptr %i.bu, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit119.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit119.i: ; preds = %bb.bs, %bb.br, %.lr.ph358.i
  %i.un = getelementptr inbounds nuw i8, ptr %.064356.i, i64 16 ; 2 uses
  %.not66.i = icmp eq ptr %i.un, %i.ub
  br i1 %.not66.i, label %.loopexit324.i, label %.lr.ph358.i

.loopexit324.i:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit119.i, %._crit_edge.i23
  %.4.i = phi ptr [ %.161.i, %._crit_edge.i23 ], [ %.3.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit119.i ] ; 9 uses
  %i.uo = load i32, ptr %i.bu, align 8, !tbaa !116, !noalias !982 ; 3 uses
  %.not.i120.i = icmp eq i32 %i.uo, 0             ; 2 uses
  br i1 %.not.i120.i, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %.loopexit324.i
  %.val.i121.i = load ptr, ptr %17, align 8, !tbaa !41, !noalias !982 ; 5 uses
  %i.up = zext i32 %i.uo to i64
  %.idx.i123.i = shl nuw nsw i64 %i.up, 4
  %i.uq = getelementptr inbounds nuw i8, ptr %.val.i121.i, i64 %.idx.i123.i
  %.not6.i124.i = icmp eq i32 %i.uo, 1
  br i1 %.not6.i124.i, label %._crit_edge.i138.i, label %.lr.ph.preheader.i125.i

.lr.ph.preheader.i125.i:                          ; preds = %bb.bt
  %.05.i126.i = getelementptr inbounds nuw i8, ptr %.val.i121.i, i64 16
  br label %.lr.ph.i127.i

._crit_edge.loopexit.i135.i:                      ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i
  %.val18.pre.i136.i = load ptr, ptr %17, align 8, !tbaa !41, !noalias !982
  %.val19.pre.i137.i = load i32, ptr %i.bu, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.ur = zext i32 %.val19.pre.i137.i to i64
  br label %._crit_edge.i138.i

._crit_edge.i138.i:                               ; preds = %._crit_edge.loopexit.i135.i, %bb.bt
  %.val1.i147391.i = phi i32 [ 1, %bb.bt ], [ %.val19.pre.i137.i, %._crit_edge.loopexit.i135.i ]
  %.val19.i139.i = phi i64 [ 1, %bb.bt ], [ %i.ur, %._crit_edge.loopexit.i135.i ]
  %.val18.i140.i = phi ptr [ %.val.i121.i, %bb.bt ], [ %.val18.pre.i136.i, %._crit_edge.loopexit.i135.i ] ; 2 uses
  %.015.lcssa.i141.i = phi ptr [ %.val.i121.i, %bb.bt ], [ %i.vj, %._crit_edge.loopexit.i135.i ] ; 3 uses
  %i.us = getelementptr inbounds nuw [16 x i8], ptr %.val18.i140.i, i64 %.val19.i139.i
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 -16 ; 3 uses
  %.not17.i142.i = icmp eq ptr %i.ut, %.015.lcssa.i141.i
  br i1 %.not17.i142.i, label %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit145.i, label %bb.bw

.lr.ph.i127.i:                                    ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i, %.lr.ph.preheader.i125.i
  %.08.i128.i = phi ptr [ %.0.i133.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i ], [ %.05.i126.i, %.lr.ph.preheader.i125.i ] ; 5 uses
  %.0157.i129.i = phi ptr [ %i.vj, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i ], [ %.val.i121.i, %.lr.ph.preheader.i125.i ] ; 2 uses
  %i.uu = load ptr, ptr %0, align 8, !tbaa !980, !noalias !982, !nonnull !38, !align !301 ; 3 uses
  %i.uv = load ptr, ptr %.08.i128.i, align 8, !tbaa !995 ; 3 uses
  %i.uw = load ptr, ptr %.0157.i129.i, align 8, !tbaa !995 ; 4 uses
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i143.i, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i127.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 104
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !189
  %i.va = icmp eq ptr %i.uw, %i.uz
  br i1 %i.va, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 64
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !209 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uw, i64 64
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !209 ; 2 uses
  %.not.i.i130.i = icmp eq ptr %i.vc, %i.ve
  br i1 %.not.i.i130.i, label %.split.i144.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i131.i

.split.i144.i:                                    ; preds = %bb.bv
  %i.vf = call noundef zeroext i1 @_ZNK4llvm9MemorySSA16locallyDominatesEPKNS_12MemoryAccessES3_(ptr noundef nonnull align 8 dereferenceable(317) %i.uu, ptr noundef nonnull %i.uv, ptr noundef nonnull %i.uw)
  br i1 %i.vf, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i143.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i131.i: ; preds = %bb.bv
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !175
  %i.vi = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.vh, ptr noundef %i.vc, ptr noundef %i.ve) #26
  br i1 %i.vi, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i143.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i143.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i131.i, %.split.i144.i, %.lr.ph.i127.i
  br label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i132.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i143.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i131.i, %.split.i144.i, %bb.bu
  %i.vj = phi ptr [ %.0157.i129.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i143.i ], [ %.08.i128.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i131.i ], [ %.08.i128.i, %.split.i144.i ], [ %.08.i128.i, %bb.bu ] ; 2 uses
  %.0.i133.i = getelementptr inbounds nuw i8, ptr %.08.i128.i, i64 16 ; 2 uses
  %.not.i134.i = icmp eq ptr %.0.i133.i, %i.uq
  br i1 %.not.i134.i, label %._crit_edge.loopexit.i135.i, label %.lr.ph.i127.i, !llvm.loop !975

bb.bw:                                            ; preds = %._crit_edge.i138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.ut, i64 16, i1 false), !tbaa.struct !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ut, ptr noundef nonnull align 8 dereferenceable(16) %.015.lcssa.i141.i, i64 16, i1 false), !tbaa.struct !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.lcssa.i141.i, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !996
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.val.i146.pre.i = load ptr, ptr %17, align 8, !tbaa !41, !noalias !982
  %.val1.i147.pre.i = load i32, ptr %i.bu, align 8, !tbaa !116, !noalias !982
  br label %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit145.i

_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit145.i: ; preds = %bb.bw, %._crit_edge.i138.i
  %.val1.i147.i = phi i32 [ %.val1.i147391.i, %._crit_edge.i138.i ], [ %.val1.i147.pre.i, %bb.bw ] ; 2 uses
  %.val.i146.i = phi ptr [ %.val18.i140.i, %._crit_edge.i138.i ], [ %.val.i146.pre.i, %bb.bw ] ; 4 uses
  %i.vk = zext i32 %.val1.i147.i to i64
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %.val.i146.i, i64 %i.vk ; 2 uses
  %i.vm = getelementptr inbounds i8, ptr %i.vl, i64 -16
  %.sroa.0.0.copyload.i148.i = load ptr, ptr %i.vm, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx.i149.i = getelementptr inbounds i8, ptr %i.vl, i64 -8
  %.sroa.2.0.copyload.i150.i = load i32, ptr %.sroa.2.0..sroa_idx.i149.i, align 8, !tbaa !102
  %i.vn = add i32 %.val1.i147.i, -1               ; 7 uses
  store i32 %i.vn, ptr %i.bu, align 8, !tbaa !116, !noalias !982
  store ptr %.sroa.0.0.copyload.i148.i, ptr %19, align 8, !tbaa !189, !alias.scope !982
  store i32 %.sroa.2.0.copyload.i150.i, ptr %i.bw, align 8, !tbaa !102, !alias.scope !982
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !41, !alias.scope !982
  store i32 0, ptr %i.bz, align 8, !tbaa !116, !alias.scope !982
  store i32 4, ptr %i.ca, align 4, !tbaa !117, !alias.scope !982
  %.not.i.i153.i = icmp eq i32 %i.vn, 0
  br i1 %.not.i.i153.i, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EEC2EOS4_.exit166.i, label %bb.bx

bb.bx:                                            ; preds = %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit145.i
  %i.vo = icmp eq ptr %.val.i146.i, %i.bt
  br i1 %i.vo, label %bb.by, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i155.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i155.i: ; preds = %bb.bx
  store ptr %.val.i146.i, ptr %i.bx, align 8, !tbaa !41, !alias.scope !982
  store i32 %i.vn, ptr %i.bz, align 8, !tbaa !116, !alias.scope !982
  %i.vp = load i32, ptr %i.bv, align 4, !tbaa !117, !noalias !982
  store i32 %i.vp, ptr %i.ca, align 4, !tbaa !117, !alias.scope !982
  store ptr %i.bt, ptr %17, align 8, !tbaa !41, !noalias !982
  store i32 0, ptr %i.bv, align 4, !tbaa !117, !noalias !982
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i156.i

bb.by:                                            ; preds = %bb.bx
  %i.vq = icmp ugt i32 %i.vn, 4
  br i1 %i.vq, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163.i, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163.i: ; preds = %bb.by
  %i.vr = zext i32 %i.vn to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, ptr noundef nonnull %i.by, i64 noundef %i.vr, i64 noundef 16) #26
  %.val41.i.pre.i164.i = load i32, ptr %i.bu, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %.not.i.i.i.i165.i = icmp eq i32 %.val41.i.pre.i164.i, 0
  br i1 %.not.i.i.i.i165.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i162.i, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157_crit_edge.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157_crit_edge.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163.i
  %.val34.i.i159.pre.i = load ptr, ptr %17, align 8, !tbaa !41, !noalias !982
  %.val.i.i160.pre.i = load ptr, ptr %i.bx, align 8, !tbaa !41, !alias.scope !982
  br label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157_crit_edge.i, %bb.by
  %.val.i.i160.i = phi ptr [ %.val.i.i160.pre.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157_crit_edge.i ], [ %i.by, %bb.by ]
  %.val34.i.i159.i = phi ptr [ %.val34.i.i159.pre.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157_crit_edge.i ], [ %.val.i146.i, %bb.by ]
  %.val41.i11.i158.i = phi i32 [ %.val41.i.pre.i164.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157_crit_edge.i ], [ %i.vn, %bb.by ]
  %i.vs = zext i32 %.val41.i11.i158.i to i64
  %gepdiff.i.i161.i = shl nuw nsw i64 %i.vs, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val.i.i160.i, ptr align 8 %.val34.i.i159.i, i64 %gepdiff.i.i161.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i162.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i162.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i157.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i163.i
  store i32 %i.vn, ptr %i.bz, align 8, !tbaa !116, !alias.scope !982
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i156.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i156.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i162.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i155.i
  store i32 0, ptr %i.bu, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EEC2EOS4_.exit166.i

bb.bz:                                            ; preds = %.loopexit324.i
  %i.vt = load i32, ptr %i.ai, align 8, !tbaa !116, !noalias !982
  %i.vu = zext i32 %i.vt to i64
  store i32 0, ptr %i.av, align 8, !tbaa !116, !noalias !982
  %i.vv = load ptr, ptr %15, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.vw = load i32, ptr %i.ay, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.vx = zext i32 %i.vw to i64
  %.idx366.i = shl nuw nsw i64 %i.vx, 2
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 %.idx366.i
  %.not67359.i = icmp eq i32 %i.vw, 0
  br i1 %.not67359.i, label %._crit_edge363.i, label %.lr.ph362.i

.lr.ph362.i:                                      ; preds = %bb.bz
  %.not.i.i.i.i = icmp eq ptr %.4.i, null
  %i.vz = getelementptr inbounds i8, ptr %.4.i, i64 -8 ; 5 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.4.i, i64 64 ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.4.i, i64 76 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.4.i, i64 4
  br label %bb.ca

._crit_edge363.i:                                 ; preds = %_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb.exit.i, %bb.bz
  store i32 0, ptr %i.ay, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EEC2EOS4_.exit166.i

bb.ca:                                            ; preds = %_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb.exit.i, %.lr.ph362.i
  %.056360.i = phi ptr [ %i.vv, %.lr.ph362.i ], [ %i.aaa, %_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb.exit.i ] ; 2 uses
  %i.wd = load i32, ptr %.056360.i, align 4, !tbaa !102
  %i.we = zext i32 %i.wd to i64                   ; 2 uses
  %.val72.i = load ptr, ptr %i.ah, align 8, !tbaa !41, !noalias !982
  %i.wf = getelementptr inbounds nuw [88 x i8], ptr %.val72.i, i64 %i.we ; 9 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 80
  %i.wh = load i8, ptr %i.wg, align 8, !tbaa !403, !range !37, !noundef !38 ; 3 uses
  %.sroa.22242.88.copyload = load ptr, ptr %i.wf, align 8 ; 9 uses
  %.sroa.27.88..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %.sroa.24.88.copyload = load i384, ptr %.sroa.27.88..sroa_idx, align 8 ; 2 uses
  %i.wi = load ptr, ptr %i.bd, align 8, !tbaa !404, !noalias !982, !nonnull !38, !align !301 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i, label %_ZN4llvm17upward_defs_beginERKNS_14UpwardDefsElemERNS_13DominatorTreeE.exit.i.i

_ZN4llvm17upward_defs_beginERKNS_14UpwardDefsElemERNS_13DominatorTreeE.exit.i.i: ; preds = %bb.ca
  %i.wj = load i8, ptr %.4.i, align 8, !tbaa !80  ; 2 uses
  %i.wk = icmp eq i8 %i.wj, 29
  br i1 %i.wk, label %bb.cb, label %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread

_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread: ; preds = %_ZN4llvm17upward_defs_beginERKNS_14UpwardDefsElemERNS_13DominatorTreeE.exit.i.i
  %i.wl = icmp eq i8 %i.wj, 27
  %.1.v.i.i.i.i.i209.i = select i1 %i.wl, i64 -32, i64 -64
  %.1.i.i.i.i.i210.i = getelementptr inbounds i8, ptr %.4.i, i64 %.1.v.i.i.i.i.i209.i
  %.1.i.i213.i36 = load ptr, ptr %.1.i.i.i.i.i210.i, align 8, !tbaa !101
  %.sroa.6.8.copyload231 = load ptr, ptr %i.wf, align 8
  %.sroa.13.8..sroa_idx233 = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %.sroa.12.8.copyload231 = load i384, ptr %.sroa.13.8..sroa_idx233, align 8 ; 2 uses
  %extract.t241 = trunc i384 %.sroa.12.8.copyload231 to i64
  %extract247 = lshr i384 %.sroa.12.8.copyload231, 64
  %extract.t248 = trunc nuw i384 %extract247 to i320
  br label %.lr.ph.i168.i

_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i: ; preds = %bb.ca
  %i.wm = load ptr, ptr %i.vz, align 8, !tbaa !112
  %.1.i.i213.i = load ptr, ptr %i.wm, align 8, !tbaa !101
  %.sroa.6.8.copyload = load ptr, ptr %i.wf, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %.sroa.12.8.copyload = load i384, ptr %.sroa.13.8..sroa_idx, align 8 ; 2 uses
  %extract.t = trunc i384 %.sroa.12.8.copyload to i64
  %extract = lshr i384 %.sroa.12.8.copyload, 64
  %extract.t242 = trunc nuw i384 %extract to i320
  br label %.lr.ph.i168.i

bb.cb:                                            ; preds = %_ZN4llvm17upward_defs_beginERKNS_14UpwardDefsElemERNS_13DominatorTreeE.exit.i.i
  %i.wn = load ptr, ptr %i.vz, align 8, !tbaa !112
  %.1.i.i213.i41 = load ptr, ptr %i.wn, align 8, !tbaa !101 ; 2 uses
  %.sroa.6.8.copyload232 = load ptr, ptr %i.wf, align 8 ; 3 uses
  %.sroa.13.8..sroa_idx235 = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %.sroa.12.8.copyload233 = load i384, ptr %.sroa.13.8..sroa_idx235, align 8 ; 5 uses
  %.not.i214.i = icmp eq ptr %.sroa.22242.88.copyload, null
  br i1 %.not.i214.i, label %20, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !982
  %i.wo = load ptr, ptr %i.wa, align 8, !tbaa !209
  %i.wp = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.wo) #26
  store ptr %.sroa.22242.88.copyload, ptr %7, align 8, !tbaa !427, !noalias !982
  store ptr %i.wp, ptr %i.cb, align 8, !tbaa !428, !noalias !982
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false), !noalias !982
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !41, !noalias !982
  store i32 0, ptr %i.cf, align 8, !tbaa !116, !noalias !982
  store i32 4, ptr %.sroa.5267.sroa.8.0..sroa_idx280.i, align 4, !tbaa !117, !noalias !982
  %i.wq = load i8, ptr %.sroa.22242.88.copyload, align 8, !tbaa !80
  %i.wr = icmp ult i8 %i.wq, 30
  br i1 %i.wr, label %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i215.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr %.sroa.22242.88.copyload, ptr %i.ce, align 8, !noalias !982
  store i32 1, ptr %i.cf, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i215.i

_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i215.i: ; preds = %bb.cd, %bb.cc
  %i.ws = load ptr, ptr %i.wa, align 8, !tbaa !209
  %i.wt = load ptr, ptr %i.vz, align 8, !tbaa !112
  %i.wu = load i32, ptr %i.wb, align 4, !tbaa !111
  %i.wv = zext i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [32 x i8], ptr %i.wt, i64 %i.wv
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !104
  %i.wy = call noundef ptr @_ZN4llvm12PHITransAddr14translateValueEPNS_10BasicBlockES2_PKNS_13DominatorTreeEb(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef %i.ws, ptr noundef %i.wx, ptr noundef nonnull %i.wi, i1 noundef zeroext true) #26 ; 3 uses
  %.not4.i216.i = icmp eq ptr %i.wy, null
  %.not5.i218.i = icmp eq ptr %i.wy, %.sroa.6.8.copyload232
  %or.cond.i219.i = select i1 %.not4.i216.i, i1 true, i1 %.not5.i218.i
  %spec.store.select.i = select i1 %or.cond.i219.i, ptr %.sroa.6.8.copyload232, ptr %i.wy ; 2 uses
  %i.wz = call noundef zeroext i1 @_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE(ptr nonnull align 8 poison, ptr noundef %spec.store.select.i) ; 2 uses
  %extract.t249 = trunc i384 %.sroa.12.8.copyload233 to i64
  %extract251 = lshr i384 %.sroa.12.8.copyload233, 64
  %extract.t252 = trunc nuw i384 %extract251 to i320
  %extract253 = lshr i384 %.sroa.12.8.copyload233, 64
  %extract.t254 = trunc nuw i384 %extract253 to i320
  %spec.select = select i1 %i.wz, i64 %extract.t249, i64 -1
  %.sroa.12.0.off64 = select i1 %i.wz, i320 %extract.t252, i320 %extract.t254
  %i.xa = load ptr, ptr %i.cd, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.ce
  br i1 %i.xb, label %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i215.i
  call void @free(ptr noundef %i.xa) #26
  br label %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i

_ZN4llvm12PHITransAddrD2Ev.exit.i221.i:           ; preds = %bb.ce, %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i215.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !982
  br label %.lr.ph.i168.i

20:                                               ; preds = %bb.cb
  %extract.t239 = trunc i384 %.sroa.12.8.copyload233 to i64
  %extract243 = lshr i384 %.sroa.12.8.copyload233, 64
  %extract.t244 = trunc nuw i384 %extract243 to i320
  br label %.lr.ph.i168.i

.lr.ph.i168.i:                                    ; preds = %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread, %20, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i
  %.sroa.12.1.off0 = phi i64 [ %extract.t, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i ], [ %extract.t239, %20 ], [ %spec.select, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i ], [ %extract.t241, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread ]
  %.sroa.12.1.off64 = phi i320 [ %extract.t242, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i ], [ %extract.t244, %20 ], [ %.sroa.12.0.off64, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i ], [ %extract.t248, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.8.copyload, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i ], [ %.sroa.6.8.copyload232, %20 ], [ %spec.store.select.i, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i ], [ %.sroa.6.8.copyload231, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread ]
  %.sroa.22274.sroa.0.0.copyload.pre.i39 = phi ptr [ %.sroa.22242.88.copyload, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i ], [ null, %20 ], [ %.sroa.22242.88.copyload, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i ], [ %.sroa.22242.88.copyload, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread ] ; 6 uses
  %.1.i.i213.i38 = phi ptr [ %.1.i.i213.i, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i ], [ %.1.i.i213.i41, %20 ], [ %.1.i.i213.i41, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i ], [ %.1.i.i213.i36, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread ]
  %i.xc = phi i1 [ false, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i ], [ true, %20 ], [ true, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i ], [ false, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread ] ; 2 uses
  %.sroa.22274.sroa.0.0.copyload.mux.i = phi ptr [ %.sroa.22242.88.copyload, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i ], [ null, %20 ], [ null, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i ], [ %.sroa.22242.88.copyload, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread ]
  %i.xd = phi i8 [ %i.wh, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i ], [ 1, %20 ], [ %i.wh, %_ZN4llvm12PHITransAddrD2Ev.exit.i221.i ], [ %i.wh, %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i211.i.thread ]
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %i.we, 4294967296 ; 2 uses
  %.sroa.10.sroa.0.0.extract.trunc284.i = trunc i384 %.sroa.24.88.copyload to i64 ; 5 uses
  %.sroa.10.sroa.7.0.extract.shift289.i = lshr i384 %.sroa.24.88.copyload, 64
  %.sroa.10.sroa.7.0.extract.trunc290.i = trunc nuw i384 %.sroa.10.sroa.7.0.extract.shift289.i to i320 ; 2 uses
  %.not.i203.i = icmp ne ptr %.sroa.22274.sroa.0.0.copyload.pre.i39, null
  %brmerge.not.i = select i1 %i.xc, i1 %.not.i203.i, i1 false
  br label %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer

_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit: ; preds = %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i.i
  %.sroa.11.0.mux.i = select i1 %i.xc, i8 1, i8 %.sroa.11.0.i.ph
  br label %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer

_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer: ; preds = %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit, %.lr.ph.i168.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i168.i ], [ %indvars.iv.next.i, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit ]
  %.sroa.11.0.i.ph = phi i8 [ %i.xd, %.lr.ph.i168.i ], [ %.sroa.11.0.mux.i, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit ] ; 3 uses
  %.sroa.0266.0.i.ph = phi ptr [ %.sroa.6.0, %.lr.ph.i168.i ], [ %.sroa.22274.sroa.0.0.copyload.mux.i, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit ]
  %.sroa.5267.sroa.0.0.i.ph = phi ptr [ %.1.i.i213.i38, %.lr.ph.i168.i ], [ %.1.i.i.i24, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit ]
  %.sroa.5267.sroa.8.0.i.ph = phi i64 [ %.sroa.12.1.off0, %.lr.ph.i168.i ], [ %.sroa.10.sroa.0.0.extract.trunc284.i, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit ]
  %.sroa.10.sroa.7.sroa.0.0.i.ph = phi i320 [ %.sroa.12.1.off64, %.lr.ph.i168.i ], [ %.sroa.10.sroa.7.0.extract.trunc290.i, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit ]
  br label %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i

_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i: ; preds = %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer, %_ZN4llvm12PHITransAddrD2Ev.exit.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4llvm12PHITransAddrD2Ev.exit.i.i ], [ %indvars.iv.i.ph, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer ]
  %.sroa.0266.0.i = phi ptr [ %spec.select314.i, %_ZN4llvm12PHITransAddrD2Ev.exit.i.i ], [ %.sroa.0266.0.i.ph, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer ] ; 2 uses
  %.sroa.5267.sroa.0.0.i = phi ptr [ %.1.i.i.i24, %_ZN4llvm12PHITransAddrD2Ev.exit.i.i ], [ %.sroa.5267.sroa.0.0.i.ph, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer ] ; 4 uses
  %.sroa.5267.sroa.8.0.i = phi i64 [ %.sroa.5267.sroa.8.1.i, %_ZN4llvm12PHITransAddrD2Ev.exit.i.i ], [ %.sroa.5267.sroa.8.0.i.ph, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer ] ; 2 uses
  %.sroa.10.sroa.7.sroa.0.0.i = phi i320 [ %.sroa.10.sroa.7.0.extract.trunc290.i, %_ZN4llvm12PHITransAddrD2Ev.exit.i.i ], [ %.sroa.10.sroa.7.sroa.0.0.i.ph, %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer ] ; 2 uses
  %i.xe = load i32, ptr %i.ai, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.xf = load i32, ptr %i.av, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.xg = load i32, ptr %i.aw, align 4, !tbaa !117, !noalias !982
  %.not.i.i169.i = icmp ult i32 %i.xf, %i.xg
  br i1 %.not.i.i169.i, label %bb.cg, label %bb.cf, !prof !105

bb.cf:                                            ; preds = %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %i.xe)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

bb.cg:                                            ; preds = %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i
  %i.xh = zext i32 %i.xf to i64
  %i.xi = load ptr, ptr %14, align 8, !tbaa !41, !noalias !982
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %i.xh
  store i32 %i.xe, ptr %i.xj, align 1
  %i.xk = load i32, ptr %i.av, align 8, !tbaa !116, !noalias !982
  %i.xl = add i32 %i.xk, 1
  store i32 %i.xl, ptr %i.av, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i: ; preds = %bb.cg, %bb.cf
  %i.xm = load i32, ptr %i.ai, align 8, !tbaa !116, !noalias !982 ; 2 uses
  %i.xn = load i32, ptr %i.aj, align 4, !tbaa !117, !noalias !982
  %.not.i11.i.i = icmp ult i32 %i.xm, %i.xn
  br i1 %.not.i11.i.i, label %bb.ch, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker7DefPathELb1EE18growAndEmplaceBackIJRKNS_14MemoryLocationERKPNS_12MemoryAccessERKbRjEEERS3_DpOT_.exit.i, !prof !105

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker7DefPathELb1EE18growAndEmplaceBackIJRKNS_14MemoryLocationERKPNS_12MemoryAccessERKbRjEEERS3_DpOT_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !982
  store ptr %.sroa.0266.0.i, ptr %8, align 8, !tbaa !87, !noalias !982
  %.sroa.10.sroa.7.0.insert.ext285.i = zext i320 %.sroa.10.sroa.7.sroa.0.0.i to i384
  %.sroa.10.sroa.7.0.insert.shift286.i = shl nuw i384 %.sroa.10.sroa.7.0.insert.ext285.i, 64
  %.sroa.10.sroa.0.0.insert.ext281.i = zext i64 %.sroa.5267.sroa.8.0.i to i384
  %.sroa.10.sroa.0.0.insert.insert283.i = or disjoint i384 %.sroa.10.sroa.7.0.insert.shift286.i, %.sroa.10.sroa.0.0.insert.ext281.i
  store i384 %.sroa.10.sroa.0.0.insert.insert283.i, ptr %.sroa.5267.sroa.10.0..sroa_idx282.i, align 8, !noalias !982
  store ptr %.sroa.5267.sroa.0.0.i, ptr %i.cg, align 8, !tbaa !401, !noalias !982
  store ptr %.sroa.5267.sroa.0.0.i, ptr %i.ch, align 8, !tbaa !402, !noalias !982
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ci, align 8, !noalias !982
  store i8 %.sroa.11.0.i.ph, ptr %i.cj, align 8, !tbaa !403, !noalias !982
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker7DefPathELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(81) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !982
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERKPNS_12MemoryAccessERKbRjEEERS3_DpOT_.exit.i.i

bb.ch:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit.i.i
  %i.xo = zext i32 %i.xm to i64
  %.val.i.i171.i = load ptr, ptr %i.ah, align 8, !tbaa !41, !noalias !982
  %i.xp = getelementptr inbounds nuw [88 x i8], ptr %.val.i.i171.i, i64 %i.xo ; 6 uses
  store ptr %.sroa.0266.0.i, ptr %i.xp, align 8, !tbaa !87
  %.sroa.5267.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %.sroa.10.sroa.7.0.insert.ext.i = zext i320 %.sroa.10.sroa.7.sroa.0.0.i to i384
  %.sroa.10.sroa.7.0.insert.shift.i = shl nuw i384 %.sroa.10.sroa.7.0.insert.ext.i, 64
  %.sroa.10.sroa.0.0.insert.ext.i = zext i64 %.sroa.5267.sroa.8.0.i to i384
  %.sroa.10.sroa.0.0.insert.insert.i = or disjoint i384 %.sroa.10.sroa.7.0.insert.shift.i, %.sroa.10.sroa.0.0.insert.ext.i
  store i384 %.sroa.10.sroa.0.0.insert.insert.i, ptr %.sroa.5267.sroa.8.0..sroa_idx.i, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 56
  store ptr %.sroa.5267.sroa.0.0.i, ptr %i.xq, align 8, !tbaa !401
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  store ptr %.sroa.5267.sroa.0.0.i, ptr %i.xr, align 8, !tbaa !402
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 72
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.xs, align 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 80
  store i8 %.sroa.11.0.i.ph, ptr %i.xt, align 8, !tbaa !403
  %i.xu = load i32, ptr %i.ai, align 8, !tbaa !116, !noalias !982
  %i.xv = add i32 %i.xu, 1
  store i32 %i.xv, ptr %i.ai, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERKPNS_12MemoryAccessERKbRjEEERS3_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERKPNS_12MemoryAccessERKbRjEEERS3_DpOT_.exit.i.i: ; preds = %bb.ch, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker7DefPathELb1EE18growAndEmplaceBackIJRKNS_14MemoryLocationERKPNS_12MemoryAccessERKbRjEEERS3_DpOT_.exit.i
  %i.xw = load i8, ptr %.4.i, align 8, !tbaa !80
  %.not.i.i12.i.i = icmp eq i8 %i.xw, 29
  br i1 %.not.i.i12.i.i, label %bb.ci, label %_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb.exit.i

bb.ci:                                            ; preds = %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERKPNS_12MemoryAccessERKbRjEEERS3_DpOT_.exit.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.xx = load i32, ptr %i.wc, align 4
  %i.xy = and i32 %i.xx, 268435455
  %i.xz = zext nneg i32 %i.xy to i64
  %.not3.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i, %i.xz
  br i1 %.not3.i.i.i.i, label %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i.i, label %_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb.exit.i

_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i.i: ; preds = %bb.ci
  %i.ya = load ptr, ptr %i.vz, align 8, !tbaa !112
  %i.yb = getelementptr inbounds nuw [32 x i8], ptr %i.ya, i64 %indvars.iv.next.i
  %.1.i.i.i24 = load ptr, ptr %i.yb, align 8, !tbaa !101 ; 2 uses
  br i1 %brmerge.not.i, label %bb.cj, label %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i.outer.loopexit

bb.cj:                                            ; preds = %_ZNK4llvm30memoryaccess_def_iterator_baseINS_12MemoryAccessEEdeEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !982
  %i.yc = load ptr, ptr %i.wa, align 8, !tbaa !209
  %i.yd = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.yc) #26
  store ptr %.sroa.22274.sroa.0.0.copyload.pre.i39, ptr %9, align 8, !tbaa !427, !noalias !982
  store ptr %i.yd, ptr %i.ck, align 8, !tbaa !428, !noalias !982
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false), !noalias !982
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !41, !noalias !982
  store i32 0, ptr %i.co, align 8, !tbaa !116, !noalias !982
  store i32 4, ptr %i.cp, align 4, !tbaa !117, !noalias !982
  %i.ye = load i8, ptr %.sroa.22274.sroa.0.0.copyload.pre.i39, align 8, !tbaa !80
  %i.yf = icmp ult i8 %i.ye, 30
  br i1 %i.yf, label %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store ptr %.sroa.22274.sroa.0.0.copyload.pre.i39, ptr %i.cn, align 8, !noalias !982
  store i32 1, ptr %i.co, align 8, !tbaa !116, !noalias !982
  br label %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i.i

_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i.i: ; preds = %bb.ck, %bb.cj
  %i.yg = load ptr, ptr %i.wa, align 8, !tbaa !209
  %i.yh = load ptr, ptr %i.vz, align 8, !tbaa !112
  %i.yi = load i32, ptr %i.wb, align 4, !tbaa !111
  %i.yj = zext i32 %i.yi to i64
  %i.yk = getelementptr inbounds nuw [32 x i8], ptr %i.yh, i64 %i.yj
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %indvars.iv.next.i
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !104
  %i.yn = call noundef ptr @_ZN4llvm12PHITransAddr14translateValueEPNS_10BasicBlockES2_PKNS_13DominatorTreeEb(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef %i.yg, ptr noundef %i.ym, ptr noundef nonnull %i.wi, i1 noundef zeroext true) #26 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.yn, null
  %.not5.i.i = icmp eq ptr %i.yn, %.sroa.22274.sroa.0.0.copyload.pre.i39
  %or.cond.i205.i = select i1 %.not4.i.i, i1 true, i1 %.not5.i.i
  %spec.select314.i = select i1 %or.cond.i205.i, ptr %.sroa.22274.sroa.0.0.copyload.pre.i39, ptr %i.yn ; 2 uses
  %i.yo = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select314.i) #26 ; 9 uses
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !80  ; 2 uses
  %i.yq = icmp ult i8 %i.yp, 30
  br i1 %i.yq, label %.critedge.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 40
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !360
  %i.yt = call noundef zeroext i1 @_ZNK4llvm10BasicBlock12isEntryBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ys) #26
  br i1 %i.yt, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread.i, label %.critedge.i243.i

.critedge.i243.i:                                 ; preds = %bb.cl
  %.pr.i.i = load i8, ptr %i.yo, align 8, !tbaa !80 ; 3 uses
  %i.yu = icmp ugt i8 %.pr.i.i, 29
  br i1 %i.yu, label %.split.i.i.i.i, label %.critedge.thread.i.i

.split.i.i.i.i:                                   ; preds = %.critedge.i243.i
  %i.yv = icmp eq i8 %.pr.i.i, 65
  br i1 %i.yv, label %_ZN4llvm8dyn_castINS_11GEPOperatorEKNS_5ValueEEEDcPT0_.exit.i.i, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.i

.critedge.thread.i.i:                             ; preds = %.critedge.i243.i, %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i.i
  %i.yw = phi i8 [ %.pr.i.i, %.critedge.i243.i ], [ %i.yp, %_ZN4llvm12PHITransAddrC2EPNS_5ValueERKNS_10DataLayoutEPNS_15AssumptionCacheE.exit.i.i ]
  %i.yx = icmp eq i8 %i.yw, 19
  br i1 %i.yx, label %_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.i

_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i: ; preds = %.critedge.thread.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yo, i64 2
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !302
  %i.za = icmp eq i16 %i.yz, 35
  br i1 %i.za, label %_ZN4llvm8dyn_castINS_11GEPOperatorEKNS_5ValueEEEDcPT0_.exit.i.i, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.i

_ZN4llvm8dyn_castINS_11GEPOperatorEKNS_5ValueEEEDcPT0_.exit.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i, %.split.i.i.i.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yo, i64 4 ; 2 uses
  %i.zc = load i32, ptr %i.zb, align 4
  %i.zd = and i32 %i.zc, 268435455
  %i.ze = zext nneg i32 %i.zd to i64
  %i.zf = sub nsw i64 0, %i.ze
  %i.zg = getelementptr inbounds [32 x i8], ptr %i.yo, i64 %i.zf
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !101
  %i.zi = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zh) #26
  %i.zj = load i8, ptr %i.zi, align 8, !tbaa !80  ; 2 uses
  %i.zk = icmp ult i8 %i.zj, 30
  %i.zl = icmp eq i8 %i.zj, 62
  %spec.select.i.i.i = or i1 %i.zk, %i.zl
  br i1 %spec.select.i.i.i, label %bb.cm, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread312.i

bb.cm:                                            ; preds = %_ZN4llvm8dyn_castINS_11GEPOperatorEKNS_5ValueEEEDcPT0_.exit.i.i
  %i.zm = load i32, ptr %i.zb, align 4
  %i.zn = and i32 %i.zm, 268435455                ; 2 uses
  %.not.i.i245.i203 = icmp eq i32 %i.zn, 1
  br i1 %.not.i.i245.i203, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cm
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = shl nuw nsw i64 %i.zo, 5
  %i.zq = sub nsw i64 32, %i.zp
  %.06.i.i.i202 = getelementptr inbounds i8, ptr %i.yo, i64 %i.zq
  br label %bb.co

bb.cn:                                            ; preds = %bb.co
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i204, i64 32 ; 2 uses
  %.not.i.i245.i = icmp eq ptr %.06.i.i.i, %i.yo
  br i1 %.not.i.i245.i, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread.i, label %bb.co, !llvm.loop !10

bb.co:                                            ; preds = %.lr.ph, %bb.cn
  %.06.i.i.i204 = phi ptr [ %.06.i.i.i202, %.lr.ph ], [ %.06.i.i.i, %bb.cn ] ; 2 uses
  %i.zr = load ptr, ptr %.06.i.i.i204, align 8, !tbaa !101
  %i.zs = load i8, ptr %i.zr, align 8, !tbaa !80
  %i.zt = icmp eq i8 %i.zs, 5
  br i1 %i.zt, label %bb.cn, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread312.i, !llvm.loop !10

_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.i: ; preds = %_ZN4llvm14CastIsPossibleINS_11GEPOperatorEPKNS_5ValueEvE10isPossibleERKS4_.exit.i.i.i.i, %.critedge.thread.i.i, %.split.i.i.i.i
  %i.zu = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yo) #26
  %i.zv = load i8, ptr %i.zu, align 8, !tbaa !80  ; 2 uses
  %i.zw = icmp ult i8 %i.zv, 30
  %i.zx = icmp eq i8 %i.zv, 62
  %spec.select.i17.i.i = or i1 %i.zw, %i.zx
  br i1 %spec.select.i17.i.i, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread.i, label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread312.i

_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread312.i: ; preds = %bb.co, %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.i, %_ZN4llvm8dyn_castINS_11GEPOperatorEKNS_5ValueEEEDcPT0_.exit.i.i
  br label %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread.i

_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread.i: ; preds = %bb.cn, %bb.cm, %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread312.i, %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.i, %bb.cl
  %.sroa.5267.sroa.8.1.i = phi i64 [ %.sroa.10.sroa.0.0.extract.trunc284.i, %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.i ], [ -1, %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread312.i ], [ %.sroa.10.sroa.0.0.extract.trunc284.i, %bb.cl ], [ %.sroa.10.sroa.0.0.extract.trunc284.i, %bb.cm ], [ %.sroa.10.sroa.0.0.extract.trunc284.i, %bb.cn ]
  %i.zy = load ptr, ptr %i.cm, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.zz = icmp eq ptr %i.zy, %i.cn
  br i1 %i.zz, label %_ZN4llvm12PHITransAddrD2Ev.exit.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread.i
  call void @free(ptr noundef %i.zy) #26
  br label %_ZN4llvm12PHITransAddrD2Ev.exit.i.i

_ZN4llvm12PHITransAddrD2Ev.exit.i.i:              ; preds = %bb.cp, %_ZNK4llvm20upward_defs_iterator25IsGuaranteedLoopInvariantEPKNS_5ValueE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !982
  br label %_ZN4llvm20upward_defs_iterator17fillInCurrentElemEv.exit.i

_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb.exit.i: ; preds = %bb.ci, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker7DefPathEE12emplace_backIJRKNS_14MemoryLocationERKPNS_12MemoryAccessERKbRjEEERS3_DpOT_.exit.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %.056360.i, i64 4 ; 2 uses
  %.not67.i = icmp eq ptr %i.aaa, %i.vy
  br i1 %.not67.i, label %._crit_edge363.i, label %bb.ca

_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EEC2EOS4_.exit166.i: ; preds = %._crit_edge363.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i156.i, %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit145.i
  %.1285.i = phi i64 [ %i.vu, %._crit_edge363.i ], [ %.0284.i, %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit145.i ], [ %.0284.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i156.i ]
  %.1.i = phi ptr [ %.4.i, %._crit_edge363.i ], [ %.0.i, %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit145.i ], [ %.0.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i156.i ]
  %i.aab = load ptr, ptr %17, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.bt
  br i1 %i.aac, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit.i, label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EEC2EOS4_.exit166.i
  call void @free(ptr noundef %i.aab) #26
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit.i: ; preds = %bb.cq, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EEC2EOS4_.exit166.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !982
  br i1 %.not.i120.i, label %bb.k, label %.critedge69.i, !llvm.loop !976

.critedge69.i:                                    ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i.i, %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i, %_ZN4llvm7find_ifINS_14iterator_rangeIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS3_7DefPathES3_EEEEZNS3_14tryOptimizePhiEPNS_9MemoryPhiEPNS_12MemoryAccessERKNS_14MemoryLocationEEUlRKS5_E_EEDaOT_T0_.exit.i
  %i.aad = load ptr, ptr %16, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.aae = icmp eq ptr %i.aad, %i.ba
  br i1 %i.aae, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit172.i, label %bb.cr

bb.cr:                                            ; preds = %.critedge69.i
  call void @free(ptr noundef %i.aad) #26
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit172.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit172.i: ; preds = %bb.cr, %.critedge69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !982
  %i.aaf = load ptr, ptr %15, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, %i.ax
  br i1 %i.aag, label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit172.i
  call void @free(ptr noundef %i.aaf) #26
  br label %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i:          ; preds = %bb.cs, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELj4EED2Ev.exit172.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !982
  %i.aah = load ptr, ptr %14, align 8, !tbaa !41, !noalias !982 ; 2 uses
  %i.aai = icmp eq ptr %i.aah, %i.au
  br i1 %i.aai, label %_ZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationE.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i
  call void @free(ptr noundef %i.aah) #26
  br label %_ZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationE.exit

_ZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationE.exit: ; preds = %_ZN4llvm11SmallVectorIjLj8EED2Ev.exit.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !982
  store i32 0, ptr %i.ai, align 8, !tbaa !116
  %i.aaj = load i32, ptr %i.br, align 8, !tbaa !415 ; 2 uses
  %i.aak = icmp eq i32 %i.aaj, 0
  br i1 %i.aak, label %_ZN12_GLOBAL__N_113ClobberWalker18resetPhiOptznStateEv.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationE.exit
  %i.aal = shl i32 %i.aaj, 2
  %i.aam = load i32, ptr %i.bi, align 4, !tbaa !256 ; 3 uses
  %i.aan = icmp ult i32 %i.aal, %i.aam
  %i.aao = icmp ugt i32 %i.aam, 64
  %or.cond.i.i.i = and i1 %i.aan, %i.aao
  br i1 %or.cond.i.i.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14UpwardDefsElemENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be)
  br label %_ZN12_GLOBAL__N_113ClobberWalker18resetPhiOptznStateEv.exit

bb.cw:                                            ; preds = %bb.cu
  %i.aap = load ptr, ptr %i.bh, align 8, !tbaa !407
  %i.aaq = zext i32 %i.aam to i64
  %i.aar = add nuw nsw i64 %i.aaq, 31
  %i.aas = lshr i64 %i.aar, 3
  %i.aat = and i64 %i.aas, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.aap, i8 0, i64 %i.aat, i1 false)
  store i32 0, ptr %i.br, align 8, !tbaa !415
  br label %_ZN12_GLOBAL__N_113ClobberWalker18resetPhiOptznStateEv.exit

_ZN12_GLOBAL__N_113ClobberWalker18resetPhiOptznStateEv.exit: ; preds = %_ZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationE.exit, %bb.cv, %bb.cw
  %i.aau = load ptr, ptr %19, align 8, !tbaa !1003
  %i.aav = load ptr, ptr %i.bx, align 8, !tbaa !41 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.by
  br i1 %i.aaw, label %_ZN12_GLOBAL__N_113ClobberWalker11OptznResultD2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZN12_GLOBAL__N_113ClobberWalker18resetPhiOptznStateEv.exit
  call void @free(ptr noundef %i.aav) #26
  br label %_ZN12_GLOBAL__N_113ClobberWalker11OptznResultD2Ev.exit

_ZN12_GLOBAL__N_113ClobberWalker11OptznResultD2Ev.exit: ; preds = %_ZN12_GLOBAL__N_113ClobberWalker18resetPhiOptznStateEv.exit, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.f, %_ZN12_GLOBAL__N_113ClobberWalker11OptznResultD2Ev.exit
  %.0 = phi ptr [ %i.aau, %_ZN12_GLOBAL__N_113ClobberWalker11OptznResultD2Ev.exit ], [ %.sroa.035.057.i, %bb.f ], [ %.sroa.035.057.i, %bb.h ], [ %.sroa.035.057.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm9MemorySSA17ClobberWalkerBase29getClobberingMemoryAccessBaseEPNS_12MemoryAccessERNS_14BatchAAResultsERjbb(ptr noundef nonnull align 8 dereferenceable(2904) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(672) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MemoryLocation", align 8 ; 4 uses
  %7 = alloca %"class.std::optional.305", align 8 ; 4 uses
  %8 = alloca %"struct.(anonymous namespace)::UpwardsMemoryQuery", align 8 ; 11 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !80
  %i.b = add i8 %i.a, -29
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.b, -2
  %.not123 = icmp eq ptr %1, null
  %.not = or i1 %.not123, %spec.select.i.i.i.i.i.i.i.i
  br i1 %.not, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2896 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !348
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !175
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !367
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %.thread, label %_ZNK4llvm11Instruction11hasMetadataEj.exit.i

_ZNK4llvm11Instruction11hasMetadataEj.exit.i:     ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i32 noundef 16) #30
  %.not37.i = icmp eq ptr %i.k, null
  br i1 %.not37.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm11Instruction11hasMetadataEj.exit.i
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm11Instruction10isVolatileEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #30
  br i1 %i.l, label %.thread, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.o = tail call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n) #26 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !80
  %i.q = icmp ult i8 %i.p, 23
  br i1 %i.q, label %.thread, label %bb.e

bb.e:                                             ; preds = %.sink.split.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.029.040.i = load ptr, ptr %i.r, align 8, !tbaa !112 ; 2 uses
  %.not3841.i = icmp eq ptr %.sroa.029.040.i, null
  br i1 %.not3841.i, label %.thread, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i
  %i.s = icmp eq ptr %.2.i, %i.d
  %.not32 = icmp eq ptr %.2.i, null
  %or.cond = or i1 %i.s, %.not32
  br i1 %or.cond, label %.thread, label %bb.j

.lr.ph.i:                                         ; preds = %bb.e, %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i
  %.sroa.029.043.i = phi ptr [ %.sroa.029.0.i, %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i ], [ %.sroa.029.040.i, %bb.e ] ; 2 uses
  %.042.i = phi ptr [ %.2.i, %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i ], [ %i.d, %bb.e ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.029.043.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !207  ; 8 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !80
  %i.w = icmp ugt i8 %i.v, 29
  %spec.select.i.i.i = select i1 %i.w, ptr %i.u, ptr null ; 3 uses
  %.not.i = icmp eq ptr %spec.select.i.i.i, null
  %i.x = icmp eq ptr %spec.select.i.i.i, %i.d
  %or.cond.i = or i1 %.not.i, %i.x
  br i1 %or.cond.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = tail call noundef zeroext i1 @_ZNK4llvm13DominatorTree9dominatesEPKNS_5ValueEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(204) %i.h, ptr noundef nonnull %i.u, ptr noundef %.042.i) #26
  br i1 %i.y, label %bb.g, label %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !367
  %.not.i.i26.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i26.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit28.i

_ZNK4llvm11Instruction11hasMetadataEj.exit28.i:   ; preds = %bb.g
  %i.ab = tail call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %i.u, i32 noundef 16) #30
  %.not39.i = icmp eq ptr %i.ab, null
  br i1 %.not39.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm11Instruction11hasMetadataEj.exit28.i
  %i.ac = load i8, ptr %i.u, align 8, !tbaa !80
  %.off.i.i = add i8 %i.ac, -63
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %.sink.split.i.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i

.sink.split.i.i:                                  ; preds = %bb.h
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !101
  %i.af = icmp eq ptr %i.ae, %i.o
  br i1 %i.af, label %bb.i, label %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i

bb.i:                                             ; preds = %.sink.split.i.i
  %i.ag = tail call noundef zeroext i1 @_ZNK4llvm11Instruction10isVolatileEv(ptr noundef nonnull align 8 dereferenceable(72) %i.u) #30
  %spec.select.i = select i1 %i.ag, ptr %.042.i, ptr %spec.select.i.i.i
  br label %_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i

_ZNK4llvm11Instruction11hasMetadataEj.exit28.thread.i: ; preds = %bb.i, %.sink.split.i.i, %bb.h, %_ZNK4llvm11Instruction11hasMetadataEj.exit28.i, %bb.g, %bb.f, %.lr.ph.i
  %.2.i = phi ptr [ %.042.i, %.lr.ph.i ], [ %.042.i, %bb.f ], [ %spec.select.i, %bb.i ], [ %.042.i, %_ZNK4llvm11Instruction11hasMetadataEj.exit28.i ], [ %.042.i, %.sink.split.i.i ], [ %.042.i, %bb.g ], [ %.042.i, %bb.h ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.029.043.i, i64 8
  %.sroa.029.0.i = load ptr, ptr %i.ah, align 8, !tbaa !112 ; 2 uses
  %.not38.i = icmp eq ptr %.sroa.029.0.i, null
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !348 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !221, !noalias !1010 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 52
  %i.am = load i32, ptr %i.al, align 4, !tbaa !223, !noalias !1010 ; 2 uses
  %i.an = icmp ne i32 %i.am, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add i32 %i.am, -1                       ; 2 uses
  %i.ap = ptrtoint ptr %.2.i to i64
  %i.aq = mul i64 %i.ap, -4658895280553007687     ; 2 uses
  %i.ar = lshr i64 %i.aq, 31
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.ao, %i.at                    ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !87
  %i.ay = icmp eq ptr %.2.i, %i.ax
  br i1 %i.ay, label %_ZNK4llvm9MemorySSA15getMemoryAccessEPKNS_11InstructionE.exit, label %.lr.ph.i.i.i, !prof !1011

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %.017.i.i.i125 = phi i32 [ %i.ba, %.lr.ph.i.i.i ], [ %i.au, %bb.j ]
  %i.az = add nuw i32 %.017.i.i.i125, 1
  %i.ba = and i32 %i.az, %i.ao                    ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !87
  %i.be = icmp eq ptr %.2.i, %i.bd
  br i1 %i.be, label %_ZNK4llvm9MemorySSA15getMemoryAccessEPKNS_11InstructionE.exit, label %.lr.ph.i.i.i, !prof !1012

_ZNK4llvm9MemorySSA15getMemoryAccessEPKNS_11InstructionE.exit: ; preds = %.lr.ph.i.i.i, %bb.j
  %i.bf = phi i64 [ %i.av, %bb.j ], [ %i.bb, %.lr.ph.i.i.i ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !189 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !80
  %i.bk = icmp eq i8 %i.bj, 27
  br i1 %i.bk, label %.split, label %bb.bl

.split:                                           ; preds = %_ZNK4llvm9MemorySSA15getMemoryAccessEPKNS_11InstructionE.exit
  %.1.i.i.i = getelementptr inbounds i8, ptr %i.bi, i64 -32
  %i.bl = load ptr, ptr %.1.i.i.i, align 8, !tbaa !101
  br label %bb.bl

.thread:                                          ; preds = %bb.e, %._crit_edge.i, %bb.c, %_ZNK4llvm11Instruction11hasMetadataEj.exit.i, %bb.d, %.sink.split.i.i.i, %bb.b
  %i.bm = load i8, ptr %1, align 8, !tbaa !80     ; 3 uses
  %i.bn = icmp eq i8 %i.bm, 28                    ; 2 uses
  br i1 %i.bn, label %bb.k, label %_ZNK4llvm9MemoryDef11isOptimizedEv.exit.i

bb.k:                                             ; preds = %.thread
  %i.bo = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !101 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZNK4llvm14MemoryUseOrDef11isOptimizedEv.exit.thread, label %_ZNK4llvm14MemoryUseOrDef11isOptimizedEv.exit

_ZNK4llvm9MemoryDef11isOptimizedEv.exit.i:        ; preds = %.thread
  %i.bq = icmp eq i8 %i.bm, 27
  %.1.v.i.i.i.i.i = select i1 %i.bq, i64 -32, i64 -64
  %.1.i.i.i.i.i = getelementptr inbounds i8, ptr %1, i64 %.1.v.i.i.i.i.i
  %i.br = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !101 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.br, null
  br i1 %.not.i6.i, label %_ZNK4llvm14MemoryUseOrDef11isOptimizedEv.exit.thread, label %_ZNK4llvm14MemoryUseOrDef11isOptimizedEv.exit

_ZNK4llvm14MemoryUseOrDef11isOptimizedEv.exit:    ; preds = %_ZNK4llvm9MemoryDef11isOptimizedEv.exit.i, %bb.k
  %.sink = phi i64 [ 84, %bb.k ], [ 80, %_ZNK4llvm9MemoryDef11isOptimizedEv.exit.i ]
  %.sink16.i = phi ptr [ %i.bp, %bb.k ], [ %i.br, %_ZNK4llvm9MemoryDef11isOptimizedEv.exit.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.sink.i = load i32, ptr %i.bs, align 4, !tbaa !102
  %i.bt = load i8, ptr %.sink16.i, align 8, !tbaa !80
  %i.bu = icmp eq i8 %i.bt, 28
  %.1.in.v.i.i.i = select i1 %i.bu, i64 80, i64 72
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.sink16.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i34 = load i32, ptr %.1.in.i.i.i, align 8, !tbaa !102
  %i.bv = icmp eq i32 %.sink.i, %.1.i.i.i34
end_hunk_1
