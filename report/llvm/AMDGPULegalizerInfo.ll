Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPULegalizerInfo?download=true
inline.NumInlined: 10257
inline.NumDeleted: 2157
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZNSt17_Function_handlerIFSt4pairIjN4llvm3LLTEERKNS1_13LegalityQueryEEZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE3$_9E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation":bb.a
bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !259
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE3$_9E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !608
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE3$_9E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !275
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE3$_9E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE3$_9E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_10E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !611 ; 2 uses
  %i.b = load i64, ptr %.val3, align 8
  %i.c = lshr i64 %i.b, 60
  %i.d = add nsw i64 %i.c, -5
  %switch.selectcmp.i.i.i.i = icmp ult i64 %i.d, 4
  br i1 %switch.selectcmp.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIbRZN4llvm19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_10JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i32, ptr %i.f, align 8
  %.val = load ptr, ptr %0, align 8
  %i.g = icmp eq i32 %.val2, 99
  %i.h = tail call fastcc noundef zeroext i1 @"_ZZN4llvm19AMDGPULegalizerInfoC1ERKNS_12GCNSubtargetERKNS_16GCNTargetMachineEENK4$_28clERKNS_13LegalityQueryEb"(ptr readonly %.val, ptr nonnull readonly %.val3, ptr readonly %.val4, i1 noundef zeroext %i.g)
  br label %"_ZSt10__invoke_rIbRZN4llvm19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_10JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

"_ZSt10__invoke_rIbRZN4llvm19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_10JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %bb.a, %bb.b
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_10E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_10E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !259
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_10E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !608
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_10E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !275
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_10E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_10E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @"_ZNSt17_Function_handlerIFSt4pairIjN4llvm3LLTEERKNS1_13LegalityQueryEEZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11E9_M_invokeERKSt9_Any_dataS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1910
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !611  ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !82   ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82
  %i.g = icmp slt i64 %i.d, -8070450532247928832  ; 5 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.d, 1152921504605798400
  %i.i = or disjoint i64 %i.h, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %.mask.i.i.i.i.i = and i64 %i.d, -1152921504606846976 ; 2 uses
  switch i64 %.mask.i.i.i.i.i, label %bb.h [
    i64 8070450532247928832, label %bb.d
    i64 6917529027641081856, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %i.d to i32
  %i.k = lshr i32 %i.j, 20
  %i.l = and i32 %i.k, 255                        ; 2 uses
  %i.m = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !278, !range !67, !noundef !68
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.l) #24
  %i.p = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.o) #24
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 28                 ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %storemerge.i.i.i.i.i.i.i.i = or disjoint i64 %i.r, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i32 %i.l, 20
  %i.t = zext nneg i32 %i.s to i64
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = or disjoint i64 %i.u, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.w = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !278, !range !67, !noundef !68
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = and i64 %i.d, 1152921504338411520
  %.sroa.0.0.v.i.i.i.i.i = select i1 %i.x, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i.i.i.i = or disjoint i64 %.sroa.0.0.v.i.i.i.i.i, %i.y
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %.mask.i.i.i.i.i, 4611686018427387904
  %i.aa = lshr i64 %i.d, 44
  %i.ab = and i64 %i.aa, 65535
  %i.ac = lshr i64 %i.d, 28
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = select i1 %i.z, i64 %i.ab, i64 %i.ad
  %i.af = shl nuw nsw i64 %i.ae, 28
  %storemerge.i.i.i.i.i.i.i = or disjoint i64 %i.af, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i

_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i:       ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.i, %bb.b ], [ %storemerge.i.i.i.i.i.i.i, %bb.h ], [ %.sroa.0.0.i6.i.i.i.i, %bb.g ], [ %i.v, %bb.f ], [ %storemerge.i.i.i.i.i.i.i.i, %bb.e ] ; 13 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 46376
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85, !nonnull !68, !align !86 ; 6 uses
  %i.ai = lshr i64 %i.f, 20
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 16777215
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !614 ; 2 uses
  switch i32 %i.ak, label %bb.m [
    i32 5, label %bb.i
    i32 3, label %bb.k
    i32 1, label %bb.l
    i32 4, label %bb.l
    i32 6, label %bb.l
    i32 8, label %bb.l
  ]

bb.i:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 663
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !586, !range !67, !noundef !68
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 643
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !587, !range !67, !noundef !68
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 742
  %i.au = load i8, ptr %i.at, align 2, !range !67
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond.i.i.i.i = select i1 %i.as, i1 %i.av, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread.i.i.i.i, label %_ZL19maxSizeForAddrSpaceRKN4llvm12GCNSubtargetEjbb.exit.i.i.i

_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread.i.i.i.i: ; preds = %bb.j, %bb.i
  br label %_ZL19maxSizeForAddrSpaceRKN4llvm12GCNSubtargetEjbb.exit.i.i.i

bb.k:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 689
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !585, !range !67, !noundef !68
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 642
  %i.ba = load i8, ptr %i.az, align 2, !range !67
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = select i1 %i.ay, i1 %i.bb, i1 false
  %i.bd = select i1 %i.bc, i32 128, i32 64
  br label %_ZL19maxSizeForAddrSpaceRKN4llvm12GCNSubtargetEjbb.exit.i.i.i

bb.l:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i, %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i, %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i, %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1911
  %i.bg = icmp eq i32 %i.bf, 99
  %i.bh = select i1 %i.bg, i32 512, i32 128
  br label %_ZL19maxSizeForAddrSpaceRKN4llvm12GCNSubtargetEjbb.exit.i.i.i

bb.m:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !626
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 496
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !265
  %i.bn = icmp sgt i32 %i.bm, 7
  %i.bo = or i1 %i.bk, %i.bn
  %i.bp = select i1 %i.bo, i32 128, i32 32
  br label %_ZL19maxSizeForAddrSpaceRKN4llvm12GCNSubtargetEjbb.exit.i.i.i

_ZL19maxSizeForAddrSpaceRKN4llvm12GCNSubtargetEjbb.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread.i.i.i.i, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.m ], [ %i.bh, %bb.l ], [ %i.bd, %bb.k ], [ 128, %_ZNK4llvm12GCNSubtarget21hasFlatScratchEnabledEv.exit.thread.i.i.i.i ], [ 32, %bb.j ] ; 5 uses
  %i.bq = load i64, ptr %i.am, align 8            ; 10 uses
  %.mask.i.i50.i.i.i = and i64 %i.bq, -1152921504606846976
  %i.br = icmp eq i64 %.mask.i.i50.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.br, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZL19maxSizeForAddrSpaceRKN4llvm12GCNSubtargetEjbb.exit.i.i.i
  %i.bs = lshr i64 %i.bq, 60
  %.off.i.i.i.i.i = add nsw i64 %i.bs, -1
  %switch.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3
  br i1 %switch.i.i.i.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i.i.i: ; preds = %bb.n, %_ZL19maxSizeForAddrSpaceRKN4llvm12GCNSubtargetEjbb.exit.i.i.i
  %i.bt = icmp slt i64 %i.bq, -8070450532247928832
  %spec.select.i.i.i.i.i.i = or i1 %i.bt, %i.br
  %i.bu = lshr i64 %i.bq, 44
  %i.bv = and i64 %i.bu, 65535
  %i.bw = lshr i64 %i.bq, 28
  %i.bx = and i64 %i.bw, 4294967295
  %i.by = select i1 %spec.select.i.i.i.i.i.i, i64 %i.bv, i64 %i.bx
  br label %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i:        ; preds = %bb.n
  %i.bz = lshr i64 %i.bq, 4
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = and i64 %i.bz, 65535
  %i.ca = icmp slt i64 %i.bq, -8070450532247928832
  %i.cb = lshr i64 %i.bq, 44
  %i.cc = and i64 %i.cb, 65535
  %i.cd = lshr i64 %i.bq, 28
  %.0.in.i3.i.i.i.i = select i1 %i.ca, i64 %i.cc, i64 %i.cd
  %i.ce = mul nuw nsw i64 %.0.in.i3.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i
  %i.cf = and i64 %i.ce, 4294967295
  %i.cg = trunc i64 %i.bq to i1
  br i1 %i.cg, label %bb.o, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i

bb.o:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.67) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i.i:               ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i.i.i
  %.sroa.05.0.i164.i.i.i = phi i64 [ %i.by, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.thread.i.i.i ], [ %i.cf, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i ] ; 2 uses
  %i.ch = trunc nuw i64 %.sroa.05.0.i164.i.i.i to i32 ; 2 uses
  %i.ci = icmp ult i32 %.0.i.i.i.i, %i.ch
  br i1 %i.ci, label %bb.p, label %bb.w

bb.p:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i
  %i.cj = trunc i64 %i.d to i1
  br i1 %i.cj, label %bb.q, label %_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.68) #26
  unreachable

_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i:       ; preds = %bb.p
  %i.ck = trunc i64 %i.d to i32
  %i.cl = lshr i32 %i.ck, 4                       ; 2 uses
  %.mask.i.i51.i.i.i = and i64 %.sroa.0.0.i.i.i.i, -1152921504606846976
  %i.cm = icmp eq i64 %.mask.i.i51.i.i.i, 4611686018427387904
  %i.cn = lshr i64 %.sroa.0.0.i.i.i.i, 44
  %i.co = and i64 %i.cn, 65535
  %i.cp = lshr i64 %.sroa.0.0.i.i.i.i, 28
  %i.cq = select i1 %i.cm, i64 %i.co, i64 %i.cp
  %i.cr = trunc i64 %i.cq to i32                  ; 3 uses
  %i.cs = urem i32 %.0.i.i.i.i, %i.cr
  %i.ct = udiv exact i32 %.0.i.i.i.i, %i.cr
  %i.cu = icmp eq i32 %i.cs, 0
  br i1 %i.cu, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i
  %.not4.not.i.i.i.i = icmp eq i32 %.0.i.i.i.i, %i.cr
  br i1 %.not4.not.i.i.i.i, label %"_ZSt10__invoke_rISt4pairIjN4llvm3LLTEERZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11JRKNS1_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.insert.ext.i.i.i.i = zext nneg i32 %i.ct to i64
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit.sink.split.i.i.i

bb.t:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i
  %i.cv = and i32 %i.cl, 65535
  %i.cw = tail call range(i32 5, 33) i32 @llvm.cttz.i32(i32 %.0.i.i.i.i, i1 true)
  %i.cx = lshr i32 %i.ch, %i.cw                   ; 3 uses
  %i.cy = icmp ne i32 %i.cx, 1
  %.not.i.i.i = icmp samesign ult i32 %i.cx, %i.cv
  %or.cond.i.i.i = and i1 %i.cy, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.u, label %"_ZSt10__invoke_rISt4pairIjN4llvm3LLTEERZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11JRKNS1_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

bb.u:                                             ; preds = %bb.t
  %.lhs.trunc.i.i.i = trunc i32 %i.cl to i16      ; 2 uses
  %.rhs.trunc.i.i.i = trunc nuw i32 %i.cx to i16  ; 2 uses
  %i.cz = urem i16 %.lhs.trunc.i.i.i, %.rhs.trunc.i.i.i
  %i.da = udiv exact i16 %.lhs.trunc.i.i.i, %.rhs.trunc.i.i.i
  %.not49.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not49.i.i.i, label %bb.v, label %"_ZSt10__invoke_rISt4pairIjN4llvm3LLTEERZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11JRKNS1_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i16 %i.da to i64
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit.sink.split.i.i.i

bb.w:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i
  %.mask.i.i64.i.i.i = and i64 %i.d, -1152921504606846976
  %i.db = icmp eq i64 %.mask.i.i64.i.i.i, 4611686018427387904 ; 4 uses
  br i1 %i.db, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit75.thread.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = lshr i64 %i.d, 60
  %.off.i.i65.i.i.i = add nsw i64 %i.dc, -1
  %switch.i.i66.i.i.i = icmp ult i64 %.off.i.i65.i.i.i, 3
  br i1 %switch.i.i66.i.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit75.thread.i.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit75.i.i.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit75.thread.i.i.i: ; preds = %bb.x, %bb.w
  %spec.select.i.i.i74.i.i.i = or i1 %i.g, %i.db
  %i.dd = lshr i64 %i.d, 44
  %i.de = and i64 %i.dd, 65535
  %i.df = lshr i64 %i.d, 28
  %i.dg = and i64 %i.df, 4294967295
  %i.dh = select i1 %spec.select.i.i.i74.i.i.i, i64 %i.de, i64 %i.dg
  br label %_ZNK4llvm8TypeSizecvmEv.exit76.i.i.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit75.i.i.i:      ; preds = %bb.x
  %i.di = lshr i64 %i.d, 4
  %.sroa.0.0.insert.ext.i.i.i67.i.i.i = and i64 %i.di, 65535
  %i.dj = lshr i64 %i.d, 44
  %i.dk = and i64 %i.dj, 65535
  %i.dl = lshr i64 %i.d, 28
  %.0.in.i3.i68.i.i.i = select i1 %i.g, i64 %i.dk, i64 %i.dl
  %i.dm = mul nuw nsw i64 %.0.in.i3.i68.i.i.i, %.sroa.0.0.insert.ext.i.i.i67.i.i.i
  %i.dn = and i64 %i.dm, 4294967295
  %i.do = trunc i64 %i.d to i1
  br i1 %i.do, label %bb.y, label %_ZNK4llvm8TypeSizecvmEv.exit76.i.i.i

bb.y:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit75.i.i.i
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.67) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit76.i.i.i:             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit75.i.i.i, %_ZNK4llvm3LLT13getSizeInBitsEv.exit75.thread.i.i.i
  %.sroa.05.0.i70174.i.i.i = phi i64 [ %i.dh, %_ZNK4llvm3LLT13getSizeInBitsEv.exit75.thread.i.i.i ], [ %i.dn, %_ZNK4llvm3LLT13getSizeInBitsEv.exit75.i.i.i ]
  %i.dp = icmp samesign ugt i64 %.sroa.05.0.i70174.i.i.i, %.sroa.05.0.i164.i.i.i
  br i1 %i.dp, label %"_ZSt10__invoke_rISt4pairIjN4llvm3LLTEERZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11JRKNS1_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %_ZNK4llvm3LLT13getSizeInBitsEv.exit88.thread.i.i.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit88.thread.i.i.i: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit76.i.i.i
  %.mask.i.i77.i.i.i = and i64 %.sroa.0.0.i.i.i.i, -1152921504606846976
  %i.dq = icmp eq i64 %.mask.i.i77.i.i.i, 4611686018427387904
  %i.dr = lshr i64 %.sroa.0.0.i.i.i.i, 44
  %i.ds = and i64 %i.dr, 65535
  %i.dt = lshr i64 %.sroa.0.0.i.i.i.i, 28
  %i.du = select i1 %i.dq, i64 %i.ds, i64 %i.dt
  br i1 %i.db, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit88.thread.i.i.i
  %i.dv = lshr i64 %i.d, 60
  %.off.i.i91.i.i.i = add nsw i64 %i.dv, -1
  %switch.i.i92.i.i.i = icmp ult i64 %.off.i.i91.i.i.i, 3
  br i1 %switch.i.i92.i.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread.i.i.i, label %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.i.i.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread.i.i.i: ; preds = %bb.z, %_ZNK4llvm3LLT13getSizeInBitsEv.exit88.thread.i.i.i
  %spec.select.i.i.i100.i.i.i = or i1 %i.g, %i.db
  %i.dw = lshr i64 %i.d, 44
  %i.dx = and i64 %i.dw, 65535
  %i.dy = lshr i64 %i.d, 28
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = select i1 %spec.select.i.i.i100.i.i.i, i64 %i.dx, i64 %i.dz
  br label %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit101.i.i.i:     ; preds = %bb.z
  %i.eb = lshr i64 %i.d, 4
  %.sroa.0.0.insert.ext.i.i.i93.i.i.i = and i64 %i.eb, 65535
  %i.ec = lshr i64 %i.d, 44
  %i.ed = and i64 %i.ec, 65535
  %i.ee = lshr i64 %i.d, 28
  %.0.in.i3.i94.i.i.i = select i1 %i.g, i64 %i.ed, i64 %i.ee
  %i.ef = mul nuw nsw i64 %.0.in.i3.i94.i.i.i, %.sroa.0.0.insert.ext.i.i.i93.i.i.i
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = trunc i64 %i.d to i1
  br i1 %i.eh, label %bb.aa, label %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i

bb.aa:                                            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.i.i.i
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.67) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i:            ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.i.i.i, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread.i.i.i
  %.sroa.05.0.i96184.i.i.i = phi i64 [ %i.ea, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.thread.i.i.i ], [ %i.eg, %_ZNK4llvm3LLT13getSizeInBitsEv.exit101.i.i.i ] ; 2 uses
  %i.ei = trunc nuw i64 %.sroa.05.0.i96184.i.i.i to i32 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %.sroa.05.0.i96184.i.i.i, 0 ; 2 uses
  %i.ej = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ei)
  %i.ek = icmp samesign ult i32 %i.ej, 2
  %or.cond189.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.ek, i1 false
  br i1 %or.cond189.i.i.i, label %"_ZSt10__invoke_rISt4pairIjN4llvm3LLTEERZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11JRKNS1_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i.i.i

_ZN4llvm13isPowerOf2_32Ej.exit.thread.i.i.i:      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i
  %i.el = trunc i64 %i.du to i32
  %i.em = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ei, i1 true)
  %i.en = lshr exact i32 -2147483648, %i.em
  %.0.i103.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.en, i32 0
  %i.eo = udiv i32 %.0.i103.i.i.i, %i.el          ; 2 uses
  %.not4.not.i105.i.i.i = icmp eq i32 %i.eo, 1
  br i1 %.not4.not.i105.i.i.i, label %"_ZSt10__invoke_rISt4pairIjN4llvm3LLTEERZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11JRKNS1_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i.i.i
  %.sroa.0.0.insert.ext.i104.i.i.i = zext i32 %i.eo to i64
  br label %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit.sink.split.i.i.i

_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit.sink.split.i.i.i: ; preds = %bb.ab, %bb.v, %bb.s
  %.sroa.0.0.insert.ext.i104.sink.i.i.i = phi i64 [ %.sroa.0.0.insert.ext.i104.i.i.i, %bb.ab ], [ %.sroa.0.0.insert.ext.i.i.i.i, %bb.s ], [ %.sroa.0.0.insert.ext.i.i.i.i.i, %bb.v ]
  %i.ep = tail call i64 @_ZN4llvm3LLT6vectorENS_12ElementCountES0_(i64 %.sroa.0.0.insert.ext.i104.sink.i.i.i, i64 %.sroa.0.0.i.i.i.i)
  br label %"_ZSt10__invoke_rISt4pairIjN4llvm3LLTEERZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11JRKNS1_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

"_ZSt10__invoke_rISt4pairIjN4llvm3LLTEERZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11JRKNS1_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %bb.r, %bb.t, %bb.u, %_ZNK4llvm8TypeSizecvmEv.exit76.i.i.i, %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i, %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i.i.i, %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit.sink.split.i.i.i
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %_ZNK4llvm8TypeSizecvmEv.exit76.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.u ], [ %.sroa.0.0.i.i.i.i, %bb.r ], [ %.sroa.0.0.i.i.i.i, %bb.t ], [ %.sroa.0.0.i.i.i.i, %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZNK4llvm8TypeSizecvmEv.exit102.i.i.i ], [ %i.ep, %_ZN4llvm3LLT14scalarOrVectorENS_12ElementCountES0_.exit.sink.split.i.i.i ]
  %.fca.1.insert.i.i.i = insertvalue { i32, i64 } { i32 0, i64 poison }, i64 %.sroa.7.0.i.i.i, 1
  ret { i32, i64 } %.fca.1.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt4pairIjN4llvm3LLTEERKNS1_13LegalityQueryEEZNS1_19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !259
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !608
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !275
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_11E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_12E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1913
  %i.a = getelementptr i8, ptr %.val, i64 46376
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.b = tail call fastcc noundef zeroext i1 @_ZL16isLoadStoreLegalRKN4llvm12GCNSubtargetERKNS_13LegalityQueryE(ptr noundef nonnull align 8 dereferenceable(520232) %.val.val, ptr noundef nonnull readonly align 8 dereferenceable(40) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_12E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_12E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !259
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_12E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !608
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_12E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !274
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_12E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm19AMDGPULegalizerInfoC1ERKNS1_12GCNSubtargetERKNS1_16GCNTargetMachineEE4$_12E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_13E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !614
  %.val2.val = load i64, ptr %.val2, align 8, !tbaa !82 ; 3 uses
  %.mask.i.i.i.i = and i64 %.val2.val, -1152921504606846976
  %i.b = icmp eq i64 %.mask.i.i.i.i, 1152921504606846976
  %i.c = and i64 %.val2.val, 1152921504338411520
  %i.d = icmp samesign ugt i64 %i.c, 8589934592
  %or.cond.i.i.i = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIbRZN4llvm19AMDGPULegalizerInfoC1ERKNS0_12GCNSubtargetERKNS0_16GCNTargetMachineEE4$_13JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8
  %i.f = load i64, ptr %.val, align 8             ; 10 uses
  %.mask.i.i10.i.i.i = and i64 %i.f, -1152921504606846976
end_hunk_0
