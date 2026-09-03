Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFLinkerTypeUnit?download=true
inline.NumInlined: 3368
inline.NumDeleted: 1976
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZNSt17_Function_handlerIFvvEZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1E9_M_invokeERKSt9_Any_data":bb.a
  %.not1213.i.us.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not1213.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, label %.lr.ph.i1.us.us.i.i.i

._crit_edge.i.us.i.i.i:                           ; preds = %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.us.us.i.i.i", %.lr.ph18.i.us.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.016.i.us.i.i.i, i64 20480
  %i.ag = load atomic ptr, ptr %i.af seq_cst, align 8 ; 2 uses
  %.not.i2.us.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i2.us.i.i.i, label %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit.i.i.i, label %.lr.ph18.i.us.i.i.i, !llvm.loop !8

.lr.ph.i1.us.us.i.i.i:                            ; preds = %.lr.ph18.i.us.i.i.i, %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.us.us.i.i.i"
  %.01114.i.us.us.i.i.i = phi ptr [ %i.bl, %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.us.us.i.i.i" ], [ %.016.i.us.i.i.i, %.lr.ph18.i.us.i.i.i ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01114.i.us.us.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !701
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load atomic ptr, ptr %i.aj seq_cst, align 8 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak seq_cst, align 8
  %.not.i.i.i.us.us.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.us.us.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i1.us.us.i.i.i
  %i.am = load atomic ptr, ptr %i.ak seq_cst, align 8
  br label %_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.us.us.i.i.i

bb.e:                                             ; preds = %.lr.ph.i1.us.us.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load atomic ptr, ptr %i.an seq_cst, align 8
  br label %_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.us.us.i.i.i

_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.us.us.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.us.us.i.i.i = phi ptr [ %i.am, %bb.d ], [ %i.ao, %bb.e ]
  %i.ap = load ptr, ptr %.01114.i.us.us.i.i.i, align 8, !tbaa !702
  %.not.i.i.us.us.i.i.i = icmp eq ptr %.0.i.i.i.us.us.i.i.i, %i.ap
  br i1 %.not.i.i.us.us.i.i.i, label %_ZN4llvm12dwarf_linker8parallel8TypePool23getThreadLocalAllocatorEv.exit.i.i.us.us.i.i.i, label %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.us.us.i.i.i"

_ZN4llvm12dwarf_linker8parallel8TypePool23getThreadLocalAllocatorEv.exit.i.i.us.us.i.i.i: ; preds = %_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.us.us.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01114.i.us.us.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !357
  %i.as = getelementptr inbounds nuw i8, ptr %.01114.i.us.us.i.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !703
  %i.au = call noundef i32 @_ZN4llvm12dwarf_linker8parallel8TypeUnit24addFileNameIntoLinetableEPNS_14StringMapEntryINS_17EmptyStringSetTagEEES6_(ptr noundef nonnull align 8 dereferenceable(856) %i.b, ptr noundef %i.ar, ptr noundef %i.at)
  %i.av = load ptr, ptr %.01114.i.us.us.i.i.i, align 8, !tbaa !702 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !252
  %i.ay = load i32, ptr @_ZN4llvm8parallel8strategyE, align 4, !tbaa !135
  %i.az = icmp eq i32 %i.ay, 1
  %i.ba = load i32, ptr %i.w, align 4
  %narrow.i.i.i = select i1 %i.az, i32 0, i32 %i.ba
  %.0.i.i.i.i.i.us.us.i.i.i = zext i32 %narrow.i.i.i to i64
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !133
  %i.bc = getelementptr inbounds nuw [80 x i8], ptr %i.bb, i64 %.0.i.i.i.i.i.us.us.i.i.i
  %i.bd = zext i32 %i.au to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i32 1, ptr %1, align 8, !tbaa !326
  store i16 58, ptr %i.x, align 4, !tbaa !327
  store i16 %.sroa.5.0.i.i.i.i, ptr %i.y, align 2, !tbaa !328
  store i64 %i.bd, ptr %i.z, align 8, !tbaa !123
  %i.bf = call ptr @_ZN4llvm12DIEValueList8addValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8DIEValueE(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = call noundef i32 @_ZNK4llvm8DIEValue6sizeOfERKNS_5dwarf10FormParamsE(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 2 dereferenceable(5) %i.ab) #24
  %i.bi = add i32 %i.bh, %i.ax
  %i.bj = load ptr, ptr %.01114.i.us.us.i.i.i, align 8, !tbaa !702
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !252
  br label %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.us.us.i.i.i"

"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.us.us.i.i.i": ; preds = %_ZN4llvm12dwarf_linker8parallel8TypePool23getThreadLocalAllocatorEv.exit.i.i.us.us.i.i.i, %_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.us.us.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.01114.i.us.us.i.i.i, i64 40 ; 2 uses
  %.not12.i.us.us.i.i.i = icmp eq ptr %i.bl, %i.ae
  br i1 %.not12.i.us.us.i.i.i, label %._crit_edge.i.us.i.i.i, label %.lr.ph.i1.us.us.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %.lr.ph18.i.preheader.i.i.i, %._crit_edge.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.bq, %._crit_edge.i.i.i.i ], [ %i.v, %.lr.ph18.i.preheader.i.i.i ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 20488
  %i.bn = load atomic i64, ptr %i.bm seq_cst, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 512)
  %.idx.i.i.i.i = mul nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i, 40
  %i.bo = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 %.idx.i.i.i.i
  %.not1213.i.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not1213.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i1.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.i.i.i", %.lr.ph18.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 20480
  %i.bq = load atomic ptr, ptr %i.bp seq_cst, align 8 ; 2 uses
  %.not.i2.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i2.i.i.i, label %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit.i.i.i, label %.lr.ph18.i.i.i.i, !llvm.loop !8

.lr.ph.i1.i.i.i:                                  ; preds = %.lr.ph18.i.i.i.i, %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.i.i.i"
  %.01114.i.i.i.i = phi ptr [ %i.cw, %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.i.i.i" ], [ %.016.i.i.i.i, %.lr.ph18.i.i.i.i ] ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01114.i.i.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !701
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load atomic ptr, ptr %i.bt seq_cst, align 8 ; 3 uses
  %i.bv = load atomic ptr, ptr %i.bu seq_cst, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i1.i.i.i
  %i.bw = load atomic ptr, ptr %i.bu seq_cst, align 8
  br label %_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i1.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load atomic ptr, ptr %i.bx seq_cst, align 8
  br label %_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.i.i.i

_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.bw, %bb.f ], [ %i.by, %bb.g ]
  %i.bz = load ptr, ptr %.01114.i.i.i.i, align 8, !tbaa !702
  %.not.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i, %i.bz
  br i1 %.not.i.i.i.i.i, label %bb.h, label %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.i.i.i"

bb.h:                                             ; preds = %_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.01114.i.i.i.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !357
  %i.cc = getelementptr inbounds nuw i8, ptr %.01114.i.i.i.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !703
  %i.ce = call noundef i32 @_ZN4llvm12dwarf_linker8parallel8TypeUnit24addFileNameIntoLinetableEPNS_14StringMapEntryINS_17EmptyStringSetTagEEES6_(ptr noundef nonnull align 8 dereferenceable(856) %i.b, ptr noundef %i.cb, ptr noundef %i.cd)
  %i.cf = load ptr, ptr %.01114.i.i.i.i, align 8, !tbaa !702 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !252
  %i.ci = load i32, ptr @_ZN4llvm8parallel8strategyE, align 4, !tbaa !135
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %_ZN4llvm12dwarf_linker8parallel8TypePool23getThreadLocalAllocatorEv.exit.i.i.i.i.i, label %_ZTWN4llvm8parallel11threadIndexE.exit.i.i.i.i.i.i.i.i

_ZTWN4llvm8parallel11threadIndexE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @_ZTHN4llvm8parallel11threadIndexE() #24
  %i.ck = load i32, ptr %i.w, align 4, !tbaa !136
  %i.cl = zext i32 %i.ck to i64
  br label %_ZN4llvm12dwarf_linker8parallel8TypePool23getThreadLocalAllocatorEv.exit.i.i.i.i.i

_ZN4llvm12dwarf_linker8parallel8TypePool23getThreadLocalAllocatorEv.exit.i.i.i.i.i: ; preds = %_ZTWN4llvm8parallel11threadIndexE.exit.i.i.i.i.i.i.i.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cl, %_ZTWN4llvm8parallel11threadIndexE.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %i.cm = load ptr, ptr %i.aa, align 8, !tbaa !133
  %i.cn = getelementptr inbounds nuw [80 x i8], ptr %i.cm, i64 %.0.i.i.i.i.i.i.i.i
  %i.co = zext i32 %i.ce to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i32 1, ptr %1, align 8, !tbaa !326
  store i16 58, ptr %i.x, align 4, !tbaa !327
  store i16 %.sroa.5.0.i.i.i.i, ptr %i.y, align 2, !tbaa !328
  store i64 %i.co, ptr %i.z, align 8, !tbaa !123
  %i.cq = call ptr @_ZN4llvm12DIEValueList8addValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERKNS_8DIEValueE(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(80) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = call noundef i32 @_ZNK4llvm8DIEValue6sizeOfERKNS_5dwarf10FormParamsE(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 2 dereferenceable(5) %i.ab) #24
  %i.ct = add i32 %i.cs, %i.ch
  %i.cu = load ptr, ptr %.01114.i.i.i.i, align 8, !tbaa !702
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !252
  br label %"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.i.i.i"

"_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS4_E_EEvlS4_.exit.i.i.i": ; preds = %_ZN4llvm12dwarf_linker8parallel8TypePool23getThreadLocalAllocatorEv.exit.i.i.i.i.i, %_ZNK4llvm12dwarf_linker8parallel13TypeEntryBody11getFinalDieEv.exit.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.01114.i.i.i.i, i64 40 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.cw, %i.bo
  br i1 %.not12.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i1.i.i.i

_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.us.i.i.i, %_ZNK4llvm12dwarf_linker8parallel8TypeUnit21getScalarFormForValueEm.exit.i.i.i
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !131 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i3.i.i.i, label %"_ZSt10__invoke_rIvRZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit", label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit.i.i.i
  %i.cy = call noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #24, !inline_history !697 ; 0 uses
  br label %"_ZSt10__invoke_rIvRZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

"_ZSt10__invoke_rIvRZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !153
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !330
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !704
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE4sortENS_12function_refIFbRKS3_S7_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.299", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !129
  %i.d = load atomic ptr, ptr %0 seq_cst, align 8 ; 2 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %bb.a, %._crit_edge.i
  %.016.i = phi ptr [ %i.i, %._crit_edge.i ], [ %i.d, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.016.i, i64 20488
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8 ; 2 uses
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 512)
  %.idx.i = mul nuw nsw i64 %.sroa.speculated.i.i.i, 40
  %i.g = getelementptr inbounds nuw i8, ptr %.016.i, i64 %.idx.i
  %.not1213.i = icmp eq i64 %i.f, 0
  br i1 %.not1213.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZNS2_9ArrayListIS3_Lm512EE4sortENS0_IFbRKS3_SB_EEEEUlS4_E_EEvlS4_.exit, %.lr.ph18.i
  %i.h = getelementptr inbounds nuw i8, ptr %.016.i, i64 20480
  %i.i = load atomic ptr, ptr %i.h seq_cst, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit, label %.lr.ph18.i, !llvm.loop !8

.lr.ph.i:                                         ; preds = %.lr.ph18.i, %_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZNS2_9ArrayListIS3_Lm512EE4sortENS0_IFbRKS3_SB_EEEEUlS4_E_EEvlS4_.exit
  %.01114.i = phi ptr [ %i.q, %_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZNS2_9ArrayListIS3_Lm512EE4sortENS0_IFbRKS3_SB_EEEEUlS4_E_EEvlS4_.exit ], [ %.016.i, %.lr.ph18.i ] ; 3 uses
  %i.j = load i32, ptr %i.b, align 8, !tbaa !128  ; 2 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !129
  %.not.i.i.i = icmp ult i32 %i.j, %i.k
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %.lr.ph.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_12dwarf_linker8parallel22DebugTypeDeclFilePatchELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(36) %.01114.i)
  br label %_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZNS2_9ArrayListIS3_Lm512EE4sortENS0_IFbRKS3_SB_EEEEUlS4_E_EEvlS4_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = zext i32 %i.j to i64
  %i.m = load ptr, ptr %3, align 8, !tbaa !127
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.01114.i, i64 40, i1 false)
  %i.o = load i32, ptr %i.b, align 8, !tbaa !128
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.b, align 8, !tbaa !128
  br label %_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZNS2_9ArrayListIS3_Lm512EE4sortENS0_IFbRKS3_SB_EEEEUlS4_E_EEvlS4_.exit

_ZN4llvm12function_refIFvRNS_12dwarf_linker8parallel22DebugTypeDeclFilePatchEEE11callback_fnIZNS2_9ArrayListIS3_Lm512EE4sortENS0_IFbRKS3_SB_EEEEUlS4_E_EEvlS4_.exit: ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.01114.i, i64 40 ; 2 uses
  %.not12.i = icmp eq ptr %i.q, %i.g
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit: ; preds = %._crit_edge.i, %bb.a
  %i.r = load i32, ptr %i.b, align 8, !tbaa !128  ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit14, label %_ZSt4sortIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchENS0_12function_refIFbRKS3_S7_EEEEvT_SA_T0_.exit

_ZSt4sortIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchENS0_12function_refIFbRKS3_S7_EEEEvT_SA_T0_.exit: ; preds = %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %.idx = mul nuw nsw i64 %i.s, 40
  %i.t = load ptr, ptr %3, align 8, !tbaa !127    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 2 uses
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  call void @_ZSt16__introsort_loopIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_12function_refIFbRKS3_SA_EEEEEEvT_SE_T0_T1_(ptr noundef %i.t, ptr noundef nonnull %i.u, i64 noundef %i.x, ptr %1, i64 %2)
  call void @_ZSt22__final_insertion_sortIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_12function_refIFbRKS3_SA_EEEEEEvT_SE_T0_(ptr noundef %i.t, ptr noundef nonnull %i.u, ptr %1, i64 %2)
  %i.y = load atomic ptr, ptr %0 seq_cst, align 8 ; 2 uses
  %.not15.i3 = icmp eq ptr %i.y, null
  br i1 %.not15.i3, label %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit14, label %.lr.ph18.i4

.lr.ph18.i4:                                      ; preds = %_ZSt4sortIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchENS0_12function_refIFbRKS3_S7_EEEEvT_SA_T0_.exit, %._crit_edge.i12
  %.0 = phi i64 [ %.1, %._crit_edge.i12 ], [ 0, %_ZSt4sortIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchENS0_12function_refIFbRKS3_S7_EEEEvT_SA_T0_.exit ] ; 2 uses
  %.016.i5 = phi ptr [ %i.ad, %._crit_edge.i12 ], [ %i.y, %_ZSt4sortIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchENS0_12function_refIFbRKS3_S7_EEEEvT_SA_T0_.exit ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.016.i5, i64 20488
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8 ; 2 uses
  %.sroa.speculated.i.i.i6 = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 512)
  %.idx.i7 = mul nuw nsw i64 %.sroa.speculated.i.i.i6, 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.016.i5, i64 %.idx.i7
  %.not1213.i8 = icmp eq i64 %i.aa, 0
  br i1 %.not1213.i8, label %._crit_edge.i12, label %.lr.ph.i9

._crit_edge.i12:                                  ; preds = %.lr.ph.i9, %.lr.ph18.i4
  %.1 = phi i64 [ %.0, %.lr.ph18.i4 ], [ %i.ae, %.lr.ph.i9 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.016.i5, i64 20480
  %i.ad = load atomic ptr, ptr %i.ac seq_cst, align 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit14, label %.lr.ph18.i4, !llvm.loop !8

.lr.ph.i9:                                        ; preds = %.lr.ph18.i4, %.lr.ph.i9
  %.2 = phi i64 [ %i.ae, %.lr.ph.i9 ], [ %.0, %.lr.ph18.i4 ] ; 2 uses
  %.01114.i10 = phi ptr [ %i.ah, %.lr.ph.i9 ], [ %.016.i5, %.lr.ph18.i4 ] ; 2 uses
  %i.ae = add i64 %.2, 1                          ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !127
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.01114.i10, ptr noundef nonnull align 8 dereferenceable(36) %i.ag, i64 36, i1 false), !tbaa.struct !358
  %i.ah = getelementptr inbounds nuw i8, ptr %.01114.i10, i64 40 ; 2 uses
  %.not12.i11.1 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not12.i11.1, label %._crit_edge.i12, label %.lr.ph.i9

_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit14: ; preds = %._crit_edge.i12, %_ZSt4sortIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchENS0_12function_refIFbRKS3_S7_EEEEvT_SA_T0_.exit, %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit
  %i.ai = load ptr, ptr %3, align 8, !tbaa !127   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvm11SmallVectorINS_12dwarf_linker8parallel22DebugTypeDeclFilePatchELj1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit14
  call void @free(ptr noundef %i.ai) #24
  br label %_ZN4llvm11SmallVectorINS_12dwarf_linker8parallel22DebugTypeDeclFilePatchELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_12dwarf_linker8parallel22DebugTypeDeclFilePatchELj1EED2Ev.exit: ; preds = %_ZN4llvm12dwarf_linker8parallel9ArrayListINS1_22DebugTypeDeclFilePatchELm512EE7forEachENS_12function_refIFvRS3_EEE.exit14, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchES5_EZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS5_S5_E_E9_M_invokeERKSt9_Any_dataS5_S5_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %2) #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !357 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load ptr, ptr %i.c, align 8, !tbaa !357 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val5 = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.f = load i64, ptr %.val, align 8, !tbaa !257 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val4, i64 8 ; 2 uses
  %i.h = load i64, ptr %.val4, align 8, !tbaa !257 ; 4 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 3 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.i, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %i.j = tail call i32 @memcmp(ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i) #28
  %.fr.i.i.i.i.i = freeze i32 %i.j                ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.thread.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.a
  %i.k = icmp ult i64 %i.f, %i.h
  br i1 %i.k, label %"_ZSt10__invoke_rIbRZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS2_22DebugTypeDeclFilePatchES7_E_JS7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %.thread.i.i29.i.i.i

.thread.i.i.thread.i.i.i:                         ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %i.l = icmp ult i64 %i.f, %i.h
  br i1 %i.l, label %"_ZSt10__invoke_rIbRZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS2_22DebugTypeDeclFilePatchES7_E_JS7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i23.i.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %i.m = icmp slt i32 %.fr.i.i.i.i.i, 0
  br i1 %i.m, label %"_ZSt10__invoke_rIbRZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS2_22DebugTypeDeclFilePatchES7_E_JS7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i23.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i23.i.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i, %.thread.i.i.thread.i.i.i
  %i.n = tail call i32 @memcmp(ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.e, i64 noundef %.sroa.speculated.i.i.i.i.i) #28
  %.fr.i.i24.i.i.i = freeze i32 %i.n              ; 2 uses
  %.not.not.i.i25.i.i.i = icmp eq i32 %.fr.i.i24.i.i.i, 0
  br i1 %.not.not.i.i25.i.i.i, label %.thread.i.i29.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit30.i.i.i

.thread.i.i29.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i23.i.i.i, %.thread.i.i.i.i.i
  %i.o = icmp ult i64 %i.h, %i.f
  br i1 %i.o, label %"_ZSt10__invoke_rIbRZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS2_22DebugTypeDeclFilePatchES7_E_JS7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %_ZN4llvmltENS_9StringRefES0_.exit30.thread.i.i.i

_ZN4llvmltENS_9StringRefES0_.exit30.i.i.i:        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i23.i.i.i
  %i.p = icmp slt i32 %.fr.i.i24.i.i.i, 0
  br i1 %i.p, label %"_ZSt10__invoke_rIbRZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS2_22DebugTypeDeclFilePatchES7_E_JS7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", label %_ZN4llvmltENS_9StringRefES0_.exit30.thread.i.i.i

_ZN4llvmltENS_9StringRefES0_.exit30.thread.i.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit30.i.i.i, %.thread.i.i29.i.i.i
  %i.q = load i64, ptr %.val3, align 8, !tbaa !257 ; 3 uses
  %i.r = load i64, ptr %.val5, align 8, !tbaa !257 ; 3 uses
  %.sroa.speculated.i.i35.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i35.i.i.i, 0
  br i1 %i.s, label %.thread.i.i42.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i36.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i36.i.i.i: ; preds = %_ZN4llvmltENS_9StringRefES0_.exit30.thread.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.v = tail call i32 @memcmp(ptr noundef nonnull readonly %i.u, ptr noundef nonnull readonly %i.t, i64 noundef %.sroa.speculated.i.i35.i.i.i) #28
  %.fr.i.i37.i.i.i = freeze i32 %i.v              ; 2 uses
  %.not.not.i.i38.i.i.i = icmp eq i32 %.fr.i.i37.i.i.i, 0
  %.inv.i.i39.i.i.i = icmp sgt i32 %.fr.i.i37.i.i.i, -1
  %spec.select.i.i40.i.i.i = select i1 %.inv.i.i39.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i38.i.i.i, label %.thread.i.i42.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit43.i.i.i

.thread.i.i42.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i36.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit30.thread.i.i.i
  %i.w = icmp eq i64 %i.q, %i.r
  br i1 %i.w, label %_ZN4llvmltENS_9StringRefES0_.exit43.i.i.i, label %bb.b

bb.b:                                             ; preds = %.thread.i.i42.i.i.i
  %i.x = icmp ult i64 %i.q, %i.r
  %i.y = select i1 %i.x, i32 -1, i32 1
  br label %_ZN4llvmltENS_9StringRefES0_.exit43.i.i.i

_ZN4llvmltENS_9StringRefES0_.exit43.i.i.i:        ; preds = %bb.b, %.thread.i.i42.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i36.i.i.i
  %.1.i.i41.i.i.i = phi i32 [ %spec.select.i.i40.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i36.i.i.i ], [ %i.y, %bb.b ], [ 0, %.thread.i.i42.i.i.i ]
  %i.z = icmp slt i32 %.1.i.i41.i.i.i, 0
  br label %"_ZSt10__invoke_rIbRZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS2_22DebugTypeDeclFilePatchES7_E_JS7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

"_ZSt10__invoke_rIbRZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS2_22DebugTypeDeclFilePatchES7_E_JS7_S7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %.thread.i.i.i.i.i, %.thread.i.i.thread.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i, %.thread.i.i29.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit30.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit43.i.i.i
  %i.aa = phi i1 [ true, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i ], [ false, %_ZN4llvmltENS_9StringRefES0_.exit30.i.i.i ], [ %i.z, %_ZN4llvmltENS_9StringRefES0_.exit43.i.i.i ], [ true, %.thread.i.i.i.i.i ], [ false, %.thread.i.i29.i.i.i ], [ true, %.thread.i.i.thread.i.i.i ]
  ret i1 %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchES5_EZZNS2_8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlS5_S5_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #20 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS3_22DebugTypeDeclFilePatchES8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS3_22DebugTypeDeclFilePatchES8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS3_22DebugTypeDeclFilePatchES8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS3_22DebugTypeDeclFilePatchES8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !153
  br label %"_ZNSt14_Function_base13_Base_managerIZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS3_22DebugTypeDeclFilePatchES8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS3_22DebugTypeDeclFilePatchES8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZZN4llvm12dwarf_linker8parallel8TypeUnit26prepareDataForTreeCreationEvENK3$_1clEvEUlRKNS3_22DebugTypeDeclFilePatchES8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_12dwarf_linker8parallel22DebugTypeDeclFilePatchELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::dwarf_linker::parallel::DebugTypeDeclFilePatch", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !358
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 40) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !127
  %i.g = load i32, ptr %i.a, align 8, !tbaa !128
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !128
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_12function_refIFbRKS3_SA_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.306", align 8 ; 5 uses
  %6 = alloca %"struct.llvm::dwarf_linker::parallel::DebugTypeDeclFilePatch", align 8 ; 4 uses
  %7 = alloca %"struct.llvm::dwarf_linker::parallel::DebugTypeDeclFilePatch", align 8 ; 4 uses
  %8 = alloca %"struct.llvm::dwarf_linker::parallel::DebugTypeDeclFilePatch", align 8 ; 4 uses
  %9 = alloca %"struct.llvm::dwarf_linker::parallel::DebugTypeDeclFilePatch", align 8 ; 4 uses
  %10 = alloca %"struct.llvm::dwarf_linker::parallel::DebugTypeDeclFilePatch", align 8 ; 4 uses
  %11 = alloca %"struct.llvm::dwarf_linker::parallel::DebugTypeDeclFilePatch", align 8 ; 4 uses
  %12 = alloca %"struct.llvm::dwarf_linker::parallel::DebugTypeDeclFilePatch", align 8 ; 4 uses
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.306", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph29

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_12function_refIFbRKS3_SA_EEEEEET_SE_SE_T0_.exit
  %i.g = icmp eq i64 %i.k, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph29, !llvm.loop !705

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.022.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %3, ptr %13, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %4, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.i, align 8
  call void @_ZSt11__make_heapIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_12function_refIFbRKS3_SA_EEEEEEvT_SE_RT0_(ptr noundef %0, ptr noundef %.022.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIPN4llvm12dwarf_linker8parallel22DebugTypeDeclFilePatchEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_12function_refIFbRKS3_SA_EEEEEEvT_SE_RT0_(ptr noundef %0, ptr noundef %.022.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %.loopexit

.lr.ph29:                                         ; preds = %.lr.ph, %bb.b
  %.0192128 = phi i64 [ %i.k, %bb.b ], [ %2, %.lr.ph ]
  %.02227 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.j = phi i64 [ %i.y, %bb.b ], [ %i.c, %.lr.ph ]
  %i.k = add nsw i64 %.0192128, -1                ; 3 uses
  %i.l = udiv i64 %i.j, 80
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.l ; 7 uses
  %i.n = getelementptr inbounds i8, ptr %.02227, i64 -40 ; 8 uses
  %i.o = tail call noundef zeroext i1 %3(i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %i.e, ptr noundef nonnull align 8 dereferenceable(36) %i.m) #24, !inline_history !706
end_hunk_0
