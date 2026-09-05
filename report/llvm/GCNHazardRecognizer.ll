Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GCNHazardRecognizer?download=true
inline.NumInlined: 4708
inline.NumDeleted: 1919
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm19GCNHazardRecognizer21fixVcmpxExecWARHazardEPNS_12MachineInstrE:bb.a
  %i.an = zext i32 %i.am to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 1, ptr %2, align 8, !alias.scope !847
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !513, !alias.scope !847
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !390, !alias.scope !847
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(1065) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.g ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer25fixLdsBranchVmemWARHazardEPNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::DenseSet", align 8    ; 6 uses
  %5 = alloca %"class.llvm::function_ref.295", align 8 ; 5 uses
  %6 = alloca %"class.llvm::function_ref.294", align 8 ; 5 uses
  %7 = alloca %class.anon.338, align 1            ; 4 uses
  %8 = alloca %class.anon.340, align 8            ; 4 uses
  %9 = alloca %class.anon.341, align 8            ; 5 uses
  %10 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !389, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.d, align 8, !tbaa !384
  %i.e = getelementptr i8, ptr %.val, i64 24
  %.val.val = load i64, ptr %i.e, align 8, !tbaa !386 ; 5 uses
  %i.f = and i64 %.val.val, 33554432
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %.val.val, 2
  %.not.i.i = icmp ne i64 %i.g, 0
  %i.h = and i64 %.val.val, 16908288
  %or.cond.not.i.i = icmp ne i64 %i.h, 0
  %or.cond.i.not2.i = and i1 %.not.i.i, %or.cond.not.i.i
  %i.i = and i64 %.val.val, 274877906944
  %i.j = icmp ne i64 %i.i, 0
  %or.cond.i = or i1 %i.j, %or.cond.i.not2.i
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %.val.val, 24510464
  %.not3.i = icmp eq i64 %i.k, 0
  br i1 %.not3.i, label %"_ZZN4llvm19GCNHazardRecognizer25fixLdsBranchVmemWARHazardEPNS_12MachineInstrEENK3$_0clERKS1_.exit", label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0.i.ph = phi i32 [ 1, %bb.c ], [ 2, %bb.d ], [ 1, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %7, ptr %8, align 8, !tbaa !397
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store i32 %.0.i.ph, ptr %9, align 8, !tbaa !540
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.l, align 8, !tbaa !397
  %i.m = ptrtoint ptr %9 to i64
  %i.n = ptrtoint ptr %8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @_ZN4llvm12function_refIFjRKNS_12MachineInstrEEE11callback_fnIS4_EEjlS3_, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 ptrtoint (ptr @_ZN4llvm11SIInstrInfo16getNumWaitStatesERKNS_12MachineInstrE to i64), ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !396
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEiEE11callback_fnIZNS_19GCNHazardRecognizer25fixLdsBranchVmemWARHazardEPS1_E3$_1EEblS3_i", ptr %5, align 8, !tbaa !397
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !213
  %i.s = call fastcc noundef i32 @_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPKNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb1ELb1EEEiNS0_IFbS3_iEEERNS_8DenseSetIS8_NS_12DenseMapInfoIS8_vEEEENS0_IFjS3_EEE(ptr nonnull readonly @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEEE11callback_fnIZNS_19GCNHazardRecognizer25fixLdsBranchVmemWARHazardEPS1_E3$_2EEblS3_", i64 %i.m, ptr noundef %i.p, ptr %i.r, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::function_ref.295") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval(%"class.llvm::function_ref.294") align 8 %6)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !400  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %4, align 8, !tbaa !401
  %i.x = zext i32 %i.u to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.x, 31
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741820
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.ac, i64 noundef 8) #25
  br label %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit

_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ad = icmp ne i32 %i.s, 2147483647            ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !216, !nonnull !45, !align !193
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !471
  store ptr %.sroa.0.0.copyload, ptr %10, align 8, !tbaa !471
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !460
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -172480
  %i.am = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.ag, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.al) ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.am, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !513, !alias.scope !852
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 20, ptr %i.aq, align 4, !tbaa !390, !alias.scope !852
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !alias.scope !852
  store i32 268435456, ptr %3, align 8, !alias.scope !852
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 1, ptr %2, align 8, !alias.scope !853
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.h

bb.h:                                             ; preds = %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %"_ZZN4llvm19GCNHazardRecognizer25fixLdsBranchVmemWARHazardEPNS_12MachineInstrEENK3$_0clERKS1_.exit"

"_ZZN4llvm19GCNHazardRecognizer25fixLdsBranchVmemWARHazardEPNS_12MachineInstrEENK3$_0clERKS1_.exit": ; preds = %bb.d, %bb.h
  %.1 = phi i1 [ %i.ad, %bb.h ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %"_ZZN4llvm19GCNHazardRecognizer25fixLdsBranchVmemWARHazardEPNS_12MachineInstrEENK3$_0clERKS1_.exit"
  %.2 = phi i1 [ %.1, %"_ZZN4llvm19GCNHazardRecognizer25fixLdsBranchVmemWARHazardEPNS_12MachineInstrEENK3$_0clERKS1_.exit" ], [ false, %bb.a ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer22fixLdsDirectVALUHazardEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.anon.342, align 8            ; 6 uses
  %3 = alloca %class.anon.343, align 1            ; 3 uses
  %4 = alloca %class.anon.345, align 1            ; 3 uses
  %5 = alloca %"class.llvm::DenseSet", align 8    ; 6 uses
  %6 = alloca %"class.llvm::function_ref.295", align 8 ; 3 uses
  %7 = alloca %"class.llvm::function_ref.294", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !384
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !386
  %i.f = and i64 %i.e, 268435456
  %i.g = icmp ne i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %bb.c

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.j = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 0) #27
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 0, ptr %i.a, align 1, !tbaa !444
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !542
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.l, ptr %i.m, align 8, !tbaa !410
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.n, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !396
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  %8 = ptrtoint ptr %2 to i64
  store ptr @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEiEE11callback_fnIZNS_19GCNHazardRecognizer22fixLdsDirectVALUHazardEPS1_E3$_1EEblS3_i", ptr %6, align 8, !tbaa !544
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = ptrtoint ptr %3 to i64
  store i64 %i.t, ptr %i.s, align 8, !tbaa !545
  store ptr @"_ZN4llvm12function_refIFjRKNS_12MachineInstrEEE11callback_fnIZNS_19GCNHazardRecognizer22fixLdsDirectVALUHazardEPS1_E3$_2EEjlS3_", ptr %7, align 8, !tbaa !547
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = ptrtoint ptr %4 to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !548
  %i.w = call fastcc noundef i32 @_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPKNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb1ELb1EEEiNS0_IFbS3_iEEERNS_8DenseSetIS8_NS_12DenseMapInfoIS8_vEEEENS0_IFjS3_EEE(ptr nonnull @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEEE11callback_fnIZNS_19GCNHazardRecognizer22fixLdsDirectVALUHazardEPS1_E3$_0EEblS3_", i64 %8, ptr noundef %i.p, ptr %i.r, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::function_ref.295") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::function_ref.294") align 8 %7)
  %i.x = load i8, ptr %i.a, align 1, !tbaa !444, !range !44, !noundef !45
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.aa = call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 17) #27
  %i.ab = call i32 @llvm.smin.i32(i32 %i.w, i32 15)
  %i.ac = sext i32 %i.ab to i64
  %i.ad = select i1 %i.y, i64 0, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !390
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !400 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN4llvm6detail12DenseSetImplIPKNS_17MachineBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ai = load ptr, ptr %5, align 8, !tbaa !401
  %i.aj = zext i32 %i.ag to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplIPKNS_17MachineBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPKNS_17MachineBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb1ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN4llvm6detail12DenseSetImplIPKNS_17MachineBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer22fixLdsDirectVMEMHazardEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %3 = alloca %"class.llvm::DenseSet", align 8    ; 6 uses
  %4 = alloca %"class.llvm::function_ref.295", align 8 ; 5 uses
  %5 = alloca %"class.llvm::function_ref.294", align 8 ; 5 uses
  %6 = alloca %class.anon.353, align 8            ; 5 uses
  %7 = alloca %class.anon.355, align 8            ; 5 uses
  %8 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !386
  %i.e = and i64 %i.d, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.h = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 0) #27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !390
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %0, ptr %6, align 8, !tbaa !550
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !410
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !216, !nonnull !45, !align !193
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  %i.o = load i32, ptr %i.n, align 8, !tbaa !395
  %i.p = icmp sgt i32 %i.o, 10                    ; 2 uses
  %i.q = zext i1 %i.p to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %0, ptr %7, align 8, !tbaa !552
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.q, ptr %i.r, align 8, !tbaa !553
  %i.s = ptrtoint ptr %6 to i64
  %i.t = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @_ZN4llvm12function_refIFjRKNS_12MachineInstrEEE11callback_fnIS4_EEjlS3_, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 ptrtoint (ptr @_ZN4llvm11SIInstrInfo16getNumWaitStatesERKNS_12MachineInstrE to i64), ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !396
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.w = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEiEE11callback_fnIZNS_19GCNHazardRecognizer22fixLdsDirectVMEMHazardEPS1_E3$_1EEblS3_i", ptr %4, align 8, !tbaa !397
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !213
  %i.y = call fastcc noundef i32 @_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPKNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb1ELb1EEEiNS0_IFbS3_iEEERNS_8DenseSetIS8_NS_12DenseMapInfoIS8_vEEEENS0_IFjS3_EEE(ptr nonnull readonly @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEEE11callback_fnIZNS_19GCNHazardRecognizer22fixLdsDirectVMEMHazardEPS1_E3$_0EEblS3_", i64 %i.s, ptr noundef %i.v, ptr %i.x, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::function_ref.295") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%"class.llvm::function_ref.294") align 8 %5)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !400 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %3, align 8, !tbaa !401
  %i.ad = zext i32 %i.aa to i64                   ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ad, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ai, i64 noundef 8) #25
  br label %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit

_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = icmp ne i32 %i.y, 2147483647            ; 2 uses
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.al = call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull align 8 dereferenceable(840) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 18) #27
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %i.am, align 8, !tbaa !390
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !471
  store ptr %.sroa.0.0.copyload, ptr %8, align 8, !tbaa !471
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !460
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -172352
  %i.au = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.an, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.at) ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !216, !nonnull !45, !align !193
  %i.ay = call noundef i32 @_ZN4llvm6AMDGPU6DepCtr17encodeFieldVmVsrcEjRKNS_15MCSubtargetInfoE(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(320) %i.ax) #25
  %i.az = zext i32 %i.ay to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 1, ptr %2, align 8, !alias.scope !856
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !513, !alias.scope !856
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !390, !alias.scope !856
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(1065) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPS2_NS0_IFbS3_iEEENS0_IFjS3_EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i1 [ %i.aj, %bb.g ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer30fixVALUPartialForwardingHazardEPNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Register", align 4    ; 4 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.llvm::SmallDenseMap.633", align 8 ; 15 uses
  %5 = alloca %"class.llvm::SmallVector.636", align 8 ; 12 uses
  %6 = alloca %struct.StateType, align 8          ; 23 uses
  %7 = alloca %"class.llvm::SmallSetVector.641", align 8 ; 18 uses
  %8 = alloca %"struct.std::pair.660", align 8    ; 9 uses
  %9 = alloca %"class.llvm::SmallSetVector", align 8 ; 10 uses
  %10 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %11 = alloca %struct.StateType, align 8         ; 10 uses
  %12 = alloca %struct.StateType, align 8         ; 8 uses
  %13 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216, !nonnull !45, !align !193 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.e = load i32, ptr %i.d, align 8, !tbaa !395
  %i.f = icmp eq i32 %i.e, 10
  br i1 %i.f, label %bb.b, label %bb.by

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.h = load i8, ptr %i.g, align 8, !tbaa !554
end_hunk_0
begin_hunk_1_@_ZN4llvm19GCNHazardRecognizer22fixVALUMaskWriteHazardEPNS_12MachineInstrE:bb.a
bb.dh:                                            ; preds = %_ZZN4llvm19GCNHazardRecognizer22fixVALUMaskWriteHazardEPNS_12MachineInstrEEN9StateTypeD2Ev.exit111
  call void @free(ptr noundef %i.act) #25
  br label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit: ; preds = %_ZZN4llvm19GCNHazardRecognizer22fixVALUMaskWriteHazardEPNS_12MachineInstrEEN9StateTypeD2Ev.exit111, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.di

bb.di:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit, %bb.c, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.1, %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit ], [ false, %bb.c ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer25fixRequiredExportPriorityEPNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %10 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %12 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %13 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216, !nonnull !45, !align !193
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 833
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1082, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !396  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !511  ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1083, !nonnull !45, !align !193
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !1087
  %i.m = lshr i16 %i.l, 4
  %i.n = and i16 %i.m, 1023                       ; 2 uses
  %switch.tableidx = add nsw i16 %i.n, -90        ; 2 uses
  %i.o = icmp ult i16 %switch.tableidx, 16
  %switch.shifted = lshr i16 -16381, %switch.tableidx
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond92 = select i1 %i.o, i1 %switch.lobit, i1 false
  br i1 %or.cond92, label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !391
  switch i32 %i.q, label %bb.m [
    i32 5132, label %bb.d
    i32 5134, label %bb.d
    i32 5133, label %bb.d
    i32 4390, label %bb.d
    i32 5341, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1088
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 66
  %i.u = load i8, ptr %i.t, align 2, !tbaa !1108, !range !44, !noundef !45
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.y = getelementptr i8, ptr %i.i, i64 304
  %.val56 = load ptr, ptr %i.y, align 8, !tbaa !367 ; 4 uses
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val57 = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.val56, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !372 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val56, i64 48
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !391
  %i.af = icmp eq i32 %i.ae, 5341
  br i1 %i.af, label %bb.g, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !405
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !390
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.al = getelementptr inbounds i8, ptr %.val57, i64 -170912
  %i.am = getelementptr inbounds nuw i8, ptr %.val56, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !511 ; 2 uses
  %i.ao = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr null, i1 noundef zeroext false) #25 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val56, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.ao) #25
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8
  %i.aq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ab, ptr %i.as, align 8, !tbaa !372
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.au = or disjoint i64 %i.at, %i.aq
  store i64 %i.au, ptr %i.ao, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ao, ptr %i.av, align 8, !tbaa !372
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8
  %i.aw = ptrtoint ptr %i.ao to i64
  %i.ax = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.ay = or disjoint i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 1, ptr %8, align 8, !alias.scope !1109
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !513, !alias.scope !1109
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %i.ba, align 8, !tbaa !390, !alias.scope !1109
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit

bb.h:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !405
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !390 ; 2 uses
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !372
  %.not = icmp eq ptr %1, %i.bi
  br i1 %.not, label %bb.j, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !386
  %i.bp = and i64 %i.bo, 8388608
  %i.bq = icmp ne i64 %i.bp, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.preheader, %bb.h
  %i.br = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ %i.bq, %.lr.ph.i.preheader ]
  %i.bs = icmp sgt i32 %i.bf, 1
  %or.cond = or i1 %i.bs, %i.br                   ; 2 uses
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = shl i64 %i.be, 32
  %sext = add i64 %i.bt, 8589934592
  %i.bu = ashr exact i64 %sext, 32
  store i64 %i.bu, ptr %i.bd, align 8, !tbaa !390
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = xor i1 %or.cond, true
  br label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit

bb.m:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !384
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !386
  %i.bz = and i64 %i.by, 8388608
  %.not84 = icmp eq i64 %i.bz, 0
  br i1 %.not84, label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i16 %i.n, label %bb.o [
    i16 124, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit59
    i16 100, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit59
  ]

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.cc = getelementptr i8, ptr %i.i, i64 304
  %.val = load ptr, ptr %i.cc, align 8, !tbaa !367
  %i.cd = getelementptr i8, ptr %i.cb, i64 8
  %.val55 = load ptr, ptr %i.cd, align 8
  %i.ce = tail call fastcc noundef zeroext i1 @_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE(ptr %.val, ptr %.val55)
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit59

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit59: ; preds = %bb.n, %bb.n, %bb.o
  %.052 = phi i1 [ %i.ce, %bb.o ], [ false, %bb.n ], [ false, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !372 ; 9 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.not85 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not85, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit59
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !384
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !386
  %i.cm = and i64 %i.cl, 8388608
  %.not86 = icmp eq i64 %i.cm, 0
  br i1 %.not86, label %bb.q, label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 52
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !391 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 5341
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !405
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !390
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cv = icmp eq i32 %i.co, 5132
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit59
  %.051 = phi i1 [ %i.cv, %bb.s ], [ false, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit59 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.sroa.011.0.copyload = load ptr, ptr %i.cw, align 8, !tbaa !471
  store ptr %.sroa.011.0.copyload, ptr %9, align 8, !tbaa !471
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 24, i1 false)
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !460
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -170912
  %i.dd = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.g, ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.dc) ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dd, 0
  %i.df = extractvalue { ptr, ptr } %i.dd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 1, ptr %7, align 8, !alias.scope !1110
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef nonnull align 8 dereferenceable(1065) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.051, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %.sroa.09.0.copyload = load ptr, ptr %i.cw, align 8, !tbaa !471
  store ptr %.sroa.09.0.copyload, ptr %10, align 8, !tbaa !471
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  %i.di = load ptr, ptr %i.cy, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !460
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -172384
  %i.dm = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.g, ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.dl) ; 2 uses
  %i.dn = extractvalue { ptr, ptr } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { ptr, ptr } %i.dm, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.dp, align 8, !tbaa !513, !alias.scope !1111
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 20, ptr %i.dq, align 4, !tbaa !390, !alias.scope !1111
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false), !alias.scope !1111
  store i32 0, ptr %6, align 8, !alias.scope !1111
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.do, ptr noundef nonnull align 8 dereferenceable(1065) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 1, ptr %5, align 8, !alias.scope !1112
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.do, ptr noundef nonnull align 8 dereferenceable(1065) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %.sroa.07.0.copyload = load ptr, ptr %i.cw, align 8, !tbaa !471
  store ptr %.sroa.07.0.copyload, ptr %11, align 8, !tbaa !471
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  %i.du = load ptr, ptr %i.cy, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !460
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -168800
  %i.dy = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.g, ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.dx) ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %i.dy, 0
  %i.ea = extractvalue { ptr, ptr } %i.dy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i32 1, ptr %4, align 8, !alias.scope !1113
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ea, ptr noundef nonnull align 8 dereferenceable(1065) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %.sroa.05.0.copyload = load ptr, ptr %i.cw, align 8, !tbaa !471
  store ptr %.sroa.05.0.copyload, ptr %12, align 8, !tbaa !471
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  %i.ed = load ptr, ptr %i.cy, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !460
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -168800
  %i.eh = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.g, ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.eg) ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eh, 0
  %i.ej = extractvalue { ptr, ptr } %i.eh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 1, ptr %3, align 8, !alias.scope !1114
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ej, ptr noundef nonnull align 8 dereferenceable(1065) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br i1 %.051, label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %.sroa.0.0.copyload = load ptr, ptr %i.cw, align 8, !tbaa !471
  store ptr %.sroa.0.0.copyload, ptr %13, align 8, !tbaa !471
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.el, i8 0, i64 24, i1 false)
  %i.em = load ptr, ptr %i.cy, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !460
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -170912
  %i.eq = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.g, ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ep) ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.eq, 0
  %i.es = extractvalue { ptr, ptr } %i.eq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 1, ptr %2, align 8, !alias.scope !1115
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.et, align 8, !tbaa !513, !alias.scope !1115
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 2, ptr %i.eu, align 8, !tbaa !390, !alias.scope !1115
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.es, ptr noundef nonnull align 8 dereferenceable(1065) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit

_ZL18ensureEntrySetPrioPN4llvm15MachineFunctionEiRKNS_11SIInstrInfoE.exit: ; preds = %bb.b, %bb.l, %bb.d, %bb.m, %bb.g, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i, %bb.v, %bb.w, %bb.r, %bb.p, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ %.052, %bb.r ], [ true, %bb.v ], [ true, %bb.w ], [ %.052, %bb.p ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.m ], [ %.0, %bb.l ], [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i ], [ false, %bb.b ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer17fixGetRegWaitIdleEPNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !391
  %i.c = add i32 %i.b, -5151
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !216, !nonnull !45, !align !193 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 912
  %i.h = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i8 noundef zeroext 50) #27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !390
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 63
  switch i32 %i.l, label %bb.d [
    i32 2, label %bb.c
    i32 4, label %bb.c
    i32 17, label %bb.c
    i32 18, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !471
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !471
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !460
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -172352
  %i.t = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 1, ptr %2, align 8, !alias.scope !1118
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(1065) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer32fixDsAtomicAsyncBarrierArriveB64EPNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !391
  %.not = icmp eq i32 %i.b, 3135                  ; 2 uses
  br i1 %.not, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.b

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !216, !nonnull !45, !align !193
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !471
  store ptr %.sroa.03.0.copyload, ptr %4, align 8, !tbaa !471
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 920 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !460
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -172352
  %i.l = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.k) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !216, !nonnull !45, !align !193
  %i.p = call noundef i32 @_ZN4llvm6AMDGPU6DepCtr17encodeFieldVmVsrcEjRKNS_15MCSubtargetInfoE(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(320) %i.o) #25
  %i.q = zext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 1, ptr %3, align 8, !alias.scope !1123
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !513, !alias.scope !1123
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.q, ptr %i.s, align 8, !tbaa !390, !alias.scope !1123
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(1065) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !396  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !471
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !460
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -172352
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !511  ; 2 uses
  %i.aa = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr %.sroa.0.0.copyload, i1 noundef zeroext false) #25 ; 2 uses
  %i.ab = call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.t, ptr %i.v, ptr noundef %i.aa) #25 ; 0 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !216, !nonnull !45, !align !193
  %i.ad = call noundef i32 @_ZN4llvm6AMDGPU6DepCtr17encodeFieldVmVsrcEjRKNS_15MCSubtargetInfoE(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(320) %i.ac) #25
  %i.ae = zext i32 %i.ad to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 1, ptr %2, align 8, !alias.scope !1124
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !513, !alias.scope !1124
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !390, !alias.scope !1124
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(1065) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %3 = alloca %"class.llvm::DenseSet", align 8    ; 6 uses
  %4 = alloca %class.anon.607, align 8            ; 5 uses
  %5 = alloca %class.anon.609, align 8            ; 6 uses
  %6 = alloca %class.anon.610, align 1            ; 3 uses
  %7 = alloca %"class.llvm::function_ref.295", align 8 ; 5 uses
  %8 = alloca %"class.llvm::function_ref.294", align 8 ; 5 uses
  %9 = alloca %"class.llvm::DenseSet", align 8    ; 6 uses
  %10 = alloca %class.anon.607, align 8           ; 5 uses
  %11 = alloca %class.anon.609, align 8           ; 6 uses
  %12 = alloca %class.anon.610, align 1           ; 3 uses
  %13 = alloca %"class.llvm::function_ref.295", align 8 ; 5 uses
  %14 = alloca %"class.llvm::function_ref.294", align 8 ; 5 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !72, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !216, !nonnull !45, !align !193 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1024 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 912 ; 3 uses
  %i.h = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 26, ptr noundef nonnull %i.f, i1 noundef zeroext false) #25
  %.not = icmp eq i32 %i.h, -1                    ; 2 uses
  %i.i = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 25, ptr noundef nonnull %i.f, i1 noundef zeroext false) #25
  %i.j = icmp ne i32 %i.i, -1                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !391
  %i.m = add i32 %i.l, -5151
  %i.n = icmp ult i32 %i.m, 2
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNK4llvm11SIInstrInfo15getNamedOperandERNS_12MachineInstrENS_6AMDGPU6OpNameE(ptr noundef nonnull readonly align 8 dereferenceable(840) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i8 noundef zeroext 50) #27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !390
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 63
  switch i32 %i.s, label %bb.d [
    i32 20, label %.thread
    i32 21, label %.split
  ]

.thread:                                          ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !421, !nonnull !45, !align !193
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !215
  br label %bb.e

.split:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !421, !nonnull !45, !align !193
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !215 ; 2 uses
  br i1 %.not, label %.thread40, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !421, !nonnull !45, !align !193
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !215 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.split, %.thread, %bb.d
  %i.af = phi ptr [ %i.w, %.thread ], [ %i.ae, %bb.d ], [ %i.aa, %.split ] ; 4 uses
  %.06.shrunk39 = phi i1 [ %i.j, %.thread ], [ %i.j, %bb.d ], [ true, %.split ] ; 2 uses
  %i.ag = tail call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo17isConstantPhysRegENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.af, i32 426) #25
  br i1 %i.ag, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.f, ptr %10, align 8, !tbaa !625
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 426, ptr %i.ah, align 8, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr %i.g, ptr %11, align 8, !tbaa !1127
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.f, ptr %i.ai, align 8, !tbaa !627
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !396
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.an = inttoptr i64 %i.am to ptr
  %16 = ptrtoint ptr %10 to i64
  store ptr @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEiEE11callback_fnIZZNS_19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPS1_ENK3$_0clENS_8RegisterEEUlS3_iE_EEblS3_i", ptr %13, align 8, !tbaa !544
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ap = ptrtoint ptr %12 to i64
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !545
  store ptr @"_ZN4llvm12function_refIFjRKNS_12MachineInstrEEE11callback_fnIZZNS_19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPS1_ENK3$_0clENS_8RegisterEEUlS3_E0_EEjlS3_", ptr %14, align 8, !tbaa !547
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ar = ptrtoint ptr %11 to i64
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !548
  %i.as = call fastcc noundef i32 @_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPKNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb1ELb1EEEiNS0_IFbS3_iEEERNS_8DenseSetIS8_NS_12DenseMapInfoIS8_vEEEENS0_IFjS3_EEE(ptr nonnull @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEEE11callback_fnIZZNS_19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPS1_ENK3$_0clENS_8RegisterEEUlS3_E_EEblS3_", i64 %16, ptr noundef %i.al, ptr %i.an, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::function_ref.295") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull byval(%"class.llvm::function_ref.294") align 8 %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !400 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %9, align 8, !tbaa !401
  %i.ax = zext i32 %i.au to i64                   ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ax, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  %i.bc = add nuw nsw i64 %i.bb, %i.ay
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aw, i64 noundef %i.bc, i64 noundef 8) #25
  br label %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit"

"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit": ; preds = %bb.f, %bb.g
  %i.bd = icmp slt i32 %i.as, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br i1 %i.bd, label %bb.k, label %bb.h

bb.h:                                             ; preds = %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit", %bb.e, %bb.d
  %i.be = phi ptr [ %i.af, %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit" ], [ %i.af, %bb.e ], [ %i.ae, %bb.d ]
  %.06.shrunk38 = phi i1 [ %.06.shrunk39, %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit" ], [ %.06.shrunk39, %bb.e ], [ %i.j, %bb.d ]
  br i1 %.06.shrunk38, label %.thread40, label %bb.l

.thread40:                                        ; preds = %.split, %bb.h
  %i.bf = phi ptr [ %i.be, %bb.h ], [ %i.aa, %.split ] ; 2 uses
  %i.bg = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo17isConstantPhysRegENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bf, i32 427) #25
  br i1 %i.bg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.thread40
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.f, ptr %4, align 8, !tbaa !625
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 427, ptr %i.bh, align 8, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.g, ptr %5, align 8, !tbaa !1127
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.bi, align 8, !tbaa !627
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !1128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !396
  %.0.copyload.i.i.i.i.i.i.i.i8 = load i64, ptr %1, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i.i.i.i.i8, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  %17 = ptrtoint ptr %4 to i64
  store ptr @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEiEE11callback_fnIZZNS_19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPS1_ENK3$_0clENS_8RegisterEEUlS3_iE_EEblS3_i", ptr %7, align 8, !tbaa !544
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bp = ptrtoint ptr %6 to i64
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !545
  store ptr @"_ZN4llvm12function_refIFjRKNS_12MachineInstrEEE11callback_fnIZZNS_19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPS1_ENK3$_0clENS_8RegisterEEUlS3_E0_EEjlS3_", ptr %8, align 8, !tbaa !547
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = ptrtoint ptr %5 to i64
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !548
  %i.bs = call fastcc noundef i32 @_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPKNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb1ELb1EEEiNS0_IFbS3_iEEERNS_8DenseSetIS8_NS_12DenseMapInfoIS8_vEEEENS0_IFjS3_EEE(ptr nonnull @"_ZN4llvm12function_refIFbRKNS_12MachineInstrEEE11callback_fnIZZNS_19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPS1_ENK3$_0clENS_8RegisterEEUlS3_E_EEblS3_", i64 %17, ptr noundef %i.bl, ptr %i.bn, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::function_ref.295") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%"class.llvm::function_ref.294") align 8 %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !400 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit9", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !401
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #25
  br label %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit9"

"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit9": ; preds = %bb.i, %bb.j
  %i.cd = icmp slt i32 %i.bs, 10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit9", %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit"
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.cg, align 8, !tbaa !471
  store ptr %.sroa.0.0.copyload, ptr %15, align 8, !tbaa !471
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !460
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -172352
  %i.cl = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.cf, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.ck) ; 2 uses
  %i.cm = extractvalue { ptr, ptr } %i.cl, 0
  %i.cn = extractvalue { ptr, ptr } %i.cl, 1
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !216, !nonnull !45, !align !193
  %i.cp = call noundef i32 @_ZN4llvm6AMDGPU6DepCtr17encodeFieldSaSdstEjRKNS_15MCSubtargetInfoE(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(320) %i.co) #25
  %i.cq = call noundef i32 @_ZN4llvm6AMDGPU6DepCtr17encodeFieldVaSdstEjj(i32 noundef %i.cp, i32 noundef 0) #25
  %i.cr = zext i32 %i.cq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 1, ptr %2, align 8, !alias.scope !1129
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.cs, align 8, !tbaa !513, !alias.scope !1129
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !390, !alias.scope !1129
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cn, ptr noundef nonnull align 8 dereferenceable(1065) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit9", %.thread40, %bb.h, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.k ], [ false, %"_ZZN4llvm19GCNHazardRecognizer30fixScratchBaseForwardingHazardEPNS_12MachineInstrEENK3$_0clENS_8RegisterE.exit9" ], [ false, %.thread40 ], [ false, %bb.h ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19GCNHazardRecognizer13fixSetRegModeEPNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %3 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !391
  %.off.i = add i32 %i.b, -5343
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !405
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !390
  %.not = icmp eq i64 %i.f, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !471
  store ptr %.sroa.04.0.copyload, ptr %2, align 8, !tbaa !471
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !460
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -337664
  %i.p = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.o) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.01.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !471
  store ptr %.sroa.01.0.copyload, ptr %3, align 8, !tbaa !471
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !403, !nonnull !45, !align !193
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !460
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -337664
  %i.w = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.v) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef i32 @_ZN4llvm6AMDGPU6DepCtr17encodeFieldVmVsrcEjRKNS_15MCSubtargetInfoE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(320)) local_unnamed_addr #4

declare { i64, i32 } @_ZN4llvm6AMDGPU13getIsaVersionENS_9StringRefE(ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm21AMDGPUGenRegisterInfo19getPhysRegBaseClassENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(316), i32) unnamed_addr #4

declare noundef i32 @_ZN4llvm6AMDGPU6DepCtr17encodeFieldSaSdstEjRKNS_15MCSubtargetInfoE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(320)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL18getWaitStatesSinceN4llvm12function_refIFbRKNS_12MachineInstrEEEEPKNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb1ELb1EEEiNS0_IFbS3_iEEERNS_8DenseSetIS8_NS_12DenseMapInfoIS8_vEEEENS0_IFjS3_EEE(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree noundef readonly captures(address) %2, ptr %3, i32 noundef %4, ptr nofree noundef readonly byval(%"class.llvm::function_ref.295") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef readonly byval(%"class.llvm::function_ref.294") align 8 captures(none) %7) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.not4346 = icmp eq ptr %3, %i.b
  br i1 %.not4346, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load ptr, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.01548 = phi i32 [ %4, %.lr.ph ], [ %.116, %bb.f ] ; 4 uses
  %.sroa.028.047 = phi ptr [ %3, %.lr.ph ], [ %i.s, %bb.f ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.028.047, i64 52 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !391
  %i.k = icmp eq i32 %i.j, 22
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i1 %0(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.028.047) #25, !inline_history !5
  br i1 %i.l, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.i, align 4, !tbaa !391
  %i.n = add i32 %i.m, -1
  %spec.select.i = icmp ult i32 %i.n, 2
  br i1 %spec.select.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i32 %i.c(i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.028.047) #25, !inline_history !6
  %i.p = add i32 %i.o, %.01548                    ; 2 uses
  %i.q = tail call noundef zeroext i1 %i.f(i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.028.047, i32 noundef %i.p) #25, !inline_history !1130
  br i1 %i.q, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.116 = phi i32 [ %.01548, %bb.b ], [ %.01548, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.028.047, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %.not43 = icmp eq ptr %i.b, %i.s
  br i1 %.not43, label %._crit_edge, label %bb.b, !llvm.loop !1131

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.015.lcssa = phi i32 [ %4, %bb.a ], [ %.116, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !212  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not49 = icmp eq i32 %i.w, 0
  br i1 %.not49, label %.thread, label %.lr.ph53

.lr.ph53:                                         ; preds = %._crit_edge, %bb.h
  %.01751 = phi ptr [ %i.ah, %bb.h ], [ %i.u, %._crit_edge ] ; 2 uses
  %.03850 = phi i32 [ %.139, %bb.h ], [ 2147483647, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.z = load ptr, ptr %.01751, align 8, !tbaa !571
  store ptr %i.z, ptr %i.a, align 8, !tbaa !571
  %i.aa = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1138
end_hunk_1
