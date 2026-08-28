Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turbolev-graph-builder?download=true
inline.NumInlined: 65942
inline.NumDeleted: 17507
loop-unroll.NumCompletelyUnrolled: 517
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 591
begin_hunk_0_@_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_reallocate_mapEmb:bb.a
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.be, ptr align 8 %i.bf, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEES9_ET0_T_SB_SA_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE15_M_allocate_mapEm.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.q, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEES9_ET0_T_SB_SA_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bf, align 8
  store ptr %i.bn, ptr %i.be, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEES9_ET0_T_SB_SA_.exit24

_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEES9_ET0_T_SB_SA_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bo = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bp = and i64 %i.bo, 2305843009213693950
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_deallocate_mapEPPS7_m.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEES9_ET0_T_SB_SA_.exit24
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bo, ptr %i.bs, align 8
  store ptr null, ptr %i.br, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_deallocate_mapEPPS7_m.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_deallocate_mapEPPS7_m.exit: ; preds = %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEES9_ET0_T_SB_SA_.exit24, %bb.r
  store ptr %i.ay, ptr %i.a, align 8
  store i64 %i.an, ptr %i.l, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_deallocate_mapEPPS7_m.exit
  %.0 = phi ptr [ %i.be, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE17_M_deallocate_mapEPPS7_m.exit ], [ %i.u, %bb.f ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.d, align 8
  %i.bt = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 512
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.j
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cb, ptr %i.cc, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES4_S5_S7_S9_EEEEEEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISQ_SR_EESQ_(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %i.a, align 4 ; 3 uses
  %.not = icmp eq i32 %.sroa.07.0.copyload, %2
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4
  %i.n = add nsw i64 %i.m, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.n)
  %.pre.i.i.i = load ptr, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.c, %bb.b ], [ %.pre.i.i.i, %bb.c ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.b, align 8
  store ptr %1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %.sroa.07.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %2, ptr %.sroa.5.0..sroa_idx.i, align 4
  store i32 %2, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !5, !noundef !6
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %.sroa.07.0.copyload, -1
  %.not6.i = icmp eq i32 %2, -1                   ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not6.i, label %bb.g, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  store i64 %i.u, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.v, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.u
  %i.ae = load i64, ptr %i.aa, align 8
  store i64 %i.ae, ptr %i.ad, align 8
  store i64 -1, ptr %i.t, align 8
  %i.af = load ptr, ptr %i.v, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  store ptr %i.ag, ptr %i.v, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

bb.h:                                             ; preds = %bb.e
  br i1 %.not6.i, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ao, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp ult ptr %i.aq, %i.as
  br i1 %i.at, label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_27RequiredOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerES9_SA_SC_SE_EEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.av = load ptr, ptr %i.aj, align 8
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(33) %i.au, i64 noundef %i.ba)
  %.pre.i.i.i10 = load ptr, ptr %i.ah, align 8
  br label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_27RequiredOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerES9_SA_SC_SE_EEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i

_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_27RequiredOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerES9_SA_SC_SE_EEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i: ; preds = %bb.j, %bb.i
  %i.bb = phi ptr [ %i.aq, %bb.i ], [ %.pre.i.i.i10, %bb.j ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bc, ptr %i.ah, align 8
  %i.bd = ptrtoint ptr %1 to i64
  store i64 %i.bd, ptr %i.bb, align 8
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyIS4_S5_EES4_.exit: ; preds = %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_27RequiredOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerES9_SA_SC_SE_EEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6TagSmiENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 4294967296
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i8 noundef zeroext 0, i64 noundef %i.e)
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.f, i32 %i.g)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ -1, %bb.b ], [ %i.h, %bb.c ], [ %2, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSI_INSJ_ILm32EEEjEE.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit
  %i.l = getelementptr inbounds i8, ptr %0, i64 -744 ; 3 uses
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSQ_IJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEENSQ_IJNS2_13FloatWithBitsILm32EEENSV_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENS11_10AssumptionENS2_22RegisterRepresentationES14_(ptr noundef nonnull align 8 dereferenceable(666) %i.l, i32 %.sroa.0.0.i, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 0, i8 1)
  %.pr = load ptr, ptr %i.i, align 8
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSI_INSJ_ILm32EEEjEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.d
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.l, i8 noundef zeroext 0, i64 noundef 32)
  %i.p = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.l, i32 %i.o)
  %.pr17 = load ptr, ptr %i.i, align 8
  %i.q = icmp eq ptr %.pr17, null
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSI_INSJ_ILm32EEEjEE.exit, label %bb.e, !prof !2421

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %3 = getelementptr inbounds i8, ptr %0, i64 -744
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE11ReduceShiftENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEENSP_ISS_EENS2_7ShiftOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(666) %3, i32 %i.m, i32 %i.p, i8 noundef zeroext 3, i8 1)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSI_INSJ_ILm32EEEjEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE16WordPtrShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENSI_INSJ_ILm32EEEjEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit, %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %bb.e
  %.sroa.07.0.i.i = phi i32 [ %i.r, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ -1, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit ]
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %.sroa.07.0.i.i)
  ret i32 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE19BitcastWordPtrToSmiENS2_1VINS2_12WordWithBitsILm64EEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESJ_NS2_15TaggedBitcastOp4KindE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -744 ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 -88
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !align !210
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !align !210
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = zext i32 %1 to i64
  %i.l = add i64 %i.j, %i.k
  %i.m = inttoptr i64 %i.l to ptr                 ; 6 uses
  %i.n = load i8, ptr %i.m, align 4
  switch i8 %i.n, label %.thread153.i [
    i8 72, label %bb.c
    i8 75, label %.thread146.thread167.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %.sroa.02.0.copyload.i.i.i = load i8, ptr %i.o, align 2
  %i.p = icmp eq i8 %.sroa.02.0.copyload.i.i.i, 1
  br i1 %i.p, label %bb.d, label %.thread153.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %.sroa.02.0.copyload.i.i87.i = load i8, ptr %i.q, align 1
  %i.r = icmp eq i8 %.sroa.02.0.copyload.i.i87.i, 4
  br i1 %i.r, label %.critedge.i, label %.thread153.i

.critedge.i:                                      ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i.i90.i = load i32, ptr %i.s, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESJ_NS2_15TaggedBitcastOp4KindE.exit

.thread146.thread167.i:                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = load i8, ptr %i.t, align 4
  switch i8 %i.u, label %.thread153.i [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 14, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %.thread146.thread167.i, %.thread146.thread167.i, %.thread146.thread167.i, %.thread146.thread167.i, %.thread146.thread167.i, %.thread146.thread167.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult i64 %i.w, 2147483648
  br i1 %i.x, label %bb.f, label %.thread153.i

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENS0_6TaggedINS0_3SmiEEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i8 noundef zeroext 4, i64 %i.w)
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i32 %i.y)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESJ_NS2_15TaggedBitcastOp4KindE.exit

.thread153.i:                                     ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %.thread146.thread167.i
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESK_NSI_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(666) %i.d, i32 %1, i8 1, i8 4, i8 noundef zeroext 0)
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_15TaggedBitcastOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(666) %i.d, i32 %i.aa)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESJ_NS2_15TaggedBitcastOp4KindE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13TaggedBitcastENS2_7OpIndexENS2_22RegisterRepresentationESJ_NS2_15TaggedBitcastOp4KindE.exit: ; preds = %.thread153.i, %.critedge.i, %bb.f, %bb.a
  %.sroa.07.0.i.i = phi i32 [ -1, %bb.a ], [ %.sroa.0.0.copyload.i.i90.i, %.critedge.i ], [ %i.ab, %.thread153.i ], [ %i.z, %bb.f ]
  ret i32 %.sroa.07.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE19ReduceTaggedBitcastENS2_1VINS2_3AnyEEENS2_22RegisterRepresentationESS_NS2_15TaggedBitcastOp4KindE(ptr noundef nonnull align 8 dereferenceable(666) %0, i32 %1, i8 %2, i8 %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::ConstOrV.4043", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !210
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = zext i32 %1 to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 14 uses
  %i.j = load i8, ptr %i.i, align 4               ; 3 uses
  %.not = icmp eq i8 %i.j, 72
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %.sroa.02.0.copyload.i.i = load i8, ptr %i.k, align 2
  %i.l = icmp eq i8 %.sroa.02.0.copyload.i.i, 1
  %i.m = icmp eq i8 %2, 1
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal8compiler10turboshafteqINS2_22RegisterRepresentationEJS4_S4_EEEbNS2_6all_ofIJDpT0_EEERKT_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %.sroa.02.0.copyload.i.i87 = load i8, ptr %i.n, align 1
  %i.o = icmp eq i8 %.sroa.02.0.copyload.i.i87, 4
  %i.p = icmp eq i8 %3, 4
  %or.cond158 = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond158, label %.critedge, label %_ZN2v88internal8compiler10turboshafteqINS2_22RegisterRepresentationEJS4_S4_EEEbNS2_6all_ofIJDpT0_EEERKT_.exit.thread

.critedge:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i90 = load i32, ptr %i.q, align 4
  br label %bb.v

_ZN2v88internal8compiler10turboshafteqINS2_22RegisterRepresentationEJS4_S4_EEEbNS2_6all_ofIJDpT0_EEERKT_.exit.thread: ; preds = %bb.c, %bb.b
  %switch.i = icmp ult i8 %3, 2
  br i1 %switch.i, label %bb.d, label %.thread153

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshafteqINS2_22RegisterRepresentationEJS4_S4_EEEbNS2_6all_ofIJDpT0_EEERKT_.exit.thread
  %i.r = icmp eq i8 %4, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.t = load i8, ptr %i.s, align 4
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %.thread153

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %.sroa.046.0.copyload = load i8, ptr %i.v, align 1 ; 2 uses
  %i.w = icmp eq i8 %.sroa.046.0.copyload, %3
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i92 = load i32, ptr %i.x, align 4
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq i8 %.sroa.046.0.copyload, 0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i93 = load i32, ptr %i.aa, align 4 ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21BitcastWord32ToWord64ENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.z, i64 0, i32 %.sroa.0.0.copyload.i.i93)
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.0.0.copyload.i.i93, ptr %i.ad, align 8
  %i.ae = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE22TruncateWord64ToWord32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE(ptr noundef nonnull align 8 dereferenceable(136) %i.z, ptr noundef nonnull byval(%"class.v8::internal::compiler::turboshaft::ConstOrV.4043") align 8 %5)
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %switch.i95 = icmp ult i8 %3, 2
  %.not161 = icmp eq i8 %i.j, 75
  %or.cond169 = and i1 %switch.i95, %.not161
  br i1 %or.cond169, label %bb.l, label %.thread146

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ag = load i8, ptr %i.af, align 4
  %switch = icmp ult i8 %i.ag, 2
  br i1 %switch, label %bb.m, label %.thread146.thread167

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp eq i8 %3, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word64ConstantEm(ptr noundef nonnull align 8 dereferenceable(136) %i.ai, i64 noundef %i.ak)
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.am = trunc i64 %i.ak to i32
  %i.an = tail call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj(ptr noundef nonnull align 8 dereferenceable(136) %i.ai, i32 noundef %i.am)
  br label %bb.v

.thread146:                                       ; preds = %bb.k
  %.not163 = icmp eq i8 %i.j, 75
  br i1 %.not163, label %.thread146.thread167, label %.thread153

.thread146.thread167:                             ; preds = %bb.l, %.thread146
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ap = load i8, ptr %i.ao, align 4             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_:bb.a
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 -87, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %3, ptr %i.ak, align 1
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %1 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10AllocateOpEE3NewIJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10AllocateOpEE3NewIJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.av = lshr i64 %i.i, 4
  %i.aw = and i64 %i.av, 268435455                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %.not.i.i7 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i7, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.bg = lshr i64 %i.aw, 1
  %i.bh = add nuw nsw i64 %i.aw, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bp)
  %.pre.i.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit, %bb.d
  %i.bq = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit ]
  %i.br = trunc i64 %i.i to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aw
  store i32 %.sroa.0.0.copyload.i, ptr %i.bs, align 4
  ret i32 %i.br
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_22NewArgumentsElementsOpEJNS2_14ShadowyOpIndexENS0_19CreateArgumentsTypeEiEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_22NewArgumentsElementsOpEE3NewIJNS2_14ShadowyOpIndexENS0_19CreateArgumentsTypeEiEEERS4_PNS2_5GraphEDpT_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre9 = ptrtoint ptr %.pre to i64
  %.pre10 = sub i64 %.pre10.i.i.i.i, %.pre9
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_22NewArgumentsElementsOpEE3NewIJNS2_14ShadowyOpIndexENS0_19CreateArgumentsTypeEiEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_22NewArgumentsElementsOpEE3NewIJNS2_14ShadowyOpIndexENS0_19CreateArgumentsTypeEiEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi11 = phi i64 [ %i.i, %bb.a ], [ %.pre10, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi11 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi11, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 -110, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %3, ptr %i.ak, align 4
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %1 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_22NewArgumentsElementsOpEEEvRKT_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_22NewArgumentsElementsOpEE3NewIJNS2_14ShadowyOpIndexENS0_19CreateArgumentsTypeEiEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_22NewArgumentsElementsOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_22NewArgumentsElementsOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_22NewArgumentsElementsOpEE3NewIJNS2_14ShadowyOpIndexENS0_19CreateArgumentsTypeEiEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 900
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.av = lshr i64 %i.i, 4
  %i.aw = and i64 %i.av, 268435455                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %.not.i.i7 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i7, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !11

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_22NewArgumentsElementsOpEEEvRKT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.bg = lshr i64 %i.aw, 1
  %i.bh = add nuw nsw i64 %i.aw, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bp)
  %.pre.i.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_22NewArgumentsElementsOpEEEvRKT_.exit, %bb.d
  %i.bq = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_22NewArgumentsElementsOpEEEvRKT_.exit ]
  %i.br = trunc i64 %i.i to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aw
  store i32 %.sroa.0.0.copyload.i, ptr %i.bs, align 4
  ret i32 %i.br
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23TruncateWordPtrToWord32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -744 ; 3 uses
  %i.e = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE19ReduceTaggedBitcastENS2_1VINS2_3AnyEEENS2_22RegisterRepresentationESS_NS2_15TaggedBitcastOp4KindE(ptr noundef nonnull align 8 dereferenceable(666) %i.d, i32 %1, i8 4, i8 1, i8 noundef zeroext 0)
  %.pr = load ptr, ptr %i.a, align 8
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23TruncateWordPtrToWord32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.b
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i8 noundef zeroext 0, i64 noundef 32)
  %i.h = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i32 %i.g)
  %.pr22 = load ptr, ptr %i.a, align 8
  %i.i = icmp eq ptr %.pr22, null
  br i1 %i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23TruncateWordPtrToWord32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %2 = getelementptr inbounds i8, ptr %0, i64 -744
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE11ReduceShiftENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEEEENSP_ISS_EENS2_7ShiftOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(666) %2, i32 %i.e, i32 %i.h, i8 noundef zeroext 0, i8 1)
  %.pr25.pr = load ptr, ptr %i.a, align 8
  %i.k = icmp eq ptr %.pr25.pr, null
  br i1 %i.k, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23TruncateWordPtrToWord32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit, label %bb.c, !prof !2421

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i
  %3 = getelementptr inbounds i8, ptr %0, i64 -744
  %i.l = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSQ_IJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEENSQ_IJNS2_13FloatWithBitsILm32EEENSV_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENS11_10AssumptionENS2_22RegisterRepresentationES14_(ptr noundef nonnull align 8 dereferenceable(666) %3, i32 %i.j, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23TruncateWordPtrToWord32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23TruncateWordPtrToWord32ENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit: ; preds = %bb.a, %bb.b, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i, %bb.c
  %.sroa.08.0.i.i.i = phi i32 [ %i.l, %bb.c ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.sroa.08.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_17ArgumentsLengthOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !210
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 4, !noalias !3353 ; 3 uses
  %i.o = load i8, ptr %i.l, align 4, !noalias !3353 ; 2 uses
  %i.p = shl i32 %i.n, 15
  %i.q = xor i32 %i.n, -1
  %i.r = add i32 %i.p, %i.q                       ; 2 uses
  %i.s = lshr i32 %i.r, 12
  %i.t = xor i32 %i.s, %i.r
  %i.u = mul i32 %i.t, 5                          ; 2 uses
  %i.v = lshr i32 %i.u, 4
  %i.w = xor i32 %i.v, %i.u
  %i.x = mul i32 %i.w, 2057                       ; 2 uses
  %i.y = lshr i32 %i.x, 16
  %i.z = xor i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.aa, 17
  %i.ac = zext i8 %i.o to i64
  %i.ad = add nuw nsw i64 %i.ab, %i.ac
  %i.ae = mul nuw nsw i64 %i.ad, 289
  %i.af = add nuw nsw i64 %i.ae, 110              ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = and i64 %i.af, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ai ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.pre.pre = phi i64 [ %i.bl, %bb.e ], [ %i.an, %bb.b ]
  %i.ap = phi ptr [ %i.bj, %bb.e ], [ %i.al, %bb.b ] ; 2 uses
  %.02632.i = phi i64 [ %i.bi, %bb.e ], [ %i.ai, %bb.b ]
  %i.aq = icmp eq i64 %.pre.pre, %i.af
  br i1 %i.aq, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.ar = load ptr, ptr %i.d, align 8, !nonnull !6, !align !210
  %.sroa.0.0.copyload.i = load i32, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = zext i32 %.sroa.0.0.copyload.i to i64
  %i.aw = add i64 %i.au, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = icmp eq i8 %i.ay, 110
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !3356
  %i.bd = load i8, ptr %i.ba, align 4, !noalias !3356
  %i.be = icmp eq i8 %i.bd, %i.o
  %i.bf = icmp eq i32 %i.bc, %i.n
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_17ArgumentsLengthOpEEEPNSJ_5EntryERKT_Pm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %i.bh = add i64 %.02632.i, 1
  %i.bi = and i64 %i.bh, %i.ah                    ; 2 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.loopexit, label %.lr.ph.i, !llvm.loop !3359

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.ph = phi ptr [ %i.al, %bb.b ], [ %i.bj, %bb.e ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bw = load i32, ptr %i.bv, align 4
  store i32 %1, ptr %.ph, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store i32 %.sroa.0.0.copyload.i16, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %i.af, ptr %i.bn, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  store ptr %i.bu, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 24
  store i32 %i.bw, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bx = load ptr, ptr %i.br, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  store ptr %.ph, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bz, align 8
  br label %bb.i

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_17ArgumentsLengthOpEEEPNSJ_5EntryERKT_Pm.exit: ; preds = %bb.d
  %i.cc = load ptr, ptr %i.d, align 8, !nonnull !6, !align !210 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !3360 ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 5 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !3360
  %i.ci = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cj = sub i64 %i.cf, %i.ci                    ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = lshr i32 %i.ck, 4
  %i.co = add nsw i32 %i.cn, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = zext i16 %i.cr to i64                   ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = sub i64 %i.cj, %i.ct
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = add i64 %i.cv, %i.ci
  %i.cx = inttoptr i64 %i.cw to ptr               ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.db ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.de = load i16, ptr %i.dd, align 2            ; 2 uses
  %i.df = zext i16 %i.de to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.df, 2          ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx.i.i.i
  %.not10.i.i.i = icmp eq i16 %i.de, 0
  br i1 %.not10.i.i.i, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_17ArgumentsLengthOpEEEPNSJ_5EntryERKT_Pm.exit
  %i.dh = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.di = and i64 %i.dh, 4
  %lcmp.mod.not.not = icmp eq i64 %i.di, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %.sroa.01.0.copyload.i.i.i.prol = load i32, ptr %i.dc, align 4
  %i.dj = load ptr, ptr %i.cg, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = zext i32 %.sroa.01.0.copyload.i.i.i.prol to i64
  %i.dm = add i64 %i.dk, %i.dl
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = add i8 %i.dp, -1                        ; 2 uses
  %spec.select.i.i.i.i.prol = icmp ult i8 %i.dq, -2
  br i1 %spec.select.i.i.i.i.prol, label %bb.f, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, !prof !11

bb.f:                                             ; preds = %.lr.ph.i.i.i.prol
  store i8 %i.dq, ptr %i.do, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol: ; preds = %bb.f, %.lr.ph.i.i.i.prol
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.011.i.i.i.unr = phi ptr [ %i.dc, %.lr.ph.i.i.i.preheader ], [ %i.dr, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.prol ]
  %i.ds = icmp eq i64 %i.dh, 0
  br i1 %i.ds, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1
  %.011.i.i.i = phi ptr [ %i.ek, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.1 ], [ %.011.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %.011.i.i.i, align 4
  %i.dt = load ptr, ptr %i.cg, align 8
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = zext i32 %.sroa.01.0.copyload.i.i.i to i64
  %i.dw = add i64 %i.du, %i.dv
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev28ExtendPropertiesBackingStoreERKNS4_15ProcessingStateE:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.t, ptr %i.u, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.w = load ptr, ptr %i.r, align 8              ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  store ptr %i.ab, ptr %3, align 8
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ae, %tailrecurse.i.i ], [ %i.w, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %3, align 8
  %i.ak = icmp eq i8 %i.y, 3
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.al = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, %bb.c
  %.sroa.06.0.i = phi i32 [ %i.ac, %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i ], [ %i.al, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not = icmp eq i32 %.sroa.06.0.i, -1
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load ptr, ptr %i.m, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.an, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, label %bb.f

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit29

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %i.an, %i.as
  br i1 %i.at, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread44, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, !prof !7

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread44: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.sroa.0.0.copyload.i.i22 = load ptr, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i22, i64 16
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.av, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ax, ptr %i.b, align 8
  br label %bb.g

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.az = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.az, align 4 ; 2 uses
  %.pre = load ptr, ptr %i.ao, align 8
  %i.ba = icmp eq ptr %.pre, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bb = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bc, ptr %i.b, align 8
  br i1 %i.ba, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit29, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread44, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit
  %i.bd = phi ptr [ %i.ax, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread44 ], [ %i.bc, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ]
  %.sroa.01.0.i.i46 = phi i32 [ %.sroa.02.0.copyload.i.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread44 ], [ %.sroa.01.0.copyload.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.sroa.0.0.copyload.i.i27 = load ptr, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i27, i64 16
  %.sroa.02.0.copyload.i.i.i28 = load i32, ptr %i.bi, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit29

bb.i:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.bk = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.sroa.01.0.copyload.i.i25 = load i32, ptr %i.bk, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit29

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit29: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, %bb.h, %bb.i
  %.sroa.01.0.i.i43 = phi i32 [ %.sroa.01.0.i.i46, %bb.i ], [ %.sroa.01.0.i.i46, %bb.h ], [ %.sroa.01.0.copyload.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread ]
  %.sroa.01.0.i.i26 = phi i32 [ %.sroa.01.0.copyload.i.i25, %bb.i ], [ %.sroa.02.0.copyload.i.i.i28, %bb.h ], [ -1, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = load i64, ptr %i.d, align 8             ; 2 uses
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = trunc i64 %i.bo to i16                  ; 2 uses
  %i.bq = and i16 %i.bp, 2
  %.not.i.i.i30 = icmp eq i16 %i.bq, 0
  %.neg.i.i31 = select i1 %.not.i.i.i30, i64 0, i64 -48
  %i.br = and i16 %i.bp, 6
  %i.bs = icmp eq i16 %i.br, 4
  %.neg2.i.i32 = select i1 %i.bs, i64 -56, i64 0
  %.neg3.i.i33 = add nsw i64 %.neg.i.i31, %.neg2.i.i32
  %i.bt = trunc i64 %i.bn to i32
  %i.bu = lshr i32 %i.bt, 16
  %narrow.i.i.i34 = sub nsw i32 1, %i.bu
  %i.bv = sext i32 %narrow.i.i.i34 to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bv
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = add i64 %.neg3.i.i33, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = call i32 @_ZN2v88internal8compiler10turboshaft28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE28ExtendPropertiesBackingStoreENS2_1VINS0_13PropertyArrayEEENSQ_INS0_8JSObjectEEEiNSQ_INS2_10FrameStateEEERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(704) %i.am, i32 %.sroa.01.0.i.i43, i32 %.sroa.01.0.i.i26, i32 noundef %i.bm, i32 %.sroa.06.0.i, ptr noundef nonnull align 8 dereferenceable(12) %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.cc = load ptr, ptr %i.ao, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit29
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.cf = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i32 %i.cb, ptr %i.cf, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit29, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit
  %.1 = phi i32 [ 0, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit ], [ 3, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft28TurbolevEarlyLoweringReducerINS2_26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerES3_S4_S5_S6_S8_SA_EEEEEEEEEEEEEEEEEEEE28ExtendPropertiesBackingStoreENS2_1VINS0_13PropertyArrayEEENSQ_INS0_8JSObjectEEEiNSQ_INS2_10FrameStateEEERKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(704) %0, i32 %1, i32 %2, i32 noundef %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry.1306", align 8 ; 6 uses
  %7 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %8 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %9 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %10 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 12 uses
  %11 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %12 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::BlockOriginTrackingReducer, v8::internal::compiler::turboshaft::TurbolevEarlyLoweringReducer, v8::internal::compiler::turboshaft::MachineOptimizationReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::RequiredOptimizationReducer, v8::internal::compiler::turboshaft::ValueNumberingReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 6 uses
  %13 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %14 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %15 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 5 uses
  %i.a = add nsw i32 %3, 3                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_13PropertyArrayEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i: ; preds = %bb.a
  %i.g = shl nsw i32 %i.a, 3
  %i.h = add nsw i32 %i.g, 16
  %i.i = sext i32 %i.h to i64
  %i.j = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 1, i64 noundef %i.i)
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.j)
  %.pr.a = load ptr, ptr %i.c, align 8
  %16 = icmp eq ptr %.pr.a, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  store i8 1, ptr %i.l, align 8
  br i1 %16, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_13PropertyArrayEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit, label %bb.b, !prof !2421

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i
  %i.m = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.k, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_13PropertyArrayEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_13PropertyArrayEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i, %bb.b
  %i.n = phi ptr [ %i.l, %bb.b ], [ %i.l, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i ], [ %i.f, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread ]
  %.sroa.03.0.i.i = phi i32 [ %i.m, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %7, i8 noundef zeroext 2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1952
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 824 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_13PropertyArrayEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 63768
  %i.y = load ptr, ptr %i.x, align 8
  %.not5.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.w, ptr nonnull %i.s) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_13PropertyArrayEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  %i.ab = ptrtoint ptr %i.s to i64
  %i.ac = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENSI_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 8, i64 %i.ab)
  %i.ad = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ac)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, %bb.e
  %.sroa.02.0.i.i = phi i32 [ %i.ad, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i ]
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_13PropertyArrayEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %7, i32 %.sroa.02.0.i.i, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ae = icmp sgt i32 %3, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit
  %i.af = load ptr, ptr %i.o, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1952
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 648 ; 2 uses
  %i.aj = load ptr, ptr %i.t, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.al, null
  br i1 %.not.i.i81, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i83, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 63768
  %i.an = load ptr, ptr %i.am, align 8
  %.not5.i.i82 = icmp eq ptr %i.an, null
  br i1 %.not5.i.i82, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i83, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.al, ptr nonnull %i.ai) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i83

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i83: ; preds = %bb.g, %bb.f, %._crit_edge
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_9UndefinedEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i83
  %i.aq = ptrtoint ptr %i.ai to i64
  %i.ar = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENSI_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext 8, i64 %i.aq)
  %i.as = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ar)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_9UndefinedEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_9UndefinedEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i83, %bb.h
  %.sroa.02.0.i.i84 = phi i32 [ %i.as, %bb.h ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i83 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @_ZN2v88internal8compiler13AccessBuilder20ForPropertyArraySlotEi(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %10, i32 noundef %3) #27
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_13PropertyArrayEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 %.sroa.02.0.i.i84, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.at = add nsw i32 %3, 1
  call void @_ZN2v88internal8compiler13AccessBuilder20ForPropertyArraySlotEi(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %10, i32 noundef %i.at) #27
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_13PropertyArrayEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 %.sroa.02.0.i.i84, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.au = add nsw i32 %3, 2
  call void @_ZN2v88internal8compiler13AccessBuilder20ForPropertyArraySlotEi(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %10, i32 noundef %i.au) #27
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_13PropertyArrayEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %10, i32 %.sroa.02.0.i.i84, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i64 0, ptr %6, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i, i8 -1, i64 20, i1 false)
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -32
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.az
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, %.lr.ph
  %.0175 = phi i32 [ %i.bb, %.lr.ph ], [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZN2v88internal8compiler13AccessBuilder20ForPropertyArraySlotEi(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %8, i32 noundef %.0175) #27
  %i.ba = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS0_6ObjectEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @_ZN2v88internal8compiler13AccessBuilder20ForPropertyArraySlotEi(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %9, i32 noundef %.0175) #27
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_13PropertyArrayEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 %i.ba, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.bb = add nuw nsw i32 %.0175, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3524

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_9UndefinedEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.bc = load ptr, ptr %i.av, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  store ptr %i.bd, ptr %i.av, align 8
  br label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_9UndefinedEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.be, ptr noundef nonnull align 8 dereferenceable(28) %6)
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !3525
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.j ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !3525
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.l, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS5_SI_EEINSB_INSC_INSD_INSE_INS2_21EmitProjectionReducerINSF_INS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEEEPT_.exit

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !3525
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 512
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS5_SI_EEINSB_INSC_INSD_INSE_INS2_21EmitProjectionReducerINSF_INS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEEEPT_.exit

_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS5_SI_EEINSB_INSC_INSD_INSE_INS2_21EmitProjectionReducerINSF_INS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEEEPT_.exit: ; preds = %bb.k, %bb.l
  %i.bo = phi ptr [ %i.bn, %bb.l ], [ %i.bf, %bb.k ] ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bq = icmp eq i32 %3, 0
  br i1 %i.bq, label %bb.m, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i96

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEECI2NS2_3VarIS5_SI_EEINSB_INSC_INSD_INSE_INS2_21EmitProjectionReducerINSF_INS2_18GenericReducerBaseINSG_INS2_11StackBottomISH_EEEEEEEEEEEEEEEEEEEEPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @_ZN2v88internal8compiler13AccessBuilder27ForJSObjectPropertiesOrHashEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %11) #27
  %i.br = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS0_6ObjectEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %2, ptr noundef nonnull align 8 dereferenceable(72) %11) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.bu = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %i.br)
  %.sroa.0148.0.insert.ext = zext i32 %i.bu to i64
  %i.bv = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_BindIfENS2_17ConditionWithHintEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i64 %.sroa.0148.0.insert.ext, ptr noundef nonnull %12)
  br i1 %i.bv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i: ; preds = %bb.m
  %i.bw = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i32 %i.br)
  %i.bx = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15Word32ShiftLeftENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_(ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 0, i32 %i.bw, i64 4294967306, i32 -1)
  %i.by = load ptr, ptr %i.c, align 8
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit, label %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEaSENS2_8ConstOrVIS5_jEE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEaSENS2_8ConstOrVIS5_jEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES4_S5_S7_S9_EEEEEEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISQ_SR_EESQ_(ptr noundef nonnull align 8 dereferenceable(344) %i.bs, ptr nonnull %i.bp, i32 %i.bx)
  %.pr188 = load ptr, ptr %i.c, align 8
  %i.ca = icmp eq ptr %.pr188, null
  br i1 %i.ca, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEaSENS2_8ConstOrVIS5_jEE.exit
  %i.cb = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 52
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp ne i32 %i.cd, -1
  %i.cf = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.cb, i1 noundef zeroext %i.ce), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEaSENS2_8ConstOrVIS5_jEE.exit, %bb.n, %bb.m
  %i.cg = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ControlFlowHelper_BindElseEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %12)
  br i1 %i.cg, label %bb.o, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit.2

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit
  %i.ch = load ptr, ptr %i.c, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev29LoadTaggedFieldForContextSlotERKNS4_15ProcessingStateE:bb.a
  br i1 %i.bit, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread.i977

.split.i983:                                      ; preds = %bb.gk, %bb.gk, %bb.gk
  %i.biv = load ptr, ptr %i.bik, align 8
  %i.biw = load ptr, ptr %i.bgq, align 8          ; 2 uses
  %i.bix = icmp eq ptr %i.biv, %i.biw
  %i.biy = ptrtoint ptr %i.biw to i64
  %i.biz = trunc i64 %i.biy to i32
  br i1 %i.bix, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread.i977

bb.gl:                                            ; preds = %bb.gk
  unreachable

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.i987: ; preds = %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk, %bb.gk
  %i.bja = load i64, ptr %i.bik, align 8
  %i.bjb = load i64, ptr %i.bgq, align 8          ; 2 uses
  %i.bjc = icmp eq i64 %i.bja, %i.bjb
  %i.bjd = trunc i64 %i.bjb to i32
  br i1 %i.bjc, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread.i977

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread.i977: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.i987, %.split.i983, %.split30.i984, %.split31.i985, %.split32.i986, %bb.gj, %bb.gi, %.lr.ph.i975
  %i.bje = phi i32 [ %i.bhv, %bb.gi ], [ %i.bjd, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.i987 ], [ %i.biz, %.split.i983 ], [ %i.biu, %.split30.i984 ], [ %i.biq, %.split31.i985 ], [ %i.bhv, %.split32.i986 ], [ %i.bhv, %bb.gj ], [ %i.bhv, %.lr.ph.i975 ]
  %i.bjf = add i64 %.02638.i976, 1
  %i.bjg = and i64 %i.bjf, %i.bho                 ; 2 uses
  %i.bjh = getelementptr inbounds nuw [32 x i8], ptr %i.bhq, i64 %i.bjg ; 3 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 8
  %i.bjj = load i64, ptr %i.bji, align 8          ; 2 uses
  %i.bjk = icmp eq i64 %i.bjj, 0
  br i1 %i.bjk, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988, label %.lr.ph.i975, !llvm.loop !2546

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread.i977, %.split32.i986, %.split31.i985, %.split30.i984, %.split.i983, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.i987
  %.ph1212.a = phi ptr [ %i.bhx, %.split.i983 ], [ %i.bhx, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.i987 ], [ %i.bhx, %.split32.i986 ], [ %i.bhx, %.split31.i985 ], [ %i.bhx, %.split30.i984 ], [ %i.bjh, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_10ConstantOpEE12EqualsForGVNERKS5_.exit.thread.i977 ] ; 3 uses
  %.phi.trans.insert1230 = getelementptr inbounds nuw i8, ptr %.ph1212.a, i64 8
  %.pre1231 = load i64, ptr %.phi.trans.insert1230, align 8
  %i.bjl = icmp eq i64 %.pre1231, 0
  br i1 %i.bjl, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988.thread, label %bb.gm

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988.thread: ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit.i970, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988
  %i.bjm = phi ptr [ %.ph1212.a, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988 ], [ %i.bhr, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE11ComputeHashILb0ENS2_10ConstantOpEEEmRKT0_b.exit.i970 ] ; 6 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 8
  %i.bjo = load ptr, ptr %i.e, align 8
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 52
  %.sroa.0.0.copyload.i.i597 = load i32, ptr %i.bjp, align 4
  %i.bjq = load ptr, ptr %i.be, align 8
  %i.bjr = getelementptr inbounds i8, ptr %i.bjq, i64 -8
  %i.bjs = load ptr, ptr %i.bjr, align 8
  %i.bjt = load i32, ptr %i.bg, align 4
  store i32 %i.bde, ptr %i.bjm, align 8
  %.sroa.4.0..sroa_idx.i598 = getelementptr inbounds nuw i8, ptr %i.bjm, i64 4
  store i32 %.sroa.0.0.copyload.i.i597, ptr %.sroa.4.0..sroa_idx.i598, align 4
  store i64 %..i.i974, ptr %i.bjn, align 8
  %.sroa.6.0..sroa_idx.i599 = getelementptr inbounds nuw i8, ptr %i.bjm, i64 16
  store ptr %i.bjs, ptr %.sroa.6.0..sroa_idx.i599, align 8
  %.sroa.7.0..sroa_idx.i600 = getelementptr inbounds nuw i8, ptr %i.bjm, i64 24
  store i32 %i.bjt, ptr %.sroa.7.0..sroa_idx.i600, align 8
  %i.bju = load ptr, ptr %i.be, align 8
  %i.bjv = getelementptr inbounds i8, ptr %i.bju, i64 -8
  store ptr %i.bjm, ptr %i.bjv, align 8
  %i.bjw = load i64, ptr %i.ba, align 8
  %i.bjx = add i64 %i.bjw, 1
  store i64 %i.bjx, ptr %i.ba, align 8
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_.exit601

bb.gm:                                            ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988
  %i.bjy = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !210 ; 3 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 16 ; 3 uses
  %i.bka = load ptr, ptr %i.bjz, align 8, !noalias !3673 ; 2 uses
  %i.bkb = ptrtoint ptr %i.bka to i64
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjy, i64 8 ; 5 uses
  %i.bkd = load ptr, ptr %i.bkc, align 8, !noalias !3673
  %i.bke = ptrtoint ptr %i.bkd to i64             ; 2 uses
  %i.bkf = sub i64 %i.bkb, %i.bke                 ; 2 uses
  %i.bkg = trunc i64 %i.bkf to i32
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bjy, i64 32 ; 2 uses
  %i.bki = load ptr, ptr %i.bkh, align 8
  %i.bkj = lshr i32 %i.bkg, 4
  %i.bkk = add nsw i32 %i.bkj, -1
  %i.bkl = zext i32 %i.bkk to i64
  %i.bkm = getelementptr inbounds nuw [2 x i8], ptr %i.bki, i64 %i.bkl
  %i.bkn = load i16, ptr %i.bkm, align 2
  %i.bko = zext i16 %i.bkn to i64                 ; 2 uses
  %i.bkp = shl nuw nsw i64 %i.bko, 3
  %i.bkq = sub i64 %i.bkf, %i.bkp
  %i.bkr = and i64 %i.bkq, 4294967295
  %i.bks = add i64 %i.bkr, %i.bke
  %i.bkt = inttoptr i64 %i.bks to ptr             ; 3 uses
  %i.bku = load i8, ptr %i.bkt, align 4
  %i.bkv = zext i8 %i.bku to i64
  %i.bkw = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.bkv
  %i.bkx = load i64, ptr %i.bkw, align 8
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkt, i64 %i.bkx ; 4 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkt, i64 2
  %i.bla = load i16, ptr %i.bkz, align 2          ; 2 uses
  %i.blb = zext i16 %i.bla to i64
  %.idx.i.i.i.i570 = shl nuw nsw i64 %i.blb, 2    ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bky, i64 %.idx.i.i.i.i570
  %.not10.i.i.i.i571 = icmp eq i16 %i.bla, 0
  br i1 %.not10.i.i.i.i571, label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i592, label %.lr.ph.i.i.i.i572.preheader

.lr.ph.i.i.i.i572.preheader:                      ; preds = %bb.gm
  %i.bld = add nsw i64 %.idx.i.i.i.i570, -4       ; 2 uses
  %i.ble = and i64 %i.bld, 4
  %lcmp.mod1411.not.not = icmp eq i64 %i.ble, 0
  br i1 %lcmp.mod1411.not.not, label %.lr.ph.i.i.i.i572.prol, label %.lr.ph.i.i.i.i572.prol.loopexit

.lr.ph.i.i.i.i572.prol:                           ; preds = %.lr.ph.i.i.i.i572.preheader
  %.sroa.01.0.copyload.i.i.i.i574.prol = load i32, ptr %i.bky, align 4
  %i.blf = load ptr, ptr %i.bkc, align 8
  %i.blg = ptrtoint ptr %i.blf to i64
  %i.blh = zext i32 %.sroa.01.0.copyload.i.i.i.i574.prol to i64
  %i.bli = add i64 %i.blg, %i.blh
  %i.blj = inttoptr i64 %i.bli to ptr
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 1 ; 2 uses
  %i.bll = load i8, ptr %i.blk, align 1
  %i.blm = add i8 %i.bll, -1                      ; 2 uses
  %spec.select.i.i.i.i.i575.prol = icmp ult i8 %i.blm, -2
  br i1 %spec.select.i.i.i.i.i575.prol, label %bb.gn, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.prol, !prof !11

bb.gn:                                            ; preds = %.lr.ph.i.i.i.i572.prol
  store i8 %i.blm, ptr %i.blk, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.prol

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.prol: ; preds = %bb.gn, %.lr.ph.i.i.i.i572.prol
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bky, i64 4
  br label %.lr.ph.i.i.i.i572.prol.loopexit

.lr.ph.i.i.i.i572.prol.loopexit:                  ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.prol, %.lr.ph.i.i.i.i572.preheader
  %.011.i.i.i.i573.unr = phi ptr [ %i.bky, %.lr.ph.i.i.i.i572.preheader ], [ %i.bln, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.prol ]
  %i.blo = icmp eq i64 %i.bld, 0
  br i1 %i.blo, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i578, label %.lr.ph.i.i.i.i572

.lr.ph.i.i.i.i572:                                ; preds = %.lr.ph.i.i.i.i572.prol.loopexit, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.1
  %.011.i.i.i.i573 = phi ptr [ %i.bmg, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.1 ], [ %.011.i.i.i.i573.unr, %.lr.ph.i.i.i.i572.prol.loopexit ] ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i574 = load i32, ptr %.011.i.i.i.i573, align 4
  %i.blp = load ptr, ptr %i.bkc, align 8
  %i.blq = ptrtoint ptr %i.blp to i64
  %i.blr = zext i32 %.sroa.01.0.copyload.i.i.i.i574 to i64
  %i.bls = add i64 %i.blq, %i.blr
  %i.blt = inttoptr i64 %i.bls to ptr
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 1 ; 2 uses
  %i.blv = load i8, ptr %i.blu, align 1
  %i.blw = add i8 %i.blv, -1                      ; 2 uses
  %spec.select.i.i.i.i.i575 = icmp ult i8 %i.blw, -2
  br i1 %spec.select.i.i.i.i.i575, label %bb.go, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576, !prof !11

bb.go:                                            ; preds = %.lr.ph.i.i.i.i572
  store i8 %i.blw, ptr %i.blu, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576: ; preds = %bb.go, %.lr.ph.i.i.i.i572
  %i.blx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i573, i64 4
  %.sroa.01.0.copyload.i.i.i.i574.1 = load i32, ptr %i.blx, align 4
  %i.bly = load ptr, ptr %i.bkc, align 8
  %i.blz = ptrtoint ptr %i.bly to i64
  %i.bma = zext i32 %.sroa.01.0.copyload.i.i.i.i574.1 to i64
  %i.bmb = add i64 %i.blz, %i.bma
  %i.bmc = inttoptr i64 %i.bmb to ptr
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 1 ; 2 uses
  %i.bme = load i8, ptr %i.bmd, align 1
  %i.bmf = add i8 %i.bme, -1                      ; 2 uses
  %spec.select.i.i.i.i.i575.1 = icmp ult i8 %i.bmf, -2
  br i1 %spec.select.i.i.i.i.i575.1, label %bb.gp, label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.1, !prof !11

bb.gp:                                            ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576
  store i8 %i.bmf, ptr %i.bmd, align 1
  br label %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.1

_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.1: ; preds = %bb.gp, %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576
  %i.bmg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i573, i64 8 ; 2 uses
  %.not.i.i.i.i577.1 = icmp eq ptr %i.bmg, %i.blc
  br i1 %.not.i.i.i.i577.1, label %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i578, label %.lr.ph.i.i.i.i572

_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i578: ; preds = %_ZN2v88internal8compiler10turboshaft14SaturatedUint84DecrEv.exit.i.i.i.i576.1, %.lr.ph.i.i.i.i572.prol.loopexit
  %.pre.i.i.i579 = load ptr, ptr %i.bkh, align 8
  %.pre8.i.i.i580 = load ptr, ptr %i.bjz, align 8 ; 2 uses
  %.pre9.i.i.i581 = load ptr, ptr %i.bkc, align 8
  %.pre10.i.i.i582 = ptrtoint ptr %.pre8.i.i.i580 to i64
  %.pre11.i.i.i583 = ptrtoint ptr %.pre9.i.i.i581 to i64
  %.pre13.i.i.i584 = sub i64 %.pre10.i.i.i582, %.pre11.i.i.i583
  %.pre15.i.i.i585 = trunc i64 %.pre13.i.i.i584 to i32
  %.pre17.i.i.i586 = lshr i32 %.pre15.i.i.i585, 4
  %.pre19.i.i.i587 = add nsw i32 %.pre17.i.i.i586, -1
  %.pre21.i.i.i588 = zext i32 %.pre19.i.i.i587 to i64
  %.phi.trans.insert.i.i589 = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i.i579, i64 %.pre21.i.i.i588
  %.pre.i.i590 = load i16, ptr %.phi.trans.insert.i.i589, align 2
  %.pre1.i.i591 = zext i16 %.pre.i.i590 to i64
  br label %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i592

_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i592: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i578, %bb.gm
  %.pre-phi.i.i593 = phi i64 [ %i.bko, %bb.gm ], [ %.pre1.i.i591, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i578 ]
  %i.bmh = phi ptr [ %i.bka, %bb.gm ], [ %.pre8.i.i.i580, %_ZN2v88internal8compiler10turboshaft5Graph18DecrementInputUsesINS2_9OperationEEEvRKT_.exit.loopexit.i.i.i578 ]
  %i.bmi = sub nsw i64 0, %.pre-phi.i.i593
  %i.bmj = getelementptr inbounds [8 x i8], ptr %i.bmh, i64 %i.bmi
  store ptr %i.bmj, ptr %i.bjz, align 8
  %.sroa.015.0.copyload.i594 = load i32, ptr %.ph1212.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_.exit601

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_.exit601: ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988.thread, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i592, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_.exit612
  %.sroa.015.2.i596 = phi i32 [ %i.bde, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_.exit612 ], [ %i.bde, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE4FindINS2_10ConstantOpEEEPNSJ_5EntryERKT_Pm.exit988.thread ], [ %.sroa.015.0.copyload.i594, %_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE10RemoveLastENS2_7OpIndexE.exit.i592 ] ; 2 uses
  %.pr.i = load ptr, ptr %i.e, align 8
  %16 = icmp eq ptr %.pr.i, null
  store i8 1, ptr %i.bp, align 8
  br i1 %16, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit.i, label %bb.gq, !prof !2421

bb.gq:                                            ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_.exit601
  %i.bmk = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !210 ; 5 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 16 ; 3 uses
  %i.bmm = load ptr, ptr %i.bml, align 8          ; 2 uses
  %i.bmn = ptrtoint ptr %i.bmm to i64             ; 2 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8 ; 3 uses
  %i.bmp = load ptr, ptr %i.bmo, align 8
  %i.bmq = ptrtoint ptr %i.bmp to i64             ; 2 uses
  %i.bmr = sub i64 %i.bmn, %i.bmq                 ; 3 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmk, i64 24
  %i.bmt = load ptr, ptr %i.bms, align 8
  %i.bmu = ptrtoint ptr %i.bmt to i64             ; 2 uses
  %i.bmv = sub i64 %i.bmu, %i.bmn
  %i.bmw = icmp ult i64 %i.bmv, 9
  br i1 %i.bmw, label %bb.gr, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10AllocateOpEE3NewIJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEERS4_PNS2_5GraphEDpT_.exit.i, !prof !7

bb.gr:                                            ; preds = %bb.gq
  %i.bmx = sub i64 %i.bmu, %i.bmq
  %i.bmy = lshr exact i64 %i.bmx, 3
  %i.bmz = and i64 %i.bmy, 4294967295
  %i.bna = add nuw nsw i64 %i.bmz, 2
  call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.bmk, i64 noundef %i.bna)
  %.pre.i.i.i.i.i567 = load ptr, ptr %i.bml, align 8 ; 2 uses
  %.pre10.i.i.i.i.i568 = ptrtoint ptr %.pre.i.i.i.i.i567 to i64
  %.pre.i569 = load ptr, ptr %i.bmo, align 8
  %.pre9.i = ptrtoint ptr %.pre.i569 to i64
  %.pre10.i = sub i64 %.pre10.i.i.i.i.i568, %.pre9.i
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10AllocateOpEE3NewIJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEERS4_PNS2_5GraphEDpT_.exit.i

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10AllocateOpEE3NewIJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEERS4_PNS2_5GraphEDpT_.exit.i: ; preds = %bb.gr, %bb.gq
  %.pre-phi11.i = phi i64 [ %i.bmr, %bb.gq ], [ %.pre10.i, %bb.gr ] ; 2 uses
  %i.bnb = phi ptr [ %i.bmm, %bb.gq ], [ %.pre.i.i.i.i.i567, %bb.gr ] ; 7 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bnb, i64 16
  store ptr %i.bnc, ptr %i.bml, align 8
  %i.bnd = trunc i64 %.pre-phi11.i to i32
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bmk, i64 32 ; 2 uses
  %i.bnf = load ptr, ptr %i.bne, align 8
  %i.bng = lshr i64 %.pre-phi11.i, 4
  %i.bnh = and i64 %i.bng, 268435455
  %i.bni = getelementptr inbounds nuw [2 x i8], ptr %i.bnf, i64 %i.bnh
  store i16 2, ptr %i.bni, align 2
  %i.bnj = load ptr, ptr %i.bne, align 8
  %i.bnk = add i32 %i.bnd, 16
  %i.bnl = lshr i32 %i.bnk, 4
  %i.bnm = add nsw i32 %i.bnl, -1
  %i.bnn = zext i32 %i.bnm to i64
  %i.bno = getelementptr inbounds nuw [2 x i8], ptr %i.bnj, i64 %i.bnn
  store i16 2, ptr %i.bno, align 2
  store i8 -87, ptr %i.bnb, align 4
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnb, i64 1
  store i8 0, ptr %i.bnp, align 1
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnb, i64 2
  store i16 1, ptr %i.bnq, align 2
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnb, i64 8
  store i32 %.sroa.015.2.i596, ptr %i.bnr, align 4
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnb, i64 4
  store i8 0, ptr %i.bns, align 4
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bnb, i64 5
  store i8 0, ptr %i.bnt, align 1
  %i.bnu = load ptr, ptr %i.bmo, align 8
  %i.bnv = ptrtoint ptr %i.bnu to i64
  %i.bnw = zext i32 %.sroa.015.2.i596 to i64
  %i.bnx = add i64 %i.bnv, %i.bnw
  %i.bny = inttoptr i64 %i.bnx to ptr
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 1 ; 2 uses
  %i.boa = load i8, ptr %i.bnz, align 1           ; 2 uses
  %.not.i.i.i564 = icmp eq i8 %i.boa, -1
  br i1 %.not.i.i.i564, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit.i, label %bb.gs, !prof !7

bb.gs:                                            ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10AllocateOpEE3NewIJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEERS4_PNS2_5GraphEDpT_.exit.i
  %i.bob = add nuw i8 %i.boa, 1
  store i8 %i.bob, ptr %i.bnz, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit.i

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit.i: ; preds = %bb.gs, %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_10AllocateOpEE3NewIJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEERS4_PNS2_5GraphEDpT_.exit.i
  %.sroa.0.0.copyload.i.i565 = load i32, ptr %i.ax, align 4
  %i.boc = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !210 ; 4 uses
  %i.bod = lshr i64 %i.bmr, 4
  %i.boe = and i64 %i.bod, 268435455              ; 4 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boc, i64 216 ; 3 uses
  %i.bog = load ptr, ptr %i.bof, align 8          ; 2 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.boc, i64 208 ; 4 uses
  %i.boi = load ptr, ptr %i.boh, align 8          ; 3 uses
  %i.boj = ptrtoint ptr %i.bog to i64
  %i.bok = ptrtoint ptr %i.boi to i64             ; 2 uses
  %i.bol = sub i64 %i.boj, %i.bok
  %i.bom = ashr exact i64 %i.bol, 2
  %.not.i.i7.i = icmp ugt i64 %i.bom, %i.boe
  br i1 %.not.i.i7.i, label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_.exit, label %bb.gt, !prof !11

bb.gt:                                            ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit.i
  %i.bon = lshr i64 %i.boe, 1
  %i.boo = add nuw nsw i64 %i.boe, 32
  %i.bop = add nuw nsw i64 %i.boo, %i.bon         ; 4 uses
  %i.boq = getelementptr inbounds nuw i8, ptr %i.boc, i64 224 ; 2 uses
  %i.bor = load ptr, ptr %i.boq, align 8
  %i.bos = ptrtoint ptr %i.bor to i64
  %i.bot = sub i64 %i.bos, %i.bok
  %i.bou = ashr exact i64 %i.bot, 2
  %.not.i.i964 = icmp ugt i64 %i.bop, %i.bou
  br i1 %.not.i.i964, label %bb.gu, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i965, !prof !7

bb.gu:                                            ; preds = %bb.gt
  %i.bov = getelementptr inbounds nuw i8, ptr %i.boc, i64 200
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bov, i64 noundef %i.bop)
  %.pre.i968 = load ptr, ptr %i.boh, align 8
  %.pre1232 = load ptr, ptr %i.bof, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i965

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i965: ; preds = %bb.gu, %bb.gt
  %i.bow = phi ptr [ %i.bog, %bb.gt ], [ %.pre1232, %bb.gu ] ; 3 uses
  %i.box = phi ptr [ %i.boi, %bb.gt ], [ %.pre.i968, %bb.gu ] ; 3 uses
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.box, i64 %i.bop ; 4 uses
  %i.boz = icmp ult ptr %i.bow, %i.boy
  br i1 %i.boz, label %.lr.ph.preheader.i966, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i959

.lr.ph.preheader.i966:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i965
  %i.bpa = ptrtoaddr ptr %i.bow to i64            ; 2 uses
  %i.bpb = ptrtoaddr ptr %i.box to i64
  %i.bpc = shl nuw nsw i64 %i.bop, 2
  %i.bpd = add nuw i64 %i.bpc, %i.bpb
  %i.bpe = add i64 %i.bpa, 4
  %umax.i967 = call i64 @llvm.umax.i64(i64 %i.bpd, i64 %i.bpe)
  %i.bpf = xor i64 %i.bpa, -1
  %i.bpg = add i64 %umax.i967, %i.bpf
  %i.bph = and i64 %i.bpg, -4
  %i.bpi = add i64 %i.bph, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.bow, i8 -1, i64 %i.bpi, i1 false)
  %.pre1233 = load ptr, ptr %i.boh, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i959

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i959: ; preds = %.lr.ph.preheader.i966, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i965
  %i.bpj = phi ptr [ %i.box, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i965 ], [ %.pre1233, %.lr.ph.preheader.i966 ] ; 3 uses
  %i.bpk = load ptr, ptr %i.boq, align 8          ; 2 uses
  %i.bpl = ptrtoint ptr %i.bpk to i64             ; 2 uses
  %i.bpm = ptrtoint ptr %i.bpj to i64
  %i.bpn = sub i64 %i.bpl, %i.bpm
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpj, i64 %i.bpn
  %i.bpp = icmp ult ptr %i.boy, %i.bpk
  br i1 %i.bpp, label %.lr.ph.preheader.i960, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit963

.lr.ph.preheader.i960:                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i959
  %i.bpq = ptrtoaddr ptr %i.boy to i64            ; 2 uses
  %i.bpr = add i64 %i.bpq, 4
  %umax.i961 = call i64 @llvm.umax.i64(i64 %i.bpl, i64 %i.bpr)
  %i.bps = xor i64 %i.bpq, -1
  %i.bpt = add i64 %umax.i961, %i.bps
  %i.bpu = and i64 %i.bpt, -4
  %i.bpv = add i64 %i.bpu, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.boy, i8 -1, i64 %i.bpv, i1 false)
  %.pre.i.i.i566.pre = load ptr, ptr %i.boh, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit963

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit963: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i959, %.lr.ph.preheader.i960
  %.pre.i.i.i566 = phi ptr [ %i.bpj, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE14EnsureCapacityEm.exit.i959 ], [ %.pre.i.i.i566.pre, %.lr.ph.preheader.i960 ]
  store ptr %i.bpo, ptr %i.bof, align 8
  br label %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_.exit

_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit963
  %i.bpw = phi ptr [ %.pre.i.i.i566, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm.exit963 ], [ %i.boi, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_10AllocateOpEEEvRKT_.exit.i ]
  %i.bpx = trunc i64 %i.bmr to i32
  %i.bpy = getelementptr inbounds nuw [4 x i8], ptr %i.bpw, i64 %i.boe
  store i32 %.sroa.0.0.copyload.i.i565, ptr %i.bpy, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_.exit, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_.exit601, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread.i
  %i.bpz = phi ptr [ %i.azw, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_.exit ], [ %i.azw, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_.exit601 ], [ %i.azy, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread.i ]
  %.sroa.011.0.i.i.i.i.i4741184 = phi i32 [ %i.azv, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_.exit ], [ %i.azv, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_.exit601 ], [ %.sroa.011.0.i.i.i.i.i4741185, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread.i ]
  %.sroa.03.0.i.i.i = phi i32 [ %i.bpx, %_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_.exit601 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %3, i8 noundef zeroext 2) #27
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpz, i64 808 ; 2 uses
  %i.bqb = load ptr, ptr %i.av, align 8
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 48
  %i.bqd = load ptr, ptr %i.bqc, align 8          ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bqd, null
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.gv

bb.gv:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit.i
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 63768
  %i.bqf = load ptr, ptr %i.bqe, align 8
  %.not5.i.i.i = icmp eq ptr %i.bqf, null
  br i1 %.not5.i.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.bqd, ptr nonnull %i.bqa) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.gw, %bb.gv, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit.i
  %i.bqg = load ptr, ptr %i.e, align 8
  %i.bqh = icmp eq ptr %i.bqg, null
  br i1 %i.bqh, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE27AllocateHeapNumberWithValueENS2_1VINS2_13FloatWithBitsILm64EEEEEPNS0_7FactoryE.exit, label %bb.gx, !prof !7

bb.gx:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i.i
  %i.bqi = ptrtoint ptr %i.bqa to i64
  %i.bqj = load ptr, ptr %i.aw, align 8, !nonnull !6, !align !210 ; 5 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 16 ; 3 uses
  %i.bql = load ptr, ptr %i.bqk, align 8          ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev29LoadTaggedFieldForContextSlotERKNS4_15ProcessingStateE:bb.a
  %i.cef = load ptr, ptr %i.bx, align 8           ; 2 uses
  %i.ceg = load ptr, ptr %i.by, align 8           ; 2 uses
  %i.ceh = icmp ult ptr %i.cef, %i.ceg
  br i1 %i.ceh, label %bb.jf, label %bb.je, !prof !11

bb.je:                                            ; preds = %bb.jd
  %i.cei = load ptr, ptr %i.ca, align 8
  %i.cej = ptrtoint ptr %i.ceg to i64
  %i.cek = ptrtoint ptr %i.cei to i64
  %i.cel = sub i64 %i.cej, %i.cek
  %i.cem = ashr exact i64 %i.cel, 4
  %i.cen = add nsw i64 %i.cem, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.cen)
  %.pre.i.i.i.i615 = load ptr, ptr %i.bx, align 8
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %i.ceo = phi ptr [ %i.cef, %bb.jd ], [ %.pre.i.i.i.i615, %bb.je ] ; 4 uses
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceo, i64 16
  store ptr %i.cep, ptr %i.bx, align 8
  store ptr %i.aq, ptr %i.ceo, align 8
  %.sroa.4.0..sroa_idx.i.i616 = getelementptr inbounds nuw i8, ptr %i.ceo, i64 8
  store i32 %.sroa.07.0.copyload.i613, ptr %.sroa.4.0..sroa_idx.i.i616, align 8
  %.sroa.5.0..sroa_idx.i.i617 = getelementptr inbounds nuw i8, ptr %i.ceo, i64 12
  store i32 %.sroa.03.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i617, align 4
  store i32 %.sroa.03.0.i.i.i, ptr %i.bw, align 8
  %i.ceq = load i8, ptr %i.cb, align 1, !range !5, !noundef !6
  %i.cer = trunc nuw i8 %i.ceq to i1
  br i1 %i.cer, label %bb.jm, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %.not.i.i618 = icmp eq i32 %.sroa.07.0.copyload.i613, -1
  %.not6.i.i619 = icmp eq i32 %.sroa.03.0.i.i.i, -1 ; 2 uses
  br i1 %.not.i.i618, label %bb.jj, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  br i1 %.not6.i.i619, label %bb.ji, label %bb.jm

bb.ji:                                            ; preds = %bb.jh
  %i.ces = load i64, ptr %i.cc, align 8           ; 2 uses
  %i.cet = load ptr, ptr %i.cd, align 8
  %i.ceu = getelementptr inbounds i8, ptr %i.cet, i64 -8
  %.sroa.0.0.copyload.i.i.i620 = load ptr, ptr %i.ceu, align 8
  %i.cev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i620, i64 8
  store i64 %i.ces, ptr %i.cev, align 8
  %i.cew = load ptr, ptr %i.cd, align 8
  %i.cex = getelementptr inbounds i8, ptr %i.cew, i64 -8
  %i.cey = load ptr, ptr %i.ce, align 8
  %i.cez = getelementptr inbounds nuw [8 x i8], ptr %i.cey, i64 %i.ces
  %i.cfa = load i64, ptr %i.cex, align 8
  store i64 %i.cfa, ptr %i.cez, align 8
  store i64 -1, ptr %i.cc, align 8
  %i.cfb = load ptr, ptr %i.cd, align 8
  %i.cfc = getelementptr inbounds i8, ptr %i.cfb, i64 -8
  store ptr %i.cfc, ptr %i.cd, align 8
  br label %bb.jm

bb.jj:                                            ; preds = %bb.jg
  br i1 %.not6.i.i619, label %bb.jm, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.cfd = load ptr, ptr %i.cd, align 8
  %i.cfe = load ptr, ptr %i.ce, align 8
  %i.cff = ptrtoint ptr %i.cfd to i64
  %i.cfg = ptrtoint ptr %i.cfe to i64
  %i.cfh = sub i64 %i.cff, %i.cfg
  %i.cfi = ashr exact i64 %i.cfh, 3
  store i64 %i.cfi, ptr %i.cc, align 8
  %i.cfj = load ptr, ptr %i.cd, align 8           ; 2 uses
  %i.cfk = load ptr, ptr %i.cf, align 8           ; 2 uses
  %i.cfl = icmp ult ptr %i.cfj, %i.cfk
  br i1 %i.cfl, label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_27RequiredOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerES9_SA_SC_SE_EEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i622, label %bb.jl, !prof !11

bb.jl:                                            ; preds = %bb.jk
  %i.cfm = load ptr, ptr %i.ce, align 8
  %i.cfn = ptrtoint ptr %i.cfk to i64
  %i.cfo = ptrtoint ptr %i.cfm to i64
  %i.cfp = sub i64 %i.cfn, %i.cfo
  %i.cfq = ashr exact i64 %i.cfp, 3
  %i.cfr = add nsw i64 %i.cfq, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(33) %i.cg, i64 noundef %i.cfr)
  %.pre.i.i.i10.i621 = load ptr, ptr %i.cd, align 8
  br label %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_27RequiredOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerES9_SA_SC_SE_EEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i622

_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_27RequiredOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerES9_SA_SC_SE_EEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i622: ; preds = %bb.jl, %bb.jk
  %i.cfs = phi ptr [ %i.cfj, %bb.jk ], [ %.pre.i.i.i10.i621, %bb.jl ] ; 2 uses
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfs, i64 8
  store ptr %i.cft, ptr %i.cd, align 8
  store i64 %i.ch, ptr %i.cfs, align 8
  br label %bb.jm

bb.jm:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_10HeapNumberEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_10HeapNumberEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb.exit, %bb.jc, %bb.jf, %bb.jh, %bb.ji, %bb.jj, %_ZN2v84base12IntrusiveSetINS_8internal8compiler10turboshaft16SnapshotTableKeyINS4_7OpIndexENS4_12VariableDataEEENS4_15VariableReducerINS4_27RequiredOptimizationReducerINS4_21EmitProjectionReducerINS4_21ValueNumberingReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS0_3tmp5list1IJNS4_26BlockOriginTrackingReducerENS4_28TurbolevEarlyLoweringReducerENS4_26MachineOptimizationReducerES9_SA_SC_SE_EEEEEEEEEEEEEEEE27GetActiveLoopVariablesIndexENS2_10ZoneVectorIS8_EEE3AddES8_.exit.i.i622
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.thread1188
  %i.cfu = load ptr, ptr %i.e, align 8
  %i.cfv = icmp eq ptr %i.cfu, null
  br i1 %i.cfv, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.cfw = load ptr, ptr %i.cl, align 8           ; 2 uses
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cfw, i64 52
  %i.cfy = load i32, ptr %i.cfx, align 4
  %i.cfz = icmp ne i32 %i.cfy, -1
  %i.cga = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.bh, ptr noundef nonnull %i.cfw, i1 noundef zeroext %i.cfz), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11Word32EqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_.exit, %bb.fh, %bb.jo, %bb.jn
  %i.cgb = add nuw nsw i32 %.0941206, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.cgb, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.dg, !llvm.loop !3680

.loopexit:                                        ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.jp

bb.jp:                                            ; preds = %.loopexit, %.thread1195
  %i.cgc = load ptr, ptr %i.e, align 8
  %i.cgd = icmp eq ptr %i.cgc, null
  br i1 %i.cgd, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit125, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.cge = load ptr, ptr %i.cp, align 8           ; 2 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cge, i64 52
  %i.cgg = load i32, ptr %i.cgf, align 4
  %i.cgh = icmp ne i32 %i.cgg, -1
  %i.cgi = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.bh, ptr noundef nonnull %i.cge, i1 noundef zeroext %i.cgh), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit125

default.unreachable:                              ; preds = %bb.bi, %bb.dg
  unreachable

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit125: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE20Int32LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESL_.exit, %bb.de, %bb.jq, %bb.jp
  %i.cgj = add nuw nsw i32 %.0911207, 1           ; 2 uses
  %exitcond1219.not = icmp eq i32 %i.cgj, 3
  br i1 %exitcond1219.not, label %.loopexit1386, label %bb.bi, !llvm.loop !3681

bb.jr:                                            ; preds = %.loopexit1386
  %i.cgk = load ptr, ptr %i.cq, align 8           ; 2 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgk, i64 52
  %i.cgm = load i32, ptr %i.cgl, align 4
  %i.cgn = icmp ne i32 %i.cgm, -1
  %i.cgo = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.bh, ptr noundef nonnull %i.cgk, i1 noundef zeroext %i.cgn), !inline_history !2428 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.jr, %.loopexit1386, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESK_.exit, %bb.t
  %i.cgp = add nuw nsw i32 %.0881208, 1           ; 2 uses
  %exitcond1220.not = icmp eq i32 %i.cgp, 3
  br i1 %exitcond1220.not, label %.loopexit1387.a, label %bb.t, !llvm.loop !3682

bb.js:                                            ; preds = %.loopexit1387.a
  %i.cgq = load ptr, ptr %i.cr, align 8           ; 2 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgq, i64 52
  %i.cgs = load i32, ptr %i.cgr, align 4
  %i.cgt = icmp ne i32 %i.cgs, -1
  %i.cgu = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.bh, ptr noundef nonnull %i.cgq, i1 noundef zeroext %i.cgt), !inline_history !2428 ; 0 uses
  br label %.critedge102

.critedge102:                                     ; preds = %bb.js, %.loopexit1387.a, %bb.r, %bb.q
  %i.cgv = add nuw nsw i32 %.0851209, 1           ; 2 uses
  %exitcond1221.not = icmp eq i32 %i.cgv, 3
  br i1 %exitcond1221.not, label %.loopexit1388.a, label %bb.q, !llvm.loop !3683

bb.jt:                                            ; preds = %.loopexit1388.a
  %i.cgw = load ptr, ptr %i.cs, align 8           ; 2 uses
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgw, i64 52
  %i.cgy = load i32, ptr %i.cgx, align 4
  %i.cgz = icmp ne i32 %i.cgy, -1
  %i.cha = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.bh, ptr noundef nonnull %i.cgw, i1 noundef zeroext %i.cgz), !inline_history !2428 ; 0 uses
  br label %.critedge106

.critedge106:                                     ; preds = %bb.jt, %.loopexit1388.a, %bb.o, %bb.n
  %i.chb = add nuw nsw i32 %.01210, 1             ; 2 uses
  %exitcond1222.not = icmp eq i32 %i.chb, 3
  br i1 %exitcond1222.not, label %.loopexit1389.a, label %bb.n, !llvm.loop !3684
}

declare void @_ZN2v88internal8compiler13AccessBuilder19ForContextCellStateEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13AccessBuilder25ForContextCellTaggedValueEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13AccessBuilder24ForContextCellInt32ValueEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE27AllocateHeapNumberWithValueENS2_1VINS2_13FloatWithBitsILm64EEEEEPNS0_7FactoryE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::compiler::FieldAccess", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i8 1, ptr %i.d, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.f = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.e, i8 noundef zeroext 1, i64 noundef 16)
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.e, i32 %i.f)
  %.pr = load ptr, ptr %i.a, align 8
  %5 = icmp eq ptr %.pr, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i8 1, ptr %i.h, align 8
  br i1 %5, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit, label %bb.b, !prof !2421

bb.b:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i
  %6 = getelementptr inbounds i8, ptr %0, i64 -744
  %i.i = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10AllocateOpEJNS2_14ShadowyOpIndexENS0_14AllocationTypeENS0_19AllocationAlignmentEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 %i.g, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i, %bb.b
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.h, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i ], [ %i.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread ]
  %.sroa.03.0.i.i = phi i32 [ %i.i, %bb.b ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit.i.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN2v88internal8compiler13AccessBuilder6ForMapENS1_16WriteBarrierKindE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %3, i8 noundef zeroext 2) #27
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 808 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 -776
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 63768
  %i.q = load ptr, ptr %i.p, align 8
  %.not5.i.i = icmp eq ptr %i.q, null
  br i1 %.not5.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.o, ptr nonnull %i.k) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d, %bb.c, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8AllocateINS0_10HeapNumberEEENS2_13UninitializedIT_EENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEENS0_14AllocationTypeENS0_19AllocationAlignmentE.exit
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  %i.t = ptrtoint ptr %i.k to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 -744 ; 2 uses
  %i.v = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENSI_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i8 noundef zeroext 8, i64 %i.t)
  %i.w = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i32 %i.v)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_3MapEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, %bb.e
  %.sroa.02.0.i.i = phi i32 [ %i.w, %bb.e ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i ]
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_10HeapNumberEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 %.sroa.02.0.i.i, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN2v88internal8compiler13AccessBuilder18ForHeapNumberValueEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %4) #27
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE14StoreFieldImplINS0_10HeapNumberEEEvNS2_1VIT_EERKNS1_11FieldAccessENSK_INS2_3AnyEEEb(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %.sroa.03.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 %1, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  store i8 0, ptr %i.j, align 8
  ret i32 %.sroa.03.0.i.i
}

declare void @_ZN2v88internal8compiler13AccessBuilder26ForContextCellFloat64ValueEv(ptr dead_on_unwind writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_13FloatWithBitsILm64EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 255
  %i.d = icmp eq i16 %i.c, 6
  %.sroa.014.0.insert.insert = select i1 %i.d, i16 2568, i16 %i.b ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.014.0.insert.insert to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.014.0.insert.insert, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw i16 %.sroa.2.0.extract.shift.i to i8 ; 4 uses
  switch i8 %.sroa.0.0.extract.trunc.i, label %bb.k [
    i8 2, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 7, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread
    i8 8, label %bb.e
    i8 6, label %bb.e
    i8 12, label %bb.f
    i8 13, label %bb.g
    i8 9, label %bb.h
    i8 16, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44
    i8 17, label %bb.i
    i8 18, label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i
    i8 14, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36
    i8 19, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56
    i8 20, label %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 10, label %bb.j
    i8 11, label %bb.j
    i8 15, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %.sroa.2.0.extract.trunc.i, -2
  %switch.and7.i = and i8 %i.e, -3
  %switch.selectcmp8.i = icmp eq i8 %switch.and7.i, 0
  %spec.select = select i1 %switch.selectcmp8.i, i8 2, i8 3
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.f = add i8 %.sroa.2.0.extract.trunc.i, -2
  %switch.and9.i = and i8 %i.f, -3
  %switch.selectcmp10.i = icmp eq i8 %switch.and9.i, 0
  %spec.select68 = select i1 %switch.selectcmp10.i, i8 4, i8 5
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.d:                                             ; preds = %bb.a
  %i.g = add i8 %.sroa.2.0.extract.trunc.i, -2
  %switch.and11.i = and i8 %i.g, -3
  %switch.selectcmp12.i = icmp eq i8 %switch.and11.i, 0
  %spec.select69 = select i1 %switch.selectcmp12.i, i8 6, i8 7
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.e:                                             ; preds = %bb.a, %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.f:                                             ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.g:                                             ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.h:                                             ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.i:                                             ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.k:                                             ; preds = %bb.a
  unreachable

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44: ; preds = %bb.a
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit: ; preds = %bb.a
  %i.h = add i8 %.sroa.2.0.extract.trunc.i, -2
  %switch.and.i = and i8 %i.h, -3
  %switch.selectcmp.i = icmp ne i8 %switch.and.i, 0
  %i.i = zext i1 %switch.selectcmp.i to i8
  br label %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i

_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i: ; preds = %bb.i, %bb.d, %bb.b, %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %bb.a, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36
  %.sroa.0.0.i25 = phi i8 [ 21, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62 ], [ %spec.select, %bb.b ], [ 19, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36 ], [ %i.i, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit ], [ 10, %bb.a ], [ 13, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread ], [ 20, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56 ], [ 11, %bb.h ], [ 18, %bb.g ], [ 17, %bb.f ], [ 12, %bb.e ], [ %spec.select68, %bb.c ], [ %spec.select69, %bb.d ], [ 9, %bb.i ], [ 8, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44 ]
  %.sroa.0.0.i.i.i = phi i8 [ 7, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread62 ], [ 0, %bb.b ], [ 1, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread36 ], [ 0, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit ], [ 3, %bb.a ], [ 4, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread ], [ 6, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread56 ], [ 4, %bb.h ], [ 4, %bb.g ], [ 4, %bb.f ], [ 4, %bb.e ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.i ], [ 2, %_ZN2v88internal8compiler10turboshaft20MemoryRepresentation15FromMachineTypeENS0_11MachineTypeE.exit.thread44 ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i8, ptr %2, align 8
  %i.p = icmp eq i8 %i.o, 1
  %spec.select.i = select i1 %i.p, i8 17, i8 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.r = load i8, ptr %i.q, align 2, !range !5, !noundef !6
  %i.s = shl nuw nsw i8 %i.r, 5
  %spec.select17 = or disjoint i8 %spec.select.i, %i.s
  %i.t = getelementptr inbounds i8, ptr %0, i64 -744
  %i.u = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10ReduceLoadENS2_7OpIndexENS2_15OptionalOpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEih(ptr noundef nonnull align 8 dereferenceable(666) %i.t, i32 %1, i32 -1, i8 %spec.select17, i8 %.sroa.0.0.i25, i8 %.sroa.0.0.i.i.i, i32 noundef %i.n, i8 noundef zeroext 0), !inline_history !2926
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i, %bb.l
  %.sroa.011.0.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ -1, %_ZNK2v88internal8compiler10turboshaft20MemoryRepresentation24ToRegisterRepresentationEv.exit.i.i ]
  ret i32 %.sroa.011.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15LoadDoubleFieldERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::FieldAccessTS", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.d = getelementptr inbounds i8, ptr %1, i64 -8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, label %bb.b, !prof !2814

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15LoadTaggedFieldINS0_10HeapNumberEEENS2_1VIT_EENSK_INS0_6ObjectEEEiQ12is_subtype_vITL0__SN_E.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1640
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJNS0_18InternalizedStringEEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbNS2_1VIS4_EEEERT_NS_14SourceLocationE:bb.a
  %i.dj = lshr i64 %i.cz, 1
  %i.dk = add nuw nsw i64 %i.cz, 32
  %i.dl = add nuw nsw i64 %i.dk, %i.dj
  tail call void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 noundef %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.dc, align 8
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3
  tail call void @_ZN2v88internal10ZoneVectorIPKNS0_6maglev10BasicBlockEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i64 noundef %i.ds)
  %.pre.i.i = load ptr, ptr %i.dc, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dt = phi ptr [ %.pre.i.i, %bb.m ], [ %i.dd, %bb.l ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cz
  store ptr %i.cy, ptr %i.du, align 8
  %i.dv = load ptr, ptr %1, align 8, !noalias !3757
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.dx = load i32, ptr %i.dw, align 8, !noalias !3757
  %i.dy = icmp eq i32 %i.dx, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !3757 ; 3 uses
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eb = load i32, ptr %i.ea, align 4, !noalias !3757
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

bb.p:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !3757
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 2                 ; 2 uses
  %i.ei = load ptr, ptr %i.cv, align 8, !noalias !3757
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ek = icmp ult i64 %i.eh, 2147483648
  br i1 %i.ek, label %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEEE6lengthEv.exit.i.i.i, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.27) #28, !noalias !3757
  unreachable

_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEEE6lengthEv.exit.i.i.i: ; preds = %bb.q
  %i.el = tail call i32 @_ZN2v88internal8compiler10turboshaft27RequiredOptimizationReducerINS3_INS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerES3_S5_S7_EEEEEEEEEEEEEEEE9ReducePhiENS9_6VectorIKNS2_7OpIndexEEENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(144) %i.cw, ptr %i.ea, i64 %i.eh, i8 4), !noalias !3757
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEEE6lengthEv.exit.i.i.i, %bb.p, %bb.o, %bb.e
  %storemerge.i.i8.sink = phi i32 [ -1, %bb.e ], [ %i.eb, %bb.o ], [ -1, %bb.p ], [ %i.el, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEEE6lengthEv.exit.i.i.i ]
  %.sink = phi i8 [ 0, %bb.e ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %_ZNK2v84base6VectorINS_8internal8compiler10turboshaft1VINS2_18InternalizedStringEEEE6lengthEv.exit.i.i.i ]
  store i32 %storemerge.i.i8.sink, ptr %0, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sink, ptr %i.em, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev20CheckedObjectToIndexERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc i64 %i.e to i16                    ; 2 uses
  %i.g = and i16 %i.f, 2
  %.not.i.i.i = icmp eq i16 %i.g, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.h = and i16 %i.f, 6
  %i.i = icmp eq i16 %i.h, 4
  %.neg2.i.i = select i1 %i.i, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.j = trunc i64 %i.d to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %narrow.i.i.i = sub nsw i32 1, %i.k
  %i.m = sext i32 %narrow.i.i.i to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %.neg3.i.i, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.s, ptr %i.t, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.v = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i8, ptr %i.w, align 8               ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %3, align 8
  %i.ab = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ad, %tailrecurse.i.i ], [ %i.v, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %3, align 8
  %i.aj = icmp eq i8 %i.x, 3
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.ak = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, %bb.c
  %.sroa.06.0.i = phi i32 [ %i.ab, %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i ], [ %i.ak, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not = icmp eq i32 %.sroa.06.0.i, -1
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit
  %i.al = load i64, ptr %i.c, align 8             ; 2 uses
  %i.am = lshr i64 %i.al, 32
  %i.an = trunc i64 %i.am to i16                  ; 2 uses
  %i.ao = and i16 %i.an, 2
  %.not.i.i.i24 = icmp eq i16 %i.ao, 0
  %.neg.i.i25 = select i1 %.not.i.i.i24, i64 0, i64 -48
  %i.ap = and i16 %i.an, 6
  %i.aq = icmp eq i16 %i.ap, 4
  %.neg2.i.i26 = select i1 %i.aq, i64 -56, i64 0
  %.neg3.i.i27 = add nsw i64 %.neg.i.i25, %.neg2.i.i26
  %i.ar = trunc i64 %i.al to i32
  %i.as = lshr i32 %i.ar, 16
  %narrow.i.i.i28 = sub nsw i32 1, %i.as
  %i.at = sext i32 %narrow.i.i.i28 to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.at
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = add i64 %.neg3.i.i27, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.l, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.az, ptr %i.b, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 8 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, label %bb.f, !prof !2814

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.az, %i.be
  br i1 %i.bf, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread72, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, !prof !7

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread72: ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.sroa.0.0.copyload.i.i29 = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i29, i64 16
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.bh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.bj = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.bj, align 4
  %.pre = load ptr, ptr %i.ba, align 8
  %i.bk = icmp eq ptr %.pre, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bk, label %.critedge, label %bb.g, !prof !2421

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread72
  %.sroa.01.0.i.i74 = phi i32 [ %.sroa.02.0.copyload.i.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread72 ], [ %.sroa.01.0.copyload.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bm = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEJNS2_14ShadowyOpIndexESJ_NSI_15JSPrimitiveKindENSI_12UntaggedKindENS1_21CheckForMinusZeroModeENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.bl, i32 %.sroa.01.0.i.i74, i32 %.sroa.06.0.i, i8 noundef zeroext 5, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull byval(%"struct.v8::internal::compiler::FeedbackSource") align 8 %i.ay)
  %i.bn = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_37ConvertJSPrimitiveToUntaggedOrDeoptOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.bl, i32 %i.bm) ; 2 uses
  %.pr.a = load ptr, ptr %i.ba, align 8
  %i.bo = icmp eq ptr %.pr.a, null
  br i1 %i.bo, label %.critedge, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bp = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 noundef zeroext 1, i64 noundef 4294967295)
  %i.bq = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %4, i32 %i.bp)
  %.pre65.a = load ptr, ptr %i.ba, align 8
  %i.br = icmp eq ptr %.pre65.a, null
  br i1 %i.br, label %.critedge, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint64LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESL_.exit, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint64LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESL_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %i.bs = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE16ReduceComparisonENS2_1VINS2_3AnyEEESR_NS2_12ComparisonOp4KindENS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(666) %4, i32 %i.bn, i32 %i.bq, i8 noundef zeroext 4, i8 1)
  %.pr63 = load ptr, ptr %i.ba, align 8
  %i.bt = icmp eq ptr %.pr63, null
  br i1 %i.bt, label %.critedge, label %bb.h, !prof !2421

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint64LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESL_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !6, !align !210
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = sub i64 %i.bz, %i.cb
  %i.cd = icmp ult i64 %i.cc, 24
  br i1 %i.cd, label %bb.i, label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i, !prof !7

bb.i:                                             ; preds = %bb.h
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, i64 noundef 24) #27
  %.pre.i.i.i = load i64, ptr %i.ca, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i: ; preds = %bb.i, %bb.h
  %i.ce = phi i64 [ %.pre.i.i.i, %bb.i ], [ %i.cb, %bb.h ] ; 2 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 3 uses
  %i.cg = add i64 %i.ce, 24
  store i64 %i.cg, ptr %i.ca, align 8
  store i8 52, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.ci = load ptr, ptr %i.ba, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.critedge, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSI_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSI_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i
  %i.ck = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE18ReduceDeoptimizeIfENS2_1VINS2_12WordWithBitsILm32EEEEENSP_INS2_10FrameStateEEEbPKNS1_20DeoptimizeParametersE(ptr noundef nonnull align 8 dereferenceable(666) %4, i32 %i.bs, i32 %.sroa.06.0.i, i1 noundef zeroext true, ptr noundef nonnull %i.cf) ; 0 uses
  %.pre66.a = load ptr, ptr %i.ba, align 8
  %i.cl = icmp eq ptr %.pre66.a, null
  br i1 %i.cl, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSI_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cn = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSQ_IJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEENSQ_IJNS2_13FloatWithBitsILm32EEENSV_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENS11_10AssumptionENS2_22RegisterRepresentationES14_(ptr noundef nonnull align 8 dereferenceable(666) %i.cm, i32 %i.bn, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 1, i8 0)
  %.pre67 = load ptr, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.co = icmp eq ptr %.pre67, null
  br i1 %i.co, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.cq = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i32 %i.cn, ptr %i.cq, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint64LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESL_.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %bb.g, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSI_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit
  %.2 = phi i32 [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE15DeoptimizeIfNotENS2_1VINS2_12WordWithBitsILm32EEEEENSI_INS2_10FrameStateEEENS0_16DeoptimizeReasonERKNS1_14FeedbackSourceE.exit ], [ 0, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit ], [ 3, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit ], [ 0, %bb.g ], [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE21Uint64LessThanOrEqualENS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEESL_.exit ], [ 0, %_ZN2v88internal4Zone3NewINS0_8compiler20DeoptimizeParametersEJRNS0_16DeoptimizeReasonERKNS3_14FeedbackSourceEEEEPT_DpOT0_.exit.i ], [ 0, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ], [ 0, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev37TruncateCheckedNumberOrOddballToInt32ERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 53
  %i.f = trunc i64 %i.e to i8
  %i.g = and i8 %i.f, 3
  switch i8 %i.g, label %default.unreachable [
    i8 3, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.014 = phi i8 [ 1, %bb.a ], [ 4, %bb.d ], [ 3, %bb.c ]
  %i.h = lshr i64 %i.d, 32
  %i.i = trunc i64 %i.h to i16                    ; 2 uses
  %i.j = and i16 %i.i, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.k = and i16 %i.i, 6
  %i.l = icmp eq i16 %i.k, 4
  %.neg2.i.i = select i1 %i.l, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.m = trunc i64 %i.d to i32
  %i.n = lshr i32 %i.m, 16
  %i.o = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %narrow.i.i.i = sub nsw i32 1, %i.n
  %i.p = sext i32 %narrow.i.i.i to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %.neg3.i.i, %i.r
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.w, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.y = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load i8, ptr %i.z, align 8              ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %3, align 8
  %i.ae = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ag, %tailrecurse.i.i ], [ %i.y, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr %i.al, ptr %3, align 8
  %i.am = icmp eq i8 %i.aa, 3
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.an = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.h:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, %bb.g
  %.sroa.06.0.i = phi i32 [ %i.ae, %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i ], [ %i.an, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not = icmp eq i32 %.sroa.06.0.i, -1
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit
  %i.ao = load ptr, ptr %i.o, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ao, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, label %bb.j, !prof !2814

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.ao, %i.at
  br i1 %i.au, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread30, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, !prof !7

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread30: ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.sroa.0.0.copyload.i.i16 = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i16, i64 16
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.aw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit: ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ay = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.ay, align 4
  %.pre = load ptr, ptr %i.ap, align 8
  %i.az = icmp eq ptr %.pre, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread30
  %.sroa.01.0.i.i32 = phi i32 [ %.sroa.02.0.copyload.i.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread30 ], [ %.sroa.01.0.copyload.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ]
  %i.ba = load i64, ptr %i.c, align 8             ; 2 uses
  %i.bb = lshr i64 %i.ba, 32
  %i.bc = trunc i64 %i.bb to i16                  ; 2 uses
  %i.bd = and i16 %i.bc, 2
  %.not.i.i.i17 = icmp eq i16 %i.bd, 0
  %.neg.i.i18 = select i1 %.not.i.i.i17, i64 0, i64 -48
  %i.be = and i16 %i.bc, 6
  %i.bf = icmp eq i16 %i.be, 4
  %.neg2.i.i19 = select i1 %i.bf, i64 -56, i64 0
  %.neg3.i.i20 = add nsw i64 %.neg.i.i18, %.neg2.i.i19
  %i.bg = trunc i64 %i.ba to i32
  %i.bh = lshr i32 %i.bg, 16
  %narrow.i.i.i21 = sub nsw i32 1, %i.bh
  %i.bi = sext i32 %narrow.i.i.i21 to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bi
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = add i64 %.neg3.i.i20, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bp = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEJNS2_14ShadowyOpIndexESJ_NSI_12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindENS1_14FeedbackSourceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.bo, i32 %.sroa.01.0.i.i32, i32 %.sroa.06.0.i, i8 noundef zeroext 0, i8 noundef zeroext %.014, ptr noundef nonnull byval(%"struct.v8::internal::compiler::FeedbackSource") align 8 %i.bn)
  %i.bq = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.bo, i32 %i.bp)
  %.pre26 = load ptr, ptr %i.ap, align 8
  %i.br = icmp eq ptr %.pre26, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  br i1 %i.br, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.bt = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i32 %i.bq, ptr %i.bt, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE36TruncateJSPrimitiveToUntaggedOrDeoptENS2_1VINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedEEEEEENSI_INS2_10FrameStateEEENS2_38TruncateJSPrimitiveToUntaggedOrDeoptOp12UntaggedKindENS2_37ConvertJSPrimitiveToUntaggedOrDeoptOp15JSPrimitiveKindERKNS1_14FeedbackSourceE.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit
  %.1 = phi i32 [ 0, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit ], [ 3, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_38TruncateJSPrimitiveToUntaggedOrDeoptOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev23TaggedCountLeadingZerosERKNS4_15ProcessingStateE:bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.sroa.07.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  store i32 -1, ptr %i.cu, align 8
  %i.az = getelementptr inbounds i8, ptr %i.t, i64 -31
  %i.ba = load i8, ptr %i.az, align 1, !range !5, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  store i64 %i.bd, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bd
  %i.bn = load i64, ptr %i.bj, align 8
  store i64 %i.bn, ptr %i.bm, align 8
  store i64 -1, ptr %i.bc, align 8
  %i.bo = load ptr, ptr %i.be, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  store ptr %i.bp, ptr %i.be, align 8
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEED2Ev.exit

_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit.thread, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit, %bb.i, %bb.l, %bb.m
  ret i32 0

bb.n:                                             ; preds = %bb.h, %bb.g, %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEECI2NS2_3VarIS5_SD_EEINS2_26GraphBuildingNodeProcessorEEEPT_.exit
  %.sroa.01.0.i.i = phi i32 [ %.sroa.01.0.copyload.i.i, %bb.h ], [ %.sroa.02.0.copyload.i.i.i, %bb.g ], [ -1, %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEECI2NS2_3VarIS5_SD_EEINS2_26GraphBuildingNodeProcessorEEEPT_.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bu = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE5IsSmiENS2_1VINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, i32 %.sroa.01.0.i.i)
  %.sroa.058.0.insert.ext = zext i32 %i.bu to i64
  %i.bv = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE24ControlFlowHelper_BindIfENS2_17ConditionWithHintEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, i64 %.sroa.058.0.insert.ext, ptr noundef nonnull %5)
  br i1 %i.bv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i: ; preds = %bb.n
  %i.bw = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE8UntagSmiENS2_1VINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, i32 %.sroa.01.0.i.i)
  %i.bx = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23Word32CountLeadingZerosENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, i64 0, i32 %i.bw)
  %i.by = load ptr, ptr %i.x, align 8
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit, label %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES4_S5_S7_S9_EEEEEEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISQ_SR_EESQ_(ptr noundef nonnull align 8 dereferenceable(344) %i.bs, ptr nonnull %i.u, i32 %i.bx)
  %.pr = load ptr, ptr %i.x, align 8
  %i.ca = icmp eq ptr %.pr, null
  br i1 %i.ca, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit
  %i.cb = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 52
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp ne i32 %i.cd, -1
  %i.cf = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.br, ptr noundef nonnull %i.cb, i1 noundef zeroext %i.ce), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit, %bb.o, %bb.n
  %i.cg = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE26ControlFlowHelper_BindElseEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, ptr noundef nonnull %5)
  br i1 %i.cg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i.1, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit.2

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i.1: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN2v88internal8compiler13AccessBuilder18ForHeapNumberValueEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::compiler::FieldAccess") align 8 %3) #27
  %i.ch = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE13LoadFieldImplINS2_13FloatWithBitsILm64EEEEENS2_1VIT_EENS2_7OpIndexERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, i32 %.sroa.01.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ci = load ptr, ptr %i.x, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i37.1, label %bb.p, !prof !7

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i.1
  %i.ck = call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE12ReduceChangeENS2_1VINS2_13UntaggedUnionIJNSQ_IJNS2_12WordWithBitsILm32EEENSR_ILm64EEEEEENSQ_IJNS2_13FloatWithBitsILm32EEENSV_ILm64EEEEEEEEEEENS2_8ChangeOp4KindENS11_10AssumptionENS2_22RegisterRepresentationES14_(ptr noundef nonnull align 8 dereferenceable(666) %i.br, i32 %i.ch, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 3, i8 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i37.1

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i37.1: ; preds = %bb.p, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i.1
  %.sroa.08.0.i.i.1 = phi i32 [ %i.ck, %bb.p ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_13FloatWithBitsILm64EEEdEE.exit.i.1 ]
  %i.cl = call i32 @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23Word32CountLeadingZerosENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, i64 0, i32 %.sroa.08.0.i.i.1)
  %i.cm = load ptr, ptr %i.x, align 8
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit.2, label %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit.1, !prof !7

_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit.1: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i37.1
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES4_S5_S7_S9_EEEEEEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISQ_SR_EESQ_(ptr noundef nonnull align 8 dereferenceable(344) %i.bs, ptr nonnull %i.u, i32 %i.cl)
  %.pr76 = load ptr, ptr %i.x, align 8
  %i.co = icmp eq ptr %.pr76, null
  br i1 %i.co, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit.2, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit.1
  %i.cp = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 52
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp ne i32 %i.cr, -1
  %i.ct = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(648) %i.br, ptr noundef nonnull %i.cp, i1 noundef zeroext %i.cs), !inline_history !2428 ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit.2

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit.2: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i37.1, %bb.q, %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit.1, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSH_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bq, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.cu = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 3 uses
  %.sroa.02.0.copyload.i.i.i33 = load i32, ptr %i.cu, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.cv = load ptr, ptr %i.x, align 8
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit, !prof !2814

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSH_25ControlFlowHelper_IfStateE.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerEEEEED2Ev.exit
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor22ConvertWordPtrToJSBoolENS2_1VINS2_12WordWithBitsILm64EEEEEb(ptr noundef nonnull align 8 dereferenceable(1816) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1952
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 672 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 63768
  %i.k = load ptr, ptr %i.j, align 8
  %.not5.i.i = icmp eq ptr %i.k, null
  br i1 %.not5.i.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.i, ptr nonnull %i.e) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4TrueEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, label %bb.d, !prof !7

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENSI_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.p, i8 noundef zeroext 8, i64 %i.o)
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.p, i32 %i.q)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4TrueEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4TrueEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i, %bb.d
  %.sroa.02.0.i.i = phi i32 [ %i.r, %bb.d ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i ] ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1952
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 680 ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.y, null
  br i1 %.not.i.i13, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i15, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4TrueEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 63768
  %i.aa = load ptr, ptr %i.z, align 8
  %.not5.i.i14 = icmp eq ptr %i.aa, null
  br i1 %.not5.i.i14, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i15, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull %i.y, ptr nonnull %i.v) #27
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i15: ; preds = %bb.f, %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_4TrueEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SelectINS0_7BooleanESJ_EENS2_1VINSt11common_typeIJT_T0_EE4typeEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENSK_ISM_EENSK_ISN_EENS2_22RegisterRepresentationENS0_10BranchHintENS2_8SelectOp14ImplementationE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_5FalseEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, !prof !7

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_5FalseEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i15
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.af = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindENSI_7StorageEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i8 noundef zeroext 8, i64 %i.ad)
  %i.ag = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i32 %i.af) ; 2 uses
  %.pre = load ptr, ptr %i.l, align 8
  %i.ah = icmp eq ptr %.pre, null
  %spec.select = select i1 %2, i32 %.sroa.02.0.i.i, i32 %i.ag ; 2 uses
  %spec.select42 = select i1 %2, i32 %i.ag, i32 %.sroa.02.0.i.i ; 2 uses
  br i1 %i.ah, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SelectINS0_7BooleanESJ_EENS2_1VINSt11common_typeIJT_T0_EE4typeEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENSK_ISM_EENSK_ISN_EENS2_22RegisterRepresentationENS0_10BranchHintENS2_8SelectOp14ImplementationE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_5FalseEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aj = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSI_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, i8 noundef zeroext 1, i64 noundef 0)
  %i.ak = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_10ConstantOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, i32 %i.aj)
  %.pr.a = load ptr, ptr %i.l, align 8
  %i.al = icmp eq ptr %.pr.a, null
  br i1 %i.al, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SelectINS0_7BooleanESJ_EENS2_1VINSt11common_typeIJT_T0_EE4typeEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENSK_ISM_EENSK_ISN_EENS2_22RegisterRepresentationENS0_10BranchHintENS2_8SelectOp14ImplementationE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, !prof !2421

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.am = tail call i32 @_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE18ReduceCompareEqualENS2_1VINS2_3AnyEEESR_NS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(666) %3, i32 %1, i32 %i.ak, i8 1), !inline_history !2681 ; 2 uses
  %.pre43 = load ptr, ptr %i.l, align 8
  %i.an = icmp eq ptr %.pre43, null
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SelectINS0_7BooleanESJ_EENS2_1VINSt11common_typeIJT_T0_EE4typeEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENSK_ISM_EENSK_ISN_EENS2_22RegisterRepresentationENS0_10BranchHintENS2_8SelectOp14ImplementationE.exit, label %bb.g, !prof !2421

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !6, !align !210
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !6, !align !210
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = zext i32 %i.am to i64
  %i.av = add i64 %i.at, %i.au
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 4
  %.not.i.i.i.i.i = icmp eq i8 %i.ax, 75
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ay = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_8SelectOpEJNS2_14ShadowyOpIndexESJ_SJ_NS2_22RegisterRepresentationENS0_10BranchHintENSI_14ImplementationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(666) %3, i32 %i.am, i32 %spec.select, i32 %spec.select42, i8 4, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %i.az = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_8SelectOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(666) %3, i32 %i.ay)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SelectINS0_7BooleanESJ_EENS2_1VINSt11common_typeIJT_T0_EE4typeEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENSK_ISM_EENSK_ISN_EENS2_22RegisterRepresentationENS0_10BranchHintENS2_8SelectOp14ImplementationE.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = load i8, ptr %i.ba, align 4
  switch i8 %i.bb, label %bb.h [
    i8 0, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE17MatchBoolConstantENS2_1VINS2_3AnyEEE.exit.i.i
    i8 1, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE17MatchBoolConstantENS2_1VINS2_3AnyEEE.exit.i.i
    i8 11, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE17MatchBoolConstantENS2_1VINS2_3AnyEEE.exit.i.i
    i8 12, label %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE17MatchBoolConstantENS2_1VINS2_3AnyEEE.exit.i.i
  ]

_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE17MatchBoolConstantENS2_1VINS2_3AnyEEE.exit.i.i: ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 4294967295
  %.not.i.i18 = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i.i18, i32 %spec.select42, i32 %spec.select
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SelectINS0_7BooleanESJ_EENS2_1VINSt11common_typeIJT_T0_EE4typeEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENSK_ISM_EENSK_ISN_EENS2_22RegisterRepresentationENS0_10BranchHintENS2_8SelectOp14ImplementationE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE6SelectINS0_7BooleanESJ_EENS2_1VINSt11common_typeIJT_T0_EE4typeEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENSK_ISM_EENSK_ISN_EENS2_22RegisterRepresentationENS0_10BranchHintENS2_8SelectOp14ImplementationE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i15, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_5FalseEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %bb.h, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE17MatchBoolConstantENS2_1VINS2_3AnyEEE.exit.i.i
  %.sroa.010.0.i.i = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ], [ %i.az, %bb.h ], [ %i.bf, %_ZN2v88internal8compiler10turboshaft26MachineOptimizationReducerINS2_15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE17MatchBoolConstantENS2_1VINS2_3AnyEEE.exit.i.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm64EEEmEE.exit6.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE12HeapConstantINS0_5FalseEEENS2_1VIT_EENS0_6HandleISL_EEQ12is_subtype_vITL0__NS0_10HeapObjectEE.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerENS2_13TSReducerBaseEEEEEEE44CanonicalizeEmbeddedBuiltinsConstantIfNeededENS0_6HandleINS0_10HeapObjectEEE.exit.i15 ]
  ret i32 %.sroa.010.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15Float64ToTaggedERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, label %bb.b, !prof !2814

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.d, %i.i
  br i1 %i.j, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread11, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit, !prof !7

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread11: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.n = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.n, align 4
  %.pre = load ptr, ptr %i.e, align 8
  %i.o = icmp eq ptr %.pre, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.o, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit.thread, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit, !prof !2421

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread11, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit
  %.sroa.01.0.i.i13 = phi i32 [ %.sroa.02.0.copyload.i.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit.thread11 ], [ %.sroa.01.0.copyload.i.i, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor3MapENS0_6maglev5InputEb.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 9007199254740992
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i8 4, i8 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES3_EEEEEE4EmitINS2_30ConvertUntaggedToJSPrimitiveOpEJNS2_14ShadowyOpIndexENSI_15JSPrimitiveKindENS2_22RegisterRepresentationENSI_19InputInterpretationENS1_21CheckForMinusZeroModeEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i32 %.sroa.01.0.i.i13, i8 noundef zeroext %i.t, i8 3, i8 noundef zeroext 2, i8 noundef zeroext 0)
  %i.w = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE9AddOrFindINS2_30ConvertUntaggedToJSPrimitiveOpEEENS2_7OpIndexESM_(ptr noundef nonnull align 8 dereferenceable(144) %i.u, i32 %i.v)
  %.pr = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.x = icmp eq ptr %.pr, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.z = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIPKN2v88internal6maglev8NodeBaseESt4pairIKS6_NS2_8compiler10turboshaft7OpIndexEENS2_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i32 %i.w, ptr %i.z, align 4
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor6SetMapEPNS0_6maglev8NodeBaseENS2_1VINS2_3AnyEEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit.thread, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15Float64ToTaggedENS2_1VINS2_13FloatWithBitsILm64EEEEENS0_6maglev15Float64ToTagged14ConversionModeE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev20CheckedSmiTagFloat64ERKNS4_15ProcessingStateE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc i64 %i.e to i16                    ; 2 uses
  %i.g = and i16 %i.f, 2
  %.not.i.i.i = icmp eq i16 %i.g, 0
  %.neg.i.i = select i1 %.not.i.i.i, i64 0, i64 -48
  %i.h = and i16 %i.f, 6
  %i.i = icmp eq i16 %i.h, 4
  %.neg2.i.i = select i1 %i.i, i64 -56, i64 0
  %.neg3.i.i = add nsw i64 %.neg.i.i, %.neg2.i.i
  %i.j = trunc i64 %i.d to i32
  %i.k = lshr i32 %i.j, 16
  %i.l = getelementptr inbounds i8, ptr %1, i64 -8 ; 4 uses
  %narrow.i.i.i = sub nsw i32 1, %i.k
  %i.m = sext i32 %narrow.i.i.i to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %.neg3.i.i, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.s
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.s, ptr %i.t, align 8
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.v = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load i8, ptr %i.w, align 8               ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i: ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %3, align 8
  %i.ab = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev21InterpretedDeoptFrameERKNS4_17VirtualObjectListENS0_11interpreter8RegisterEi(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 2147483647, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

tailrecurse.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i, %tailrecurse.i.i
  %.tr1.i.i = phi ptr [ %i.ad, %tailrecurse.i.i ], [ %i.v, %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor12Deduplicator5ResetEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1.i.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i, label %tailrecurse.i.i

_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i: ; preds = %tailrecurse.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %3, align 8
  %i.aj = icmp eq i8 %i.x, 3
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  %i.ak = call i32 @_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateERNS0_6maglev29BuiltinContinuationDeoptFrameERKNS4_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit

bb.d:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.53) #28
  unreachable

_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i, %bb.c
  %.sroa.06.0.i = phi i32 [ %i.ab, %_ZNK2v88internal6maglev10DeoptFrame17GetVirtualObjectsEv.exit.thread.i ], [ %i.ak, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not = icmp eq i32 %.sroa.06.0.i, -1
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor15BuildFrameStateEPNS0_6maglev14EagerDeoptInfoE.exit
  %i.al = load ptr, ptr %i.l, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.al, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
end_hunk_6
