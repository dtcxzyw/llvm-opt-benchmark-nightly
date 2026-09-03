Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GCMetadata?download=true
inline.NumInlined: 843
inline.NumDeleted: 557
begin_hunk_0_@_ZN4llvm12GCModuleInfoD2Ev:bb.a
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(44) %i.ar) #16, !inline_history !184
  br label %_ZNSt10unique_ptrIN4llvm10GCStrategyESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm10GCStrategyESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm10GCStrategyEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.al, %i.aq
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4llvm10GCStrategyESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i3 = load ptr, ptr %i.ak, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, %_ZN4llvm9StringMapIPNS_10GCStrategyENS_15MallocAllocatorEED2Ev.exit
  %i.av = phi ptr [ %.pre.i3, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i ], [ %i.al, %_ZN4llvm9StringMapIPNS_10GCStrategyENS_15MallocAllocatorEED2Ev.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4llvm11SmallVectorISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELj1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i
  tail call void @free(ptr noundef %i.av) #16
  br label %_ZN4llvm11SmallVectorISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELj1EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_10GCStrategyESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i, %bb.g
  tail call void @_ZN4llvm13ImmutablePassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12GCModuleInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm12GCModuleInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #19
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK4llvm10ModulePass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN4llvm10ModulePass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #2

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #2

declare noundef i32 @_ZNK4llvm10ModulePass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZNK4llvm4Pass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #2

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13ImmutablePass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm13ImmutablePass11runOnModuleERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm13ImmutablePass14initializePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm9MapVectorINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS3_EENS_9StringMapIjNS_15MallocAllocatorEEENS_11SmallVectorISt4pairIS1_S6_ELj0EEELj0EE16try_emplace_implIRKS1_JEEESB_IPSC_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.166", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.169", align 1    ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !tbaa !50 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !51 ; 7 uses
  %i.a = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload) #16
  %i.b = tail call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, i32 noundef %i.a) #16 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !30
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %.sroa.24.0.copyload, 17
  %i.h = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.g, i64 noundef 8) #16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.24.0.copyload
  store i8 0, ptr %i.j, align 1, !tbaa !75
  store i64 %.sroa.24.0.copyload, ptr %i.h, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !188
  store ptr %i.h, ptr %i.e, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !78
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !78
  %i.o = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.b) #16
  %i.p = load ptr, ptr %0, align 8, !tbaa !30
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !36   ; 3 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.u, ptr %i.w, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %1, ptr %2, align 8, !tbaa !81, !alias.scope !189
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !39
  %.not.i = icmp ult i32 %i.u, %i.y
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %.pre = load i32, ptr %i.t, align 8, !tbaa !36
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.u to i64
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.ad, align 8, !tbaa !84
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !36
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.t, align 8, !tbaa !36
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ag = phi i32 [ %.pre, %bb.e ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !188
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit
  %.sroa.011.0 = phi ptr [ %i.ak, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit ], [ %i.aq, %bb.g ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_.exit ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #2

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESE_IJEEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 24, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !81
  %i.i = inttoptr i64 %i.h to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !82
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !84
  %i.k = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i = mul nuw nsw i64 %i.m, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %bb.a ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !82
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41
  store i64 %i.q, ptr %i.o, align 8, !tbaa !41
  store ptr null, ptr %i.p, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.r, %i.n
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !190

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !38  ; 3 uses
  %.pre3.i = load i32, ptr %i.d, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i
  %i.t = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.t, 24
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN4llvm9StringRefESt10unique_ptrINS0_10GCStrategyESt14default_deleteIS3_EEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.v, %_ZNSt4pairIN4llvm9StringRefESt10unique_ptrINS0_10GCStrategyESt14default_deleteIS3_EEED2Ev.exit.i.i ], [ %i.u, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefESt10unique_ptrINS0_10GCStrategyESt14default_deleteIS3_EEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm10GCStrategyEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm10GCStrategyEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(44) %i.x) #16, !inline_history !191
  br label %_ZNSt4pairIN4llvm9StringRefESt10unique_ptrINS0_10GCStrategyESt14default_deleteIS3_EEED2Ev.exit.i.i

_ZNSt4pairIN4llvm9StringRefESt10unique_ptrINS0_10GCStrategyESt14default_deleteIS3_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm10GCStrategyEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.v
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !192

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit.loopexit: ; preds = %_ZNSt4pairIN4llvm9StringRefESt10unique_ptrINS0_10GCStrategyESt14default_deleteIS3_EEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !38
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i
  %i.ab = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit.loopexit ], [ %i.k, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE18uninitialized_moveIPS8_SB_EEvT_SC_T0_.exit.i ] ; 2 uses
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !51
  %i.ad = icmp eq ptr %i.ab, %i.b
  br i1 %i.ad, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE21takeAllocationForGrowEPS8_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit
  call void @free(ptr noundef %i.ab) #16
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE21takeAllocationForGrowEPS8_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE21takeAllocationForGrowEPS8_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefESt10unique_ptrINS_10GCStrategyESt14default_deleteIS4_EEELb0EE19moveElementsForGrowEPS8_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !38
  %i.ae = trunc i64 %i.ac to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !39
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !36
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !36
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.ak
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4llvm15callDefaultCtorINS_12GCModuleInfoEEEPNS_4PassEv() #0 comdat {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #18 ; 2 uses
  tail call void @_ZN4llvm12GCModuleInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #16
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

declare void @__once_proxy() #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #4 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !195, !nonnull !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !196, !nonnull !59, !align !197
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !200
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #16, !inline_history !193
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionEPNS_14GCFunctionInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !62, !noalias !205 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63, !noalias !205 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64, !noalias !205 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !34
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !45

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionEPNS_14GCFunctionInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.c, !prof !46

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !34
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !47, !llvm.loop !3

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !79
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionEPNS_14GCFunctionInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !46

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionEPNS_14GCFunctionInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionEPNS_14GCFunctionInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !85
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !63
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionEPNS_14GCFunctionInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionEPNS_14GCFunctionInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
end_hunk_0
