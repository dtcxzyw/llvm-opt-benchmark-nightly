Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGISel?download=true
inline.NumInlined: 7872
inline.NumDeleted: 4140
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm16SelectionDAGISel20SelectAllBasicBlocksERKNS_8FunctionE:bb.a
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !773 ; 2 uses
  store ptr %i.aci, ptr %i.acb, align 8, !tbaa !813
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.acj = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 19) #29
  %i.ack = load ptr, ptr %i.dq, align 8, !tbaa !661
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 880 ; 2 uses
  %i.acm = load ptr, ptr %i.z, align 8, !tbaa !442
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 56
  %i.aco = load i32, ptr %i.rc, align 8, !tbaa !772
  %i.acp = zext i32 %i.aco to i64
  %i.acq = load ptr, ptr %i.acn, align 8, !tbaa !40
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.acp
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !773 ; 2 uses
  store ptr %i.acs, ptr %i.acl, align 8, !tbaa !813
  br i1 %i.acj, label %_ZN4llvm24StackProtectorDescriptor10initializeEPKNS_10BasicBlockEPNS_17MachineBasicBlockEb.exit, label %bb.cu

bb.cu:                                            ; preds = %.thread504, %bb.ct
  %i.act = phi ptr [ %i.aci, %.thread504 ], [ %i.acs, %bb.ct ] ; 2 uses
  %i.acu = phi ptr [ %i.acb, %.thread504 ], [ %i.acl, %bb.ct ] ; 4 uses
  %i.acv = call noundef ptr @_ZN4llvm24StackProtectorDescriptor15addSuccessorMBBEPKNS_10BasicBlockEPNS_17MachineBasicBlockEbS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.acu, ptr noundef nonnull %i.kq, ptr noundef %i.act, i1 noundef zeroext true, ptr noundef null) #29
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  store ptr %i.acv, ptr %i.acw, align 8, !tbaa !1350
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acu, i64 16 ; 2 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !814
  %i.acz = call noundef ptr @_ZN4llvm24StackProtectorDescriptor15addSuccessorMBBEPKNS_10BasicBlockEPNS_17MachineBasicBlockEbS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.acu, ptr noundef nonnull %i.kq, ptr noundef %i.act, i1 noundef zeroext false, ptr noundef %i.acy) #29
  store ptr %i.acz, ptr %i.acx, align 8, !tbaa !814
  br label %_ZN4llvm24StackProtectorDescriptor10initializeEPKNS_10BasicBlockEPNS_17MachineBasicBlockEb.exit

_ZN4llvm24StackProtectorDescriptor10initializeEPKNS_10BasicBlockEPNS_17MachineBasicBlockEb.exit: ; preds = %bb.cu, %bb.ct, %_ZNK4llvm10BasicBlock7isEHPadEv.exit.thread486
  %.not518 = icmp eq ptr %.fca.0.extract76, %.sroa.0416.6
  br i1 %.not518, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm24StackProtectorDescriptor10initializeEPKNS_10BasicBlockEPNS_17MachineBasicBlockEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @_ZN4llvm16SelectionDAGISel16SelectBasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb1EEES7_Rb(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr %.fca.0.extract76, i64 poison, ptr %.sroa.0416.6, i64 poison, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %i.ada = load i8, ptr %i.d, align 1, !range !36
  %i.adb = trunc nuw i8 %i.ada to i1
  %or.cond4 = select i1 %i.as, i1 %i.adb, i1 false
  br i1 %or.cond4, label %bb.cw, label %.critedge

bb.cw:                                            ; preds = %bb.cv
  %i.adc = load ptr, ptr %i.z, align 8, !tbaa !442 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 688
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 680
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !774
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 48 ; 2 uses
  %i.adh = load ptr, ptr %i.add, align 8, !tbaa !1285 ; 2 uses
  %.not519 = icmp eq ptr %i.adh, %i.adg
  br i1 %.not519, label %.critedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN4llvm8FastISel14removeDeadCodeENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES3_(ptr noundef nonnull align 8 dereferenceable(192) %.0, ptr %i.adh, ptr nonnull %i.adg) #29
  br label %.critedge

.critedge:                                        ; preds = %bb.cv, %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %bb.cy

bb.cy:                                            ; preds = %.critedge, %_ZN4llvm24StackProtectorDescriptor10initializeEPKNS_10BasicBlockEPNS_17MachineBasicBlockEb.exit
  br i1 %i.as, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN4llvm8FastISel16finishBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(192) %.0) #29
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  call void @_ZN4llvm16SelectionDAGISel16FinishBasicBlockEv(ptr noundef nonnull align 8 dereferenceable(952) %0)
  %i.adi = load ptr, ptr %i.z, align 8, !tbaa !442 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 784
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !815 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 792 ; 2 uses
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !816
  %.not.i.i347 = icmp eq ptr %i.adm, %i.adk
  br i1 %.not.i.i347, label %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrENS1_8RegisterEESaIS5_EE5clearEv.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  store ptr %i.adk, ptr %i.adl, align 8, !tbaa !816
  br label %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrENS1_8RegisterEESaIS5_EE5clearEv.exit

_ZNSt6vectorISt4pairIPN4llvm12MachineInstrENS1_8RegisterEESaIS5_EE5clearEv.exit: ; preds = %bb.da, %bb.db
  %i.adn = load i8, ptr %i.jm, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ado = trunc nuw i8 %i.adn to i1
  br i1 %i.ado, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrENS1_8RegisterEESaIS5_EE5clearEv.exit
  %i.adp = load i32, ptr %i.jn, align 4, !tbaa !662
  %i.adq = shl i32 %i.adp, 2
  %i.adr = load i32, ptr %i.km, align 8, !tbaa !532 ; 3 uses
  %i.ads = icmp ult i32 %i.adq, %i.adr
  %i.adt = icmp ugt i32 %i.adr, 32
  %or.cond.i = and i1 %i.ads, %i.adt
  br i1 %or.cond.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %i.jl) #29
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

bb.de:                                            ; preds = %bb.dc
  %i.adu = load ptr, ptr %i.jl, align 8, !tbaa !38
  %i.adv = zext i32 %i.adr to i64
  %i.adw = shl nuw nsw i64 %i.adv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.adu, i8 -1, i64 %i.adw, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_ZNSt6vectorISt4pairIPN4llvm12MachineInstrENS1_8RegisterEESaIS5_EE5clearEv.exit
  store i32 0, ptr %i.jn, align 4, !tbaa !662
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit:       ; preds = %bb.df, %bb.dd, %_ZL16preserveFakeUsesN4llvm21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEES6_.exit
  %.not510 = icmp eq ptr %i.kp, %i.jc
  br i1 %.not510, label %._crit_edge, label %bb.z

bb.dg:                                            ; preds = %._crit_edge
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !100
  call void @_ZN4llvm16SelectionDAGISel24reportIPToStateForBlocksEPNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %i.ady)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %._crit_edge
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !526
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !100
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 48
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !741
  call void @_ZNK4llvm13SSPLayoutInfo22copyToMachineFrameInfoERNS_16MachineFrameInfoE(ptr noundef nonnull align 8 dereferenceable(31) %i.aea, ptr noundef nonnull align 8 dereferenceable(728) %i.aee) #29
  %i.aef = load ptr, ptr %i.do, align 8, !tbaa !534
  call void @_ZN4llvm23SwiftErrorValueTracking14propagateVRegsEv(ptr noundef nonnull align 8 dereferenceable(136) %i.aef) #29
  br i1 %i.as, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.aeg = load ptr, ptr %.0, align 8, !tbaa !28
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.aei = load ptr, ptr %i.aeh, align 8
  call void %i.aei(ptr noundef nonnull align 8 dereferenceable(192) %.0) #29
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.aej = load ptr, ptr %i.dq, align 8, !tbaa !661
  call void @_ZN4llvm19SelectionDAGBuilder22clearDanglingDebugInfoEv(ptr noundef nonnull align 8 dereferenceable(992) %i.aej) #29
  %i.aek = load ptr, ptr %i.dq, align 8, !tbaa !661
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 896
  store ptr null, ptr %i.ael, align 8, !tbaa !814
  %i.aem = load ptr, ptr %3, align 8, !tbaa !40   ; 2 uses
  %i.aen = icmp eq ptr %i.aem, %i.w
  br i1 %i.aen, label %_ZN4llvm25ReversePostOrderTraversalIPKNS_8FunctionENS_11GraphTraitsIS3_EEED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @free(ptr noundef %i.aem) #29
  br label %_ZN4llvm25ReversePostOrderTraversalIPKNS_8FunctionENS_11GraphTraitsIS3_EEED2Ev.exit

_ZN4llvm25ReversePostOrderTraversalIPKNS_8FunctionENS_11GraphTraitsIS3_EEED2Ev.exit: ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

declare void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520), i32, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #4

declare void @_ZN4llvm19MachineRegisterInfo14replaceRegWithENS_8RegisterES1_(ptr noundef nonnull align 8 dereferenceable(520), i32, i32) local_unnamed_addr #4

declare void @_ZN4llvm19MachineRegisterInfo16EmitLiveInCopiesEPNS_17MachineBasicBlockERKNS_18TargetRegisterInfoERKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #4

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm12MachineInstr16getDebugVariableEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm12MachineInstr18getDebugExpressionEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_11MCInstrDescEbNS_8RegisterEPKNS_6MDNodeESE_(ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32, ptr noundef, ptr noundef) local_unnamed_addr #4

declare { i64, i8 } @_ZNK4llvm18TargetRegisterInfo16getRegSizeInBitsENS_8RegisterERKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(316), i32, ptr noundef nonnull align 8 dereferenceable(520)) local_unnamed_addr #4

declare { ptr, ptr } @_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_8DebugLocERKNS_11MCInstrDescEbNS_8RegisterEPKNS_6MDNodeESB_(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i32, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm15MachineFunction22finalizeDebugInstrRefsEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr24isStackAligningInlineAsmEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN4llvm20FunctionLoweringInfo5clearEv(ptr noundef nonnull align 8 dereferenceable(976)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16SelectionDAGISel16SelectBasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb1EEES7_Rb(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr %1, i64 %2, ptr nofree readnone captures(address) %3, i64 %4, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !436  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 706
  store i8 0, ptr %i.c, align 2, !tbaa !817
  %.not1618 = icmp eq ptr %1, %3
  br i1 %.not1618, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 844
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.019 = phi ptr [ %1, %.lr.ph ], [ %i.ag, %bb.g ] ; 2 uses
  %i.g = load ptr, ptr %6, align 8, !tbaa !661    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 976
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1352, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.critedge.loopexit, label %bb.d

.critedge.loopexit:                               ; preds = %bb.g, %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !436
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.k = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.b, %bb.a ] ; 6 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.l = load ptr, ptr %7, align 8, !tbaa !661
  %i.m = tail call { ptr, i32 } @_ZN4llvm19SelectionDAGBuilder14getControlRootEv(ptr noundef nonnull align 8 dereferenceable(992) %i.l) #29 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.m, 0 ; 3 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.m, 1 ; 2 uses
  %.not.i = icmp eq ptr %.fca.0.extract, null
  br i1 %.not.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 376
  store ptr null, ptr %i.n, align 8, !tbaa !776
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx4.i, align 8, !tbaa !670
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit

bb.c:                                             ; preds = %.critedge
  tail call void @_ZN4llvm14checkForCyclesEPKNS_6SDNodeEPKNS_12SelectionDAGEb(ptr noundef nonnull %.fca.0.extract, ptr noundef nonnull align 8 dereferenceable(920) %i.k, i1 noundef zeroext false) #29
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 376
  store ptr %.fca.0.extract, ptr %i.o, align 8, !tbaa !776
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  store i32 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !670
  tail call void @_ZN4llvm14checkForCyclesEPKNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(920) %i.k, i1 noundef zeroext false) #29
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit

_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit: ; preds = %.thread.i, %bb.c
  %i.p = load ptr, ptr %7, align 8, !tbaa !661    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 976
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1352, !range !36, !noundef !37
  store i8 %i.r, ptr %5, align 1, !tbaa !787
  tail call void @_ZN4llvm19SelectionDAGBuilder21resolveOrClearDbgInfoEv(ptr noundef nonnull align 8 dereferenceable(992) %i.p) #29
  %i.s = load ptr, ptr %7, align 8, !tbaa !661
  tail call void @_ZN4llvm19SelectionDAGBuilder5clearEv(ptr noundef nonnull align 8 dereferenceable(992) %i.s) #29
  tail call void @_ZN4llvm16SelectionDAGISel17CodeGenAndEmitDAGEv(ptr noundef nonnull align 8 dereferenceable(952) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.019, i64 -24 ; 4 uses
  %i.u = load i8, ptr %i.e, align 8, !tbaa !35, !range !36, !noundef !37
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.x = load i32, ptr %i.f, align 4, !tbaa !662  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %.idx.i.i = shl nuw nsw i64 %i.y, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.x, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01218.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %.01218.i.i, align 8, !tbaa !535
  %.not15.i.i = icmp eq ptr %i.ab, %i.t
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread13, label %bb.f

_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit: ; preds = %bb.d
  %i.ac = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull %i.t) #29
  %.not17 = icmp eq ptr %i.ac, null
  %.pre21 = load ptr, ptr %6, align 8, !tbaa !661 ; 2 uses
  br i1 %.not17, label %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread13

_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread: ; preds = %bb.f, %bb.e, %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit
  %i.ad = phi ptr [ %.pre21, %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit ], [ %i.g, %bb.e ], [ %i.g, %bb.f ]
  tail call void @_ZN4llvm19SelectionDAGBuilder5visitERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(992) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.t) #29
  br label %bb.g

_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread13: ; preds = %.lr.ph.i.i, %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit
  %i.ae = phi ptr [ %.pre21, %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit ], [ %i.g, %.lr.ph.i.i ]
  tail call void @_ZN4llvm19SelectionDAGBuilder12visitDbgInfoERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(992) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.t) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread, %_ZNK4llvm15SmallPtrSetImplIPKNS_11InstructionEE5countES3_.exit.thread13
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !785 ; 2 uses
  %.not16 = icmp eq ptr %i.ag, %3
  br i1 %.not16, label %.critedge.loopexit, label %bb.b, !llvm.loop !1351
}

declare void @_ZN4llvm19SelectionDAGBuilder5visitERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(992), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm19SelectionDAGBuilder12visitDbgInfoERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(992), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare { ptr, i32 } @_ZN4llvm19SelectionDAGBuilder14getControlRootEv(ptr noundef nonnull align 8 dereferenceable(992)) local_unnamed_addr #4

declare void @_ZN4llvm19SelectionDAGBuilder21resolveOrClearDbgInfoEv(ptr noundef nonnull align 8 dereferenceable(992)) local_unnamed_addr #4

declare void @_ZN4llvm19SelectionDAGBuilder5clearEv(ptr noundef nonnull align 8 dereferenceable(992)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16SelectionDAGISel17CodeGenAndEmitDAGEv(ptr noundef nonnull align 8 dereferenceable(952) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %5 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %8 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %10 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %11 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %14 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %15 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %16 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %17 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %18 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %19 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %20 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %21 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %22 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %23 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %24 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %25 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %26 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %27 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %28 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %29 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %30 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %31 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %32 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %33 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %34 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %35 = alloca %"struct.llvm::NamedRegionTimer", align 8 ; 4 uses
  %36 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %37 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !803
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !804
  store i8 0, ptr %i.a, align 8, !tbaa !686
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !436
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 706
  store i8 0, ptr %i.e, align 2, !tbaa !817
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr @.str.17, ptr %3, align 8, !tbaa !241
  %.sroa.15128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %.sroa.15128.0..sroa_idx, align 8, !tbaa !242
  store ptr @.str.18, ptr %4, align 8, !tbaa !241
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 36, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !242
  %i.f = load i8, ptr @_ZN4llvm19TimePassesIsEnabledE, align 1, !tbaa !787, !range !36, !noundef !37
  %i.g = trunc nuw i8 %i.f to i1
  call void @_ZN4llvm16NamedRegionTimerC1ENS_9StringRefES1_S1_S1_b(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @.str.19, i64 8, ptr nonnull @.str.20, i64 15, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %3, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4, i1 noundef zeroext %i.g) #29
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !436
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !510, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  %spec.select.i = select i1 %i.l, ptr %i.i, ptr null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 6 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !260
  call void @_ZN4llvm12SelectionDAG7CombineENS_12CombineLevelEPNS_14BatchAAResultsENS_15CodeGenOptLevelE(ptr noundef nonnull align 8 dereferenceable(920) %i.h, i32 noundef 0, ptr noundef %spec.select.i, i32 noundef %i.n) #29
  %i.o = load ptr, ptr %2, align 8, !tbaa !1355   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4llvm10TimeRegionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm5Timer9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(176) %i.o) #29
  br label %_ZN4llvm10TimeRegionD2Ev.exit

_ZN4llvm10TimeRegionD2Ev.exit:                    ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr @.str.17, ptr %6, align 8, !tbaa !241
  %.sroa.15128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %.sroa.15128.0..sroa_idx129, align 8, !tbaa !242
  store ptr @.str.18, ptr %7, align 8, !tbaa !241
  %.sroa.15.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 36, ptr %.sroa.15.0..sroa_idx94, align 8, !tbaa !242
  %i.p = load i8, ptr @_ZN4llvm19TimePassesIsEnabledE, align 1, !tbaa !787, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  call void @_ZN4llvm16NamedRegionTimerC1ENS_9StringRefES1_S1_S1_b(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nonnull @.str.21, i64 14, ptr nonnull @.str.22, i64 17, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %7, i1 noundef zeroext %i.q) #29
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !436
  %i.s = call noundef zeroext i1 @_ZN4llvm12SelectionDAG13LegalizeTypesEv(ptr noundef nonnull align 8 dereferenceable(920) %i.r) #29
  %i.t = load ptr, ptr %5, align 8, !tbaa !1355   ; 2 uses
  %.not.i11 = icmp eq ptr %i.t, null
  br i1 %.not.i11, label %_ZN4llvm10TimeRegionD2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm10TimeRegionD2Ev.exit
  call void @_ZN4llvm5Timer9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(176) %i.t) #29
  br label %_ZN4llvm10TimeRegionD2Ev.exit12

_ZN4llvm10TimeRegionD2Ev.exit12:                  ; preds = %_ZN4llvm10TimeRegionD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !436
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 706
  store i8 1, ptr %i.v, align 2, !tbaa !817
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4llvm10TimeRegionD2Ev.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr @.str.17, ptr %9, align 8, !tbaa !241
  %.sroa.15128.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %.sroa.15128.0..sroa_idx131, align 8, !tbaa !242
  store ptr @.str.18, ptr %10, align 8, !tbaa !241
  %.sroa.15.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 36, ptr %.sroa.15.0..sroa_idx96, align 8, !tbaa !242
  %i.w = load i8, ptr @_ZN4llvm19TimePassesIsEnabledE, align 1, !tbaa !787, !range !36, !noundef !37
  %i.x = trunc nuw i8 %i.w to i1
  call void @_ZN4llvm16NamedRegionTimerC1ENS_9StringRefES1_S1_S1_b(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr nonnull @.str.23, i64 10, ptr nonnull @.str.24, i64 34, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %9, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %10, i1 noundef zeroext %i.x) #29
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !436
  %i.z = load i8, ptr %i.j, align 8, !tbaa !510, !range !36, !noundef !37
  %i.aa = trunc nuw i8 %i.z to i1
  %spec.select.i13 = select i1 %i.aa, ptr %i.i, ptr null
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !260
  call void @_ZN4llvm12SelectionDAG7CombineENS_12CombineLevelEPNS_14BatchAAResultsENS_15CodeGenOptLevelE(ptr noundef nonnull align 8 dereferenceable(920) %i.y, i32 noundef 1, ptr noundef %spec.select.i13, i32 noundef %i.ab) #29
  %i.ac = load ptr, ptr %8, align 8, !tbaa !1355  ; 2 uses
  %.not.i14 = icmp eq ptr %i.ac, null
  br i1 %.not.i14, label %_ZN4llvm10TimeRegionD2Ev.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm5Timer9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(176) %i.ac) #29
  br label %_ZN4llvm10TimeRegionD2Ev.exit15

_ZN4llvm10TimeRegionD2Ev.exit15:                  ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10TimeRegionD2Ev.exit15, %_ZN4llvm10TimeRegionD2Ev.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
end_hunk_0
