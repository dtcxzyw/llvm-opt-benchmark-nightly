Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyRegisterInfo?download=true
inline.NumInlined: 347
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm23WebAssemblyRegisterInfo19eliminateFrameIndexENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijPNS_12RegScavengerE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ej, align 8, !tbaa !254, !alias.scope !387
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.di, ptr %i.ek, align 4, !tbaa !16, !alias.scope !387
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false), !alias.scope !387
  store i32 0, ptr %5, align 8, !alias.scope !387
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ef, ptr noundef nonnull align 8 dereferenceable(1065) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge94
  %.080 = phi i32 [ %i.dw, %bb.l ], [ %.sroa.0.0.i, %.critedge94 ]
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !288
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.i
  call void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32) %i.en, i32 %.080, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %.critedge96, %bb.m
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_ZNK4llvm23WebAssemblyRegisterInfo16getFrameRegisterERKNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load i32, ptr %i.c, align 8, !tbaa !239  ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158, !nonnull !159, !align !160 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(344) %i.f) #18, !inline_history !389 ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !240, !nonnull !159, !align !160
  %i.l = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.k, i32 noundef 21) #18
  br i1 %i.l, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(21) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %1) #18, !inline_history !388
  %i.q = zext i1 %i.p to i64
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ 0, %bb.b ], [ %i.q, %bb.c ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK4llvm23WebAssemblyRegisterInfo16getFrameRegisterERKNS_15MachineFunctionEE4Regs, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !248, !nonnull !159, !align !160
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm6Triple11isArch64BitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #18
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %.sroa.0.0 = phi i32 [ %i.y, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit ], [ %i.d, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef signext i16 @_ZN4llvm11WebAssembly18getNamedOperandIdxEjNS0_6OpNameE(i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32), i32, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm24WebAssemblyFrameLowering9getOpcAddERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #4

declare noundef i32 @_ZN4llvm24WebAssemblyFrameLowering11getOpcConstERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #4

declare i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr, i64) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #7 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !392
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !230  ; 6 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !251
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload.i, i1 noundef zeroext false) #18 ; 6 uses
  %i.g = tail call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nonnull %1, ptr noundef %i.f) #18 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !258  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.i) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !259  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null
  br i1 %.not7.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.k) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !260  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.m) #18
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !254, !alias.scope !393
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.o, align 4, !tbaa !16, !alias.scope !393
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !393
  store i32 16777216, ptr %5, align 8, !alias.scope !393
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.f, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.q = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit ], [ %i.q, %bb.h ]
  ret { ptr, ptr } %.pn
}

declare noundef zeroext i1 @_ZNK4llvm6Triple11isArch64BitEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK4llvm23WebAssemblyRegisterInfo18getPointerRegClassEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(328) %0, i32 %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !159, !align !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !401
  %i.e = icmp eq i32 %i.d, 59
  %i.f = select i1 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm33WebAssemblyMCRegisterClassStorageE, i64 320), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm33WebAssemblyMCRegisterClassStorageE, i64 192)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm23WebAssemblyRegisterInfo32getConstrainedRegClassForOperandERKNS_14MachineOperandERKNS_19MachineRegisterInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 3 uses
  %i.c = add i32 %i.b, -1
  %i.d = icmp ult i32 %i.c, 1073741823
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add nsw i32 %i.b, -5         ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 5
  br i1 %i.e, label %switch.lookup, label %_ZL18getRegClassForBankRKN4llvm12RegisterBankE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = and i32 %i.b, 2147483647
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !162
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h
  %.0.copyload.i.i = load i64, ptr %i.j, align 8  ; 3 uses
  %i.k = icmp ult i64 %.0.copyload.i.i, 8
  br i1 %i.k, label %_ZL18getRegClassForBankRKN4llvm12RegisterBankE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %.0.copyload.i.i, 4
  %.not = icmp eq i64 %i.l, 0
  %i.m = and i64 %.0.copyload.i.i, -5
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  br i1 %.not, label %_ZL18getRegClassForBankRKN4llvm12RegisterBankE.exit, label %switch.lookup14

switch.lookup14:                                  ; preds = %bb.d
  %.val = load i32, ptr %i.n, align 8, !tbaa !403
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %switch.lookup14
  %.val.sink = phi i32 [ %.val, %switch.lookup14 ], [ %switch.tableidx, %bb.b ]
  %switch.table._ZNK4llvm23WebAssemblyRegisterInfo32getConstrainedRegClassForOperandERKNS_14MachineOperandERKNS_19MachineRegisterInfoE.5.sink = phi ptr [ @switch.table._ZNK4llvm23WebAssemblyRegisterInfo32getConstrainedRegClassForOperandERKNS_14MachineOperandERKNS_19MachineRegisterInfoE.5, %switch.lookup14 ], [ @switch.table._ZNK4llvm23WebAssemblyRegisterInfo32getConstrainedRegClassForOperandERKNS_14MachineOperandERKNS_19MachineRegisterInfoE, %bb.b ]
  %i.o = zext nneg i32 %.val.sink to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr %switch.table._ZNK4llvm23WebAssemblyRegisterInfo32getConstrainedRegClassForOperandERKNS_14MachineOperandERKNS_19MachineRegisterInfoE.5.sink, i64 %i.o
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZL18getRegClassForBankRKN4llvm12RegisterBankE.exit

_ZL18getRegClassForBankRKN4llvm12RegisterBankE.exit: ; preds = %switch.lookup, %bb.b, %bb.c, %bb.d
  %.1 = phi ptr [ null, %bb.b ], [ %i.n, %bb.d ], [ null, %bb.c ], [ %switch.load, %switch.lookup ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm26WebAssemblyGenRegisterInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(316) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare noundef i64 @_ZNK4llvm14MCRegisterInfo14getDwarfRegNumENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(240), i32, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetRegisterInfo19getNumSupportedRegsERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  ret i32 %i.b
}

declare i32 @_ZNK4llvm18TargetRegisterInfo16lookThruCopyLikeENS_8RegisterEPKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(316), i32, ptr noundef) unnamed_addr #4

declare i32 @_ZNK4llvm18TargetRegisterInfo26lookThruSingleUseCopyChainENS_8RegisterEPKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(316), i32, ptr noundef) unnamed_addr #4

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo13getIPRACSRegsEPKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo20getCallPreservedMaskERKNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo27getCustomEHPadPreservedMaskERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo18getNoPreservedMaskEv(ptr noundef nonnull align 8 dereferenceable(316) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm18TargetRegisterInfo25getIntraCallClobberedRegsEPKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm18TargetRegisterInfo18explainReservedRegB5cxx11ERKNS_15MachineFunctionENS_10MCRegisterE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.266") align 8 %0, ptr noundef nonnull align 8 dereferenceable(316) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, i32 %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !405
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo16isAsmClobberableERKNS_15MachineFunctionENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo22isInlineAsmReadOnlyRegERKNS_15MachineFunctionENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo19isDivergentRegClassEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo12isUniformRegERKNS_19MachineRegisterInfoERKNS_16RegisterBankInfoENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo37shouldAnalyzePhysregInMachineLoopInfoENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo24isCallerPreservedPhysRegENS_10MCRegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(1065) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo20isCalleeSavedPhysRegENS_10MCRegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316), i32, ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm18TargetRegisterInfo25adjustStackMapLiveOutMaskEPj(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_ZNK4llvm18TargetRegisterInfo24getMatchingSuperRegClassEPKNS_15MCRegisterClassES3_j(ptr noundef nonnull align 8 dereferenceable(316), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetRegisterInfo20shouldRewriteCopySrcEPKNS_15MCRegisterClassEjS3_j(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4llvm18TargetRegisterInfo18findCommonRegClassEPKNS_15MCRegisterClassEjS3_j(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #18
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo21getSubClassWithSubRegEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo19getSubRegisterClassEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo19getPhysRegBaseClassENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetRegisterInfo24composeSubRegIndicesImplEjj(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetRegisterInfo31reverseComposeSubRegIndicesImplEjj(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm18TargetRegisterInfo30composeSubRegIndexLaneMaskImplEjNS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %1, i64 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm18TargetRegisterInfo37reverseComposeSubRegIndexLaneMaskImplEjNS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %1, i64 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetRegisterInfo25getRegisterCostTableIndexERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo18getPointerRegClassEj(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo20getCrossCopyRegClassEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo25getLargestLegalSuperClassEPKNS_15MCRegisterClassERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1065) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetRegisterInfo19getRegPressureLimitEPKNS_15MCRegisterClassERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1065) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetRegisterInfo22getRegPressureSetScoreERKNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 %2
}

declare noundef float @_ZNK4llvm18TargetRegisterInfo25getSpillWeightScaleFactorEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(316), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm18TargetRegisterInfo21getRawAllocationOrderERKNS_15MCRegisterClassERKNS_15MachineFunctionEb(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 {
end_hunk_0
