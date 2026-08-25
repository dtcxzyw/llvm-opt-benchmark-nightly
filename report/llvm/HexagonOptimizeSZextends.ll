Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonOptimizeSZextends?download=true
begin_hunk_0_@_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE
declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_124HexagonOptimizeSZextends16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33   ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.idx4.i.i.i = shl nuw nsw i64 %i.e, 3          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx4.i.i.i
  %i.g = lshr i64 %i.e, 2                         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.h = and i64 %.idx4.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %bb.f ] ; 9 uses
  %i.i = load ptr, ptr %.02946.i.i.i.i.i.i, align 8, !tbaa !8
  %i.j = icmp eq ptr %i.i, @_ZN4llvm14StackProtector2IDE
  br i1 %i.j, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = icmp eq ptr %i.l, @_ZN4llvm14StackProtector2IDE
  br i1 %i.m, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = icmp eq ptr %i.o, @_ZN4llvm14StackProtector2IDE
  br i1 %i.p, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = icmp eq ptr %i.r, @_ZN4llvm14StackProtector2IDE
  br i1 %i.s, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 32
  %i.u = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !34

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.w = and i32 %i.d, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.a
  %.pre-phi56.i.i.i.i.i.i = phi i32 [ %i.w, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.d, %bb.a ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i [
    i32 3, label %bb.g
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !8
  %i.y = icmp eq ptr %i.x, @_ZN4llvm14StackProtector2IDE
  br i1 %i.y, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !8
  %i.ab = icmp eq ptr %i.aa, @_ZN4llvm14StackProtector2IDE
  br i1 %i.ab, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !8
  %i.ae = icmp eq ptr %i.ad, @_ZN4llvm14StackProtector2IDE
  br i1 %i.ae, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit15: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit17: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i: ; preds = %bb.b, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit15, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit17, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.g
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.ah, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit17 ], [ %i.ag, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit15 ], [ %i.af, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.f
  br i1 %.not.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i, label %_ZN4llvm13AnalysisUsage12addPreservedINS_14StackProtectorEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36
  %.not.i2.i.i = icmp ult i32 %i.d, %i.aj
  br i1 %.not.i2.i.i, label %bb.k, label %bb.j, !prof !37

bb.j:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @_ZN4llvm14StackProtector2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_14StackProtectorEEERS0_v.exit

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  store ptr @_ZN4llvm14StackProtector2IDE, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.c, align 8, !tbaa !33
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.c, align 8, !tbaa !33
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_14StackProtectorEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_14StackProtectorEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %bb.j, %bb.k
  tail call void @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #11
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_124HexagonOptimizeSZextends13runOnFunctionERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #11 ; 2 uses
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !38   ; 2 uses
  %i.d = trunc i16 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvm8Function9arg_beginEv.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #11
  %.pre.i = load i16, ptr %i.b, align 2, !tbaa !38
  br label %_ZN4llvm8Function9arg_beginEv.exit.i

_ZN4llvm8Function9arg_beginEv.exit.i:             ; preds = %bb.c, %bb.b
  %i.e = phi i16 [ %i.c, %bb.b ], [ %.pre.i, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = trunc i16 %i.e to i1
  br i1 %i.h, label %bb.d, label %_ZN4llvm8Function4argsEv.exit

bb.d:                                             ; preds = %_ZN4llvm8Function9arg_beginEv.exit.i
  tail call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #11
  %.pre1.i = load ptr, ptr %i.f, align 8, !tbaa !43
  br label %_ZN4llvm8Function4argsEv.exit

_ZN4llvm8Function4argsEv.exit:                    ; preds = %_ZN4llvm8Function9arg_beginEv.exit.i, %bb.d
  %i.i = phi ptr [ %i.g, %_ZN4llvm8Function9arg_beginEv.exit.i ], [ %.pre1.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !77
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %.not148 = icmp eq ptr %i.g, %i.m
  br i1 %.not148, label %._crit_edge, label %.lr.ph152

.lr.ph152:                                        ; preds = %_ZN4llvm8Function4argsEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.e

._crit_edge:                                      ; preds = %.loopexit144, %_ZN4llvm8Function4argsEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.0116.0164.a = load ptr, ptr %i.q, align 8, !tbaa !78 ; 2 uses
  %.not135165 = icmp eq ptr %.sroa.0116.0164.a, %i.r
  br i1 %.not135165, label %.loopexit, label %.lr.ph168

bb.e:                                             ; preds = %.lr.ph152, %.loopexit144
  %.072151 = phi i32 [ 0, %.lr.ph152 ], [ %i.s, %.loopexit144 ]
  %.073150 = phi ptr [ %i.g, %.lr.ph152 ], [ %i.ao, %.loopexit144 ] ; 4 uses
  %.sroa.4.0149 = phi i64 [ undef, %.lr.ph152 ], [ %.sroa.4.3, %.loopexit144 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !79
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.s = add i32 %.072151, 1                      ; 2 uses
  %i.t = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.s, i32 noundef 58) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br i1 %i.t, label %bb.f, label %.loopexit144

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.073150, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 255
  %i.z = icmp eq i32 %i.y, 15
  br i1 %i.z, label %.loopexit144, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.073150, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 2 uses
  %.not134145 = icmp eq ptr %i.ab, null
  br i1 %.not134145, label %.loopexit144, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.i
  %.sroa.4.1147 = phi i64 [ %.sroa.4.2, %bb.i ], [ %.sroa.4.0149, %bb.g ] ; 2 uses
  %.sroa.0121.0146 = phi ptr [ %i.ad, %bb.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0121.0146, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !82 ; 2 uses
  %i.ae = load ptr, ptr %.sroa.0121.0146, align 8, !tbaa !88 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !89
  %i.ag = icmp eq i8 %i.af, 71
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ah = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #11 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i16 257, ptr %i.o, align 8
  call void @_ZN4llvm8SExtInstC1EPNS_5ValueEPNS_4TypeERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull %.073150, ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr null, i64 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull %i.ah) #11
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !90
  %.sroa.4.8.insert.mask = and i64 %.sroa.4.1147, -65536
  %.sroa.4.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.mask, 1 ; 2 uses
  call void @_ZN4llvm11Instruction12insertBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr %i.am, i64 %.sroa.4.8.insert.insert) #11
  %i.an = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ae) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.sroa.4.2 = phi i64 [ %.sroa.4.8.insert.insert, %bb.h ], [ %.sroa.4.1147, %.lr.ph ] ; 2 uses
  %.not134 = icmp eq ptr %i.ad, null
  br i1 %.not134, label %.loopexit144, label %.lr.ph

.loopexit144:                                     ; preds = %bb.i, %bb.g, %bb.f, %bb.e
  %.sroa.4.3 = phi i64 [ %.sroa.4.0149, %bb.e ], [ %.sroa.4.0149, %bb.f ], [ %.sroa.4.0149, %bb.g ], [ %.sroa.4.2, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.073150, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.m
  br i1 %.not, label %._crit_edge, label %bb.e

.lr.ph168:                                        ; preds = %._crit_edge, %._crit_edge163
  %.sroa.0116.0166 = phi ptr [ %.sroa.0116.0, %._crit_edge163 ], [ %.sroa.0116.0164.a, %._crit_edge ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0116.0166, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0116.0166, i64 24 ; 2 uses
  %.sroa.0112.0158.a = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  %.not136159 = icmp eq ptr %.sroa.0112.0158.a, %i.aq
  br i1 %.not136159, label %._crit_edge163, label %.lr.ph162

._crit_edge163:                                   ; preds = %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread, %.lr.ph168
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0116.0166, i64 8
  %.sroa.0116.0 = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 2 uses
  %.not135 = icmp eq ptr %.sroa.0116.0, %i.r
  br i1 %.not135, label %.loopexit, label %.lr.ph168

.lr.ph162:                                        ; preds = %.lr.ph168, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread
  %.sroa.0112.0160 = phi ptr [ %.sroa.0112.0, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread ], [ %.sroa.0112.0158.a, %.lr.ph168 ] ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0112.0160, i64 -24 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !89
  %i.au = icmp eq i8 %i.at, 58
  br i1 %i.au, label %bb.j, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

bb.j:                                             ; preds = %.lr.ph162
  %i.av = getelementptr inbounds i8, ptr %.sroa.0112.0160, i64 -88
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0112.0160, i64 -56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !88 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !89
  %.not138 = icmp eq i8 %i.ay, 5
  br i1 %.not138, label %bb.k, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !93 ; 3 uses
  %i.bc = icmp ult i32 %i.bb, 65
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !95
  %i.be = icmp eq i32 %i.bb, 0
  %i.bf = sub nuw nsw i32 64, %i.bb
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = shl i64 %i.bd, %i.bg
  %i.bi = ashr exact i64 %i.bh, %i.bg
  br i1 %i.be, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !95
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !14
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit

_ZNK4llvm11ConstantInt12getSExtValueEv.exit:      ; preds = %bb.l, %bb.m
  %.0.i.i = phi i64 [ %i.bi, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = icmp eq i64 %.0.i.i, 16
  br i1 %i.bl, label %bb.n, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm11ConstantInt12getSExtValueEv.exit
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !88 ; 4 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !89
  %i.bo = icmp eq i8 %i.bn, 56
  br i1 %i.bo, label %bb.o, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.br = and i32 %i.bq, 1073741824
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !96
  br label %_ZNK4llvm4User10getOperandEj.exit99

bb.q:                                             ; preds = %bb.o
  %i.bu = and i32 %i.bq, 268435455
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [32 x i8], ptr %i.bm, i64 %i.bw
  br label %_ZNK4llvm4User10getOperandEj.exit99

_ZNK4llvm4User10getOperandEj.exit99:              ; preds = %bb.p, %bb.q
  %.in = phi ptr [ %i.bt, %bb.p ], [ %i.bx, %bb.q ] ; 2 uses
  %i.by = load ptr, ptr %.in, align 8, !tbaa !88  ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.in, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !88 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !89
  %.not141 = icmp eq i8 %i.cb, 5
  br i1 %.not141, label %bb.r, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

bb.r:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit99
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !93 ; 3 uses
  %i.cf = icmp ult i32 %i.ce, 65
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !95
  %i.ch = icmp eq i32 %i.ce, 0
  %i.ci = sub nuw nsw i32 64, %i.ce
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = shl i64 %i.cg, %i.cj
  %i.cl = ashr exact i64 %i.ck, %i.cj
  br i1 %i.ch, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit103

bb.t:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.cc, align 8, !tbaa !95
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !14
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit103

_ZNK4llvm11ConstantInt12getSExtValueEv.exit103:   ; preds = %bb.s, %bb.t
  %.0.i.i101 = phi i64 [ %i.cl, %bb.s ], [ %i.cn, %bb.t ]
  %i.co = icmp eq i64 %.0.i.i101, 16
  br i1 %i.co, label %bb.u, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

bb.u:                                             ; preds = %_ZNK4llvm11ConstantInt12getSExtValueEv.exit103
  %i.cp = load i8, ptr %i.by, align 8, !tbaa !89
  %i.cq = icmp eq i8 %i.cp, 88
  br i1 %i.cq, label %bb.v, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds i8, ptr %i.by, i64 -32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !89
  %i.cu = icmp eq i8 %i.ct, 14
  br i1 %i.cu, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i: ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = and i32 %i.cw, 8192
  %.not.i.i105 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i105, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !97
  %cond.i = icmp eq i32 %i.cz, 4384
  br i1 %cond.i, label %bb.x, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread

bb.x:                                             ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit
  %i.da = getelementptr inbounds i8, ptr %.sroa.0112.0160, i64 -8
  %.sroa.0108.0153.a = load ptr, ptr %i.da, align 8, !tbaa !96 ; 2 uses
  %.not142154 = icmp eq ptr %.sroa.0108.0153.a, null
  br i1 %.not142154, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.x, %bb.z
  %.sroa.0108.0155 = phi ptr [ %.sroa.0108.0, %bb.z ], [ %.sroa.0108.0153.a, %bb.x ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0108.0155, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !98 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !89
  %i.de = icmp ult i8 %i.dd, 30
  br i1 %i.de, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph157
  %i.df = call noundef zeroext i1 @_ZN4llvm4User17replaceUsesOfWithEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull %i.as, ptr noundef nonnull %i.by) #11 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph157
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0108.0155, i64 8
  %.sroa.0108.0 = load ptr, ptr %i.dg, align 8, !tbaa !96 ; 2 uses
  %.not142 = icmp eq ptr %.sroa.0108.0, null
  br i1 %.not142, label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread, label %.lr.ph157, !llvm.loop !99

_ZNK4llvm11ConstantInt12getSExtValueEv.exit.thread: ; preds = %bb.z, %bb.x, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i, %bb.w, %bb.u, %bb.v, %bb.s, %bb.l, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit, %bb.j, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit103, %_ZNK4llvm4User10getOperandEj.exit99, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit, %bb.n, %.lr.ph162
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0112.0160, i64 8
  %.sroa.0112.0 = load ptr, ptr %i.dh, align 8, !tbaa !90 ; 2 uses
  %.not136 = icmp eq ptr %.sroa.0112.0, %i.aq
  br i1 %.not136, label %._crit_edge163, label %.lr.ph162

.loopexit:                                        ; preds = %._crit_edge163, %._crit_edge, %bb.a
  %.0 = xor i1 %i.a, true
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #11
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
end_hunk_0
