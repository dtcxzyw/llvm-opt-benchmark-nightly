Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CombinerHelperVectorOps?download=true
inline.NumInlined: 759
inline.NumDeleted: 421
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper16matchMulOfVScaleERKNS0_14MachineOperandERSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation":bb.a

"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchMulOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZNK4llvm14CombinerHelper16matchMulOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit.i.i", %bb.h, %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchMulOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

declare void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper16matchSubOfVScaleERKNS0_14MachineOperandERSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #0 align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::DstOp"], align 8 ; 5 uses
  %3 = alloca [2 x %"class.llvm::SrcOp"], align 8 ; 8 uses
  %4 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !62    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %.val, align 8, !tbaa !26
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %4, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25, !noalias !147
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26, !noalias !147 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50, !noalias !147 ; 3 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !50, !alias.scope !147
  %i.l = icmp ult i32 %i.k, 65
  br i1 %i.l, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i.i.i, label %_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i

_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i:            ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %i.h) #10
  %.pr.i.i.i = load i32, ptr %i.i, align 8, !tbaa !50, !noalias !148 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.m = icmp ult i32 %.pr.i.i.i, 65
  br i1 %i.m, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i.i.i, label %bb.b

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i, %bb.a
  %.in.i.i.i = phi ptr [ %i.h, %bb.a ], [ %6, %_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i ]
  %i.n = phi i32 [ %i.k, %bb.a ], [ %.pr.i.i.i, %_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i ] ; 2 uses
  %i.o = load i64, ptr %.in.i.i.i, align 8, !tbaa !26, !noalias !39
  %i.p = xor i64 %i.o, -1
  %i.q = sub nsw i32 0, %i.n
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = lshr i64 -1, %i.s
  %i.u = icmp eq i32 %i.n, 0
  %spec.select.i.i.i.i.i.i = select i1 %i.u, i64 0, i64 %i.t, !prof !149
  %i.v = and i64 %spec.select.i.i.i.i.i.i, %i.p
  store i64 %i.v, ptr %6, align 8, !tbaa !26, !noalias !148
  br label %_ZN4llvmngENS_5APIntE.exit.i.i.i

bb.b:                                             ; preds = %_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10, !noalias !148
  br label %_ZN4llvmngENS_5APIntE.exit.i.i.i

_ZN4llvmngENS_5APIntE.exit.i.i.i:                 ; preds = %bb.b, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i.i.i
  %i.w = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #10, !noalias !148 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.i, align 8, !tbaa !50, !noalias !148
  store i32 %i.y, ptr %i.x, align 8, !tbaa !50, !alias.scope !148
  %i.z = load i64, ptr %6, align 8, !noalias !148
  store i64 %i.z, ptr %5, align 8, !alias.scope !148
  store i32 0, ptr %i.i, align 8, !tbaa !50, !noalias !148
  %i.aa = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11buildVScaleERKNS_5DstOpERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(12) %5) #10 ; 2 uses
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !50
  %i.ac = icmp ugt i32 %i.ab, 64
  br i1 %i.ac, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit.i.i.i

bb.c:                                             ; preds = %_ZN4llvmngENS_5APIntE.exit.i.i.i
  %i.ad = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5APIntD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #12
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i:                    ; preds = %bb.d, %bb.c, %_ZN4llvmngENS_5APIntE.exit.i.i.i
  %i.af = load i32, ptr %i.i, align 8, !tbaa !50
  %i.ag = icmp ugt i32 %i.af, 64
  br i1 %i.ag, label %bb.e, label %"_ZSt10__invoke_rIvRZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS0_14MachineOperandERSt8functionIFvRNS0_16MachineIRBuilderEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i
  %i.ah = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %"_ZSt10__invoke_rIvRZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS0_14MachineOperandERSt8functionIFvRNS0_16MachineIRBuilderEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #12
  br label %"_ZSt10__invoke_rIvRZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS0_14MachineOperandERSt8functionIFvRNS0_16MachineIRBuilderEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

"_ZSt10__invoke_rIvRZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS0_14MachineOperandERSt8functionIFvRNS0_16MachineIRBuilderEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i, %bb.e, %bb.f
  %i.aj = extractvalue { ptr, ptr } %i.aa, 1
  %i.ak = extractvalue { ptr, ptr } %i.aa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.al, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !150 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !151
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.at to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i, 4294967296
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i32 %.sroa.02.0.copyload.i.i.i, ptr %2, align 8
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i32 %i.ar, ptr %3, align 8
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ak, ptr %i.au, align 8
  %.sroa.07.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %.sroa.07.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !26
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !153
  %i.av = load ptr, ptr %1, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call { ptr, ptr } %i.ax(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef 55, ptr nonnull %2, i64 1, ptr nonnull %3, i64 2, i64 %.sroa.0.0.insert.insert.i.i.i) #10, !inline_history !144 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper16matchSubOfVScaleERKNS0_14MachineOperandERSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %.val, ptr %0, align 8, !tbaa !62
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !95
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %.val5, i64 32, i1 false), !tbaa.struct !154
  store ptr %i.a, ptr %0, align 8, !tbaa !62
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !62 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 32) #12
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper16matchShlOfVScaleERKNS0_14MachineOperandERSt8functionIS3_EE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !62    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %.val, align 8, !tbaa !60
  store i32 %.sroa.01.0.copyload.i.i.i, ptr %2, align 8, !tbaa !60
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.a, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25, !noalias !160
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26, !noalias !160 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50, !noalias !160 ; 3 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !50, !alias.scope !160
  %i.l = icmp ult i32 %i.k, 65
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br i1 %i.l, label %_ZNK4llvm7GVScale6getSrcEv.exit.thread.i.i.i, label %_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i

_ZNK4llvm7GVScale6getSrcEv.exit.thread.i.i.i:     ; preds = %bb.a
  %i.n = load i64, ptr %i.h, align 8, !tbaa !26, !noalias !160 ; 2 uses
  store i64 %i.n, ptr %4, align 8, !tbaa !26, !alias.scope !160
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.k, ptr %i.o, align 8, !tbaa !50, !alias.scope !161
  br label %bb.b

_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i:            ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.h) #10
  %.pr.i.i.i = load i32, ptr %i.i, align 8, !tbaa !50, !noalias !162 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %.pr.i.i.i, ptr %i.p, align 8, !tbaa !50, !alias.scope !162
  %i.q = icmp ult i32 %.pr.i.i.i, 65
  br i1 %i.q, label %_ZNK4llvm7GVScale6getSrcEv.exit._crit_edge.i.i.i, label %bb.c

_ZNK4llvm7GVScale6getSrcEv.exit._crit_edge.i.i.i: ; preds = %_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i
  %.pre.i.i.i = load i64, ptr %4, align 8, !tbaa !26, !noalias !162
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm7GVScale6getSrcEv.exit._crit_edge.i.i.i, %_ZNK4llvm7GVScale6getSrcEv.exit.thread.i.i.i
  %i.r = phi i64 [ %i.n, %_ZNK4llvm7GVScale6getSrcEv.exit.thread.i.i.i ], [ %.pre.i.i.i, %_ZNK4llvm7GVScale6getSrcEv.exit._crit_edge.i.i.i ]
  %i.s = phi ptr [ %i.o, %_ZNK4llvm7GVScale6getSrcEv.exit.thread.i.i.i ], [ %i.p, %_ZNK4llvm7GVScale6getSrcEv.exit._crit_edge.i.i.i ]
  store i64 %i.r, ptr %3, align 8, !tbaa !26, !alias.scope !162
  br label %_ZNK4llvm5APInt3shlERKS0_.exit.i.i.i

bb.c:                                             ; preds = %_ZNK4llvm7GVScale6getSrcEv.exit.i.i.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) #10
  br label %_ZNK4llvm5APInt3shlERKS0_.exit.i.i.i

_ZNK4llvm5APInt3shlERKS0_.exit.i.i.i:             ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %i.s, %bb.b ], [ %i.p, %bb.c ]
  %i.u = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntlSERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.m) #10 ; 0 uses
  %i.v = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11buildVScaleERKNS_5DstOpERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #10 ; 0 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !50
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %bb.d, label %_ZN4llvm5APIntD2Ev.exit.i.i.i

bb.d:                                             ; preds = %_ZNK4llvm5APInt3shlERKS0_.exit.i.i.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN4llvm5APIntD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.y) #12
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i:                    ; preds = %bb.e, %bb.d, %_ZNK4llvm5APInt3shlERKS0_.exit.i.i.i
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !50
  %i.ab = icmp ugt i32 %i.aa, 64
  br i1 %i.ab, label %bb.f, label %"_ZSt10__invoke_rIvRZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS0_14MachineOperandERSt8functionIFvRNS0_16MachineIRBuilderEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

bb.f:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i
  %i.ac = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %"_ZSt10__invoke_rIvRZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS0_14MachineOperandERSt8functionIFvRNS0_16MachineIRBuilderEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #12
  br label %"_ZSt10__invoke_rIvRZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS0_14MachineOperandERSt8functionIFvRNS0_16MachineIRBuilderEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

"_ZSt10__invoke_rIvRZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS0_14MachineOperandERSt8functionIFvRNS0_16MachineIRBuilderEEEE3$_0JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm16MachineIRBuilderEEZNKS0_14CombinerHelper16matchShlOfVScaleERKNS0_14MachineOperandERSt8functionIS3_EE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 5 uses
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.h
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %.val, ptr %0, align 8, !tbaa !62
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !95
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #13 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.val, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !45
  %i.f = load i8, ptr %i.d, align 8, !tbaa !45, !range !48, !noundef !39
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !50
  %i.k = icmp ult i32 %i.j, 65
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.c, align 8, !tbaa !26
  store i64 %i.l, ptr %i.b, align 8, !tbaa !26
  br label %_ZNSt22_Optional_payload_baseIN4llvm5APIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c) #10
  br label %_ZNSt22_Optional_payload_baseIN4llvm5APIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN4llvm5APIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store i8 1, ptr %i.e, align 8, !tbaa !45
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i": ; preds = %_ZNSt22_Optional_payload_baseIN4llvm5APIntEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i.i.i.i, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !62
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.h:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !62 ; 5 uses
  %i.m = icmp eq ptr %.val6.i, null
  br i1 %i.m, label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !45, !range !48, !noundef !39
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp ugt i32 %i.r, 64
  %or.cond.i.i.i.i.i.i = select i1 %i.p, i1 %i.s, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.j, label %"_ZZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit.i.i"

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %"_ZZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #12
  br label %"_ZZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit.i.i"

"_ZZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit.i.i": ; preds = %bb.k, %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 40) #12
  br label %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEEN3$_0D2Ev.exit.i.i", %bb.h, %"_ZNSt14_Function_base13_Base_managerIZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS1_14MachineOperandERSt8functionIFvRNS1_16MachineIRBuilderEEEE3$_0E15_M_init_functorIRKSC_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntlSERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { builtin nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN4llvm6detail13PunnedPointerIPNS_15ilist_node_baseILb1EvEEEE", !4, i64 0}
!9 = !{!"_ZTSN4llvm14PointerIntPairIPNS_15ilist_node_baseILb1EvEELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb1EvEE", !10, i64 0}
!12 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb1EvEELb1EEE", !9, i64 0, !11, i64 8}
!13 = !{!"_ZTSN4llvm15ilist_node_baseILb1EvEE", !12, i64 0}
!14 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !13, i64 0}
!15 = !{!"_ZTSN4llvm10ilist_nodeINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !14, i64 0}
!16 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_12MachineInstrENS_17MachineBasicBlockEJNS_23ilist_sentinel_trackingILb1EEEEEE", !15, i64 0}
!17 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !10, i64 0}
!18 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !10, i64 0}
!19 = !{!"p1 _ZTSN4llvm14MachineOperandE", !10, i64 0}
!20 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EE8CapacityE", !4, i64 0}
!21 = !{!"_ZTSN4llvm14PointerSumTypeINS_12MachineInstr20ExtraInfoInlineKindsEJNS_20PointerSumTypeMemberILm0EPNS_17MachineMemOperandENS_21PointerLikeTypeTraitsIS5_EEEENS3_ILm1EPNS_8MCSymbolENS6_ISA_EEEENS3_ILm2ESA_SB_EENS3_ILm3EPNS1_9ExtraInfoENS6_ISF_EEEEEEE", !4, i64 0}
!22 = !{!"p1 _ZTSN4llvm10DILocationE", !10, i64 0}
!23 = !{!"_ZTSN4llvm8DebugLocE", !22, i64 0}
!24 = !{!"_ZTSN4llvm12MachineInstrE", !16, i64 0, !17, i64 16, !18, i64 24, !19, i64 32, !5, i64 40, !20, i64 43, !5, i64 44, !4, i64 48, !5, i64 52, !5, i64 56, !21, i64 64, !23, i64 72}
!25 = !{!24, !19, i64 32}
!26 = !{!4, !4, i64 0}
!27 = !{!"p1 _ZTSN4llvm16MachineIRBuilderE", !10, i64 0}
!28 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !10, i64 0}
!29 = !{!"p1 _ZTSN4llvm19GISelChangeObserverE", !10, i64 0}
!30 = !{!"p1 _ZTSN4llvm18GISelValueTrackingE", !10, i64 0}
!31 = !{!"p1 _ZTSN4llvm20MachineDominatorTreeE", !10, i64 0}
!32 = !{!"bool", !4, i64 0}
!33 = !{!"p1 _ZTSN4llvm13LegalizerInfoE", !10, i64 0}
!34 = !{!"p1 _ZTSN4llvm15TargetInstrInfoE", !10, i64 0}
!35 = !{!"p1 _ZTSN4llvm16RegisterBankInfoE", !10, i64 0}
!36 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !10, i64 0}
!37 = !{!"_ZTSN4llvm14CombinerHelperE", !27, i64 0, !28, i64 8, !29, i64 16, !30, i64 24, !31, i64 32, !32, i64 40, !33, i64 48, !34, i64 56, !35, i64 64, !36, i64 72}
!38 = !{!37, !28, i64 8}
!39 = !{}
!40 = !{i64 8}
!41 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !5, i64 8, !5, i64 12}
!42 = !{!41, !5, i64 8}
!43 = !{!41, !10, i64 0}
!44 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm5APIntEE", !4, i64 0, !32, i64 16}
!45 = !{!44, !32, i64 16}
!46 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm12ValueAndVRegEE", !4, i64 0, !32, i64 24}
!47 = !{!46, !32, i64 24}
!48 = !{i8 0, i8 2}
!49 = !{!"_ZTSN4llvm5APIntE", !4, i64 0, !5, i64 8}
!50 = !{!49, !5, i64 8}
!51 = !{!"p1 _ZTSN4llvm3LLTE", !10, i64 0}
!52 = !{!"long", !4, i64 0}
!53 = !{!"_ZTSN4llvm8ArrayRefINS_3LLTEEE", !51, i64 0, !52, i64 8}
!54 = !{!"p1 _ZTSN4llvm13LegalityQuery7MemDescE", !10, i64 0}
!55 = !{!"_ZTSN4llvm8ArrayRefINS_13LegalityQuery7MemDescEEE", !54, i64 0, !52, i64 8}
!56 = !{!"_ZTSN4llvm13LegalityQueryE", !5, i64 0, !53, i64 8, !55, i64 24}
!57 = !{!56, !5, i64 0}
!58 = !{!51, !51, i64 0}
!59 = !{!52, !52, i64 0}
!60 = !{!5, !5, i64 0}
!61 = !{i64 0, i64 16, !26}
!62 = !{!10, !10, i64 0}
!63 = !{!24, !5, i64 52}
!64 = !{!"p1 _ZTSN4llvm20GInsertVectorElementE", !10, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"vtable pointer", !3, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"_ZTSN4llvm8RegisterE", !5, i64 0}
!69 = !{!"p1 _ZTSN4llvm12GBuildVectorE", !10, i64 0}
!70 = !{!"_ZTSZNK4llvm14CombinerHelper40matchExtractVectorElementWithBuildVectorERKNS_12MachineInstrES3_RSt8functionIFvRNS_16MachineIRBuilderEEEE3$_0", !68, i64 0, !69, i64 8, !49, i64 16}
!71 = !{!70, !69, i64 8}
!72 = !{!"p1 _ZTSN4llvm17GBuildVectorTruncE", !10, i64 0}
!73 = !{!"_ZTSSt17_Optional_payloadIN4llvm12ValueAndVRegELb1ELb0ELb0EE", !46, i64 0}
!74 = !{!"_ZTSSt17_Optional_payloadIN4llvm12ValueAndVRegELb0ELb0ELb0EE", !73, i64 0}
!75 = !{!"_ZTSSt14_Optional_baseIN4llvm12ValueAndVRegELb0ELb0EE", !74, i64 0}
!76 = !{!"_ZTSSt8optionalIN4llvm12ValueAndVRegEE", !75, i64 0}
!77 = !{!"_ZTSZNK4llvm14CombinerHelper45matchExtractVectorElementWithBuildVectorTruncERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEE3$_0", !68, i64 0, !72, i64 8, !76, i64 16}
!78 = !{!77, !72, i64 8}
!79 = !{!"p1 _ZTSN4llvm7GVScaleE", !10, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"_ZTSSt17_Optional_payloadIN4llvm5APIntELb1ELb0ELb0EE", !44, i64 0}
!82 = !{!"_ZTSSt17_Optional_payloadIN4llvm5APIntELb0ELb0ELb0EE", !81, i64 0}
!83 = !{!"_ZTSSt14_Optional_baseIN4llvm5APIntELb0ELb0EE", !82, i64 0}
!84 = !{!"_ZTSSt8optionalIN4llvm5APIntEE", !83, i64 0}
!85 = !{!"_ZTSZNK4llvm14CombinerHelper16matchMulOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEE3$_0", !68, i64 0, !79, i64 8, !84, i64 16}
!86 = !{!85, !79, i64 8}
!87 = !{!"p1 _ZTSN4llvm4GSubE", !10, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"_ZTSZNK4llvm14CombinerHelper16matchShlOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEE3$_0", !68, i64 0, !79, i64 8, !84, i64 16}
!90 = !{!89, !79, i64 8}
!91 = !{!"_ZTSN4llvm5DstOp7DstTypeE", !4, i64 0}
!92 = !{!"_ZTSN4llvm5DstOpE", !4, i64 0, !91, i64 16}
!93 = !{!92, !91, i64 16}
!94 = !{!"p1 _ZTSSt9type_info", !10, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSN4llvm5SrcOp7SrcTypeE", !4, i64 0}
!97 = !{!"_ZTSN4llvm5SrcOpE", !4, i64 0, !96, i64 16}
!98 = !{!97, !96, i64 16}
!99 = !{!"_ZTSN4llvm3LLT4KindE", !4, i64 0}
!100 = !{!"_ZTSN4llvm3LLTE", !52, i64 0, !99, i64 7}
!101 = distinct !{null, null}
!102 = distinct !{null, null}
!103 = distinct !{null, null}
!104 = distinct !{null, null}
!105 = distinct !{null, null}
!106 = distinct !{null, null}
!107 = !{!"p1 int", !10, i64 0}
!108 = !{!107, !107, i64 0}
!109 = distinct !{null, null}
!110 = distinct !{null, null}
!111 = distinct !{null, null}
!112 = distinct !{null, null}
!113 = distinct !{null, null}
!114 = !{!"_ZTSZNK4llvm14CombinerHelper45matchExtractVectorElementWithDifferentIndicesERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEE3$_0", !68, i64 0, !64, i64 8, !68, i64 16}
!115 = !{!114, !64, i64 8}
!116 = !{i64 0, i64 4, !60, i64 8, i64 8, !65, i64 16, i64 4, !60}
!117 = !{!"_ZTSZNK4llvm14CombinerHelper42matchExtractVectorElementWithShuffleVectorERKNS_12MachineInstrES3_RSt8functionIFvRNS_16MachineIRBuilderEEEE3$_1", !100, i64 0, !5, i64 8, !68, i64 12, !68, i64 16}
!118 = !{!117, !5, i64 8}
!119 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !10, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"p1 _ZTSN4llvm12MachineInstrE", !10, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{i64 0, i64 8, !26, i64 8, i64 4, !60, i64 12, i64 4, !60, i64 16, i64 4, !60}
!124 = distinct !{!124, i1 false, !"_ZNK4llvm7GVScale6getSrcEv"}
!125 = distinct !{!125, !124, !"_ZNK4llvm7GVScale6getSrcEv: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZNK4llvm7GVScale6getSrcEv"}
!127 = distinct !{!127, !126, !"_ZNK4llvm7GVScale6getSrcEv: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZN4llvmplERKNS_5APIntEOS0_"}
!129 = distinct !{!129, !128, !"_ZN4llvmplERKNS_5APIntEOS0_: argument 0"}
!130 = !{!"_ZTSZNK4llvm14CombinerHelper16matchAddOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEE3$_0", !68, i64 0, !79, i64 8, !79, i64 16}
!131 = !{!130, !79, i64 8}
!132 = !{!125}
!133 = !{!130, !79, i64 16}
!134 = !{!127}
!135 = !{!129}
!136 = !{i64 0, i64 4, !60, i64 8, i64 8, !80, i64 16, i64 8, !80}
!137 = distinct !{!137, i1 false, !"_ZNK4llvm7GVScale6getSrcEv"}
!138 = distinct !{!138, !137, !"_ZNK4llvm7GVScale6getSrcEv: argument 0"}
!139 = !{!138}
!140 = distinct !{!140, i1 false, !"_ZNK4llvm7GVScale6getSrcEv"}
!141 = distinct !{!141, !140, !"_ZNK4llvm7GVScale6getSrcEv: argument 0"}
!142 = distinct !{!142, i1 false, !"_ZN4llvmngENS_5APIntE"}
!143 = distinct !{!143, !142, !"_ZN4llvmngENS_5APIntE: argument 0"}
!144 = distinct !{null, null, null, null}
!145 = !{!"_ZTSZNK4llvm14CombinerHelper16matchSubOfVScaleERKNS_14MachineOperandERSt8functionIFvRNS_16MachineIRBuilderEEEE3$_0", !100, i64 0, !79, i64 8, !68, i64 16, !87, i64 24}
!146 = !{!145, !79, i64 8}
!147 = !{!141}
!148 = !{!143}
!149 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!150 = !{!145, !87, i64 24}
!151 = !{!24, !5, i64 44}
!152 = !{!91, !91, i64 0}
!153 = !{!96, !96, i64 0}
!154 = !{i64 0, i64 8, !26, i64 8, i64 8, !80, i64 16, i64 4, !60, i64 24, i64 8, !88}
!155 = distinct !{!155, i1 false, !"_ZNK4llvm7GVScale6getSrcEv"}
!156 = distinct !{!156, !155, !"_ZNK4llvm7GVScale6getSrcEv: argument 0"}
!157 = distinct !{!157, i1 false, !"_ZNK4llvm5APInt3shlERKS0_"}
!158 = distinct !{!158, !157, !"_ZNK4llvm5APInt3shlERKS0_: argument 0:thread"}
!159 = distinct !{!159, !157, !"_ZNK4llvm5APInt3shlERKS0_: argument 0"}
!160 = !{!156}
!161 = !{!158}
!162 = !{!159}
end_hunk_0
