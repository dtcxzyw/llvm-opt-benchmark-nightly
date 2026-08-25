Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMFixCortexA57AES1742098Pass?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_125ARMFixCortexA57AES174209820runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.h ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.v.i.i.i.i.i.i.i ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i, %i.bt
  br i1 %.not4.i.i.i.i, label %"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.thread.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i
  %.06.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i ], [ 0, %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i.i ]
  %.sroa.02.05.i.i.i.i = phi ptr [ %.sroa.02.2.i.i.i.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i, %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i.i ] ; 2 uses
  %i.bu = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERN4llvm15MachineFunctionERNS4_15ReachingDefInfoEPKNS4_19ARMBaseRegisterInfoERNS4_15SmallVectorImplINS3_16AESFixupLocationEEEE3$_0EclINS4_19SmallPtrSetIteratorIPNS4_12MachineInstrEEEEEbT_"(ptr %.sroa.02.05.i.i.i.i)
  %i.bv = zext i1 %i.bu to i64
  %spec.select.i.i.i.i = add nuw nsw i64 %.06.i.i.i.i, %i.bv ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i, i64 8 ; 3 uses
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.bp
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.02.1.i.i.i.i = phi ptr [ %i.bz, %bb.j ], [ %i.bw, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.bx = load ptr, ptr %.sroa.02.1.i.i.i.i, align 8, !tbaa !8
  %i.by = icmp eq ptr %i.bx, inttoptr (i64 -1 to ptr)
  br i1 %i.by, label %bb.j, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.bp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !310

_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.02.2.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.sroa.02.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bz, %bb.j ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.02.2.i.i.i.i, %i.bt
  br i1 %.not.i.i.i.i, label %"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i", label %.lr.ph.i.i.i.i, !llvm.loop !312

"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i": ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i
  %i.ca = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %i.ca, label %"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.thread.i", label %bb.m

"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.thread.i": ; preds = %"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i", %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i.i
  br i1 %i.bd, label %bb.k, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i

bb.k:                                             ; preds = %"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.thread.i"
  %i.cb = load ptr, ptr %i.ae, align 8, !tbaa !279 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !280 ; 2 uses
  %i.ce = load i32, ptr %i.ac, align 8, !tbaa !277 ; 3 uses
  %i.cf = load i32, ptr %i.ad, align 4, !tbaa !278
  %.not.i42.i = icmp ult i32 %i.ce, %i.cf
  br i1 %.not.i42.i, label %bb.l, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit83.i, !prof !305

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit83.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr %i.cb, ptr %10, align 8, !tbaa !306
  store ptr %i.cd, ptr %.sroa.17.0..sroa_idx29.i, align 8, !tbaa !307
  store ptr %.04082.i, ptr %.sroa.20.0..sroa_idx51.i, align 8, !tbaa !309
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull readonly align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cg = zext i32 %i.ce to i64
  %.val.i44.i = load ptr, ptr %13, align 8, !tbaa !276
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %.val.i44.i, i64 %i.cg ; 3 uses
  store ptr %i.cb, ptr %i.ch, align 8, !tbaa !306
  %.sroa.17.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cd, ptr %.sroa.17.0..sroa_idx19.i, align 8, !tbaa !307
  %.sroa.20.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %.04082.i, ptr %.sroa.20.0..sroa_idx41.i, align 8, !tbaa !309
  %i.ci = add nuw i32 %i.ce, 1
  store i32 %i.ci, ptr %i.ac, align 8, !tbaa !277
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i

bb.m:                                             ; preds = %"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i"
  %i.cj = icmp ne i64 %spec.select.i.i.i.i, 1
  %or.cond.i = or i1 %i.bd, %i.cj
  br i1 %or.cond.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ck = load i32, ptr %i.ac, align 8, !tbaa !277 ; 3 uses
  %i.cl = load i32, ptr %i.ad, align 4, !tbaa !278
  %.not.i47.i = icmp ult i32 %i.ck, %i.cl
  br i1 %.not.i47.i, label %bb.o, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit89.i, !prof !305

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit89.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr %.sroa.069.091.i, ptr %9, align 8, !tbaa !306
  store ptr %.sroa.066.086.i, ptr %.sroa.17.0..sroa_idx33.i, align 8, !tbaa !307
  store ptr %.04082.i, ptr %.sroa.20.0..sroa_idx55.i, align 8, !tbaa !309
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull readonly align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cm = zext i32 %i.ck to i64
  %.val.i49.i = load ptr, ptr %13, align 8, !tbaa !276
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %.val.i49.i, i64 %i.cm ; 3 uses
  store ptr %.sroa.069.091.i, ptr %i.cn, align 8, !tbaa !306
  %.sroa.17.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.066.086.i, ptr %.sroa.17.0..sroa_idx21.i, align 8, !tbaa !307
  %.sroa.20.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %.04082.i, ptr %.sroa.20.0..sroa_idx43.i, align 8, !tbaa !309
  %i.co = add nuw i32 %i.ck, 1
  store i32 %i.co, ptr %i.ac, align 8, !tbaa !277
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i

bb.p:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %12, align 8, !tbaa !299  ; 4 uses
  %i.cq = load i8, ptr %i.aj, align 8, !tbaa !303, !range !269, !noundef !148
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = load i32, ptr %i.ai, align 4
  %i.ct = load i32, ptr %i.ah, align 8
  %.v.v.i.i.i.i.i.i52.i = select i1 %i.cr, i32 %i.cs, i32 %i.ct ; 2 uses
  %.v.i.i.i.i.i.i53.i = zext i32 %.v.v.i.i.i.i.i.i52.i to i64 ; 2 uses
  %.idx.i.i.i.i54.i = shl nuw nsw i64 %.v.i.i.i.i.i.i53.i, 3
  %i.cu = getelementptr i8, ptr %i.cp, i64 %.idx.i.i.i.i54.i ; 4 uses
  %.not1.i.i.i.i.i.i.i.i55.i = icmp eq i32 %.v.v.i.i.i.i.i.i52.i, 0
  br i1 %.not1.i.i.i.i.i.i.i.i55.i, label %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i58.i, label %.lr.ph.i.i.i.i.i.i.i.i56.i

.lr.ph.i.i.i.i.i.i.i.i56.i:                       ; preds = %bb.p, %bb.q
  %.sroa.0.0.i.i.i.i.i57.i = phi ptr [ %i.cx, %bb.q ], [ %i.cp, %bb.p ] ; 3 uses
  %i.cv = load ptr, ptr %.sroa.0.0.i.i.i.i.i57.i, align 8, !tbaa !8
  %i.cw = icmp eq ptr %i.cv, inttoptr (i64 -1 to ptr)
  br i1 %i.cw, label %bb.q, label %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i58.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i56.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i57.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i60.i = icmp eq ptr %i.cx, %i.cu
  br i1 %.not.i.i.i.i.i.i.i.i60.i, label %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i58.i, label %.lr.ph.i.i.i.i.i.i.i.i56.i, !llvm.loop !310

_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i58.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i.i56.i, %bb.p
  %.sroa.0.1.i.i.i.i.i59.i = phi ptr [ %i.cp, %bb.p ], [ %.sroa.0.0.i.i.i.i.i57.i, %.lr.ph.i.i.i.i.i.i.i.i56.i ], [ %i.cu, %bb.q ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.v.i.i.i.i.i.i53.i ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i59.i, %i.cy
  br i1 %.not5.i.i.i.i.i, label %"_ZN4llvm7find_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i58.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i.i
  %.sroa.03.06.i.i.i.i.i = phi ptr [ %.sroa.03.2.i.i.i.i.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i59.i, %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i58.i ] ; 3 uses
  %i.cz = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERN4llvm15MachineFunctionERNS4_15ReachingDefInfoEPKNS4_19ARMBaseRegisterInfoERNS4_15SmallVectorImplINS3_16AESFixupLocationEEEE3$_0EclINS4_19SmallPtrSetIteratorIPNS4_12MachineInstrEEEEEbT_"(ptr %.sroa.03.06.i.i.i.i.i)
  br i1 %i.cz, label %"_ZN4llvm7find_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i", label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i, i64 8 ; 3 uses
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %i.da, %i.cu
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.r, %bb.s
  %.sroa.03.1.i.i.i.i.i = phi ptr [ %i.dd, %bb.s ], [ %i.da, %bb.r ] ; 3 uses
  %i.db = load ptr, ptr %.sroa.03.1.i.i.i.i.i, align 8, !tbaa !8
  %i.dc = icmp eq ptr %i.db, inttoptr (i64 -1 to ptr)
  br i1 %i.dc, label %bb.s, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cu
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !310

_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i, %bb.r
  %.sroa.03.2.i.i.i.i.i = phi ptr [ %i.da, %bb.r ], [ %i.dd, %bb.s ], [ %.sroa.03.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.03.2.i.i.i.i.i, %i.cy
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm7find_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !313

"_ZN4llvm7find_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i": ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i58.i
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i59.i, %_ZN4llvm9adl_beginIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS6_.exit.i58.i ], [ %.sroa.03.06.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.2.i.i.i.i.i, %_ZN4llvm19SmallPtrSetIteratorIPNS_12MachineInstrEEppEv.exit.i.i.i.i.i ]
  %i.de = load ptr, ptr %.sroa.03.0.lcssa.i.i.i.i.i, align 8, !tbaa !8, !nonnull !148, !noundef !148 ; 6 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.de, align 8
  %i.df = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i61.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i61.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %"_ZN4llvm7find_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i"
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 44
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !314
  %i.di = and i32 %i.dh, 8
  %.not34.i.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.dk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.de, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !280 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 44
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !314
  %i.dn = and i32 %i.dm, 8
  %.not3.i.i.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !315

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %"_ZN4llvm7find_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i"
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.de, %"_ZN4llvm7find_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.i" ], [ %i.de, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.dk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !280 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !316
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %.not79.i = icmp eq ptr %i.dp, %i.ds
  br i1 %.not79.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !316
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.07.0.i.a = phi ptr [ %i.du, %bb.t ], [ %.sroa.069.091.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ] ; 2 uses
  %.sroa.17.0.i = phi ptr [ %i.dp, %bb.t ], [ %.sroa.066.086.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ] ; 2 uses
  %i.dv = load i32, ptr %i.ac, align 8, !tbaa !277 ; 3 uses
  %i.dw = load i32, ptr %i.ad, align 4, !tbaa !278
  %.not.i62.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i62.i, label %bb.v, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit95.i, !prof !305

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit95.i: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr %.sroa.07.0.i.a, ptr %8, align 8, !tbaa !306
  store ptr %.sroa.17.0.i, ptr %.sroa.17.0..sroa_idx37.i, align 8, !tbaa !307
  store ptr %.04082.i, ptr %.sroa.20.0..sroa_idx59.i, align 8, !tbaa !309
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull readonly align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dx = zext i32 %i.dv to i64
  %.val.i64.i = load ptr, ptr %13, align 8, !tbaa !276
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %.val.i64.i, i64 %i.dx ; 3 uses
  store ptr %.sroa.07.0.i.a, ptr %i.dy, align 8, !tbaa !306
  %.sroa.17.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.17.0.i, ptr %.sroa.17.0..sroa_idx23.i, align 8, !tbaa !307
  %.sroa.20.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %.04082.i, ptr %.sroa.20.0..sroa_idx45.i, align 8, !tbaa !309
  %i.dz = add nuw i32 %i.dv, 1
  store i32 %i.dz, ptr %i.ac, align 8, !tbaa !277
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i: ; preds = %bb.v, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit95.i, %bb.o, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit89.i, %bb.l, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit83.i, %"_ZN4llvm8count_ifIRNS_11SmallPtrSetIPNS_12MachineInstrELj1EEEZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERNS_15MachineFunctionERNS_15ReachingDefInfoEPKNS_19ARMBaseRegisterInfoERNS_15SmallVectorImplINS7_16AESFixupLocationEEEE3$_0EEDaOT_T0_.exit.thread.i", %bb.g, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE18growAndEmplaceBackIJRS3_EEES6_DpOT_.exit.i
  %i.ea = load i8, ptr %i.aj, align 8, !tbaa !303, !range !269, !noundef !148
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i
  %i.ec = load ptr, ptr %12, align 8, !tbaa !299
  call void @free(ptr noundef %i.ec) #14
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.w, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationEE12emplace_backIJRS3_EEES6_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.ed = getelementptr inbounds nuw i8, ptr %.04082.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.ed, %i.ax
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.e, %.lr.ph87.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.066.086.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i68.i = load i64, ptr %.sroa.066.086.i, align 8
  %i.ee = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i68.i, 4
  %.not.i.i.i69.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i69.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i71.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit76.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i71.i: ; preds = %.loopexit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.066.086.i, i64 44
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !314
  %i.eh = and i32 %i.eg, 8
  %.not34.i.i.i72.i = icmp eq i32 %i.eh, 0
  br i1 %.not34.i.i.i72.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit76.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i73.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i73.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i71.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i73.i
  %.sroa.0.05.i.i.i74.i = phi ptr [ %i.ej, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i73.i ], [ %.sroa.066.086.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i71.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i74.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !280 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 44
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !314
  %i.em = and i32 %i.el, 8
  %.not3.i.i.i75.i = icmp eq i32 %i.em, 0
  br i1 %.not3.i.i.i75.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit76.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i73.i, !llvm.loop !315

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit76.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i73.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i71.i, %.loopexit.i
  %.sroa.0.1.i.i.i70.i = phi ptr [ %.sroa.066.086.i, %.loopexit.i ], [ %.sroa.066.086.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i71.i ], [ %i.ej, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i73.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i70.i, i64 8
  %.sroa.066.0.i = load ptr, ptr %i.en, align 8, !tbaa !280 ; 2 uses
  %.not77.i = icmp eq ptr %.sroa.066.0.i, %i.al
  br i1 %.not77.i, label %._crit_edge.i, label %.lr.ph87.i

_ZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERN4llvm15MachineFunctionERNS1_15ReachingDefInfoEPKNS1_19ARMBaseRegisterInfoERNS1_15SmallVectorImplINS0_16AESFixupLocationEEE.exit: ; preds = %._crit_edge.i
  %.val.pre = load ptr, ptr %13, align 8, !tbaa !276 ; 3 uses
  %.val23.pre = load i32, ptr %i.ac, align 8, !tbaa !277 ; 2 uses
  %i.eo = zext i32 %.val23.pre to i64
  %.idx = mul nuw nsw i64 %i.eo, 24
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.pre, i64 %.idx
  %.not26.not = icmp ne i32 %.val23.pre, 0        ; 3 uses
  br i1 %.not26.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERN4llvm15MachineFunctionERNS1_15ReachingDefInfoEPKNS1_19ARMBaseRegisterInfoERNS1_15SmallVectorImplINS0_16AESFixupLocationEEE.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.y

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre = load ptr, ptr %13, align 8, !tbaa !276
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERN4llvm15MachineFunctionERNS1_15ReachingDefInfoEPKNS1_19ARMBaseRegisterInfoERNS1_15SmallVectorImplINS0_16AESFixupLocationEEE.exit
  %i.fc = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.val.pre, %_ZNK12_GLOBAL__N_125ARMFixCortexA57AES17420989analyzeMFERN4llvm15MachineFunctionERNS1_15ReachingDefInfoEPKNS1_19ARMBaseRegisterInfoERNS1_15SmallVectorImplINS0_16AESFixupLocationEEE.exit ] ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ab
  br i1 %i.fd, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELj2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.fc) #14
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELj2EED2Ev.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26ReachingDefInfoWrapperPassEEERT_v.exit, %._crit_edge, %bb.x
  %.not266163 = phi i1 [ %.not26.not, %bb.x ], [ %.not26.not, %._crit_edge ], [ false, %_ZNK4llvm4Pass11getAnalysisINS_26ReachingDefInfoWrapperPassEEERT_v.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.02027 = phi ptr [ %.val.pre, %.lr.ph ], [ %i.fu, %bb.y ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.02027, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !317 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !304 ; 3 uses
  %i.fi = call noundef zeroext i1 @_ZNK4llvm14MachineOperand11isRenamableEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ff) #14
  %i.fj = load ptr, ptr %.02027, align 8, !tbaa !319
  %i.fk = getelementptr inbounds nuw i8, ptr %.02027, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.fm = load ptr, ptr %i.eq, align 8, !tbaa !321
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -100864
  %i.fo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.fj, ptr noundef nonnull align 8 dereferenceable(80) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fn) ; 2 uses
  %i.fp = extractvalue { ptr, ptr } %i.fo, 0      ; 5 uses
  %i.fq = extractvalue { ptr, ptr } %i.fo, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr null, ptr %i.er, align 8, !tbaa !325, !alias.scope !327
  %i.fr = select i1 %i.fi, i32 134217728, i32 0   ; 2 uses
  store i32 %i.fh, ptr %i.es, align 4, !tbaa !304, !alias.scope !327
  %i.fs = or disjoint i32 %i.fr, 16777216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false), !alias.scope !327
  store i32 %i.fs, ptr %6, align 8, !alias.scope !327
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fq, ptr noundef nonnull align 8 dereferenceable(1065) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %i.eu, align 8, !tbaa !325, !alias.scope !330
  store i32 %i.fh, ptr %i.ev, align 4, !tbaa !304, !alias.scope !330
  %i.ft = or disjoint i32 %i.fr, 67108864         ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i8 0, i64 16, i1 false), !alias.scope !330
  store i32 %i.ft, ptr %5, align 8, !alias.scope !330
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fq, ptr noundef nonnull align 8 dereferenceable(1065) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %i.ex, align 8, !tbaa !325, !alias.scope !333
  store i32 %i.fh, ptr %i.ey, align 4, !tbaa !304, !alias.scope !333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false), !alias.scope !333
  store i32 %i.ft, ptr %4, align 8, !alias.scope !333
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fq, ptr noundef nonnull align 8 dereferenceable(1065) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 1, ptr %3, align 8, !alias.scope !336
  store ptr null, ptr %i.fa, align 8, !tbaa !325, !alias.scope !336
  store i64 14, ptr %i.fb, align 8, !tbaa !304, !alias.scope !336
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fq, ptr noundef nonnull align 8 dereferenceable(1065) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fq, ptr noundef nonnull align 8 dereferenceable(1065) %i.fp, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.fu = getelementptr inbounds nuw i8, ptr %.02027, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.fu, %i.ep
  br i1 %.not, label %._crit_edge.loopexit, label %bb.y

bb.z:                                             ; preds = %bb.a, %bb.b, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELj2EED2Ev.exit
  %.0 = phi i1 [ %.not266163, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELj2EED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_125ARMFixCortexA57AES174209821getRequiredPropertiesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
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

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZNK4llvm15ReachingDefInfo21getGlobalReachingDefsEPNS_12MachineInstrENS_8RegisterERNS_15SmallPtrSetImplIS2_EE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef, i32, ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360), i32, i64) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm12MachineInstr18getNumExplicitDefsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_125ARMFixCortexA57AES174209816AESFixupLocationELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <3 x ptr>, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !277
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #14
  %.val = load ptr, ptr %0, align 8, !tbaa !276
end_hunk_0
