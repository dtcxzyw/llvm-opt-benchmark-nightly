Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchFrameLowering?download=true
inline.NumInlined: 912
inline.NumDeleted: 517
begin_hunk_0_@_ZNK4llvm22LoongArchFrameLowering12emitEpilogueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !341
  %i.bw = add i64 %i.bv, 2048
  %i.bx = icmp ult i64 %i.bw, 4096
  br i1 %i.bx, label %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !401
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !402
  %.not.i35 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i35, label %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit.thread, label %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit

_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit: ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.cc, align 4, !tbaa !274
  %i.cd = zext nneg i8 %.sroa.0.0.copyload.i.i to i64
  %.neg.i = shl nsw i64 -1, %i.cd
  %i.ce = add nsw i64 %.neg.i, 2048               ; 3 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit
  %i.cf = sub i64 %i.bd, %i.ce
  call void @_ZNK4llvm22LoongArchFrameLowering9adjustRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_lNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %.sroa.016.0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 48, i32 48, i64 noundef %i.cf, i32 noundef 2)
  br label %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.g, %bb.h, %bb.i, %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit
  %.0 = phi i64 [ %i.ce, %bb.i ], [ %i.bd, %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit ], [ %i.bd, %bb.h ], [ %i.bd, %bb.g ]
  call void @_ZNK4llvm22LoongArchFrameLowering9adjustRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_lNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 48, i32 48, i64 noundef %.0, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit.thread
  ret void
}

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm22LoongArchFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::DebugLoc", align 8   ; 7 uses
  %12 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %13 = alloca %"class.llvm::SmallVector.361", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.b, ptr %13, align 8, !tbaa !349
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !346
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  store i32 2, ptr %i.d, align 4, !tbaa !347
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.022.026 = load ptr, ptr %i.e, align 8, !tbaa !334 ; 2 uses
  %.not2427 = icmp eq ptr %.sroa.022.026, %i.f
  br i1 %.not2427, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.pre = load ptr, ptr %13, align 8, !tbaa !349  ; 3 uses
  %.pre35 = load i32, ptr %i.c, align 8, !tbaa !346 ; 2 uses
  %i.g = zext i32 %.pre35 to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not29 = icmp eq i32 %.pre35, 0
  br i1 %.not29, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.022.028 = phi ptr [ %.sroa.022.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.022.026, %bb.a ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 52
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !345
  %i.ah = icmp eq i32 %i.ag, 334
  br i1 %i.ah, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !346 ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !347
  %.not.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !348

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %.sroa.022.028)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %13, align 8, !tbaa !349
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  store ptr %.sroa.022.028, ptr %i.am, align 1
  %i.an = load i32, ptr %i.c, align 8, !tbaa !346
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.c, align 8, !tbaa !346
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.d, %bb.c, %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.028) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.022.028, align 8
  %i.ap = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !289
  %i.as = and i32 %i.ar, 8
  %.not34.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.au, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.022.028, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !334 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !289
  %i.ax = and i32 %i.aw, 8
  %.not3.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.022.028, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ], [ %.sroa.022.028, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.au, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.022.0 = load ptr, ptr %i.ay, align 8, !tbaa !334 ; 2 uses
  %.not24 = icmp eq ptr %.sroa.022.0, %i.f
  br i1 %.not24, label %._crit_edge, label %.lr.ph

._crit_edge33.loopexit:                           ; preds = %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit
  %.pre36 = load ptr, ptr %13, align 8, !tbaa !349
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %._crit_edge
  %i.az = phi ptr [ %.pre36, %._crit_edge33.loopexit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.b
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge33
  call void @free(ptr noundef %i.az) #14
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit: ; preds = %bb.a, %._crit_edge33, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  ret void

bb.f:                                             ; preds = %.lr.ph32, %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit
  %.030 = phi ptr [ %.pre, %.lr.ph32 ], [ %i.fp, %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit ] ; 2 uses
  %i.bb = load ptr, ptr %.030, align 8, !tbaa !571 ; 10 uses
  %i.bc = call ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %i.bb) #14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !411
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.bc, ptr %11, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !572 ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !333 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !135, !nonnull !136, !align !137 ; 7 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(519320) %i.bm) #14, !inline_history !554 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 354
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !267, !range !161, !noundef !136
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !139
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(519320) %i.bm) #14, !inline_history !554
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %.sroa.0.0.copyload.i79.i = load i8, ptr %i.bx, align 4, !tbaa !274
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !139
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(519320) %i.bm) #14, !inline_history !554
  %i.cc = call noundef i32 @_ZNK4llvm23LoongArchTargetLowering17getStackProbeSizeERKNS_15MachineFunctionENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518448) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, i8 %.sroa.0.0.copyload.i79.i) #14
  %14 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !343    ; 6 uses
  %16 = trunc nuw i8 %i.bs to i1                  ; 2 uses
  %17 = zext i32 %i.cc to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !573
  %i.cf = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, ptr noundef %i.ce, i64 undef, i8 0) #14 ; 15 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 296 ; 2 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef %i.cf) #14
  %i.ch = load ptr, ptr %15, align 8, !tbaa !574  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %15, ptr %i.ci, align 8, !tbaa !343
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !574
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cf, ptr %i.cj, align 8, !tbaa !343
  store ptr %i.cf, ptr %15, align 8, !tbaa !574
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !573
  %i.cl = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, ptr noundef %i.ck, i64 undef, i8 0) #14 ; 11 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef %i.cl) #14
  %i.cm = load ptr, ptr %15, align 8, !tbaa !574  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %15, ptr %i.cn, align 8, !tbaa !343
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !574
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !343
  store ptr %i.cl, ptr %15, align 8, !tbaa !574
  call void @_ZNK4llvm18LoongArchInstrInfo6movImmERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEmNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(440) %i.bq, ptr noundef nonnull align 8 dereferenceable(360) %i.bi, ptr nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 59, i64 noundef %17, i32 noundef 1) #14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %.sroa.018.0.copyload.i = load ptr, ptr %11, align 8, !tbaa !269
  store ptr %.sroa.018.0.copyload.i, ptr %12, align 8, !tbaa !269
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !270
  %.neg.i = select i1 %16, i64 -922, i64 -923
  %i.cs = getelementptr inbounds [32 x i8], ptr %i.cr, i64 %.neg.i
  %i.ct = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.cf, ptr nonnull %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i32 48) ; 2 uses
  %i.cu = extractvalue { ptr, ptr } %i.ct, 0      ; 2 uses
  %i.cv = extractvalue { ptr, ptr } %i.ct, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr null, ptr %i.j, align 8, !tbaa !273, !alias.scope !575
  store i32 48, ptr %i.k, align 4, !tbaa !274, !alias.scope !575
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !575
  store i32 0, ptr %10, align 8, !alias.scope !575
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cv, ptr noundef nonnull align 8 dereferenceable(1065) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr null, ptr %i.m, align 8, !tbaa !273, !alias.scope !576
  store i32 59, ptr %i.n, align 4, !tbaa !274, !alias.scope !576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !alias.scope !576
  store i32 0, ptr %9, align 8, !alias.scope !576
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cv, ptr noundef nonnull align 8 dereferenceable(1065) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 44 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !289
  %i.cy = or i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %.sroa.013.0.copyload.i = load ptr, ptr %11, align 8, !tbaa !269
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !270
  %.neg129.i = select i1 %16, i64 -919, i64 -921
  %i.da = getelementptr inbounds [32 x i8], ptr %i.cz, i64 %.neg129.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !333 ; 4 uses
  %i.dd = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr %.sroa.013.0.copyload.i, i1 noundef zeroext false) #14 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef %i.dd) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cp, align 8
  %i.df = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.cp, ptr %i.dh, align 8, !tbaa !334
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.dd, align 8
  %i.di = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.dj = or disjoint i64 %i.di, %i.df
  store i64 %i.dj, ptr %i.dd, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dd, ptr %i.dk, align 8, !tbaa !334
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.cp, align 8
  %i.dl = ptrtoint ptr %i.dd to i64
  %i.dm = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.dn = or disjoint i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr null, ptr %i.p, align 8, !tbaa !273, !alias.scope !577
  store i32 45, ptr %i.q, align 4, !tbaa !274, !alias.scope !577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !alias.scope !577
  store i32 0, ptr %8, align 8, !alias.scope !577
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dd, ptr noundef nonnull align 8 dereferenceable(1065) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr null, ptr %i.s, align 8, !tbaa !273, !alias.scope !578
  store i32 48, ptr %i.t, align 4, !tbaa !274, !alias.scope !578
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !578
  store i32 0, ptr %7, align 8, !alias.scope !578
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dd, ptr noundef nonnull align 8 dereferenceable(1065) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 1, ptr %6, align 8, !alias.scope !579
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dd, ptr noundef nonnull align 8 dereferenceable(1065) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 44 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !289
  %i.dq = or i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !289
  %.sroa.010.0.copyload.i = load ptr, ptr %11, align 8, !tbaa !269
  %i.dr = load ptr, ptr %i.cq, align 8, !tbaa !270
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -18176
  %i.dt = load ptr, ptr %i.db, align 8, !tbaa !333 ; 4 uses
  %i.du = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr %.sroa.010.0.copyload.i, i1 noundef zeroext false) #14 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef %i.du) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i81.i = load i64, ptr %i.cp, align 8
  %i.dv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i81.i, -8 ; 2 uses
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.cp, ptr %i.dx, align 8, !tbaa !334
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i82.i = load i64, ptr %i.du, align 8
  %i.dy = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i82.i, 7
  %i.dz = or disjoint i64 %i.dy, %i.dv
  store i64 %i.dz, ptr %i.du, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.du, ptr %i.ea, align 8, !tbaa !334
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i83.i = load i64, ptr %i.cp, align 8
  %i.eb = ptrtoint ptr %i.du to i64
  %i.ec = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i83.i, 7
  %i.ed = or disjoint i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %i.w, align 8, !tbaa !273, !alias.scope !580
  store i32 48, ptr %i.x, align 4, !tbaa !274, !alias.scope !580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !580
  store i32 0, ptr %5, align 8, !alias.scope !580
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(1065) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %i.z, align 8, !tbaa !273, !alias.scope !581
  store i32 %i.bg, ptr %i.aa, align 4, !tbaa !274, !alias.scope !581
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !alias.scope !581
  store i32 0, ptr %4, align 8, !alias.scope !581
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(1065) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %i.ac, align 8, !tbaa !273, !alias.scope !582
  store ptr %i.cf, ptr %i.ad, align 8, !tbaa !274, !alias.scope !582
  store i32 4, ptr %3, align 8, !alias.scope !582
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(1065) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 44 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !289
  %i.eg = or i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !289
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i90.i = load i64, ptr %i.bb, align 8
  %i.ei = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i90.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.f
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !289
  %i.el = and i32 %i.ek, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.en, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.bb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !334 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 44
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !289
  %i.eq = and i32 %i.ep, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.f
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.bb, %bb.f ], [ %i.bb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.en, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !334 ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 6 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  %i.ev = icmp eq ptr %i.cl, %i.bi
  %or.cond.i.i.i = or i1 %i.ev, %i.eu
  br i1 %or.cond.i.i.i, label %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr %i.es, ptr nonnull %i.et) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i92.i = load i64, ptr %i.et, align 8
  %i.ey = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i92.i, -8 ; 2 uses
  %i.ez = inttoptr i64 %i.ey to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8
  %i.fa = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i, -8
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.et, ptr %i.fc, align 8, !tbaa !334
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8
  %i.fd = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i = load i64, ptr %i.et, align 8
  %i.fe = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i, 7
  %i.ff = or disjoint i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %i.et, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 8
  %i.fg = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.eh, ptr %i.fi, align 8, !tbaa !334
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i = load i64, ptr %i.es, align 8
  %i.fj = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i, 7
  %i.fk = or disjoint i64 %i.fj, %i.fg
  store i64 %i.fk, ptr %i.es, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.es, ptr %i.fl, align 8, !tbaa !334
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i = load i64, ptr %i.eh, align 8
  %i.fm = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i, 7
  %i.fn = or disjoint i64 %i.fm, %i.ey
  store i64 %i.fn, ptr %i.eh, align 8
  br label %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit

_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %bb.g
  call void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.cl, ptr noundef nonnull %i.bi) #14
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.cf, ptr noundef nonnull %i.cl, i32 -1) #14
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.cf, ptr noundef nonnull %i.cf, i32 -1) #14
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.bi, ptr noundef nonnull %i.cf, i32 -1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !365
  store ptr %i.cf, ptr %i.ae, align 8, !tbaa !365
  call void @_ZN4llvm21fullyRecomputeLiveInsENS_8ArrayRefIPNS_17MachineBasicBlockEEE(ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.fo = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bb) #14 ; 0 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.030, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fp, %i.h
  br i1 %.not, label %._crit_edge33.loopexit, label %bb.f
}

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm22LoongArchFrameLowering20determineCalleeSavesERNS_15MachineFunctionERNS_9BitVectorEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK4llvm19TargetFrameLowering20determineCalleeSavesERNS_15MachineFunctionERNS_9BitVectorEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef %3) #14
  %i.a = load ptr, ptr %1, align 8, !tbaa !396, !nonnull !136, !align !137
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.a, i32 noundef 21) #14
  br i1 %i.b, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !5
  br i1 %i.f, label %bb.b, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !349    ; 2 uses
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !384
  %i.i = or <2 x i64> %i.h, <i64 70368744177664, i64 8>
  store <2 x i64> %i.i, ptr %i.g, align 8, !tbaa !384
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

end_hunk_0
