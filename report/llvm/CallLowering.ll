Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CallLowering?download=true
inline.NumInlined: 2502
inline.NumDeleted: 930
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm12CallLowering17handleAssignmentsERNS0_12ValueHandlerERNS_15SmallVectorImplINS0_7ArgInfoEEERNS_7CCStateERNS3_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEE:bb.a

bb.az:                                            ; preds = %bb.ay
  call void @abort() #18
  unreachable

_ZNK4llvm11CCValAssign9getLocRegEv.exit:          ; preds = %bb.ay
  %.sroa.0.0.copyload.i330 = load i32, ptr %i.ga, align 8, !tbaa !234
  %i.lx = load ptr, ptr %1, align 8, !tbaa !222
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(25) %1, i32 %.sroa.091.0, i32 %.sroa.0.0.copyload.i330, ptr noundef nonnull align 8 dereferenceable(26) %i.ga, i64 %.sroa.0371.0.copyload, i64 %.sroa.14.0.copyload) #17
  br label %bb.bf

.thread:                                          ; preds = %bb.au, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(26) %i.ga, i64 26, i1 false)
  %i.ma = load i32, ptr %i.k, align 8, !tbaa !85  ; 2 uses
  %i.mb = load i32, ptr %i.l, align 4, !tbaa !86
  %.not.i331 = icmp ult i32 %i.ma, %i.mb
  br i1 %.not.i331, label %bb.be, label %bb.ba, !prof !230

bb.ba:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.mc = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.j, i64 noundef 0, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17 ; 3 uses
  %i.md = load i32, ptr %i.k, align 8, !tbaa !85
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.mc, i64 %i.me ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, i8 0, i64 32, i1 false)
  %i.mh = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 6 uses
  store ptr %1, ptr %i.mh, align 16
  %.sroa.5.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 %.sroa.091.0, ptr %.sroa.5.0..sroa_idx347, align 8
  %.sroa.6.0..sroa_idx349 = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(30) %.sroa.6.0..sroa_idx349, ptr noundef nonnull align 4 dereferenceable(30) %.sroa.6, i64 30, i1 false)
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx350.sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 48
  store i64 %.sroa.0371.0.copyload, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx350.sroa_idx, align 16
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx350.sroa_idx = getelementptr inbounds nuw i8, ptr %i.mh, i64 56
  store i64 %.sroa.14.0.copyload, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx350.sroa_idx, align 8
  store ptr %i.mh, ptr %i.mf, align 8, !tbaa !341
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvvEZNK4llvm12CallLowering17handleAssignmentsERNS2_12ValueHandlerERNS1_15SmallVectorImplINS2_7ArgInfoEEERNS1_7CCStateERNS5_INS1_11CCValAssignEEERNS1_16MachineIRBuilderENS1_8ArrayRefINS1_8RegisterEEEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvvEZNK4llvm12CallLowering17handleAssignmentsERNS2_12ValueHandlerERNS1_15SmallVectorImplINS2_7ArgInfoEEERNS1_7CCStateERNS5_INS1_11CCValAssignEEERNS1_16MachineIRBuilderENS1_8ArrayRefINS1_8RegisterEEEE3$_0E9_M_invokeERKSt9_Any_data">, ptr %i.mg, align 8, !tbaa !341
  %i.mi = load ptr, ptr %7, align 8, !tbaa !84    ; 3 uses
  %i.mj = load i32, ptr %i.k, align 8, !tbaa !85  ; 2 uses
  %i.mk = zext i32 %i.mj to i64
  %.idx.i.i = shl nuw nsw i64 %i.mk, 5
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 %.idx.i.i
  %.not7.i.i.i.i.i.i.i = icmp eq i32 %i.mj, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ba, %_ZSt10_ConstructISt8functionIFvvEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.mu, %_ZSt10_ConstructISt8functionIFvvEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.mc, %bb.ba ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.mt, %_ZSt10_ConstructISt8functionIFvvEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.mi, %bb.ba ] ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !347
  store ptr %i.mo, ptr %i.mm, align 8, !tbaa !347
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !256
  %.not.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt8functionIFvvEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !348
  %i.ms = load ptr, ptr %i.mp, align 8, !tbaa !256
  store ptr %i.ms, ptr %i.mr, align 8, !tbaa !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, i8 0, i64 16, i1 false)
  br label %_ZSt10_ConstructISt8functionIFvvEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt8functionIFvvEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mt, %i.ml
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i: ; preds = %_ZSt10_ConstructISt8functionIFvvEEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %.pre.i.i338 = load ptr, ptr %7, align 8, !tbaa !84 ; 3 uses
  %.pre3.i.i = load i32, ptr %i.k, align 8, !tbaa !85 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %.pre3.i.i, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i
  %i.mv = zext i32 %.pre3.i.i to i64
  %.idx2.i.i = shl nuw nsw i64 %i.mv, 5
  %i.mw = getelementptr inbounds nuw i8, ptr %.pre.i.i338, i64 %.idx2.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.mx, %_ZNSt14_Function_baseD2Ev.exit.i.i.i ], [ %i.mw, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 4 uses
  %i.my = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.na = call noundef zeroext i1 %i.mz(ptr noundef nonnull align 8 dereferenceable(32) %i.mx, ptr noundef nonnull align 8 dereferenceable(32) %i.mx, i32 noundef 3) #17, !inline_history !433 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.bc, %.lr.ph.i.i.i
  %.not.i.i.i339 = icmp eq ptr %.pre.i.i338, %i.mx
  br i1 %.not.i.i.i339, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %.pre.i340 = load ptr, ptr %7, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.loopexit.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i, %bb.ba
  %i.nb = phi ptr [ %.pre.i340, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.loopexit.i ], [ %i.mi, %bb.ba ], [ %.pre.i.i338, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i ] ; 2 uses
  %i.nc = load i64, ptr %i.a, align 8, !tbaa !229
  %i.nd = icmp eq ptr %i.nb, %i.j
  br i1 %i.nd, label %"_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18growAndEmplaceBackIJZNKS_12CallLowering17handleAssignmentsERNS6_12ValueHandlerERNS_15SmallVectorImplINS6_7ArgInfoEEERNS_7CCStateERNS9_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEEE3$_0EEERS3_DpOT_.exit", label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.i
  call void @free(ptr noundef %i.nb) #17
  br label %"_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18growAndEmplaceBackIJZNKS_12CallLowering17handleAssignmentsERNS6_12ValueHandlerERNS_15SmallVectorImplINS6_7ArgInfoEEERNS_7CCStateERNS9_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEEE3$_0EEERS3_DpOT_.exit"

"_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18growAndEmplaceBackIJZNKS_12CallLowering17handleAssignmentsERNS6_12ValueHandlerERNS_15SmallVectorImplINS6_7ArgInfoEEERNS_7CCStateERNS9_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEEE3$_0EEERS3_DpOT_.exit": ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE19moveElementsForGrowEPS3_.exit.i, %bb.bd
  store ptr %i.mc, ptr %7, align 8, !tbaa !84
  %i.ne = trunc i64 %i.nc to i32
  store i32 %i.ne, ptr %i.l, align 4, !tbaa !86
  %i.nf = load i32, ptr %i.k, align 8, !tbaa !85
  %i.ng = add i32 %i.nf, 1
  store i32 %i.ng, ptr %i.k, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %"_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJZNKS_12CallLowering17handleAssignmentsERNS6_12ValueHandlerERNS0_INS6_7ArgInfoEEERNS_7CCStateERNS0_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEEE3$_0EEERS3_DpOT_.exit"

bb.be:                                            ; preds = %.thread
  %i.nh = zext i32 %i.ma to i64
  %i.ni = load ptr, ptr %7, align 8, !tbaa !84
  %i.nj = getelementptr inbounds nuw [32 x i8], ptr %i.ni, i64 %i.nh ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nj, i8 0, i64 32, i1 false)
  %i.nl = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 6 uses
  store ptr %1, ptr %i.nl, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store i32 %.sroa.091.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(30) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(30) %.sroa.6, i64 30, i1 false)
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  store i64 %.sroa.0371.0.copyload, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 16
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.nl, i64 56
  store i64 %.sroa.14.0.copyload, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  store ptr %i.nl, ptr %i.nj, align 8, !tbaa !341
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvvEZNK4llvm12CallLowering17handleAssignmentsERNS2_12ValueHandlerERNS1_15SmallVectorImplINS2_7ArgInfoEEERNS1_7CCStateERNS5_INS1_11CCValAssignEEERNS1_16MachineIRBuilderENS1_8ArrayRefINS1_8RegisterEEEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvvEZNK4llvm12CallLowering17handleAssignmentsERNS2_12ValueHandlerERNS1_15SmallVectorImplINS2_7ArgInfoEEERNS1_7CCStateERNS5_INS1_11CCValAssignEEERNS1_16MachineIRBuilderENS1_8ArrayRefINS1_8RegisterEEEE3$_0E9_M_invokeERKSt9_Any_data">, ptr %i.nk, align 8, !tbaa !341
  %i.nm = load i32, ptr %i.k, align 8, !tbaa !85
  %i.nn = add i32 %i.nm, 1
  store i32 %i.nn, ptr %i.k, align 8, !tbaa !85
  br label %"_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJZNKS_12CallLowering17handleAssignmentsERNS6_12ValueHandlerERNS0_INS6_7ArgInfoEEERNS_7CCStateERNS0_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEEE3$_0EEERS3_DpOT_.exit"

"_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJZNKS_12CallLowering17handleAssignmentsERNS6_12ValueHandlerERNS0_INS6_7ArgInfoEEERNS_7CCStateERNS0_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEEE3$_0EEERS3_DpOT_.exit": ; preds = %"_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE18growAndEmplaceBackIJZNKS_12CallLowering17handleAssignmentsERNS6_12ValueHandlerERNS_15SmallVectorImplINS6_7ArgInfoEEERNS_7CCStateERNS9_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEEE3$_0EEERS3_DpOT_.exit", %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.as, %_ZNK4llvm11CCValAssign15getLocMemOffsetEv.exit315, %_ZNK4llvm11CCValAssign9getLocRegEv.exit, %"_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJZNKS_12CallLowering17handleAssignmentsERNS6_12ValueHandlerERNS0_INS6_7ArgInfoEEERNS_7CCStateERNS0_INS_11CCValAssignEEERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEEE3$_0EEERS3_DpOT_.exit", %bb.aw, %bb.aj
  %i.no = load i8, ptr %i.ge, align 4
  %i.np = and i8 %i.no, 126
  %i.nq = icmp eq i8 %i.np, 22
  br i1 %i.nq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.nr = load i8, ptr %i.m, align 8, !tbaa !438, !range !223, !noundef !216
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %.thread406, label %bb.bh

.thread406:                                       ; preds = %bb.bg
  %i.nt = load ptr, ptr %2, align 8, !tbaa !84
  %i.nu = getelementptr inbounds nuw [160 x i8], ptr %i.nt, i64 %indvars.iv464
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !83
  %i.nw = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.g, ptr noundef %i.nv) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  call void @_ZN4llvm18MachinePointerInfo15getUnknownStackERNS_15MachineFunctionE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %25, ptr noundef nonnull align 8 dereferenceable(1065) %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.nx = load ptr, ptr %2, align 8, !tbaa !84
  %i.ny = getelementptr inbounds nuw [160 x i8], ptr %i.nx, i64 %indvars.iv464 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 120
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !84
  %.sroa.014.0.copyload = load i32, ptr %i.oa, align 4, !tbaa !234
  store i32 %.sroa.014.0.copyload, ptr %26, align 8, !tbaa !234
  store i32 1, ptr %i.ab, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 88
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !84
  %.sroa.013.0.copyload = load i32, ptr %i.oc, align 4, !tbaa !234
  store i32 %.sroa.013.0.copyload, ptr %27, align 8, !tbaa !234
  store i32 0, ptr %i.ac, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, i8 0, i64 40, i1 false)
  %i.od = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder9buildLoadERKNS_5DstOpERKNS_5SrcOpENS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(20) %26, ptr noundef nonnull align 8 dereferenceable(20) %27, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %25, i8 %i.nw, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %28) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  br label %.loopexit425

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %exitcond463.not = icmp eq i64 %indvars.iv.next460, %i.ct
  %or.cond506 = select i1 %.1279, i1 true, i1 %exitcond463.not
  br i1 %or.cond506, label %.loopexit422.loopexit, label %bb.w, !llvm.loop !434

.loopexit422.loopexit:                            ; preds = %bb.bh
  %.ph = xor i1 %.1279, true
  br label %.loopexit425

.loopexit425:                                     ; preds = %.loopexit422.loopexit, %_ZNK4llvm18TargetLoweringBase24hasBigEndianPartOrderingENS_3EVTERKNS_10DataLayoutE.exit, %.thread406
  %i.oe = phi i1 [ false, %.thread406 ], [ true, %_ZNK4llvm18TargetLoweringBase24hasBigEndianPartOrderingENS_3EVTERKNS_10DataLayoutE.exit ], [ %.ph, %.loopexit422.loopexit ]
  %i.of = load i8, ptr %i.m, align 8, !tbaa !438, !range !223, !noundef !216
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %bb.bi, label %.thread408

bb.bi:                                            ; preds = %.loopexit425
  %i.oh = load i16, ptr %11, align 8, !tbaa !451
  %.not.i333 = icmp ne i16 %i.oh, %.sroa.0.0.copyload.i293
  %i.oi = load ptr, ptr %i.o, align 8
  %30 = icmp ne ptr %i.oi, null
  %.not424 = select i1 %.not.i333, i1 true, i1 %30
  %or.cond.not = and i1 %i.oe, %.not424
  br i1 %or.cond.not, label %bb.bj, label %.thread408

bb.bj:                                            ; preds = %bb.bi
  %i.oj = load ptr, ptr %2, align 8, !tbaa !84
  %i.ok = getelementptr inbounds nuw [160 x i8], ptr %i.oj, i64 %indvars.iv464 ; 5 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 120
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !84
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 128
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !85
  %i.op = zext i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 88
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !84
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 96
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !85
  %i.ou = zext i32 %i.ot to i64
  %.sroa.09.0.copyload = load i64, ptr %12, align 8, !tbaa !236
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %i.ow, i64 16, i1 false), !tbaa.struct !340
  call void @_ZN4llvm12CallLowering17buildCopyFromRegsERNS_16MachineIRBuilderENS_8ArrayRefINS_8RegisterEEES5_NS_3LLTES6_NS_3ISD10ArgFlagsTyE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr %i.om, i64 %i.op, ptr %i.or, i64 %i.ou, i64 %.sroa.09.0.copyload, i64 %i.bp, ptr noundef nonnull byval(%"struct.llvm::ISD::ArgFlagsTy") align 8 %29)
  br label %.thread408

.thread408:                                       ; preds = %.loopexit425, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.thread415

bb.bk:                                            ; preds = %bb.h, %_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJRS3_EEES6_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br i1 %.not290.not, label %.loopexit, label %.thread415

.thread415:                                       ; preds = %_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJRS3_EEES6_DpOT_.exit.thread, %bb.bk, %.thread408
  %.pn.in = phi i32 [ %i.cs, %.thread408 ], [ %i.au, %bb.bk ], [ %i.au, %_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJRS3_EEES6_DpOT_.exit.thread ]
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %i.ox = add i32 %.0270447, %.pn.in
  %.not285 = icmp eq i64 %indvars.iv.next465, %i.af
  br i1 %.not285, label %.critedge, label %bb.b, !llvm.loop !435

.critedge:                                        ; preds = %.thread415
  %.pre470 = load ptr, ptr %7, align 8, !tbaa !84 ; 2 uses
  %.pre471 = load i32, ptr %i.k, align 8, !tbaa !85 ; 2 uses
  %i.oy = zext i32 %.pre471 to i64
  %.idx456 = shl nuw nsw i64 %i.oy, 5
  %i.oz = getelementptr inbounds nuw i8, ptr %.pre470, i64 %.idx456
  %.not291452 = icmp eq i32 %.pre471, 0
  br i1 %.not291452, label %.loopexit.thread, label %.lr.ph454

.lr.ph454:                                        ; preds = %.critedge, %_ZNKSt8functionIFvvEEclEv.exit
  %.0268453 = phi ptr [ %i.pe, %_ZNKSt8functionIFvvEEclEv.exit ], [ %.pre470, %.critedge ] ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.0268453, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !256
  %.not.i.i334 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i334, label %bb.bl, label %_ZNKSt8functionIFvvEEclEv.exit

bb.bl:                                            ; preds = %.lr.ph454
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %.lr.ph454
  %i.pc = getelementptr inbounds nuw i8, ptr %.0268453, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !347
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(32) %.0268453) #17, !inline_history !436
  %i.pe = getelementptr inbounds nuw i8, ptr %.0268453, i64 32 ; 2 uses
  %.not291 = icmp eq ptr %i.pe, %i.oz
  br i1 %.not291, label %.loopexit, label %.lr.ph454

.loopexit.thread:                                 ; preds = %.critedge, %bb.a
  %i.pf = load ptr, ptr %7, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.i

.loopexit:                                        ; preds = %bb.bk, %_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJRS3_EEES6_DpOT_.exit.thread, %_ZNKSt8functionIFvvEEclEv.exit
  %.not285439.ph = phi i1 [ true, %_ZNKSt8functionIFvvEEclEv.exit ], [ false, %_ZN4llvm15SmallVectorImplISt8functionIFvvEEE12emplace_backIJRS3_EEES6_DpOT_.exit.thread ], [ false, %bb.bk ] ; 2 uses
  %.pr500 = load i32, ptr %i.k, align 8, !tbaa !85 ; 2 uses
  %i.pg = load ptr, ptr %7, align 8, !tbaa !84    ; 3 uses
  %.not4.i.i335 = icmp eq i32 %.pr500, 0
  br i1 %.not4.i.i335, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.loopexit
  %i.ph = zext i32 %.pr500 to i64
  %.idx.i = shl nuw nsw i64 %i.ph, 5
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.pj, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.pi, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.pj = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 4 uses
  %i.pk = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.i336 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i.i336, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i
  %i.pm = call noundef zeroext i1 %i.pl(ptr noundef nonnull align 8 dereferenceable(32) %i.pj, ptr noundef nonnull align 8 dereferenceable(32) %i.pj, i32 noundef 3) #17, !inline_history !437 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.bm, %.lr.ph.i.i
  %.not.i.i337 = icmp eq ptr %i.pg, %i.pj
  br i1 %.not.i.i337, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !5

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !84
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.i: ; preds = %.loopexit.thread, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, %.loopexit
  %.not285439503 = phi i1 [ %.not285439.ph, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i ], [ %.not285439.ph, %.loopexit ], [ true, %.loopexit.thread ]
  %i.pn = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i ], [ %i.pg, %.loopexit ], [ %i.pf, %.loopexit.thread ] ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.j
  br i1 %i.po, label %_ZN4llvm11SmallVectorISt8functionIFvvEELj1EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.i
  call void @free(ptr noundef %i.pn) #17
  br label %_ZN4llvm11SmallVectorISt8functionIFvvEELj1EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFvvEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvvEELb0EE13destroy_rangeEPS3_S5_.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret i1 %.not285439503
}

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = and i32 %i.b, 255
  %i.d = icmp ne i32 %i.c, 15
  %.not.not40 = icmp eq ptr %2, null              ; 2 uses
  %.not.not = or i1 %.not.not40, %i.d
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.b, 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !222
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i16 %i.h(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, i32 noundef %i.e) #17
  %i.j = insertvalue { i16, ptr } poison, i16 %i.i, 0
  %i.k = insertvalue { i16, ptr } %i.j, ptr null, 1
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.l = and i32 %i.b, 254
  %spec.select.i.i.i.i.i.i.i.i = icmp ne i32 %i.l, 18
  %.not27.not = or i1 %.not.not40, %spec.select.i.i.i.i.i.i.i.i
  br i1 %.not27.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !453  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = and i32 %i.p, 255
  %i.r = icmp ne i32 %i.q, 15
  %.not2842 = icmp eq ptr %i.n, null
  %.not28 = or i1 %.not2842, %i.r
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i32 %i.p, 8
  %i.t = load ptr, ptr %0, align 8, !tbaa !222
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i16 %i.v(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, i32 noundef %i.s) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = tail call { i16, ptr } @_ZN4llvm3EVT6getEVTEPNS_4TypeEb(ptr noundef nonnull %i.n, i1 noundef zeroext false) #17 ; 2 uses
  %i.y = extractvalue { i16, ptr } %i.x, 0
  %i.z = extractvalue { i16, ptr } %i.x, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.7.0 = phi ptr [ %i.z, %bb.f ], [ null, %bb.e ]
  %.sroa.032.0 = phi i16 [ %i.y, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !267, !nonnull !216, !align !217
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !454 ; 3 uses
  %i.ad = load i32, ptr %i.a, align 8
  %i.ae = and i32 %i.ad, 255
  %.not = icmp eq i32 %i.ae, 19                   ; 2 uses
  %.sroa.2.0.insert.shift.i.i = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ac to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.032.0, i32 noundef %i.ac)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.032.0, i32 noundef %i.ac)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.04.0.i.i = phi i16 [ %i.af, %bb.h ], [ %i.ag, %bb.i ] ; 2 uses
  %.not.i = icmp eq i16 %.sroa.04.0.i.i, 0
  br i1 %.not.i, label %bb.j, label %bb.k

end_hunk_0
