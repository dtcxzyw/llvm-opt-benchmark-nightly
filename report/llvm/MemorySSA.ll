Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemorySSA?download=true
inline.NumInlined: 5484
inline.NumDeleted: 2897
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm26MemorySSAWalkerPrinterPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.bv = zext i32 %i.br to i64                   ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #26, !inline_history !387
  br label %_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i.i

_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i.i:     ; preds = %bb.j, %bb.i, %_ZN4llvm11raw_ostreamlsEPKc.exit8
  call void @_ZN4llvm15CaptureAnalysisD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(152) %i.ar) #26, !inline_history !387
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ay
  br i1 %i.cc, label %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i.i
  call void @free(ptr noundef %i.cb) #26, !inline_history !387
  br label %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i.i: ; preds = %bb.k, %_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i.i
  %i.cd = load i32, ptr %i.as, align 8
  %i.ce = and i32 %i.cd, 1
  %.not.i.i.i1.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i1.i.i, label %bb.l, label %_ZN12_GLOBAL__N_130MemorySSAWalkerAnnotatedWriterD2Ev.exit

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !32 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZN12_GLOBAL__N_130MemorySSAWalkerAnnotatedWriterD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !32
  %i.ck = zext i32 %i.cg to i64                   ; 2 uses
  %i.cl = mul nuw nsw i64 %i.ck, 40
  %i.cm = add nuw nsw i64 %i.ck, 31
  %i.cn = lshr i64 %i.cm, 3
  %i.co = and i64 %i.cn, 1073741820
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cj, i64 noundef %i.cp, i64 noundef 8) #26, !inline_history !387
  br label %_ZN12_GLOBAL__N_130MemorySSAWalkerAnnotatedWriterD2Ev.exit

_ZN12_GLOBAL__N_130MemorySSAWalkerAnnotatedWriterD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i.i, %bb.l, %bb.m
  call void @_ZN4llvm24AssemblyAnnotationWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(696) %4) #26, !inline_history !387
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_130MemorySSAWalkerAnnotatedWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(696) dereferenceable(696) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_130MemorySSAWalkerAnnotatedWriterE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 1
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = zext i32 %i.f to i64                     ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 1073741820
  %i.o = add nuw nsw i64 %i.n, %i.k
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.i, i64 noundef %i.o, i64 noundef 8) #26
  br label %_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i

_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i:       ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN4llvm15CaptureAnalysisD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(152) %i.a) #26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i
  tail call void @free(ptr noundef %i.q) #26
  br label %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm21SimpleCaptureAnalysisD2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 1
  %.not.i.i.i1.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i1.i, label %bb.e, label %_ZN4llvm14BatchAAResultsD2Ev.exit

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN4llvm14BatchAAResultsD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ab = zext i32 %i.x to i64                    ; 2 uses
  %i.ac = mul nuw nsw i64 %i.ab, 40
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #26
  br label %_ZN4llvm14BatchAAResultsD2Ev.exit

_ZN4llvm14BatchAAResultsD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorISt4pairINS_10AACacheLocES2_ELj4EED2Ev.exit.i.i, %bb.e, %bb.f
  tail call void @_ZN4llvm24AssemblyAnnotationWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21MemorySSAVerifierPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm17MemorySSAAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %2) #26 ; 0 uses
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !39, !alias.scope !932
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.b, align 8, !tbaa !123, !alias.scope !932
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.d, align 8, !tbaa !36, !alias.scope !932
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.e, align 8, !tbaa !39, !alias.scope !932
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.g, align 8, !tbaa !123, !alias.scope !932
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.h, align 4, !tbaa !122, !alias.scope !932
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.i, align 8, !tbaa !36, !alias.scope !932
  store i32 1, ptr %i.c, align 4, !tbaa !122, !alias.scope !932, !noalias !933
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !42, !alias.scope !932, !noalias !933
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm20MemorySSAWrapperPassC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 28), (32, 40)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !391
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm20MemorySSAWrapperPass2IDE, ptr %i.b, align 8, !tbaa !934
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !935
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm20MemorySSAWrapperPassE, i64 16), ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !937
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20MemorySSAWrapperPass13releaseMemoryEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm9MemorySSAESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4llvm9MemorySSAEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm9MemorySSAEEclEPS1_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN4llvm9MemorySSAD1Ev(ptr noundef nonnull align 8 dead_on_return(317) dereferenceable(317) %i.b) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 320) #27
  br label %_ZNSt10unique_ptrIN4llvm9MemorySSAESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4llvm9MemorySSAESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm9MemorySSAEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm20MemorySSAWrapperPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(161) initializes((160, 161)) %1) unnamed_addr #3 align 2 {
bb.a:
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
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !952
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i6.preheader:                          ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  %5 = phi ptr [ %4, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread ], [ %i.k, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ]
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.l, %.lr.ph.i.i.i6 ], [ %i.c, %.lr.ph.i.i.i6.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.l, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !952
  %.not.i.i.i9 = icmp eq ptr %i.m, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  %6 = phi ptr [ %i.k, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ], [ %5, %.lr.ph.i.i.i6 ]
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ], [ %i.l, %.lr.ph.i.i.i6 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #29 ; 2 uses
  tail call void @_ZN4llvm9MemorySSAC1ERNS_8FunctionEPNS_9AAResultsEPNS_13DominatorTreeE(ptr noundef nonnull align 8 dereferenceable(317) %i.s, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull %i.q, ptr noundef nonnull %6) #26
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !337  ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !337
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm9MemorySSAESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4llvm9MemorySSAEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm9MemorySSAEEclEPS1_.exit.i.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20AAResultsWrapperPassEEERT_v.exit
  tail call void @_ZN4llvm9MemorySSAD1Ev(ptr noundef nonnull align 8 dead_on_return(317) dereferenceable(317) %i.t) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 320) #27
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
  %8 = alloca %"struct.(anonymous namespace)::ClobberWalker::DefPath", align 8 ; 10 uses
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
end_hunk_0
