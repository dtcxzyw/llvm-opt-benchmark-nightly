Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FuncletLayout?download=true
begin_hunk_0_@_ZL31initializeFuncletLayoutPassOnceRN4llvm12PassRegistryE
define internal void @_ZL31initializeFuncletLayoutPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #14 ; 9 uses
  store ptr @.str, ptr %i.a, align 8, !tbaa !12
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 29, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 14, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_113FuncletLayout2IDE, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_113FuncletLayoutEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !22
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_113FuncletLayoutEEEPNS_4PassEv() #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #14 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_113FuncletLayout2IDE, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_113FuncletLayoutE, i64 16), ptr %i.a, align 8, !tbaa !29
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113FuncletLayoutD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #15
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.5", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN4llvm20getEHScopeMembershipERKNS_15MachineFunctionE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::DenseMap.5") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1065) %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp ne i32 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 296
  call fastcc void @"_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE4sortIZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERNS_15MachineFunctionEE3$_0EEvT_"(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !36
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #12
  br label %_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_113FuncletLayout21getRequiredPropertiesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm20getEHScopeMembershipERKNS_15MachineFunctionE(ptr dead_on_unwind writable sret(%"class.llvm::DenseMap.5") align 8, ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE4sortIZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERNS_15MachineFunctionEE3$_0EEvT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"class.llvm::simple_ilist", align 8 ; 19 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.b = icmp eq ptr %0, %i.a
  br i1 %i.b, label %.critedge, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = icmp eq ptr %i.f, %0
  br i1 %i.g, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.not25 = icmp eq ptr %i.d, %0
  br i1 %.not25, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.sroa.015.027 = phi ptr [ %i.k, %bb.b ], [ %i.d, %.preheader ] ; 2 uses
  %.sroa.011.026 = phi ptr [ %i.m, %bb.b ], [ %i.d, %.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.011.026, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %.not19 = icmp eq ptr %i.i, %0
  br i1 %.not19, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.015.027, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.m, %0
  br i1 %.not, label %.critedge2, label %.lr.ph, !llvm.loop !41

.critedge2:                                       ; preds = %.lr.ph, %bb.b, %.preheader
  %.sroa.015.0.lcssa = phi ptr [ %i.d, %.preheader ], [ %i.k, %bb.b ], [ %.sroa.015.027, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %2, ptr %i.n, align 8, !tbaa !40
  %i.o = icmp eq ptr %.sroa.015.0.lcssa, %0
  br i1 %i.o, label %_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_S7_S7_.exit, label %bb.c

bb.c:                                             ; preds = %.critedge2
  %i.p = load ptr, ptr %.sroa.015.0.lcssa, align 8, !tbaa !37 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %0, ptr %i.q, align 8, !tbaa !40
  store ptr %i.p, ptr %0, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.r, align 8, !tbaa !40
  store ptr %2, ptr %.sroa.015.0.lcssa, align 8, !tbaa !37
  store ptr %.sroa.015.0.lcssa, ptr %i.n, align 8, !tbaa !40
  store ptr %i.a, ptr %2, align 8, !tbaa !37
  br label %_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_S7_S7_.exit

_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_S7_S7_.exit: ; preds = %.critedge2, %bb.c
  call fastcc void @"_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE4sortIZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERNS_15MachineFunctionEE3$_0EEvT_"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1)
  call fastcc void @"_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE4sortIZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERNS_15MachineFunctionEE3$_0EEvT_"(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %1)
  %i.s = load ptr, ptr %2, align 8
  %i.t = icmp eq ptr %2, %i.s
  br i1 %i.t, label %"_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE5mergeIZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERNS_15MachineFunctionEE3$_0EEvRS2_T_.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12simple_ilistINS_17MachineBasicBlockEJEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEERS2_S7_S7_.exit
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %.sroa.024.037.i = load ptr, ptr %i.c, align 8, !tbaa !40 ; 2 uses
  %.not38.i = icmp eq ptr %.sroa.024.037.i, %0
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = load ptr, ptr %1, align 8, !tbaa !36, !noalias !43 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52, !noalias !43 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35, !noalias !43 ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0                     ; 2 uses
  %i.ab = add i32 %i.z, -1                        ; 10 uses
  %i.ac = zext i32 %i.z to i64                    ; 10 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.q, %.lr.ph.i
  %.sroa.024.040.i = phi ptr [ %.sroa.024.037.i, %.lr.ph.i ], [ %.sroa.024.0.i, %bb.q ] ; 9 uses
  %.sroa.021.039.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.sroa.021.1.i, %bb.q ] ; 8 uses
  br i1 %i.aa, label %"_ZZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockES6_.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ptrtoint ptr %.sroa.021.039.i to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.ab, %i.aj                    ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !53, !noalias !54
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i, !prof !55

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.g
  %i.as = phi i64 [ %i.ay, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %.01117.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.ak, %bb.f ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !54
  %i.av = icmp eq ptr %.sroa.021.039.i, %i.au
  br i1 %i.av, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i, label %bb.g, !prof !58

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aw = add nuw i32 %.01117.i.i.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.ab                    ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !53, !noalias !54
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i, !prof !59

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.f
  %i.bf = phi i64 [ %i.ac, %bb.f ], [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %i.bg = ptrtoint ptr %.sroa.024.040.i to i64
  %i.bh = mul i64 %i.bg, -4658895280553007687     ; 2 uses
  %i.bi = lshr i64 %i.bh, 31
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.ab, %i.bk                    ; 3 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 5
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !53, !noalias !60
  %i.bq = and i32 %i.bl, 31
  %i.br = lshr i32 %i.bp, %i.bq
  %i.bs = trunc i32 %i.br to i1
  br i1 %i.bs, label %.lr.ph.i.i.i.i6.i.i, label %"_ZZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockES6_.exit.i", !prof !55

.lr.ph.i.i.i.i6.i.i:                              ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i, %bb.h
  %i.bt = phi i64 [ %i.bz, %bb.h ], [ %i.bm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i ] ; 2 uses
  %.01117.i.i.i.i7.i.i = phi i32 [ %i.by, %bb.h ], [ %i.bl, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i ]
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !56, !noalias !60
  %i.bw = icmp eq ptr %.sroa.024.040.i, %i.bv
  br i1 %i.bw, label %"_ZZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockES6_.exit.i", label %bb.h, !prof !58

bb.h:                                             ; preds = %.lr.ph.i.i.i.i6.i.i
  %i.bx = add nuw i32 %.01117.i.i.i.i7.i.i, 1
  %i.by = and i32 %i.bx, %i.ab                    ; 3 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = lshr i64 %i.bz, 5
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !53, !noalias !60
  %i.cd = and i32 %i.by, 31
  %i.ce = lshr i32 %i.cc, %i.cd
  %i.cf = trunc i32 %i.ce to i1
  br i1 %i.cf, label %.lr.ph.i.i.i.i6.i.i, label %"_ZZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockES6_.exit.i", !prof !59

"_ZZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockES6_.exit.i": ; preds = %bb.h, %.lr.ph.i.i.i.i6.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i, %bb.e
  %i.cg = phi i64 [ 0, %bb.e ], [ %i.bf, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i ], [ %i.bf, %.lr.ph.i.i.i.i6.i.i ], [ %i.bf, %bb.h ]
  %i.ch = phi i64 [ 0, %bb.e ], [ %i.ac, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.thread52.i ], [ %i.ac, %bb.h ], [ %i.bt, %.lr.ph.i.i.i.i6.i.i ]
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !65
  %i.co = icmp slt i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.i, label %bb.q

bb.i:                                             ; preds = %"_ZZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERN4llvm15MachineFunctionEENK3$_0clERNS1_17MachineBasicBlockES6_.exit.i"
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.021.039.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !40 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cq, %2
  br i1 %.not10.i.i.i.i, label %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEEZNS0_12simple_ilistIS4_JEE5mergeIZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERNS0_15MachineFunctionEE3$_0EEvRS8_T_EUlRS4_E_ESG_SG_SG_T0_.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.cr = ptrtoint ptr %.sroa.024.040.i to i64
  %i.cs = mul i64 %i.cr, -4658895280553007687     ; 2 uses
  %i.ct = lshr i64 %i.cs, 31
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = and i32 %i.ab, %i.cv                    ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  br i1 %i.aa, label %"_ZSt7find_ifIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEEZNS0_12simple_ilistIS4_JEE5mergeIZN12_GLOBAL__N_113FuncletLayout20runOnMachineFunctionERNS0_15MachineFunctionEE3$_0EEvRS8_T_EUlRS4_E_ESG_SG_SG_T0_.exit.i", label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %i.cy = and i32 %i.cw, 31
  %i.cz = lshr i64 %i.cx, 5
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !53, !noalias !67
  %i.dc = lshr i32 %i.db, %i.cy
  %i.dd = trunc i32 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.split.split.us.i.i.i.i, label %.lr.ph.split.split.i.i.i.i, !prof !55

.lr.ph.split.split.us.i.i.i.i:                    ; preds = %.lr.ph.split.i.i.i.i, %bb.l
  %.sroa.04.011.us14.i.i.i.i = phi ptr [ %i.fa, %bb.l ], [ %i.cq, %.lr.ph.split.i.i.i.i ] ; 4 uses
  %i.de = ptrtoint ptr %.sroa.04.011.us14.i.i.i.i to i64
  %i.df = mul i64 %i.de, -4658895280553007687     ; 2 uses
  %i.dg = lshr i64 %i.df, 31
  %i.dh = xor i64 %i.dg, %i.df
  %i.di = trunc i64 %i.dh to i32
  %i.dj = and i32 %i.ab, %i.di                    ; 3 uses
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = lshr i64 %i.dk, 5
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !53, !noalias !72
  %i.do = and i32 %i.dj, 31
  %i.dp = lshr i32 %i.dn, %i.do
  %i.dq = trunc i32 %i.dp to i1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.i.i.us16.i.i.i.i, !prof !55

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i:                  ; preds = %.lr.ph.split.split.us.i.i.i.i, %bb.j
  %i.dr = phi i64 [ %i.dx, %bb.j ], [ %i.dk, %.lr.ph.split.split.us.i.i.i.i ] ; 2 uses
  %.01117.i.i.i.i.i.i.i.us.i.i.i.i = phi i32 [ %i.dw, %bb.j ], [ %i.dj, %.lr.ph.split.split.us.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !56, !noalias !72
  %i.du = icmp eq ptr %.sroa.04.011.us14.i.i.i.i, %i.dt
  br i1 %i.du, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.i.i.us16.i.i.i.i, label %bb.j, !prof !58

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i
  %i.dv = add nuw i32 %.01117.i.i.i.i.i.i.i.us.i.i.i.i, 1
  %i.dw = and i32 %i.dv, %i.ab                    ; 3 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = lshr i64 %i.dx, 5
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !53, !noalias !72
  %i.eb = and i32 %i.dw, 31
  %i.ec = lshr i32 %i.ea, %i.eb
  %i.ed = trunc i32 %i.ec to i1
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.i.i.us16.i.i.i.i, !prof !59

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i.i.i.us16.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i
  %i.ee = phi i64 [ %i.ac, %.lr.ph.split.split.us.i.i.i.i ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i ], [ %i.ac, %bb.j ]
  br label %.lr.ph.i.i.i.i6.i.i.i.us17.i.i.i.i
end_hunk_0
